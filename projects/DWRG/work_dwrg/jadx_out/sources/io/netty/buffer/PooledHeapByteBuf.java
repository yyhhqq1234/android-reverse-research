package io.netty.buffer;

import io.netty.util.Recycler;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PooledHeapByteBuf extends PooledByteBuf<byte[]> {
    private static final Recycler<PooledHeapByteBuf> RECYCLER = new Recycler<PooledHeapByteBuf>() { // from class: io.netty.buffer.PooledHeapByteBuf.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.Recycler
        public PooledHeapByteBuf newObject(Recycler.Handle handle) {
            return new PooledHeapByteBuf(handle, 0, null);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PooledHeapByteBuf newInstance(int maxCapacity) {
        PooledHeapByteBuf buf = RECYCLER.get();
        buf.setRefCnt(1);
        buf.maxCapacity(maxCapacity);
        return buf;
    }

    /* synthetic */ PooledHeapByteBuf(Recycler.Handle handle, int i, PooledHeapByteBuf pooledHeapByteBuf) {
        this(handle, i);
    }

    private PooledHeapByteBuf(Recycler.Handle recyclerHandle, int maxCapacity) {
        super(recyclerHandle, maxCapacity);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected byte _getByte(int index) {
        return ((byte[]) this.memory)[idx(index)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected short _getShort(int index) {
        int index2 = idx(index);
        return (short) ((((byte[]) this.memory)[index2 + 1] & 255) | (((byte[]) this.memory)[index2] << 8));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected int _getUnsignedMedium(int index) {
        int index2 = idx(index);
        return (((byte[]) this.memory)[index2 + 2] & 255) | ((((byte[]) this.memory)[index2] & 255) << 16) | ((((byte[]) this.memory)[index2 + 1] & 255) << 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected int _getInt(int index) {
        int index2 = idx(index);
        return (((byte[]) this.memory)[index2 + 3] & 255) | ((((byte[]) this.memory)[index2] & 255) << 24) | ((((byte[]) this.memory)[index2 + 1] & 255) << 16) | ((((byte[]) this.memory)[index2 + 2] & 255) << 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected long _getLong(int index) {
        int index2 = idx(index);
        return (((byte[]) this.memory)[index2 + 7] & 255) | ((((byte[]) this.memory)[index2] & 255) << 56) | ((((byte[]) this.memory)[index2 + 1] & 255) << 48) | ((((byte[]) this.memory)[index2 + 2] & 255) << 40) | ((((byte[]) this.memory)[index2 + 3] & 255) << 32) | ((((byte[]) this.memory)[index2 + 4] & 255) << 24) | ((((byte[]) this.memory)[index2 + 5] & 255) << 16) | ((((byte[]) this.memory)[index2 + 6] & 255) << 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, ByteBuf dst, int dstIndex, int length) {
        checkDstIndex(index, length, dstIndex, dst.capacity());
        if (dst.hasMemoryAddress()) {
            PlatformDependent.copyMemory((byte[]) this.memory, idx(index), dst.memoryAddress() + dstIndex, length);
        } else if (dst.hasArray()) {
            getBytes(index, dst.array(), dst.arrayOffset() + dstIndex, length);
        } else {
            dst.setBytes(dstIndex, (byte[]) this.memory, idx(index), length);
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, byte[] dst, int dstIndex, int length) {
        checkDstIndex(index, length, dstIndex, dst.length);
        System.arraycopy(this.memory, idx(index), dst, dstIndex, length);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, ByteBuffer dst) {
        checkIndex(index);
        dst.put((byte[]) this.memory, idx(index), Math.min(capacity() - index, dst.remaining()));
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, OutputStream out, int length) throws IOException {
        checkIndex(index, length);
        out.write((byte[]) this.memory, idx(index), length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getBytes(int index, GatheringByteChannel out, int length) throws IOException {
        return getBytes(index, out, length, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int getBytes(int index, GatheringByteChannel out, int length, boolean internal) throws IOException {
        ByteBuffer tmpBuf;
        checkIndex(index, length);
        int index2 = idx(index);
        if (internal) {
            tmpBuf = internalNioBuffer();
        } else {
            tmpBuf = ByteBuffer.wrap((byte[]) this.memory);
        }
        return out.write((ByteBuffer) tmpBuf.clear().position(index2).limit(index2 + length));
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(GatheringByteChannel out, int length) throws IOException {
        checkReadableBytes(length);
        int readBytes = getBytes(this.readerIndex, out, length, true);
        this.readerIndex += readBytes;
        return readBytes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setByte(int index, int value) {
        ((byte[]) this.memory)[idx(index)] = (byte) value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setShort(int index, int value) {
        int index2 = idx(index);
        ((byte[]) this.memory)[index2] = (byte) (value >>> 8);
        ((byte[]) this.memory)[index2 + 1] = (byte) value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setMedium(int index, int value) {
        int index2 = idx(index);
        ((byte[]) this.memory)[index2] = (byte) (value >>> 16);
        ((byte[]) this.memory)[index2 + 1] = (byte) (value >>> 8);
        ((byte[]) this.memory)[index2 + 2] = (byte) value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setInt(int index, int value) {
        int index2 = idx(index);
        ((byte[]) this.memory)[index2] = (byte) (value >>> 24);
        ((byte[]) this.memory)[index2 + 1] = (byte) (value >>> 16);
        ((byte[]) this.memory)[index2 + 2] = (byte) (value >>> 8);
        ((byte[]) this.memory)[index2 + 3] = (byte) value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setLong(int index, long value) {
        int index2 = idx(index);
        ((byte[]) this.memory)[index2] = (byte) (value >>> 56);
        ((byte[]) this.memory)[index2 + 1] = (byte) (value >>> 48);
        ((byte[]) this.memory)[index2 + 2] = (byte) (value >>> 40);
        ((byte[]) this.memory)[index2 + 3] = (byte) (value >>> 32);
        ((byte[]) this.memory)[index2 + 4] = (byte) (value >>> 24);
        ((byte[]) this.memory)[index2 + 5] = (byte) (value >>> 16);
        ((byte[]) this.memory)[index2 + 6] = (byte) (value >>> 8);
        ((byte[]) this.memory)[index2 + 7] = (byte) value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, ByteBuf src, int srcIndex, int length) {
        checkSrcIndex(index, length, srcIndex, src.capacity());
        if (src.hasMemoryAddress()) {
            PlatformDependent.copyMemory(src.memoryAddress() + srcIndex, (byte[]) this.memory, idx(index), length);
        } else if (src.hasArray()) {
            setBytes(index, src.array(), src.arrayOffset() + srcIndex, length);
        } else {
            src.getBytes(srcIndex, (byte[]) this.memory, idx(index), length);
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, byte[] src, int srcIndex, int length) {
        checkSrcIndex(index, length, srcIndex, src.length);
        System.arraycopy(src, srcIndex, this.memory, idx(index), length);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, ByteBuffer src) {
        int length = src.remaining();
        checkIndex(index, length);
        src.get((byte[]) this.memory, idx(index), length);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int index, InputStream in, int length) throws IOException {
        checkIndex(index, length);
        return in.read((byte[]) this.memory, idx(index), length);
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int index, ScatteringByteChannel in, int length) throws IOException {
        checkIndex(index, length);
        int index2 = idx(index);
        try {
            return in.read((ByteBuffer) internalNioBuffer().clear().position(index2).limit(index2 + length));
        } catch (ClosedChannelException e) {
            return -1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int index, int length) {
        checkIndex(index, length);
        ByteBuf copy = alloc().heapBuffer(length, maxCapacity());
        copy.writeBytes((byte[]) this.memory, idx(index), length);
        return copy;
    }

    @Override // io.netty.buffer.ByteBuf
    public int nioBufferCount() {
        return 1;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers(int index, int length) {
        return new ByteBuffer[]{nioBuffer(index, length)};
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer(int index, int length) {
        checkIndex(index, length);
        ByteBuffer buf = ByteBuffer.wrap((byte[]) this.memory, idx(index), length);
        return buf.slice();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int index, int length) {
        checkIndex(index, length);
        int index2 = idx(index);
        return (ByteBuffer) internalNioBuffer().clear().position(index2).limit(index2 + length);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        return (byte[]) this.memory;
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        return this.offset;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledByteBuf
    public ByteBuffer newInternalNioBuffer(byte[] memory) {
        return ByteBuffer.wrap(memory);
    }

    @Override // io.netty.buffer.PooledByteBuf
    protected Recycler<?> recycler() {
        return RECYCLER;
    }
}
