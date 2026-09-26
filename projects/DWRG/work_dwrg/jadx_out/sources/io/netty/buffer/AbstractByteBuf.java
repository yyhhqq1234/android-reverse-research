package io.netty.buffer;

import android.support.v4.view.ViewCompat;
import com.netease.cloud.nos.android.constants.Constants;
import io.netty.util.IllegalReferenceCountException;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class AbstractByteBuf extends ByteBuf {
    static final ResourceLeakDetector<ByteBuf> leakDetector = new ResourceLeakDetector<>((Class<?>) ByteBuf.class);
    private int markedReaderIndex;
    private int markedWriterIndex;
    private int maxCapacity;
    int readerIndex;
    private SwappedByteBuf swappedBuf;
    int writerIndex;

    protected abstract byte _getByte(int i);

    protected abstract int _getInt(int i);

    protected abstract long _getLong(int i);

    protected abstract short _getShort(int i);

    protected abstract int _getUnsignedMedium(int i);

    protected abstract void _setByte(int i, int i2);

    protected abstract void _setInt(int i, int i2);

    protected abstract void _setLong(int i, long j);

    protected abstract void _setMedium(int i, int i2);

    protected abstract void _setShort(int i, int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractByteBuf(int maxCapacity) {
        if (maxCapacity < 0) {
            throw new IllegalArgumentException("maxCapacity: " + maxCapacity + " (expected: >= 0)");
        }
        this.maxCapacity = maxCapacity;
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxCapacity() {
        return this.maxCapacity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void maxCapacity(int maxCapacity) {
        this.maxCapacity = maxCapacity;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readerIndex() {
        return this.readerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readerIndex(int readerIndex) {
        if (readerIndex < 0 || readerIndex > this.writerIndex) {
            throw new IndexOutOfBoundsException(String.format("readerIndex: %d (expected: 0 <= readerIndex <= writerIndex(%d))", Integer.valueOf(readerIndex), Integer.valueOf(this.writerIndex)));
        }
        this.readerIndex = readerIndex;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writerIndex() {
        return this.writerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writerIndex(int writerIndex) {
        if (writerIndex < this.readerIndex || writerIndex > capacity()) {
            throw new IndexOutOfBoundsException(String.format("writerIndex: %d (expected: readerIndex(%d) <= writerIndex <= capacity(%d))", Integer.valueOf(writerIndex), Integer.valueOf(this.readerIndex), Integer.valueOf(capacity())));
        }
        this.writerIndex = writerIndex;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setIndex(int readerIndex, int writerIndex) {
        if (readerIndex < 0 || readerIndex > writerIndex || writerIndex > capacity()) {
            throw new IndexOutOfBoundsException(String.format("readerIndex: %d, writerIndex: %d (expected: 0 <= readerIndex <= writerIndex <= capacity(%d))", Integer.valueOf(readerIndex), Integer.valueOf(writerIndex), Integer.valueOf(capacity())));
        }
        this.readerIndex = readerIndex;
        this.writerIndex = writerIndex;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf clear() {
        this.writerIndex = 0;
        this.readerIndex = 0;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadable() {
        return this.writerIndex > this.readerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadable(int numBytes) {
        return this.writerIndex - this.readerIndex >= numBytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isWritable() {
        return capacity() > this.writerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isWritable(int numBytes) {
        return capacity() - this.writerIndex >= numBytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readableBytes() {
        return this.writerIndex - this.readerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writableBytes() {
        return capacity() - this.writerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxWritableBytes() {
        return maxCapacity() - this.writerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf markReaderIndex() {
        this.markedReaderIndex = this.readerIndex;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf resetReaderIndex() {
        readerIndex(this.markedReaderIndex);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf markWriterIndex() {
        this.markedWriterIndex = this.writerIndex;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf resetWriterIndex() {
        this.writerIndex = this.markedWriterIndex;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf discardReadBytes() {
        ensureAccessible();
        if (this.readerIndex != 0) {
            if (this.readerIndex != this.writerIndex) {
                setBytes(0, this, this.readerIndex, this.writerIndex - this.readerIndex);
                this.writerIndex -= this.readerIndex;
                adjustMarkers(this.readerIndex);
                this.readerIndex = 0;
            } else {
                adjustMarkers(this.readerIndex);
                this.readerIndex = 0;
                this.writerIndex = 0;
            }
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf discardSomeReadBytes() {
        ensureAccessible();
        if (this.readerIndex != 0) {
            if (this.readerIndex == this.writerIndex) {
                adjustMarkers(this.readerIndex);
                this.readerIndex = 0;
                this.writerIndex = 0;
            } else if (this.readerIndex >= (capacity() >>> 1)) {
                setBytes(0, this, this.readerIndex, this.writerIndex - this.readerIndex);
                this.writerIndex -= this.readerIndex;
                adjustMarkers(this.readerIndex);
                this.readerIndex = 0;
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void adjustMarkers(int decrement) {
        int markedReaderIndex = this.markedReaderIndex;
        if (markedReaderIndex <= decrement) {
            this.markedReaderIndex = 0;
            int markedWriterIndex = this.markedWriterIndex;
            if (markedWriterIndex <= decrement) {
                this.markedWriterIndex = 0;
                return;
            } else {
                this.markedWriterIndex = markedWriterIndex - decrement;
                return;
            }
        }
        this.markedReaderIndex = markedReaderIndex - decrement;
        this.markedWriterIndex -= decrement;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf ensureWritable(int minWritableBytes) {
        if (minWritableBytes < 0) {
            throw new IllegalArgumentException(String.format("minWritableBytes: %d (expected: >= 0)", Integer.valueOf(minWritableBytes)));
        }
        if (minWritableBytes > writableBytes()) {
            if (minWritableBytes > this.maxCapacity - this.writerIndex) {
                throw new IndexOutOfBoundsException(String.format("writerIndex(%d) + minWritableBytes(%d) exceeds maxCapacity(%d): %s", Integer.valueOf(this.writerIndex), Integer.valueOf(minWritableBytes), Integer.valueOf(this.maxCapacity), this));
            }
            int newCapacity = calculateNewCapacity(this.writerIndex + minWritableBytes);
            capacity(newCapacity);
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int ensureWritable(int minWritableBytes, boolean force) {
        if (minWritableBytes < 0) {
            throw new IllegalArgumentException(String.format("minWritableBytes: %d (expected: >= 0)", Integer.valueOf(minWritableBytes)));
        }
        if (minWritableBytes <= writableBytes()) {
            return 0;
        }
        if (minWritableBytes > this.maxCapacity - this.writerIndex && force) {
            if (capacity() == maxCapacity()) {
                return 1;
            }
            capacity(maxCapacity());
            return 3;
        }
        int newCapacity = calculateNewCapacity(this.writerIndex + minWritableBytes);
        capacity(newCapacity);
        return 2;
    }

    private int calculateNewCapacity(int minNewCapacity) {
        int maxCapacity = this.maxCapacity;
        if (minNewCapacity == 4194304) {
            return Constants.MAX_CHUNK_SIZE;
        }
        if (minNewCapacity > 4194304) {
            int newCapacity = (minNewCapacity / Constants.MAX_CHUNK_SIZE) * Constants.MAX_CHUNK_SIZE;
            if (newCapacity > maxCapacity - Constants.MAX_CHUNK_SIZE) {
                return maxCapacity;
            }
            return newCapacity + Constants.MAX_CHUNK_SIZE;
        }
        int newCapacity2 = 64;
        while (newCapacity2 < minNewCapacity) {
            newCapacity2 <<= 1;
        }
        return Math.min(newCapacity2, maxCapacity);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf order(ByteOrder endianness) {
        if (endianness == null) {
            throw new NullPointerException("endianness");
        }
        if (endianness != order()) {
            SwappedByteBuf swappedBuf = this.swappedBuf;
            if (swappedBuf == null) {
                swappedBuf = newSwappedByteBuf();
                this.swappedBuf = swappedBuf;
            }
            return swappedBuf;
        }
        return this;
    }

    protected SwappedByteBuf newSwappedByteBuf() {
        return new SwappedByteBuf(this);
    }

    @Override // io.netty.buffer.ByteBuf
    public byte getByte(int index) {
        checkIndex(index);
        return _getByte(index);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean getBoolean(int index) {
        return getByte(index) != 0;
    }

    @Override // io.netty.buffer.ByteBuf
    public short getUnsignedByte(int index) {
        return (short) (getByte(index) & 255);
    }

    @Override // io.netty.buffer.ByteBuf
    public short getShort(int index) {
        checkIndex(index, 2);
        return _getShort(index);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedShort(int index) {
        return getShort(index) & 65535;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int index) {
        checkIndex(index, 3);
        return _getUnsignedMedium(index);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getMedium(int index) {
        int value = getUnsignedMedium(index);
        if ((8388608 & value) != 0) {
            return value | ViewCompat.MEASURED_STATE_MASK;
        }
        return value;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getInt(int index) {
        checkIndex(index, 4);
        return _getInt(index);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getUnsignedInt(int index) {
        return getInt(index) & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public long getLong(int index) {
        checkIndex(index, 8);
        return _getLong(index);
    }

    @Override // io.netty.buffer.ByteBuf
    public char getChar(int index) {
        return (char) getShort(index);
    }

    @Override // io.netty.buffer.ByteBuf
    public float getFloat(int index) {
        return Float.intBitsToFloat(getInt(index));
    }

    @Override // io.netty.buffer.ByteBuf
    public double getDouble(int index) {
        return Double.longBitsToDouble(getLong(index));
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, byte[] dst) {
        getBytes(index, dst, 0, dst.length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, ByteBuf dst) {
        getBytes(index, dst, dst.writableBytes());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int index, ByteBuf dst, int length) {
        getBytes(index, dst, dst.writerIndex(), length);
        dst.writerIndex(dst.writerIndex() + length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setByte(int index, int value) {
        checkIndex(index);
        _setByte(index, value);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBoolean(int index, boolean value) {
        setByte(index, value ? 1 : 0);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setShort(int index, int value) {
        checkIndex(index, 2);
        _setShort(index, value);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setChar(int index, int value) {
        setShort(index, value);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int index, int value) {
        checkIndex(index, 3);
        _setMedium(index, value);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setInt(int index, int value) {
        checkIndex(index, 4);
        _setInt(index, value);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setFloat(int index, float value) {
        setInt(index, Float.floatToRawIntBits(value));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setLong(int index, long value) {
        checkIndex(index, 8);
        _setLong(index, value);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setDouble(int index, double value) {
        setLong(index, Double.doubleToRawLongBits(value));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, byte[] src) {
        setBytes(index, src, 0, src.length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, ByteBuf src) {
        setBytes(index, src, src.readableBytes());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int index, ByteBuf src, int length) {
        checkIndex(index, length);
        if (src == null) {
            throw new NullPointerException("src");
        }
        if (length > src.readableBytes()) {
            throw new IndexOutOfBoundsException(String.format("length(%d) exceeds src.readableBytes(%d) where src is: %s", Integer.valueOf(length), Integer.valueOf(src.readableBytes()), src));
        }
        setBytes(index, src, src.readerIndex(), length);
        src.readerIndex(src.readerIndex() + length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setZero(int index, int length) {
        if (length != 0) {
            checkIndex(index, length);
            int nLong = length >>> 3;
            int nBytes = length & 7;
            for (int i = nLong; i > 0; i--) {
                setLong(index, 0L);
                index += 8;
            }
            if (nBytes == 4) {
                setInt(index, 0);
            } else if (nBytes < 4) {
                for (int i2 = nBytes; i2 > 0; i2--) {
                    setByte(index, 0);
                    index++;
                }
            } else {
                setInt(index, 0);
                int index2 = index + 4;
                for (int i3 = nBytes - 4; i3 > 0; i3--) {
                    setByte(index2, 0);
                    index2++;
                }
            }
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public byte readByte() {
        checkReadableBytes(1);
        int i = this.readerIndex;
        byte b = getByte(i);
        this.readerIndex = i + 1;
        return b;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean readBoolean() {
        return readByte() != 0;
    }

    @Override // io.netty.buffer.ByteBuf
    public short readUnsignedByte() {
        return (short) (readByte() & 255);
    }

    @Override // io.netty.buffer.ByteBuf
    public short readShort() {
        checkReadableBytes(2);
        short v = _getShort(this.readerIndex);
        this.readerIndex += 2;
        return v;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedShort() {
        return readShort() & 65535;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readMedium() {
        int value = readUnsignedMedium();
        if ((8388608 & value) != 0) {
            return value | ViewCompat.MEASURED_STATE_MASK;
        }
        return value;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedMedium() {
        checkReadableBytes(3);
        int v = _getUnsignedMedium(this.readerIndex);
        this.readerIndex += 3;
        return v;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readInt() {
        checkReadableBytes(4);
        int v = _getInt(this.readerIndex);
        this.readerIndex += 4;
        return v;
    }

    @Override // io.netty.buffer.ByteBuf
    public long readUnsignedInt() {
        return readInt() & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public long readLong() {
        checkReadableBytes(8);
        long v = _getLong(this.readerIndex);
        this.readerIndex += 8;
        return v;
    }

    @Override // io.netty.buffer.ByteBuf
    public char readChar() {
        return (char) readShort();
    }

    @Override // io.netty.buffer.ByteBuf
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // io.netty.buffer.ByteBuf
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(int length) {
        checkReadableBytes(length);
        if (length == 0) {
            return Unpooled.EMPTY_BUFFER;
        }
        ByteBuf buf = Unpooled.buffer(length, this.maxCapacity);
        buf.writeBytes(this, this.readerIndex, length);
        this.readerIndex += length;
        return buf;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readSlice(int length) {
        ByteBuf slice = slice(this.readerIndex, length);
        this.readerIndex += length;
        return slice;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(byte[] dst, int dstIndex, int length) {
        checkReadableBytes(length);
        getBytes(this.readerIndex, dst, dstIndex, length);
        this.readerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(byte[] dst) {
        readBytes(dst, 0, dst.length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf dst) {
        readBytes(dst, dst.writableBytes());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf dst, int length) {
        if (length > dst.writableBytes()) {
            throw new IndexOutOfBoundsException(String.format("length(%d) exceeds dst.writableBytes(%d) where dst is: %s", Integer.valueOf(length), Integer.valueOf(dst.writableBytes()), dst));
        }
        readBytes(dst, dst.writerIndex(), length);
        dst.writerIndex(dst.writerIndex() + length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf dst, int dstIndex, int length) {
        checkReadableBytes(length);
        getBytes(this.readerIndex, dst, dstIndex, length);
        this.readerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuffer dst) {
        int length = dst.remaining();
        checkReadableBytes(length);
        getBytes(this.readerIndex, dst);
        this.readerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readBytes(GatheringByteChannel out, int length) throws IOException {
        checkReadableBytes(length);
        int readBytes = getBytes(this.readerIndex, out, length);
        this.readerIndex += readBytes;
        return readBytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(OutputStream out, int length) throws IOException {
        checkReadableBytes(length);
        getBytes(this.readerIndex, out, length);
        this.readerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf skipBytes(int length) {
        checkReadableBytes(length);
        this.readerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBoolean(boolean value) {
        writeByte(value ? 1 : 0);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeByte(int value) {
        ensureAccessible();
        ensureWritable(1);
        int i = this.writerIndex;
        this.writerIndex = i + 1;
        _setByte(i, value);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeShort(int value) {
        ensureAccessible();
        ensureWritable(2);
        _setShort(this.writerIndex, value);
        this.writerIndex += 2;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeMedium(int value) {
        ensureAccessible();
        ensureWritable(3);
        _setMedium(this.writerIndex, value);
        this.writerIndex += 3;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeInt(int value) {
        ensureAccessible();
        ensureWritable(4);
        _setInt(this.writerIndex, value);
        this.writerIndex += 4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeLong(long value) {
        ensureAccessible();
        ensureWritable(8);
        _setLong(this.writerIndex, value);
        this.writerIndex += 8;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeChar(int value) {
        writeShort(value);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeFloat(float value) {
        writeInt(Float.floatToRawIntBits(value));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeDouble(double value) {
        writeLong(Double.doubleToRawLongBits(value));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(byte[] src, int srcIndex, int length) {
        ensureAccessible();
        ensureWritable(length);
        setBytes(this.writerIndex, src, srcIndex, length);
        this.writerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(byte[] src) {
        writeBytes(src, 0, src.length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf src) {
        writeBytes(src, src.readableBytes());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf src, int length) {
        if (length > src.readableBytes()) {
            throw new IndexOutOfBoundsException(String.format("length(%d) exceeds src.readableBytes(%d) where src is: %s", Integer.valueOf(length), Integer.valueOf(src.readableBytes()), src));
        }
        writeBytes(src, src.readerIndex(), length);
        src.readerIndex(src.readerIndex() + length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf src, int srcIndex, int length) {
        ensureAccessible();
        ensureWritable(length);
        setBytes(this.writerIndex, src, srcIndex, length);
        this.writerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuffer src) {
        ensureAccessible();
        int length = src.remaining();
        ensureWritable(length);
        setBytes(this.writerIndex, src);
        this.writerIndex += length;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeBytes(InputStream in, int length) throws IOException {
        ensureAccessible();
        ensureWritable(length);
        int writtenBytes = setBytes(this.writerIndex, in, length);
        if (writtenBytes > 0) {
            this.writerIndex += writtenBytes;
        }
        return writtenBytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeBytes(ScatteringByteChannel in, int length) throws IOException {
        ensureAccessible();
        ensureWritable(length);
        int writtenBytes = setBytes(this.writerIndex, in, length);
        if (writtenBytes > 0) {
            this.writerIndex += writtenBytes;
        }
        return writtenBytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeZero(int length) {
        if (length != 0) {
            ensureWritable(length);
            checkIndex(this.writerIndex, length);
            int nLong = length >>> 3;
            int nBytes = length & 7;
            for (int i = nLong; i > 0; i--) {
                writeLong(0L);
            }
            if (nBytes == 4) {
                writeInt(0);
            } else if (nBytes < 4) {
                for (int i2 = nBytes; i2 > 0; i2--) {
                    writeByte(0);
                }
            } else {
                writeInt(0);
                for (int i3 = nBytes - 4; i3 > 0; i3--) {
                    writeByte(0);
                }
            }
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy() {
        return copy(this.readerIndex, readableBytes());
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        return new DuplicatedByteBuf(this);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf slice() {
        return slice(this.readerIndex, readableBytes());
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf slice(int index, int length) {
        return length == 0 ? Unpooled.EMPTY_BUFFER : new SlicedByteBuf(this, index, length);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer() {
        return nioBuffer(this.readerIndex, readableBytes());
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers() {
        return nioBuffers(this.readerIndex, readableBytes());
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString(Charset charset) {
        return toString(this.readerIndex, readableBytes(), charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString(int index, int length, Charset charset) {
        ByteBuffer nioBuffer;
        if (length == 0) {
            return "";
        }
        if (nioBufferCount() == 1) {
            nioBuffer = nioBuffer(index, length);
        } else {
            nioBuffer = ByteBuffer.allocate(length);
            getBytes(index, nioBuffer);
            nioBuffer.flip();
        }
        return ByteBufUtil.decodeString(nioBuffer, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public int indexOf(int fromIndex, int toIndex, byte value) {
        return ByteBufUtil.indexOf(this, fromIndex, toIndex, value);
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(byte value) {
        return bytesBefore(readerIndex(), readableBytes(), value);
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(int length, byte value) {
        checkReadableBytes(length);
        return bytesBefore(readerIndex(), length, value);
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(int index, int length, byte value) {
        int endIndex = indexOf(index, index + length, value);
        if (endIndex < 0) {
            return -1;
        }
        return endIndex - index;
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByte(ByteBufProcessor processor) {
        int index = this.readerIndex;
        int length = this.writerIndex - index;
        ensureAccessible();
        return forEachByteAsc0(index, length, processor);
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByte(int index, int length, ByteBufProcessor processor) {
        checkIndex(index, length);
        return forEachByteAsc0(index, length, processor);
    }

    private int forEachByteAsc0(int index, int length, ByteBufProcessor processor) {
        if (processor == null) {
            throw new NullPointerException("processor");
        }
        if (length == 0) {
            return -1;
        }
        int endIndex = index + length;
        int i = index;
        while (processor.process(_getByte(i))) {
            try {
                i++;
            } catch (Exception e) {
                PlatformDependent.throwException(e);
            }
            if (i >= endIndex) {
                return -1;
            }
        }
        return i;
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByteDesc(ByteBufProcessor processor) {
        int index = this.readerIndex;
        int length = this.writerIndex - index;
        ensureAccessible();
        return forEachByteDesc0(index, length, processor);
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByteDesc(int index, int length, ByteBufProcessor processor) {
        checkIndex(index, length);
        return forEachByteDesc0(index, length, processor);
    }

    private int forEachByteDesc0(int index, int length, ByteBufProcessor processor) {
        if (processor == null) {
            throw new NullPointerException("processor");
        }
        if (length == 0) {
            return -1;
        }
        int i = (index + length) - 1;
        while (processor.process(_getByte(i))) {
            try {
                i--;
            } catch (Exception e) {
                PlatformDependent.throwException(e);
            }
            if (i < index) {
                return -1;
            }
        }
        return i;
    }

    @Override // io.netty.buffer.ByteBuf
    public int hashCode() {
        return ByteBufUtil.hashCode(this);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o instanceof ByteBuf) {
            return ByteBufUtil.equals(this, (ByteBuf) o);
        }
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public int compareTo(ByteBuf that) {
        return ByteBufUtil.compare(this, that);
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString() {
        if (refCnt() == 0) {
            return String.valueOf(StringUtil.simpleClassName(this)) + "(freed)";
        }
        StringBuilder buf = new StringBuilder();
        buf.append(StringUtil.simpleClassName(this));
        buf.append("(ridx: ");
        buf.append(this.readerIndex);
        buf.append(", widx: ");
        buf.append(this.writerIndex);
        buf.append(", cap: ");
        buf.append(capacity());
        if (this.maxCapacity != Integer.MAX_VALUE) {
            buf.append('/');
            buf.append(this.maxCapacity);
        }
        ByteBuf unwrapped = unwrap();
        if (unwrapped != null) {
            buf.append(", unwrapped: ");
            buf.append(unwrapped);
        }
        buf.append(')');
        return buf.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkIndex(int index) {
        ensureAccessible();
        if (index < 0 || index >= capacity()) {
            throw new IndexOutOfBoundsException(String.format("index: %d (expected: range(0, %d))", Integer.valueOf(index), Integer.valueOf(capacity())));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkIndex(int index, int fieldLength) {
        ensureAccessible();
        if (fieldLength < 0) {
            throw new IllegalArgumentException("length: " + fieldLength + " (expected: >= 0)");
        }
        if (index < 0 || index > capacity() - fieldLength) {
            throw new IndexOutOfBoundsException(String.format("index: %d, length: %d (expected: range(0, %d))", Integer.valueOf(index), Integer.valueOf(fieldLength), Integer.valueOf(capacity())));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkSrcIndex(int index, int length, int srcIndex, int srcCapacity) {
        checkIndex(index, length);
        if (srcIndex < 0 || srcIndex > srcCapacity - length) {
            throw new IndexOutOfBoundsException(String.format("srcIndex: %d, length: %d (expected: range(0, %d))", Integer.valueOf(srcIndex), Integer.valueOf(length), Integer.valueOf(srcCapacity)));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkDstIndex(int index, int length, int dstIndex, int dstCapacity) {
        checkIndex(index, length);
        if (dstIndex < 0 || dstIndex > dstCapacity - length) {
            throw new IndexOutOfBoundsException(String.format("dstIndex: %d, length: %d (expected: range(0, %d))", Integer.valueOf(dstIndex), Integer.valueOf(length), Integer.valueOf(dstCapacity)));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkReadableBytes(int minimumReadableBytes) {
        ensureAccessible();
        if (minimumReadableBytes < 0) {
            throw new IllegalArgumentException("minimumReadableBytes: " + minimumReadableBytes + " (expected: >= 0)");
        }
        if (this.readerIndex > this.writerIndex - minimumReadableBytes) {
            throw new IndexOutOfBoundsException(String.format("readerIndex(%d) + length(%d) exceeds writerIndex(%d): %s", Integer.valueOf(this.readerIndex), Integer.valueOf(minimumReadableBytes), Integer.valueOf(this.writerIndex), this));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ensureAccessible() {
        if (refCnt() == 0) {
            throw new IllegalReferenceCountException(0);
        }
    }
}
