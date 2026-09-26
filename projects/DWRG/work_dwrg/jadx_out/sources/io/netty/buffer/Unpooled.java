package io.netty.buffer;

import com.netease.unisdk.gmbridge.utils.ResIdReader;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class Unpooled {
    private static final ByteBufAllocator ALLOC = UnpooledByteBufAllocator.DEFAULT;
    public static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;
    public static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
    public static final ByteBuf EMPTY_BUFFER = ALLOC.buffer(0, 0);

    public static ByteBuf buffer() {
        return ALLOC.heapBuffer();
    }

    public static ByteBuf directBuffer() {
        return ALLOC.directBuffer();
    }

    public static ByteBuf buffer(int initialCapacity) {
        return ALLOC.heapBuffer(initialCapacity);
    }

    public static ByteBuf directBuffer(int initialCapacity) {
        return ALLOC.directBuffer(initialCapacity);
    }

    public static ByteBuf buffer(int initialCapacity, int maxCapacity) {
        return ALLOC.heapBuffer(initialCapacity, maxCapacity);
    }

    public static ByteBuf directBuffer(int initialCapacity, int maxCapacity) {
        return ALLOC.directBuffer(initialCapacity, maxCapacity);
    }

    public static ByteBuf wrappedBuffer(byte[] array) {
        return array.length == 0 ? EMPTY_BUFFER : new UnpooledHeapByteBuf(ALLOC, array, array.length);
    }

    public static ByteBuf wrappedBuffer(byte[] array, int offset, int length) {
        if (length == 0) {
            return EMPTY_BUFFER;
        }
        if (offset == 0 && length == array.length) {
            return wrappedBuffer(array);
        }
        return wrappedBuffer(array).slice(offset, length);
    }

    public static ByteBuf wrappedBuffer(ByteBuffer buffer) {
        if (!buffer.hasRemaining()) {
            return EMPTY_BUFFER;
        }
        if (buffer.hasArray()) {
            return wrappedBuffer(buffer.array(), buffer.arrayOffset() + buffer.position(), buffer.remaining()).order(buffer.order());
        }
        if (PlatformDependent.hasUnsafe()) {
            if (buffer.isReadOnly()) {
                if (buffer.isDirect()) {
                    return new ReadOnlyUnsafeDirectByteBuf(ALLOC, buffer);
                }
                return new ReadOnlyByteBufferBuf(ALLOC, buffer);
            }
            return new UnpooledUnsafeDirectByteBuf(ALLOC, buffer, buffer.remaining());
        }
        if (buffer.isReadOnly()) {
            return new ReadOnlyByteBufferBuf(ALLOC, buffer);
        }
        return new UnpooledDirectByteBuf(ALLOC, buffer, buffer.remaining());
    }

    public static ByteBuf wrappedBuffer(ByteBuf buffer) {
        return buffer.isReadable() ? buffer.slice() : EMPTY_BUFFER;
    }

    public static ByteBuf wrappedBuffer(byte[]... arrays) {
        return wrappedBuffer(16, arrays);
    }

    public static ByteBuf wrappedBuffer(ByteBuf... buffers) {
        return wrappedBuffer(16, buffers);
    }

    public static ByteBuf wrappedBuffer(ByteBuffer... buffers) {
        return wrappedBuffer(16, buffers);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static io.netty.buffer.ByteBuf wrappedBuffer(int r6, byte[]... r7) {
        /*
            r3 = 0
            int r2 = r7.length
            switch(r2) {
                case 0: goto L3a;
                case 1: goto L1d;
                default: goto L5;
            }
        L5:
            java.util.ArrayList r1 = new java.util.ArrayList
            int r2 = r7.length
            r1.<init>(r2)
            int r4 = r7.length
            r2 = r3
        Ld:
            if (r2 < r4) goto L29
        Lf:
            boolean r2 = r1.isEmpty()
            if (r2 != 0) goto L3a
            io.netty.buffer.CompositeByteBuf r2 = new io.netty.buffer.CompositeByteBuf
            io.netty.buffer.ByteBufAllocator r4 = io.netty.buffer.Unpooled.ALLOC
            r2.<init>(r4, r3, r6, r1)
        L1c:
            return r2
        L1d:
            r2 = r7[r3]
            int r2 = r2.length
            if (r2 == 0) goto L3a
            r2 = r7[r3]
            io.netty.buffer.ByteBuf r2 = wrappedBuffer(r2)
            goto L1c
        L29:
            r0 = r7[r2]
            if (r0 == 0) goto Lf
            int r5 = r0.length
            if (r5 <= 0) goto L37
            io.netty.buffer.ByteBuf r5 = wrappedBuffer(r0)
            r1.add(r5)
        L37:
            int r2 = r2 + 1
            goto Ld
        L3a:
            io.netty.buffer.ByteBuf r2 = io.netty.buffer.Unpooled.EMPTY_BUFFER
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.buffer.Unpooled.wrappedBuffer(int, byte[][]):io.netty.buffer.ByteBuf");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    public static ByteBuf wrappedBuffer(int maxNumComponents, ByteBuf... buffers) {
        switch (buffers.length) {
            case 0:
                return EMPTY_BUFFER;
            case 1:
                if (buffers[0].isReadable()) {
                    return wrappedBuffer(buffers[0].order(BIG_ENDIAN));
                }
                return EMPTY_BUFFER;
            default:
                for (ByteBuf b : buffers) {
                    if (b.isReadable()) {
                        return new CompositeByteBuf(ALLOC, false, maxNumComponents, buffers);
                    }
                }
                return EMPTY_BUFFER;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static io.netty.buffer.ByteBuf wrappedBuffer(int r6, java.nio.ByteBuffer... r7) {
        /*
            r3 = 0
            int r2 = r7.length
            switch(r2) {
                case 0: goto L4c;
                case 1: goto L1d;
                default: goto L5;
            }
        L5:
            java.util.ArrayList r1 = new java.util.ArrayList
            int r2 = r7.length
            r1.<init>(r2)
            int r4 = r7.length
            r2 = r3
        Ld:
            if (r2 < r4) goto L32
        Lf:
            boolean r2 = r1.isEmpty()
            if (r2 != 0) goto L4c
            io.netty.buffer.CompositeByteBuf r2 = new io.netty.buffer.CompositeByteBuf
            io.netty.buffer.ByteBufAllocator r4 = io.netty.buffer.Unpooled.ALLOC
            r2.<init>(r4, r3, r6, r1)
        L1c:
            return r2
        L1d:
            r2 = r7[r3]
            boolean r2 = r2.hasRemaining()
            if (r2 == 0) goto L4c
            r2 = r7[r3]
            java.nio.ByteOrder r3 = io.netty.buffer.Unpooled.BIG_ENDIAN
            java.nio.ByteBuffer r2 = r2.order(r3)
            io.netty.buffer.ByteBuf r2 = wrappedBuffer(r2)
            goto L1c
        L32:
            r0 = r7[r2]
            if (r0 == 0) goto Lf
            int r5 = r0.remaining()
            if (r5 <= 0) goto L49
            java.nio.ByteOrder r5 = io.netty.buffer.Unpooled.BIG_ENDIAN
            java.nio.ByteBuffer r5 = r0.order(r5)
            io.netty.buffer.ByteBuf r5 = wrappedBuffer(r5)
            r1.add(r5)
        L49:
            int r2 = r2 + 1
            goto Ld
        L4c:
            io.netty.buffer.ByteBuf r2 = io.netty.buffer.Unpooled.EMPTY_BUFFER
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.buffer.Unpooled.wrappedBuffer(int, java.nio.ByteBuffer[]):io.netty.buffer.ByteBuf");
    }

    public static CompositeByteBuf compositeBuffer() {
        return compositeBuffer(16);
    }

    public static CompositeByteBuf compositeBuffer(int maxNumComponents) {
        return new CompositeByteBuf(ALLOC, false, maxNumComponents);
    }

    public static ByteBuf copiedBuffer(byte[] array) {
        return array.length == 0 ? EMPTY_BUFFER : wrappedBuffer((byte[]) array.clone());
    }

    public static ByteBuf copiedBuffer(byte[] array, int offset, int length) {
        if (length == 0) {
            return EMPTY_BUFFER;
        }
        byte[] copy = new byte[length];
        System.arraycopy(array, offset, copy, 0, length);
        return wrappedBuffer(copy);
    }

    public static ByteBuf copiedBuffer(ByteBuffer buffer) {
        int length = buffer.remaining();
        if (length == 0) {
            return EMPTY_BUFFER;
        }
        byte[] copy = new byte[length];
        int position = buffer.position();
        try {
            buffer.get(copy);
            buffer.position(position);
            return wrappedBuffer(copy).order(buffer.order());
        } catch (Throwable th) {
            buffer.position(position);
            throw th;
        }
    }

    public static ByteBuf copiedBuffer(ByteBuf buffer) {
        int readable = buffer.readableBytes();
        if (readable <= 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf copy = buffer(readable);
        copy.writeBytes(buffer, buffer.readerIndex(), readable);
        return copy;
    }

    public static ByteBuf copiedBuffer(byte[]... arrays) {
        switch (arrays.length) {
            case 0:
                return EMPTY_BUFFER;
            case 1:
                if (arrays[0].length == 0) {
                    return EMPTY_BUFFER;
                }
                return copiedBuffer(arrays[0]);
            default:
                int length = 0;
                for (byte[] a : arrays) {
                    if (Integer.MAX_VALUE - length < a.length) {
                        throw new IllegalArgumentException("The total length of the specified arrays is too big.");
                    }
                    length += a.length;
                }
                if (length == 0) {
                    return EMPTY_BUFFER;
                }
                byte[] mergedArray = new byte[length];
                int j = 0;
                for (byte[] a2 : arrays) {
                    System.arraycopy(a2, 0, mergedArray, j, a2.length);
                    j += a2.length;
                }
                return wrappedBuffer(mergedArray);
        }
    }

    public static ByteBuf copiedBuffer(ByteBuf... buffers) {
        switch (buffers.length) {
            case 0:
                return EMPTY_BUFFER;
            case 1:
                return copiedBuffer(buffers[0]);
            default:
                ByteOrder order = null;
                int length = 0;
                for (ByteBuf b : buffers) {
                    int bLen = b.readableBytes();
                    if (bLen > 0) {
                        if (Integer.MAX_VALUE - length < bLen) {
                            throw new IllegalArgumentException("The total length of the specified buffers is too big.");
                        }
                        length += bLen;
                        if (order != null) {
                            if (!order.equals(b.order())) {
                                throw new IllegalArgumentException("inconsistent byte order");
                            }
                        } else {
                            order = b.order();
                        }
                    }
                }
                if (length == 0) {
                    return EMPTY_BUFFER;
                }
                byte[] mergedArray = new byte[length];
                int j = 0;
                for (ByteBuf b2 : buffers) {
                    int bLen2 = b2.readableBytes();
                    b2.getBytes(b2.readerIndex(), mergedArray, j, bLen2);
                    j += bLen2;
                }
                return wrappedBuffer(mergedArray).order(order);
        }
    }

    public static ByteBuf copiedBuffer(ByteBuffer... buffers) {
        switch (buffers.length) {
            case 0:
                return EMPTY_BUFFER;
            case 1:
                return copiedBuffer(buffers[0]);
            default:
                ByteOrder order = null;
                int length = 0;
                for (ByteBuffer b : buffers) {
                    int bLen = b.remaining();
                    if (bLen > 0) {
                        if (Integer.MAX_VALUE - length < bLen) {
                            throw new IllegalArgumentException("The total length of the specified buffers is too big.");
                        }
                        length += bLen;
                        if (order != null) {
                            if (!order.equals(b.order())) {
                                throw new IllegalArgumentException("inconsistent byte order");
                            }
                        } else {
                            order = b.order();
                        }
                    }
                }
                if (length == 0) {
                    return EMPTY_BUFFER;
                }
                byte[] mergedArray = new byte[length];
                int j = 0;
                for (ByteBuffer b2 : buffers) {
                    int bLen2 = b2.remaining();
                    int oldPos = b2.position();
                    b2.get(mergedArray, j, bLen2);
                    b2.position(oldPos);
                    j += bLen2;
                }
                return wrappedBuffer(mergedArray).order(order);
        }
    }

    public static ByteBuf copiedBuffer(CharSequence string, Charset charset) {
        if (string == null) {
            throw new NullPointerException(ResIdReader.RES_TYPE_STRING);
        }
        return string instanceof CharBuffer ? copiedBuffer((CharBuffer) string, charset) : copiedBuffer(CharBuffer.wrap(string), charset);
    }

    public static ByteBuf copiedBuffer(CharSequence string, int offset, int length, Charset charset) {
        if (string == null) {
            throw new NullPointerException(ResIdReader.RES_TYPE_STRING);
        }
        if (length == 0) {
            return EMPTY_BUFFER;
        }
        if (string instanceof CharBuffer) {
            CharBuffer buf = (CharBuffer) string;
            if (buf.hasArray()) {
                return copiedBuffer(buf.array(), buf.arrayOffset() + buf.position() + offset, length, charset);
            }
            CharBuffer buf2 = buf.slice();
            buf2.limit(length);
            buf2.position(offset);
            return copiedBuffer(buf2, charset);
        }
        return copiedBuffer(CharBuffer.wrap(string, offset, offset + length), charset);
    }

    public static ByteBuf copiedBuffer(char[] array, Charset charset) {
        if (array == null) {
            throw new NullPointerException(ResIdReader.RES_TYPE_ARRAY);
        }
        return copiedBuffer(array, 0, array.length, charset);
    }

    public static ByteBuf copiedBuffer(char[] array, int offset, int length, Charset charset) {
        if (array == null) {
            throw new NullPointerException(ResIdReader.RES_TYPE_ARRAY);
        }
        return length == 0 ? EMPTY_BUFFER : copiedBuffer(CharBuffer.wrap(array, offset, length), charset);
    }

    private static ByteBuf copiedBuffer(CharBuffer buffer, Charset charset) {
        return ByteBufUtil.encodeString0(ALLOC, true, buffer, charset);
    }

    public static ByteBuf unmodifiableBuffer(ByteBuf buffer) {
        ByteOrder endianness = buffer.order();
        return endianness == BIG_ENDIAN ? new ReadOnlyByteBuf(buffer) : new ReadOnlyByteBuf(buffer.order(BIG_ENDIAN)).order(LITTLE_ENDIAN);
    }

    public static ByteBuf copyInt(int value) {
        ByteBuf buf = buffer(4);
        buf.writeInt(value);
        return buf;
    }

    public static ByteBuf copyInt(int... values) {
        if (values == null || values.length == 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf buffer = buffer(values.length * 4);
        for (int v : values) {
            buffer.writeInt(v);
        }
        return buffer;
    }

    public static ByteBuf copyShort(int value) {
        ByteBuf buf = buffer(2);
        buf.writeShort(value);
        return buf;
    }

    public static ByteBuf copyShort(short... values) {
        if (values == null || values.length == 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf buffer = buffer(values.length * 2);
        for (short s : values) {
            buffer.writeShort(s);
        }
        return buffer;
    }

    public static ByteBuf copyShort(int... values) {
        if (values == null || values.length == 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf buffer = buffer(values.length * 2);
        for (int v : values) {
            buffer.writeShort(v);
        }
        return buffer;
    }

    public static ByteBuf copyMedium(int value) {
        ByteBuf buf = buffer(3);
        buf.writeMedium(value);
        return buf;
    }

    public static ByteBuf copyMedium(int... values) {
        if (values == null || values.length == 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf buffer = buffer(values.length * 3);
        for (int v : values) {
            buffer.writeMedium(v);
        }
        return buffer;
    }

    public static ByteBuf copyLong(long value) {
        ByteBuf buf = buffer(8);
        buf.writeLong(value);
        return buf;
    }

    public static ByteBuf copyLong(long... values) {
        if (values == null || values.length == 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf buffer = buffer(values.length * 8);
        for (long v : values) {
            buffer.writeLong(v);
        }
        return buffer;
    }

    public static ByteBuf copyBoolean(boolean value) {
        ByteBuf buf = buffer(1);
        buf.writeBoolean(value);
        return buf;
    }

    public static ByteBuf copyBoolean(boolean... values) {
        if (values == null || values.length == 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf buffer = buffer(values.length);
        for (boolean v : values) {
            buffer.writeBoolean(v);
        }
        return buffer;
    }

    public static ByteBuf copyFloat(float value) {
        ByteBuf buf = buffer(4);
        buf.writeFloat(value);
        return buf;
    }

    public static ByteBuf copyFloat(float... values) {
        if (values == null || values.length == 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf buffer = buffer(values.length * 4);
        for (float v : values) {
            buffer.writeFloat(v);
        }
        return buffer;
    }

    public static ByteBuf copyDouble(double value) {
        ByteBuf buf = buffer(8);
        buf.writeDouble(value);
        return buf;
    }

    public static ByteBuf copyDouble(double... values) {
        if (values == null || values.length == 0) {
            return EMPTY_BUFFER;
        }
        ByteBuf buffer = buffer(values.length * 8);
        for (double v : values) {
            buffer.writeDouble(v);
        }
        return buffer;
    }

    public static ByteBuf unreleasableBuffer(ByteBuf buf) {
        return new UnreleasableByteBuf(buf);
    }

    private Unpooled() {
    }
}
