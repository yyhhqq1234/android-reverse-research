package io.netty.buffer;

import android.support.v4.widget.ExploreByTouchHelper;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class PoolArena<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    static final int numTinySubpagePools = 32;
    final int chunkSize;
    private final int maxOrder;
    final int numSmallSubpagePools;
    final int pageShifts;
    final int pageSize;
    final PooledByteBufAllocator parent;
    private final PoolChunkList<T> q000;
    private final PoolChunkList<T> q025;
    private final PoolChunkList<T> q050;
    private final PoolChunkList<T> q075;
    private final PoolChunkList<T> q100;
    private final PoolChunkList<T> qInit;
    private final PoolSubpage<T>[] smallSubpagePools;
    final int subpageOverflowMask;
    private final PoolSubpage<T>[] tinySubpagePools = newSubpagePoolArray(32);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void destroyChunk(PoolChunk<T> poolChunk);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isDirect();

    protected abstract void memoryCopy(T t, int i, T t2, int i2, int i3);

    protected abstract PooledByteBuf<T> newByteBuf(int i);

    protected abstract PoolChunk<T> newChunk(int i, int i2, int i3, int i4);

    protected abstract PoolChunk<T> newUnpooledChunk(int i);

    static {
        $assertionsDisabled = !PoolArena.class.desiredAssertionStatus();
    }

    protected PoolArena(PooledByteBufAllocator parent, int pageSize, int maxOrder, int pageShifts, int chunkSize) {
        this.parent = parent;
        this.pageSize = pageSize;
        this.maxOrder = maxOrder;
        this.pageShifts = pageShifts;
        this.chunkSize = chunkSize;
        this.subpageOverflowMask = (pageSize - 1) ^ (-1);
        for (int i = 0; i < this.tinySubpagePools.length; i++) {
            this.tinySubpagePools[i] = newSubpagePoolHead(pageSize);
        }
        this.numSmallSubpagePools = pageShifts - 9;
        this.smallSubpagePools = newSubpagePoolArray(this.numSmallSubpagePools);
        for (int i2 = 0; i2 < this.smallSubpagePools.length; i2++) {
            this.smallSubpagePools[i2] = newSubpagePoolHead(pageSize);
        }
        this.q100 = new PoolChunkList<>(this, null, 100, Integer.MAX_VALUE);
        this.q075 = new PoolChunkList<>(this, this.q100, 75, 100);
        this.q050 = new PoolChunkList<>(this, this.q075, 50, 100);
        this.q025 = new PoolChunkList<>(this, this.q050, 25, 75);
        this.q000 = new PoolChunkList<>(this, this.q025, 1, 50);
        this.qInit = new PoolChunkList<>(this, this.q000, ExploreByTouchHelper.INVALID_ID, 25);
        this.q100.prevList = this.q075;
        this.q075.prevList = this.q050;
        this.q050.prevList = this.q025;
        this.q025.prevList = this.q000;
        this.q000.prevList = null;
        this.qInit.prevList = this.qInit;
    }

    private PoolSubpage<T> newSubpagePoolHead(int pageSize) {
        PoolSubpage<T> head = new PoolSubpage<>(pageSize);
        head.prev = head;
        head.next = head;
        return head;
    }

    private PoolSubpage<T>[] newSubpagePoolArray(int size) {
        return new PoolSubpage[size];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PooledByteBuf<T> allocate(PoolThreadCache cache, int reqCapacity, int maxCapacity) {
        PooledByteBuf<T> buf = newByteBuf(maxCapacity);
        allocate(cache, buf, reqCapacity);
        return buf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int tinyIdx(int normCapacity) {
        return normCapacity >>> 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int smallIdx(int normCapacity) {
        int tableIdx = 0;
        int i = normCapacity >>> 10;
        while (i != 0) {
            i >>>= 1;
            tableIdx++;
        }
        return tableIdx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTinyOrSmall(int normCapacity) {
        return (this.subpageOverflowMask & normCapacity) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTiny(int normCapacity) {
        return (normCapacity & (-512)) == 0;
    }

    private void allocate(PoolThreadCache cache, PooledByteBuf<T> buf, int reqCapacity) {
        int tableIdx;
        PoolSubpage[] table;
        int normCapacity = normalizeCapacity(reqCapacity);
        if (isTinyOrSmall(normCapacity)) {
            if (isTiny(normCapacity)) {
                if (!cache.allocateTiny(this, buf, reqCapacity, normCapacity)) {
                    tableIdx = tinyIdx(normCapacity);
                    table = this.tinySubpagePools;
                } else {
                    return;
                }
            } else if (!cache.allocateSmall(this, buf, reqCapacity, normCapacity)) {
                tableIdx = smallIdx(normCapacity);
                table = this.smallSubpagePools;
            } else {
                return;
            }
            synchronized (this) {
                PoolSubpage head = table[tableIdx];
                PoolSubpage s = head.next;
                if (s != head) {
                    if (!$assertionsDisabled && (!s.doNotDestroy || s.elemSize != normCapacity)) {
                        throw new AssertionError();
                    }
                    long handle = s.allocate();
                    if (!$assertionsDisabled && handle < 0) {
                        throw new AssertionError();
                    }
                    s.chunk.initBufWithSubpage(buf, handle, reqCapacity);
                    return;
                }
            }
        } else if (normCapacity <= this.chunkSize) {
            if (cache.allocateNormal(this, buf, reqCapacity, normCapacity)) {
                return;
            }
        } else {
            allocateHuge(buf, reqCapacity);
            return;
        }
        allocateNormal(buf, reqCapacity, normCapacity);
    }

    private synchronized void allocateNormal(PooledByteBuf<T> buf, int reqCapacity, int normCapacity) {
        if (!this.q050.allocate(buf, reqCapacity, normCapacity) && !this.q025.allocate(buf, reqCapacity, normCapacity) && !this.q000.allocate(buf, reqCapacity, normCapacity) && !this.qInit.allocate(buf, reqCapacity, normCapacity) && !this.q075.allocate(buf, reqCapacity, normCapacity) && !this.q100.allocate(buf, reqCapacity, normCapacity)) {
            PoolChunk<T> c = newChunk(this.pageSize, this.maxOrder, this.pageShifts, this.chunkSize);
            long handle = c.allocate(normCapacity);
            if (!$assertionsDisabled && handle <= 0) {
                throw new AssertionError();
            }
            c.initBuf(buf, handle, reqCapacity);
            this.qInit.add(c);
        }
    }

    private void allocateHuge(PooledByteBuf<T> buf, int reqCapacity) {
        buf.initUnpooled(newUnpooledChunk(reqCapacity), reqCapacity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free(PoolChunk<T> chunk, long handle, int normCapacity) {
        if (chunk.unpooled) {
            destroyChunk(chunk);
            return;
        }
        PoolThreadCache cache = this.parent.threadCache.get();
        if (!cache.add(this, chunk, handle, normCapacity)) {
            synchronized (this) {
                chunk.parent.free(chunk, handle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolSubpage<T> findSubpagePoolHead(int elemSize) {
        int tableIdx;
        PoolSubpage[] table;
        if (isTiny(elemSize)) {
            tableIdx = elemSize >>> 4;
            table = this.tinySubpagePools;
        } else {
            tableIdx = 0;
            int elemSize2 = elemSize >>> 10;
            while (elemSize2 != 0) {
                elemSize2 >>>= 1;
                tableIdx++;
            }
            table = this.smallSubpagePools;
        }
        return table[tableIdx];
    }

    int normalizeCapacity(int reqCapacity) {
        if (reqCapacity < 0) {
            throw new IllegalArgumentException("capacity: " + reqCapacity + " (expected: 0+)");
        }
        if (reqCapacity < this.chunkSize) {
            if (isTiny(reqCapacity)) {
                return (reqCapacity & 15) != 0 ? (reqCapacity & (-16)) + 16 : reqCapacity;
            }
            int normalizedCapacity = reqCapacity - 1;
            int normalizedCapacity2 = normalizedCapacity | (normalizedCapacity >>> 1);
            int normalizedCapacity3 = normalizedCapacity2 | (normalizedCapacity2 >>> 2);
            int normalizedCapacity4 = normalizedCapacity3 | (normalizedCapacity3 >>> 4);
            int normalizedCapacity5 = normalizedCapacity4 | (normalizedCapacity4 >>> 8);
            int normalizedCapacity6 = (normalizedCapacity5 | (normalizedCapacity5 >>> 16)) + 1;
            if (normalizedCapacity6 < 0) {
                normalizedCapacity6 >>>= 1;
            }
            return normalizedCapacity6;
        }
        return reqCapacity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reallocate(PooledByteBuf<T> buf, int newCapacity, boolean freeOldMemory) {
        if (newCapacity < 0 || newCapacity > buf.maxCapacity()) {
            throw new IllegalArgumentException("newCapacity: " + newCapacity);
        }
        int oldCapacity = buf.length;
        if (oldCapacity != newCapacity) {
            PoolChunk<T> oldChunk = buf.chunk;
            long oldHandle = buf.handle;
            T oldMemory = buf.memory;
            int oldOffset = buf.offset;
            int oldMaxLength = buf.maxLength;
            int readerIndex = buf.readerIndex();
            int writerIndex = buf.writerIndex();
            allocate(this.parent.threadCache.get(), buf, newCapacity);
            if (newCapacity > oldCapacity) {
                memoryCopy(oldMemory, oldOffset, buf.memory, buf.offset, oldCapacity);
            } else if (newCapacity < oldCapacity) {
                if (readerIndex < newCapacity) {
                    if (writerIndex > newCapacity) {
                        writerIndex = newCapacity;
                    }
                    memoryCopy(oldMemory, oldOffset + readerIndex, buf.memory, buf.offset + readerIndex, writerIndex - readerIndex);
                } else {
                    writerIndex = newCapacity;
                    readerIndex = newCapacity;
                }
            }
            buf.setIndex(readerIndex, writerIndex);
            if (freeOldMemory) {
                free(oldChunk, oldHandle, oldMaxLength);
            }
        }
    }

    public synchronized String toString() {
        StringBuilder buf;
        buf = new StringBuilder();
        buf.append("Chunk(s) at 0~25%:");
        buf.append(StringUtil.NEWLINE);
        buf.append(this.qInit);
        buf.append(StringUtil.NEWLINE);
        buf.append("Chunk(s) at 0~50%:");
        buf.append(StringUtil.NEWLINE);
        buf.append(this.q000);
        buf.append(StringUtil.NEWLINE);
        buf.append("Chunk(s) at 25~75%:");
        buf.append(StringUtil.NEWLINE);
        buf.append(this.q025);
        buf.append(StringUtil.NEWLINE);
        buf.append("Chunk(s) at 50~100%:");
        buf.append(StringUtil.NEWLINE);
        buf.append(this.q050);
        buf.append(StringUtil.NEWLINE);
        buf.append("Chunk(s) at 75~100%:");
        buf.append(StringUtil.NEWLINE);
        buf.append(this.q075);
        buf.append(StringUtil.NEWLINE);
        buf.append("Chunk(s) at 100%:");
        buf.append(StringUtil.NEWLINE);
        buf.append(this.q100);
        buf.append(StringUtil.NEWLINE);
        buf.append("tiny subpages:");
        for (int i = 1; i < this.tinySubpagePools.length; i++) {
            PoolSubpage<T> head = this.tinySubpagePools[i];
            if (head.next != head) {
                buf.append(StringUtil.NEWLINE);
                buf.append(i);
                buf.append(": ");
                PoolSubpage<T> s = head.next;
                do {
                    buf.append(s);
                    s = s.next;
                } while (s != head);
            }
        }
        buf.append(StringUtil.NEWLINE);
        buf.append("small subpages:");
        for (int i2 = 1; i2 < this.smallSubpagePools.length; i2++) {
            PoolSubpage<T> head2 = this.smallSubpagePools[i2];
            if (head2.next != head2) {
                buf.append(StringUtil.NEWLINE);
                buf.append(i2);
                buf.append(": ");
                PoolSubpage<T> s2 = head2.next;
                do {
                    buf.append(s2);
                    s2 = s2.next;
                } while (s2 != head2);
            }
        }
        buf.append(StringUtil.NEWLINE);
        return buf.toString();
    }

    /* loaded from: classes.dex */
    static final class HeapArena extends PoolArena<byte[]> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public HeapArena(PooledByteBufAllocator parent, int pageSize, int maxOrder, int pageShifts, int chunkSize) {
            super(parent, pageSize, maxOrder, pageShifts, chunkSize);
        }

        @Override // io.netty.buffer.PoolArena
        boolean isDirect() {
            return false;
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<byte[]> newChunk(int pageSize, int maxOrder, int pageShifts, int chunkSize) {
            return new PoolChunk<>(this, new byte[chunkSize], pageSize, maxOrder, pageShifts, chunkSize);
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<byte[]> newUnpooledChunk(int capacity) {
            return new PoolChunk<>(this, new byte[capacity], capacity);
        }

        @Override // io.netty.buffer.PoolArena
        protected void destroyChunk(PoolChunk<byte[]> chunk) {
        }

        @Override // io.netty.buffer.PoolArena
        protected PooledByteBuf<byte[]> newByteBuf(int maxCapacity) {
            return PooledHeapByteBuf.newInstance(maxCapacity);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.buffer.PoolArena
        public void memoryCopy(byte[] src, int srcOffset, byte[] dst, int dstOffset, int length) {
            if (length != 0) {
                System.arraycopy(src, srcOffset, dst, dstOffset, length);
            }
        }
    }

    /* loaded from: classes.dex */
    static final class DirectArena extends PoolArena<ByteBuffer> {
        private static final boolean HAS_UNSAFE = PlatformDependent.hasUnsafe();

        /* JADX INFO: Access modifiers changed from: package-private */
        public DirectArena(PooledByteBufAllocator parent, int pageSize, int maxOrder, int pageShifts, int chunkSize) {
            super(parent, pageSize, maxOrder, pageShifts, chunkSize);
        }

        @Override // io.netty.buffer.PoolArena
        boolean isDirect() {
            return true;
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<ByteBuffer> newChunk(int pageSize, int maxOrder, int pageShifts, int chunkSize) {
            return new PoolChunk<>(this, ByteBuffer.allocateDirect(chunkSize), pageSize, maxOrder, pageShifts, chunkSize);
        }

        @Override // io.netty.buffer.PoolArena
        protected PoolChunk<ByteBuffer> newUnpooledChunk(int capacity) {
            return new PoolChunk<>(this, ByteBuffer.allocateDirect(capacity), capacity);
        }

        @Override // io.netty.buffer.PoolArena
        protected void destroyChunk(PoolChunk<ByteBuffer> chunk) {
            PlatformDependent.freeDirectBuffer(chunk.memory);
        }

        @Override // io.netty.buffer.PoolArena
        protected PooledByteBuf<ByteBuffer> newByteBuf(int maxCapacity) {
            return HAS_UNSAFE ? PooledUnsafeDirectByteBuf.newInstance(maxCapacity) : PooledDirectByteBuf.newInstance(maxCapacity);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.buffer.PoolArena
        public void memoryCopy(ByteBuffer src, int srcOffset, ByteBuffer dst, int dstOffset, int length) {
            if (length != 0) {
                if (HAS_UNSAFE) {
                    PlatformDependent.copyMemory(PlatformDependent.directBufferAddress(src) + srcOffset, PlatformDependent.directBufferAddress(dst) + dstOffset, length);
                    return;
                }
                ByteBuffer src2 = src.duplicate();
                ByteBuffer dst2 = dst.duplicate();
                src2.position(srcOffset).limit(srcOffset + length);
                dst2.position(dstOffset);
                dst2.put(src2);
            }
        }
    }
}
