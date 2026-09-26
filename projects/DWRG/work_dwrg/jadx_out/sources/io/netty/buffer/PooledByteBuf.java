package io.netty.buffer;

import io.netty.util.Recycler;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class PooledByteBuf<T> extends AbstractReferenceCountedByteBuf {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected PoolChunk<T> chunk;
    protected long handle;
    protected int length;
    int maxLength;
    protected T memory;
    protected int offset;
    private final Recycler.Handle recyclerHandle;
    private ByteBuffer tmpNioBuf;

    protected abstract ByteBuffer newInternalNioBuffer(T t);

    protected abstract Recycler<?> recycler();

    static {
        $assertionsDisabled = !PooledByteBuf.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PooledByteBuf(Recycler.Handle recyclerHandle, int maxCapacity) {
        super(maxCapacity);
        this.recyclerHandle = recyclerHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init(PoolChunk<T> chunk, long handle, int offset, int length, int maxLength) {
        if (!$assertionsDisabled && handle < 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && chunk == null) {
            throw new AssertionError();
        }
        this.chunk = chunk;
        this.handle = handle;
        this.memory = chunk.memory;
        this.offset = offset;
        this.length = length;
        this.maxLength = maxLength;
        setIndex(0, 0);
        this.tmpNioBuf = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initUnpooled(PoolChunk<T> chunk, int length) {
        if (!$assertionsDisabled && chunk == null) {
            throw new AssertionError();
        }
        this.chunk = chunk;
        this.handle = 0L;
        this.memory = chunk.memory;
        this.offset = 0;
        this.maxLength = length;
        this.length = length;
        setIndex(0, 0);
        this.tmpNioBuf = null;
    }

    @Override // io.netty.buffer.ByteBuf
    public final int capacity() {
        return this.length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        if (r3 == r2.length) goto L6;
     */
    @Override // io.netty.buffer.ByteBuf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.netty.buffer.ByteBuf capacity(int r3) {
        /*
            r2 = this;
            r2.ensureAccessible()
            io.netty.buffer.PoolChunk<T> r0 = r2.chunk
            boolean r0 = r0.unpooled
            if (r0 == 0) goto Le
            int r0 = r2.length
            if (r3 != r0) goto L5b
        Ld:
            return r2
        Le:
            int r0 = r2.length
            if (r3 <= r0) goto L19
            int r0 = r2.maxLength
            if (r3 > r0) goto L5b
            r2.length = r3
            goto Ld
        L19:
            int r0 = r2.length
            if (r3 >= r0) goto Ld
            int r0 = r2.maxLength
            int r0 = r0 >>> 1
            if (r3 <= r0) goto L5b
            int r0 = r2.maxLength
            r1 = 512(0x200, float:7.175E-43)
            if (r0 > r1) goto L45
            int r0 = r2.maxLength
            int r0 = r0 + (-16)
            if (r3 <= r0) goto L5b
            r2.length = r3
            int r0 = r2.readerIndex()
            int r0 = java.lang.Math.min(r0, r3)
            int r1 = r2.writerIndex()
            int r1 = java.lang.Math.min(r1, r3)
            r2.setIndex(r0, r1)
            goto Ld
        L45:
            r2.length = r3
            int r0 = r2.readerIndex()
            int r0 = java.lang.Math.min(r0, r3)
            int r1 = r2.writerIndex()
            int r1 = java.lang.Math.min(r1, r3)
            r2.setIndex(r0, r1)
            goto Ld
        L5b:
            io.netty.buffer.PoolChunk<T> r0 = r2.chunk
            io.netty.buffer.PoolArena<T> r0 = r0.arena
            r1 = 1
            r0.reallocate(r2, r3, r1)
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.buffer.PooledByteBuf.capacity(int):io.netty.buffer.ByteBuf");
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBufAllocator alloc() {
        return this.chunk.arena.parent;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteOrder order() {
        return ByteOrder.BIG_ENDIAN;
    }

    @Override // io.netty.buffer.ByteBuf
    public final ByteBuf unwrap() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer internalNioBuffer() {
        ByteBuffer tmpNioBuf = this.tmpNioBuf;
        if (tmpNioBuf == null) {
            ByteBuffer tmpNioBuf2 = newInternalNioBuffer(this.memory);
            this.tmpNioBuf = tmpNioBuf2;
            return tmpNioBuf2;
        }
        return tmpNioBuf;
    }

    @Override // io.netty.buffer.AbstractReferenceCountedByteBuf
    protected final void deallocate() {
        if (this.handle >= 0) {
            long handle = this.handle;
            this.handle = -1L;
            this.memory = null;
            this.chunk.arena.free(this.chunk, handle, this.maxLength);
            recycle();
        }
    }

    private void recycle() {
        Recycler.Handle recyclerHandle = this.recyclerHandle;
        if (recyclerHandle != null) {
            recycler().recycle(this, recyclerHandle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int idx(int index) {
        return this.offset + index;
    }
}
