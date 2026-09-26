package io.netty.buffer;

import io.netty.util.Recycler;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PooledUnsafeDirectByteBuf extends PooledByteBuf<ByteBuffer> {
    private static final boolean NATIVE_ORDER;
    private static final Recycler<PooledUnsafeDirectByteBuf> RECYCLER;
    private long memoryAddress;

    static {
        NATIVE_ORDER = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        RECYCLER = new Recycler<PooledUnsafeDirectByteBuf>() { // from class: io.netty.buffer.PooledUnsafeDirectByteBuf.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.Recycler
            public PooledUnsafeDirectByteBuf newObject(Recycler.Handle handle) {
                return new PooledUnsafeDirectByteBuf(handle, 0, null);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PooledUnsafeDirectByteBuf newInstance(int maxCapacity) {
        PooledUnsafeDirectByteBuf buf = RECYCLER.get();
        buf.setRefCnt(1);
        buf.maxCapacity(maxCapacity);
        return buf;
    }

    /* synthetic */ PooledUnsafeDirectByteBuf(Recycler.Handle handle, int i, PooledUnsafeDirectByteBuf pooledUnsafeDirectByteBuf) {
        this(handle, i);
    }

    private PooledUnsafeDirectByteBuf(Recycler.Handle recyclerHandle, int maxCapacity) {
        super(recyclerHandle, maxCapacity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.buffer.PooledByteBuf
    public void init(PoolChunk<ByteBuffer> chunk, long handle, int offset, int length, int maxLength) {
        super.init(chunk, handle, offset, length, maxLength);
        initMemoryAddress();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.buffer.PooledByteBuf
    public void initUnpooled(PoolChunk<ByteBuffer> chunk, int length) {
        super.initUnpooled(chunk, length);
        initMemoryAddress();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initMemoryAddress() {
        this.memoryAddress = PlatformDependent.directBufferAddress((ByteBuffer) this.memory) + this.offset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledByteBuf
    public ByteBuffer newInternalNioBuffer(ByteBuffer memory) {
        return memory.duplicate();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isDirect() {
        return true;
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected byte _getByte(int index) {
        return PlatformDependent.getByte(addr(index));
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected short _getShort(int index) {
        short v = PlatformDependent.getShort(addr(index));
        return NATIVE_ORDER ? v : Short.reverseBytes(v);
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected int _getUnsignedMedium(int index) {
        long addr = addr(index);
        return ((PlatformDependent.getByte(addr) & 255) << 16) | ((PlatformDependent.getByte(1 + addr) & 255) << 8) | (PlatformDependent.getByte(2 + addr) & 255);
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected int _getInt(int index) {
        int v = PlatformDependent.getInt(addr(index));
        return NATIVE_ORDER ? v : Integer.reverseBytes(v);
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected long _getLong(int index) {
        long v = PlatformDependent.getLong(addr(index));
        return NATIVE_ORDER ? v : Long.reverseBytes(v);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, ByteBuf dst, int dstIndex, int length) {
        checkIndex(index, length);
        if (dst == null) {
            throw new NullPointerException("dst");
        }
        if (dstIndex < 0 || dstIndex > dst.capacity() - length) {
            throw new IndexOutOfBoundsException("dstIndex: " + dstIndex);
        }
        if (length != 0) {
            if (dst.hasMemoryAddress()) {
                PlatformDependent.copyMemory(addr(index), dst.memoryAddress() + dstIndex, length);
            } else if (dst.hasArray()) {
                PlatformDependent.copyMemory(addr(index), dst.array(), dst.arrayOffset() + dstIndex, length);
            } else {
                dst.setBytes(dstIndex, this, index, length);
            }
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, byte[] dst, int dstIndex, int length) {
        checkIndex(index, length);
        if (dst == null) {
            throw new NullPointerException("dst");
        }
        if (dstIndex < 0 || dstIndex > dst.length - length) {
            throw new IndexOutOfBoundsException("dstIndex: " + dstIndex);
        }
        if (length != 0) {
            PlatformDependent.copyMemory(addr(index), dst, dstIndex, length);
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, ByteBuffer dst) {
        getBytes(index, dst, false);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void getBytes(int index, ByteBuffer dst, boolean internal) {
        ByteBuffer tmpBuf;
        checkIndex(index);
        int bytesToCopy = Math.min(capacity() - index, dst.remaining());
        if (internal) {
            tmpBuf = internalNioBuffer();
        } else {
            tmpBuf = ((ByteBuffer) this.memory).duplicate();
        }
        int index2 = idx(index);
        tmpBuf.clear().position(index2).limit(index2 + bytesToCopy);
        dst.put(tmpBuf);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuffer dst) {
        int length = dst.remaining();
        checkReadableBytes(length);
        getBytes(this.readerIndex, dst, true);
        this.readerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, OutputStream out, int length) throws IOException {
        checkIndex(index, length);
        if (length != 0) {
            byte[] tmp = new byte[length];
            PlatformDependent.copyMemory(addr(index), tmp, 0, length);
            out.write(tmp);
        }
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
        if (length == 0) {
            return 0;
        }
        if (internal) {
            tmpBuf = internalNioBuffer();
        } else {
            tmpBuf = ((ByteBuffer) this.memory).duplicate();
        }
        int index2 = idx(index);
        tmpBuf.clear().position(index2).limit(index2 + length);
        return out.write(tmpBuf);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public int readBytes(GatheringByteChannel out, int length) throws IOException {
        checkReadableBytes(length);
        int readBytes = getBytes(this.readerIndex, out, length, true);
        this.readerIndex += readBytes;
        return readBytes;
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setByte(int index, int value) {
        PlatformDependent.putByte(addr(index), (byte) value);
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setShort(int index, int value) {
        PlatformDependent.putShort(addr(index), NATIVE_ORDER ? (short) value : Short.reverseBytes((short) value));
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setMedium(int index, int value) {
        long addr = addr(index);
        PlatformDependent.putByte(addr, (byte) (value >>> 16));
        PlatformDependent.putByte(1 + addr, (byte) (value >>> 8));
        PlatformDependent.putByte(2 + addr, (byte) value);
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setInt(int index, int value) {
        long addr = addr(index);
        if (!NATIVE_ORDER) {
            value = Integer.reverseBytes(value);
        }
        PlatformDependent.putInt(addr, value);
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected void _setLong(int index, long value) {
        long addr = addr(index);
        if (!NATIVE_ORDER) {
            value = Long.reverseBytes(value);
        }
        PlatformDependent.putLong(addr, value);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, ByteBuf src, int srcIndex, int length) {
        checkIndex(index, length);
        if (src == null) {
            throw new NullPointerException("src");
        }
        if (srcIndex < 0 || srcIndex > src.capacity() - length) {
            throw new IndexOutOfBoundsException("srcIndex: " + srcIndex);
        }
        if (length != 0) {
            if (src.hasMemoryAddress()) {
                PlatformDependent.copyMemory(src.memoryAddress() + srcIndex, addr(index), length);
            } else if (src.hasArray()) {
                PlatformDependent.copyMemory(src.array(), src.arrayOffset() + srcIndex, addr(index), length);
            } else {
                src.getBytes(srcIndex, this, index, length);
            }
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, byte[] src, int srcIndex, int length) {
        checkIndex(index, length);
        if (length != 0) {
            PlatformDependent.copyMemory(src, srcIndex, addr(index), length);
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, ByteBuffer src) {
        checkIndex(index, src.remaining());
        ByteBuffer tmpBuf = internalNioBuffer();
        if (src == tmpBuf) {
            src = src.duplicate();
        }
        int index2 = idx(index);
        tmpBuf.clear().position(index2).limit(src.remaining() + index2);
        tmpBuf.put(src);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int index, InputStream in, int length) throws IOException {
        checkIndex(index, length);
        byte[] tmp = new byte[length];
        int readBytes = in.read(tmp);
        if (readBytes > 0) {
            PlatformDependent.copyMemory(tmp, 0, addr(index), readBytes);
        }
        return readBytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setBytes(int index, ScatteringByteChannel in, int length) throws IOException {
        checkIndex(index, length);
        ByteBuffer tmpBuf = internalNioBuffer();
        int index2 = idx(index);
        tmpBuf.clear().position(index2).limit(index2 + length);
        try {
            return in.read(tmpBuf);
        } catch (ClosedChannelException e) {
            return -1;
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy(int index, int length) {
        checkIndex(index, length);
        ByteBuf copy = alloc().directBuffer(length, maxCapacity());
        if (length != 0) {
            if (copy.hasMemoryAddress()) {
                PlatformDependent.copyMemory(addr(index), copy.memoryAddress(), length);
                copy.setIndex(0, length);
            } else {
                copy.writeBytes(this, index, length);
            }
        }
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
        int index2 = idx(index);
        return ((ByteBuffer) ((ByteBuffer) this.memory).duplicate().position(index2).limit(index2 + length)).slice();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer internalNioBuffer(int index, int length) {
        checkIndex(index, length);
        int index2 = idx(index);
        return (ByteBuffer) internalNioBuffer().clear().position(index2).limit(index2 + length);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasArray() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public byte[] array() {
        throw new UnsupportedOperationException("direct buffer");
    }

    @Override // io.netty.buffer.ByteBuf
    public int arrayOffset() {
        throw new UnsupportedOperationException("direct buffer");
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean hasMemoryAddress() {
        return true;
    }

    @Override // io.netty.buffer.ByteBuf
    public long memoryAddress() {
        return this.memoryAddress;
    }

    private long addr(int index) {
        return this.memoryAddress + index;
    }

    @Override // io.netty.buffer.PooledByteBuf
    protected Recycler<?> recycler() {
        return RECYCLER;
    }

    @Override // io.netty.buffer.AbstractByteBuf
    protected SwappedByteBuf newSwappedByteBuf() {
        return new UnsafeDirectSwappedByteBuf(this);
    }
}
