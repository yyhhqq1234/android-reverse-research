package io.netty.buffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PoolChunk<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    final PoolArena<T> arena;
    private final int chunkSize;
    private final byte[] depthMap;
    private int freeBytes;
    private final int log2ChunkSize;
    private final int maxOrder;
    private final int maxSubpageAllocs;
    final T memory;
    private final byte[] memoryMap;
    PoolChunk<T> next;
    private final int pageShifts;
    private final int pageSize;
    PoolChunkList<T> parent;
    PoolChunk<T> prev;
    private final int subpageOverflowMask;
    private final PoolSubpage<T>[] subpages;
    final boolean unpooled;
    private final byte unusable;

    static {
        $assertionsDisabled = !PoolChunk.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolChunk(PoolArena<T> arena, T memory, int pageSize, int maxOrder, int pageShifts, int chunkSize) {
        this.unpooled = false;
        this.arena = arena;
        this.memory = memory;
        this.pageSize = pageSize;
        this.pageShifts = pageShifts;
        this.maxOrder = maxOrder;
        this.chunkSize = chunkSize;
        this.unusable = (byte) (maxOrder + 1);
        this.log2ChunkSize = log2(chunkSize);
        this.subpageOverflowMask = (pageSize - 1) ^ (-1);
        this.freeBytes = chunkSize;
        if (!$assertionsDisabled && maxOrder >= 30) {
            throw new AssertionError("maxOrder should be < 30, but is: " + maxOrder);
        }
        this.maxSubpageAllocs = 1 << maxOrder;
        this.memoryMap = new byte[this.maxSubpageAllocs << 1];
        this.depthMap = new byte[this.memoryMap.length];
        int memoryMapIndex = 1;
        for (int d = 0; d <= maxOrder; d++) {
            int depth = 1 << d;
            for (int p = 0; p < depth; p++) {
                this.memoryMap[memoryMapIndex] = (byte) d;
                this.depthMap[memoryMapIndex] = (byte) d;
                memoryMapIndex++;
            }
        }
        this.subpages = newSubpageArray(this.maxSubpageAllocs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolChunk(PoolArena<T> arena, T memory, int size) {
        this.unpooled = true;
        this.arena = arena;
        this.memory = memory;
        this.memoryMap = null;
        this.depthMap = null;
        this.subpages = null;
        this.subpageOverflowMask = 0;
        this.pageSize = 0;
        this.pageShifts = 0;
        this.maxOrder = 0;
        this.unusable = (byte) (this.maxOrder + 1);
        this.chunkSize = size;
        this.log2ChunkSize = log2(this.chunkSize);
        this.maxSubpageAllocs = 0;
    }

    private PoolSubpage<T>[] newSubpageArray(int size) {
        return new PoolSubpage[size];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int usage() {
        int freeBytes = this.freeBytes;
        if (freeBytes == 0) {
            return 100;
        }
        int freePercentage = (int) ((freeBytes * 100) / this.chunkSize);
        if (freePercentage == 0) {
            return 99;
        }
        return 100 - freePercentage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long allocate(int normCapacity) {
        return (this.subpageOverflowMask & normCapacity) != 0 ? allocateRun(normCapacity) : allocateSubpage(normCapacity);
    }

    private void updateParentsAlloc(int id) {
        while (id > 1) {
            int parentId = id >>> 1;
            byte val1 = value(id);
            byte val2 = value(id ^ 1);
            byte val = val1 < val2 ? val1 : val2;
            setValue(parentId, val);
            id = parentId;
        }
    }

    private void updateParentsFree(int id) {
        int logChild = depth(id) + 1;
        while (id > 1) {
            int parentId = id >>> 1;
            byte val1 = value(id);
            byte val2 = value(id ^ 1);
            logChild--;
            if (val1 == logChild && val2 == logChild) {
                setValue(parentId, (byte) (logChild - 1));
            } else {
                byte val = val1 < val2 ? val1 : val2;
                setValue(parentId, val);
            }
            id = parentId;
        }
    }

    private int allocateNode(int d) {
        int id = 1;
        int initial = -(1 << d);
        byte val = value(1);
        if (val > d) {
            return -1;
        }
        while (true) {
            if (val >= d && (id & initial) != 0) {
                break;
            }
            id <<= 1;
            val = value(id);
            if (val > d) {
                id ^= 1;
                val = value(id);
            }
        }
        byte value = value(id);
        if (!$assertionsDisabled && (value != d || (id & initial) != (1 << d))) {
            throw new AssertionError(String.format("val = %d, id & initial = %d, d = %d", Byte.valueOf(value), Integer.valueOf(id & initial), Integer.valueOf(d)));
        }
        setValue(id, this.unusable);
        updateParentsAlloc(id);
        return id;
    }

    private long allocateRun(int normCapacity) {
        int d = this.maxOrder - (log2(normCapacity) - this.pageShifts);
        int id = allocateNode(d);
        if (id < 0) {
            return id;
        }
        this.freeBytes -= runLength(id);
        return id;
    }

    private long allocateSubpage(int normCapacity) {
        int d = this.maxOrder;
        int id = allocateNode(d);
        if (id < 0) {
            return id;
        }
        PoolSubpage<T>[] subpages = this.subpages;
        int pageSize = this.pageSize;
        this.freeBytes -= pageSize;
        int subpageIdx = subpageIdx(id);
        PoolSubpage<T> subpage = subpages[subpageIdx];
        if (subpage == null) {
            subpage = new PoolSubpage<>(this, id, runOffset(id), pageSize, normCapacity);
            subpages[subpageIdx] = subpage;
        } else {
            subpage.init(normCapacity);
        }
        return subpage.allocate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free(long handle) {
        int memoryMapIdx = (int) handle;
        int bitmapIdx = (int) (handle >>> 32);
        if (bitmapIdx != 0) {
            PoolSubpage<T> subpage = this.subpages[subpageIdx(memoryMapIdx)];
            if (!$assertionsDisabled && (subpage == null || !subpage.doNotDestroy)) {
                throw new AssertionError();
            }
            if (subpage.free(1073741823 & bitmapIdx)) {
                return;
            }
        }
        this.freeBytes += runLength(memoryMapIdx);
        setValue(memoryMapIdx, depth(memoryMapIdx));
        updateParentsFree(memoryMapIdx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initBuf(PooledByteBuf<T> buf, long handle, int reqCapacity) {
        int memoryMapIdx = (int) handle;
        int bitmapIdx = (int) (handle >>> 32);
        if (bitmapIdx == 0) {
            byte val = value(memoryMapIdx);
            if (!$assertionsDisabled && val != this.unusable) {
                throw new AssertionError(String.valueOf((int) val));
            }
            buf.init(this, handle, runOffset(memoryMapIdx), reqCapacity, runLength(memoryMapIdx));
            return;
        }
        initBufWithSubpage(buf, handle, bitmapIdx, reqCapacity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initBufWithSubpage(PooledByteBuf<T> buf, long handle, int reqCapacity) {
        initBufWithSubpage(buf, handle, (int) (handle >>> 32), reqCapacity);
    }

    private void initBufWithSubpage(PooledByteBuf<T> buf, long handle, int bitmapIdx, int reqCapacity) {
        if (!$assertionsDisabled && bitmapIdx == 0) {
            throw new AssertionError();
        }
        int memoryMapIdx = (int) handle;
        PoolSubpage<T> subpage = this.subpages[subpageIdx(memoryMapIdx)];
        if (!$assertionsDisabled && !subpage.doNotDestroy) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && reqCapacity > subpage.elemSize) {
            throw new AssertionError();
        }
        buf.init(this, handle, runOffset(memoryMapIdx) + ((1073741823 & bitmapIdx) * subpage.elemSize), reqCapacity, subpage.elemSize);
    }

    private byte value(int id) {
        return this.memoryMap[id];
    }

    private void setValue(int id, byte val) {
        this.memoryMap[id] = val;
    }

    private byte depth(int id) {
        return this.depthMap[id];
    }

    private static int log2(int val) {
        return 31 - Integer.numberOfLeadingZeros(val);
    }

    private int runLength(int id) {
        return 1 << (this.log2ChunkSize - depth(id));
    }

    private int runOffset(int id) {
        int shift = id ^ (1 << depth(id));
        return runLength(id) * shift;
    }

    private int subpageIdx(int memoryMapIdx) {
        return this.maxSubpageAllocs ^ memoryMapIdx;
    }

    public String toString() {
        return "Chunk(" + Integer.toHexString(System.identityHashCode(this)) + ": " + usage() + "%, " + (this.chunkSize - this.freeBytes) + '/' + this.chunkSize + ')';
    }
}
