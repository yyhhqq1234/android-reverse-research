package io.netty.buffer;

import io.netty.util.ThreadDeathWatcher;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PoolThreadCache {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) PoolThreadCache.class);
    private int allocations;
    final PoolArena<ByteBuffer> directArena;
    private final int freeSweepAllocationThreshold;
    final PoolArena<byte[]> heapArena;
    private final MemoryRegionCache<ByteBuffer>[] normalDirectCaches;
    private final MemoryRegionCache<byte[]>[] normalHeapCaches;
    private final int numShiftsNormalDirect;
    private final int numShiftsNormalHeap;
    private final MemoryRegionCache<ByteBuffer>[] smallSubPageDirectCaches;
    private final MemoryRegionCache<byte[]>[] smallSubPageHeapCaches;
    private final MemoryRegionCache<ByteBuffer>[] tinySubPageDirectCaches;
    private final MemoryRegionCache<byte[]>[] tinySubPageHeapCaches;
    private final Thread thread = Thread.currentThread();
    private final Runnable freeTask = new Runnable() { // from class: io.netty.buffer.PoolThreadCache.1
        @Override // java.lang.Runnable
        public void run() {
            PoolThreadCache.this.free0();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolThreadCache(PoolArena<byte[]> heapArena, PoolArena<ByteBuffer> directArena, int tinyCacheSize, int smallCacheSize, int normalCacheSize, int maxCachedBufferCapacity, int freeSweepAllocationThreshold) {
        if (maxCachedBufferCapacity < 0) {
            throw new IllegalArgumentException("maxCachedBufferCapacity: " + maxCachedBufferCapacity + " (expected: >= 0)");
        }
        if (freeSweepAllocationThreshold < 1) {
            throw new IllegalArgumentException("freeSweepAllocationThreshold: " + maxCachedBufferCapacity + " (expected: > 0)");
        }
        this.freeSweepAllocationThreshold = freeSweepAllocationThreshold;
        this.heapArena = heapArena;
        this.directArena = directArena;
        if (directArena != null) {
            this.tinySubPageDirectCaches = createSubPageCaches(tinyCacheSize, 32);
            this.smallSubPageDirectCaches = createSubPageCaches(smallCacheSize, directArena.numSmallSubpagePools);
            this.numShiftsNormalDirect = log2(directArena.pageSize);
            this.normalDirectCaches = createNormalCaches(normalCacheSize, maxCachedBufferCapacity, directArena);
        } else {
            this.tinySubPageDirectCaches = null;
            this.smallSubPageDirectCaches = null;
            this.normalDirectCaches = null;
            this.numShiftsNormalDirect = -1;
        }
        if (heapArena != null) {
            this.tinySubPageHeapCaches = createSubPageCaches(tinyCacheSize, 32);
            this.smallSubPageHeapCaches = createSubPageCaches(smallCacheSize, heapArena.numSmallSubpagePools);
            this.numShiftsNormalHeap = log2(heapArena.pageSize);
            this.normalHeapCaches = createNormalCaches(normalCacheSize, maxCachedBufferCapacity, heapArena);
        } else {
            this.tinySubPageHeapCaches = null;
            this.smallSubPageHeapCaches = null;
            this.normalHeapCaches = null;
            this.numShiftsNormalHeap = -1;
        }
        ThreadDeathWatcher.watch(this.thread, this.freeTask);
    }

    private static <T> SubPageMemoryRegionCache<T>[] createSubPageCaches(int cacheSize, int numCaches) {
        if (cacheSize > 0) {
            SubPageMemoryRegionCache[] cache = new SubPageMemoryRegionCache[numCaches];
            for (int i = 0; i < cache.length; i++) {
                cache[i] = new SubPageMemoryRegionCache(cacheSize);
            }
            return cache;
        }
        return null;
    }

    private static <T> NormalMemoryRegionCache<T>[] createNormalCaches(int cacheSize, int maxCachedBufferCapacity, PoolArena<T> area) {
        if (cacheSize > 0) {
            int max = Math.min(area.chunkSize, maxCachedBufferCapacity);
            int arraySize = Math.max(1, max / area.pageSize);
            NormalMemoryRegionCache[] cache = new NormalMemoryRegionCache[arraySize];
            for (int i = 0; i < cache.length; i++) {
                cache[i] = new NormalMemoryRegionCache(cacheSize);
            }
            return cache;
        }
        return null;
    }

    private static int log2(int val) {
        int res = 0;
        while (val > 1) {
            val >>= 1;
            res++;
        }
        return res;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocateTiny(PoolArena<?> area, PooledByteBuf<?> buf, int reqCapacity, int normCapacity) {
        return allocate(cacheForTiny(area, normCapacity), buf, reqCapacity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocateSmall(PoolArena<?> area, PooledByteBuf<?> buf, int reqCapacity, int normCapacity) {
        return allocate(cacheForSmall(area, normCapacity), buf, reqCapacity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean allocateNormal(PoolArena<?> area, PooledByteBuf<?> buf, int reqCapacity, int normCapacity) {
        return allocate(cacheForNormal(area, normCapacity), buf, reqCapacity);
    }

    private boolean allocate(MemoryRegionCache<?> cache, PooledByteBuf buf, int reqCapacity) {
        if (cache == null) {
            return false;
        }
        boolean allocate = cache.allocate(buf, reqCapacity);
        int i = this.allocations + 1;
        this.allocations = i;
        if (i >= this.freeSweepAllocationThreshold) {
            this.allocations = 0;
            trim();
            return allocate;
        }
        return allocate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean add(PoolArena<?> area, PoolChunk chunk, long handle, int normCapacity) {
        MemoryRegionCache<?> cache;
        if (area.isTinyOrSmall(normCapacity)) {
            if (PoolArena.isTiny(normCapacity)) {
                cache = cacheForTiny(area, normCapacity);
            } else {
                cache = cacheForSmall(area, normCapacity);
            }
        } else {
            cache = cacheForNormal(area, normCapacity);
        }
        if (cache == null) {
            return false;
        }
        return cache.add(chunk, handle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free() {
        ThreadDeathWatcher.unwatch(this.thread, this.freeTask);
        free0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void free0() {
        int numFreed = free(this.tinySubPageDirectCaches) + free(this.smallSubPageDirectCaches) + free(this.normalDirectCaches) + free((MemoryRegionCache<?>[]) this.tinySubPageHeapCaches) + free((MemoryRegionCache<?>[]) this.smallSubPageHeapCaches) + free((MemoryRegionCache<?>[]) this.normalHeapCaches);
        if (numFreed <= 0 || !logger.isDebugEnabled()) {
            return;
        }
        logger.debug("Freed {} thread-local buffer(s) from thread: {}", Integer.valueOf(numFreed), this.thread.getName());
    }

    private static int free(MemoryRegionCache<?>[] memoryRegionCacheArr) {
        if (memoryRegionCacheArr == null) {
            return 0;
        }
        int numFreed = 0;
        for (MemoryRegionCache<?> c : memoryRegionCacheArr) {
            numFreed += free(c);
        }
        return numFreed;
    }

    private static int free(MemoryRegionCache<?> cache) {
        if (cache == null) {
            return 0;
        }
        return cache.free();
    }

    void trim() {
        trim(this.tinySubPageDirectCaches);
        trim(this.smallSubPageDirectCaches);
        trim(this.normalDirectCaches);
        trim((MemoryRegionCache<?>[]) this.tinySubPageHeapCaches);
        trim((MemoryRegionCache<?>[]) this.smallSubPageHeapCaches);
        trim((MemoryRegionCache<?>[]) this.normalHeapCaches);
    }

    private static void trim(MemoryRegionCache<?>[] memoryRegionCacheArr) {
        if (memoryRegionCacheArr != null) {
            for (MemoryRegionCache<?> c : memoryRegionCacheArr) {
                trim(c);
            }
        }
    }

    private static void trim(MemoryRegionCache<?> cache) {
        if (cache == null) {
            return;
        }
        cache.trim();
    }

    private MemoryRegionCache<?> cacheForTiny(PoolArena<?> area, int normCapacity) {
        int idx = PoolArena.tinyIdx(normCapacity);
        return area.isDirect() ? cache(this.tinySubPageDirectCaches, idx) : cache(this.tinySubPageHeapCaches, idx);
    }

    private MemoryRegionCache<?> cacheForSmall(PoolArena<?> area, int normCapacity) {
        int idx = PoolArena.smallIdx(normCapacity);
        return area.isDirect() ? cache(this.smallSubPageDirectCaches, idx) : cache(this.smallSubPageHeapCaches, idx);
    }

    private MemoryRegionCache<?> cacheForNormal(PoolArena<?> area, int normCapacity) {
        if (area.isDirect()) {
            int idx = log2(normCapacity >> this.numShiftsNormalDirect);
            return cache(this.normalDirectCaches, idx);
        }
        int idx2 = log2(normCapacity >> this.numShiftsNormalHeap);
        return cache(this.normalHeapCaches, idx2);
    }

    private static <T> MemoryRegionCache<T> cache(MemoryRegionCache<T>[] memoryRegionCacheArr, int idx) {
        if (memoryRegionCacheArr == null || idx > memoryRegionCacheArr.length - 1) {
            return null;
        }
        return memoryRegionCacheArr[idx];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class SubPageMemoryRegionCache<T> extends MemoryRegionCache<T> {
        SubPageMemoryRegionCache(int size) {
            super(size);
        }

        @Override // io.netty.buffer.PoolThreadCache.MemoryRegionCache
        protected void initBuf(PoolChunk<T> chunk, long handle, PooledByteBuf<T> buf, int reqCapacity) {
            chunk.initBufWithSubpage(buf, handle, reqCapacity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class NormalMemoryRegionCache<T> extends MemoryRegionCache<T> {
        NormalMemoryRegionCache(int size) {
            super(size);
        }

        @Override // io.netty.buffer.PoolThreadCache.MemoryRegionCache
        protected void initBuf(PoolChunk<T> chunk, long handle, PooledByteBuf<T> buf, int reqCapacity) {
            chunk.initBuf(buf, handle, reqCapacity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class MemoryRegionCache<T> {
        private final Entry<T>[] entries;
        private int entriesInUse;
        private int head;
        private int maxEntriesInUse;
        private final int maxUnusedCached;
        private int tail;

        protected abstract void initBuf(PoolChunk<T> poolChunk, long j, PooledByteBuf<T> pooledByteBuf, int i);

        MemoryRegionCache(int size) {
            this.entries = new Entry[powerOfTwo(size)];
            for (int i = 0; i < this.entries.length; i++) {
                this.entries[i] = new Entry<>(null);
            }
            this.maxUnusedCached = size / 2;
        }

        private static int powerOfTwo(int res) {
            if (res <= 2) {
                return 2;
            }
            int res2 = res - 1;
            int res3 = res2 | (res2 >> 1);
            int res4 = res3 | (res3 >> 2);
            int res5 = res4 | (res4 >> 4);
            int res6 = res5 | (res5 >> 8);
            return (res6 | (res6 >> 16)) + 1;
        }

        public boolean add(PoolChunk<T> chunk, long handle) {
            Entry<T> entry = this.entries[this.tail];
            if (entry.chunk != null) {
                return false;
            }
            this.entriesInUse--;
            entry.chunk = chunk;
            entry.handle = handle;
            this.tail = nextIdx(this.tail);
            return true;
        }

        public boolean allocate(PooledByteBuf<T> buf, int reqCapacity) {
            Entry<T> entry = this.entries[this.head];
            if (entry.chunk == null) {
                return false;
            }
            this.entriesInUse++;
            if (this.maxEntriesInUse < this.entriesInUse) {
                this.maxEntriesInUse = this.entriesInUse;
            }
            initBuf(entry.chunk, entry.handle, buf, reqCapacity);
            entry.chunk = null;
            this.head = nextIdx(this.head);
            return true;
        }

        public int free() {
            int numFreed = 0;
            this.entriesInUse = 0;
            this.maxEntriesInUse = 0;
            int i = this.head;
            while (freeEntry(this.entries[i])) {
                numFreed++;
                i = nextIdx(i);
            }
            return numFreed;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void trim() {
            int free = size() - this.maxEntriesInUse;
            this.entriesInUse = 0;
            this.maxEntriesInUse = 0;
            if (free > this.maxUnusedCached) {
                int i = this.head;
                while (free > 0 && freeEntry(this.entries[i])) {
                    i = nextIdx(i);
                    free--;
                }
            }
        }

        private static boolean freeEntry(Entry entry) {
            PoolChunk chunk = entry.chunk;
            if (chunk == null) {
                return false;
            }
            synchronized (chunk.arena) {
                chunk.parent.free(chunk, entry.handle);
            }
            entry.chunk = null;
            return true;
        }

        private int size() {
            return (this.tail - this.head) & (this.entries.length - 1);
        }

        private int nextIdx(int index) {
            return (index + 1) & (this.entries.length - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class Entry<T> {
            PoolChunk<T> chunk;
            long handle;

            private Entry() {
            }

            /* synthetic */ Entry(Entry entry) {
                this();
            }
        }
    }
}
