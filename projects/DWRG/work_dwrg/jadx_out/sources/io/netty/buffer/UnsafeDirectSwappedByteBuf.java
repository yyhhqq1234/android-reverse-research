package io.netty.buffer;

import io.netty.util.internal.PlatformDependent;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
final class UnsafeDirectSwappedByteBuf extends SwappedByteBuf {
    private static final boolean NATIVE_ORDER;
    private final boolean nativeByteOrder;
    private final AbstractByteBuf wrapped;

    static {
        NATIVE_ORDER = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnsafeDirectSwappedByteBuf(AbstractByteBuf buf) {
        super(buf);
        this.wrapped = buf;
        this.nativeByteOrder = NATIVE_ORDER == (order() == ByteOrder.BIG_ENDIAN);
    }

    private long addr(int index) {
        return this.wrapped.memoryAddress() + index;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public long getLong(int index) {
        this.wrapped.checkIndex(index, 8);
        long v = PlatformDependent.getLong(addr(index));
        return this.nativeByteOrder ? v : Long.reverseBytes(v);
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public float getFloat(int index) {
        return Float.intBitsToFloat(getInt(index));
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public double getDouble(int index) {
        return Double.longBitsToDouble(getLong(index));
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public char getChar(int index) {
        return (char) getShort(index);
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public long getUnsignedInt(int index) {
        return getInt(index) & 4294967295L;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public int getInt(int index) {
        this.wrapped.checkIndex(index, 4);
        int v = PlatformDependent.getInt(addr(index));
        return this.nativeByteOrder ? v : Integer.reverseBytes(v);
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public int getUnsignedShort(int index) {
        return getShort(index) & 65535;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public short getShort(int index) {
        this.wrapped.checkIndex(index, 2);
        short v = PlatformDependent.getShort(addr(index));
        return this.nativeByteOrder ? v : Short.reverseBytes(v);
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setShort(int index, int value) {
        this.wrapped.checkIndex(index, 2);
        _setShort(index, value);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setInt(int index, int value) {
        this.wrapped.checkIndex(index, 4);
        _setInt(index, value);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setLong(int index, long value) {
        this.wrapped.checkIndex(index, 8);
        _setLong(index, value);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setChar(int index, int value) {
        setShort(index, value);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setFloat(int index, float value) {
        setInt(index, Float.floatToRawIntBits(value));
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setDouble(int index, double value) {
        setLong(index, Double.doubleToRawLongBits(value));
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeShort(int value) {
        this.wrapped.ensureAccessible();
        this.wrapped.ensureWritable(2);
        _setShort(this.wrapped.writerIndex, value);
        this.wrapped.writerIndex += 2;
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeInt(int value) {
        this.wrapped.ensureAccessible();
        this.wrapped.ensureWritable(4);
        _setInt(this.wrapped.writerIndex, value);
        this.wrapped.writerIndex += 4;
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeLong(long value) {
        this.wrapped.ensureAccessible();
        this.wrapped.ensureWritable(8);
        _setLong(this.wrapped.writerIndex, value);
        this.wrapped.writerIndex += 8;
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeChar(int value) {
        writeShort(value);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeFloat(float value) {
        writeInt(Float.floatToRawIntBits(value));
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeDouble(double value) {
        writeLong(Double.doubleToRawLongBits(value));
        return this;
    }

    private void _setShort(int index, int value) {
        PlatformDependent.putShort(addr(index), this.nativeByteOrder ? (short) value : Short.reverseBytes((short) value));
    }

    private void _setInt(int index, int value) {
        long addr = addr(index);
        if (!this.nativeByteOrder) {
            value = Integer.reverseBytes(value);
        }
        PlatformDependent.putInt(addr, value);
    }

    private void _setLong(int index, long value) {
        long addr = addr(index);
        if (!this.nativeByteOrder) {
            value = Long.reverseBytes(value);
        }
        PlatformDependent.putLong(addr, value);
    }
}
