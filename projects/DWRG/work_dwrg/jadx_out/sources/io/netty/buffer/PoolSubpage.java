package io.netty.buffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PoolSubpage<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final long[] bitmap;
    private int bitmapLength;
    final PoolChunk<T> chunk;
    boolean doNotDestroy;
    int elemSize;
    private int maxNumElems;
    private final int memoryMapIdx;
    PoolSubpage<T> next;
    private int nextAvail;
    private int numAvail;
    private final int pageSize;
    PoolSubpage<T> prev;
    private final int runOffset;

    static {
        $assertionsDisabled = !PoolSubpage.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolSubpage(int pageSize) {
        this.chunk = null;
        this.memoryMapIdx = -1;
        this.runOffset = -1;
        this.elemSize = -1;
        this.pageSize = pageSize;
        this.bitmap = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PoolSubpage(PoolChunk<T> chunk, int memoryMapIdx, int runOffset, int pageSize, int elemSize) {
        this.chunk = chunk;
        this.memoryMapIdx = memoryMapIdx;
        this.runOffset = runOffset;
        this.pageSize = pageSize;
        this.bitmap = new long[pageSize >>> 10];
        init(elemSize);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init(int elemSize) {
        this.doNotDestroy = true;
        this.elemSize = elemSize;
        if (elemSize != 0) {
            int i = this.pageSize / elemSize;
            this.numAvail = i;
            this.maxNumElems = i;
            this.nextAvail = 0;
            this.bitmapLength = this.maxNumElems >>> 6;
            if ((this.maxNumElems & 63) != 0) {
                this.bitmapLength++;
            }
            for (int i2 = 0; i2 < this.bitmapLength; i2++) {
                this.bitmap[i2] = 0;
            }
        }
        addToPool();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long allocate() {
        if (this.elemSize == 0) {
            return toHandle(0);
        }
        if (this.numAvail == 0 || !this.doNotDestroy) {
            return -1L;
        }
        int bitmapIdx = getNextAvail();
        int q = bitmapIdx >>> 6;
        int r = bitmapIdx & 63;
        if (!$assertionsDisabled && ((this.bitmap[q] >>> r) & 1) != 0) {
            throw new AssertionError();
        }
        long[] jArr = this.bitmap;
        jArr[q] = jArr[q] | (1 << r);
        int i = this.numAvail - 1;
        this.numAvail = i;
        if (i == 0) {
            removeFromPool();
        }
        return toHandle(bitmapIdx);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean free(int bitmapIdx) {
        if (this.elemSize == 0) {
            return true;
        }
        int q = bitmapIdx >>> 6;
        int r = bitmapIdx & 63;
        if (!$assertionsDisabled && ((this.bitmap[q] >>> r) & 1) == 0) {
            throw new AssertionError();
        }
        long[] jArr = this.bitmap;
        jArr[q] = jArr[q] ^ (1 << r);
        setNextAvail(bitmapIdx);
        int i = this.numAvail;
        this.numAvail = i + 1;
        if (i == 0) {
            addToPool();
            return true;
        }
        if (this.numAvail != this.maxNumElems || this.prev == this.next) {
            return true;
        }
        this.doNotDestroy = false;
        removeFromPool();
        return false;
    }

    private void addToPool() {
        PoolSubpage<T> head = this.chunk.arena.findSubpagePoolHead(this.elemSize);
        if (!$assertionsDisabled && (this.prev != null || this.next != null)) {
            throw new AssertionError();
        }
        this.prev = head;
        this.next = head.next;
        this.next.prev = this;
        head.next = this;
    }

    private void removeFromPool() {
        if (!$assertionsDisabled && (this.prev == null || this.next == null)) {
            throw new AssertionError();
        }
        this.prev.next = this.next;
        this.next.prev = this.prev;
        this.next = null;
        this.prev = null;
    }

    private void setNextAvail(int bitmapIdx) {
        this.nextAvail = bitmapIdx;
    }

    private int getNextAvail() {
        int nextAvail = this.nextAvail;
        if (nextAvail < 0) {
            return findNextAvail();
        }
        this.nextAvail = -1;
        return nextAvail;
    }

    private int findNextAvail() {
        long[] bitmap = this.bitmap;
        int bitmapLength = this.bitmapLength;
        for (int i = 0; i < bitmapLength; i++) {
            long bits = bitmap[i];
            if (((-1) ^ bits) != 0) {
                return findNextAvail0(i, bits);
            }
        }
        return -1;
    }

    private int findNextAvail0(int i, long bits) {
        int maxNumElems = this.maxNumElems;
        int baseVal = i << 6;
        int j = 0;
        while (true) {
            if (j >= 64) {
                break;
            }
            if ((1 & bits) == 0) {
                int val = baseVal | j;
                if (val < maxNumElems) {
                    return val;
                }
            } else {
                bits >>>= 1;
                j++;
            }
        }
        return -1;
    }

    private long toHandle(int bitmapIdx) {
        return 4611686018427387904L | (bitmapIdx << 32) | this.memoryMapIdx;
    }

    public String toString() {
        if (!this.doNotDestroy) {
            return "(" + this.memoryMapIdx + ": not in use)";
        }
        return String.valueOf(String.valueOf('(')) + this.memoryMapIdx + ": " + (this.maxNumElems - this.numAvail) + '/' + this.maxNumElems + ", offset: " + this.runOffset + ", length: " + this.pageSize + ", elemSize: " + this.elemSize + ')';
    }
}
