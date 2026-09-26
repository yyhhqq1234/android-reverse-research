package io.netty.buffer;

import android.support.v4.view.ViewCompat;
import io.netty.util.CharsetUtil;
import io.netty.util.Recycler;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ByteBufUtil {
    static final ByteBufAllocator DEFAULT_ALLOCATOR;
    private static final int THREAD_LOCAL_BUFFER_SIZE;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) ByteBufUtil.class);
    private static final char[] HEXDUMP_TABLE = new char[1024];

    static {
        ByteBufAllocator alloc;
        char[] DIGITS = "0123456789abcdef".toCharArray();
        for (int i = 0; i < 256; i++) {
            HEXDUMP_TABLE[i << 1] = DIGITS[(i >>> 4) & 15];
            HEXDUMP_TABLE[(i << 1) + 1] = DIGITS[i & 15];
        }
        String allocType = SystemPropertyUtil.get("io.netty.allocator.type", "unpooled").toLowerCase(Locale.US).trim();
        if ("unpooled".equals(allocType)) {
            alloc = UnpooledByteBufAllocator.DEFAULT;
            logger.debug("-Dio.netty.allocator.type: {}", allocType);
        } else if ("pooled".equals(allocType)) {
            alloc = PooledByteBufAllocator.DEFAULT;
            logger.debug("-Dio.netty.allocator.type: {}", allocType);
        } else {
            alloc = UnpooledByteBufAllocator.DEFAULT;
            logger.debug("-Dio.netty.allocator.type: unpooled (unknown: {})", allocType);
        }
        DEFAULT_ALLOCATOR = alloc;
        THREAD_LOCAL_BUFFER_SIZE = SystemPropertyUtil.getInt("io.netty.threadLocalDirectBufferSize", 65536);
        logger.debug("-Dio.netty.threadLocalDirectBufferSize: {}", Integer.valueOf(THREAD_LOCAL_BUFFER_SIZE));
    }

    public static String hexDump(ByteBuf buffer) {
        return hexDump(buffer, buffer.readerIndex(), buffer.readableBytes());
    }

    public static String hexDump(ByteBuf buffer, int fromIndex, int length) {
        if (length < 0) {
            throw new IllegalArgumentException("length: " + length);
        }
        if (length == 0) {
            return "";
        }
        int endIndex = fromIndex + length;
        char[] buf = new char[length << 1];
        int srcIdx = fromIndex;
        int dstIdx = 0;
        while (srcIdx < endIndex) {
            System.arraycopy(HEXDUMP_TABLE, buffer.getUnsignedByte(srcIdx) << 1, buf, dstIdx, 2);
            srcIdx++;
            dstIdx += 2;
        }
        return new String(buf);
    }

    public static int hashCode(ByteBuf buffer) {
        int aLen = buffer.readableBytes();
        int intCount = aLen >>> 2;
        int byteCount = aLen & 3;
        int hashCode = 1;
        int arrayIndex = buffer.readerIndex();
        if (buffer.order() == ByteOrder.BIG_ENDIAN) {
            for (int i = intCount; i > 0; i--) {
                hashCode = (hashCode * 31) + buffer.getInt(arrayIndex);
                arrayIndex += 4;
            }
        } else {
            for (int i2 = intCount; i2 > 0; i2--) {
                hashCode = (hashCode * 31) + swapInt(buffer.getInt(arrayIndex));
                arrayIndex += 4;
            }
        }
        int i3 = byteCount;
        int arrayIndex2 = arrayIndex;
        while (i3 > 0) {
            hashCode = (hashCode * 31) + buffer.getByte(arrayIndex2);
            i3--;
            arrayIndex2++;
        }
        if (hashCode == 0) {
            return 1;
        }
        return hashCode;
    }

    public static boolean equals(ByteBuf bufferA, ByteBuf bufferB) {
        int aLen = bufferA.readableBytes();
        if (aLen != bufferB.readableBytes()) {
            return false;
        }
        int longCount = aLen >>> 3;
        int byteCount = aLen & 7;
        int aIndex = bufferA.readerIndex();
        int bIndex = bufferB.readerIndex();
        if (bufferA.order() == bufferB.order()) {
            for (int i = longCount; i > 0; i--) {
                if (bufferA.getLong(aIndex) != bufferB.getLong(bIndex)) {
                    return false;
                }
                aIndex += 8;
                bIndex += 8;
            }
        } else {
            for (int i2 = longCount; i2 > 0; i2--) {
                if (bufferA.getLong(aIndex) != swapLong(bufferB.getLong(bIndex))) {
                    return false;
                }
                aIndex += 8;
                bIndex += 8;
            }
        }
        for (int i3 = byteCount; i3 > 0; i3--) {
            if (bufferA.getByte(aIndex) != bufferB.getByte(bIndex)) {
                return false;
            }
            aIndex++;
            bIndex++;
        }
        return true;
    }

    public static int compare(ByteBuf bufferA, ByteBuf bufferB) {
        int aLen = bufferA.readableBytes();
        int bLen = bufferB.readableBytes();
        int minLength = Math.min(aLen, bLen);
        int uintCount = minLength >>> 2;
        int byteCount = minLength & 3;
        int aIndex = bufferA.readerIndex();
        int bIndex = bufferB.readerIndex();
        if (bufferA.order() == bufferB.order()) {
            for (int i = uintCount; i > 0; i--) {
                long va = bufferA.getUnsignedInt(aIndex);
                long vb = bufferB.getUnsignedInt(bIndex);
                if (va > vb) {
                    return 1;
                }
                if (va < vb) {
                    return -1;
                }
                aIndex += 4;
                bIndex += 4;
            }
        } else {
            for (int i2 = uintCount; i2 > 0; i2--) {
                long va2 = bufferA.getUnsignedInt(aIndex);
                long vb2 = swapInt(bufferB.getInt(bIndex)) & 4294967295L;
                if (va2 > vb2) {
                    return 1;
                }
                if (va2 < vb2) {
                    return -1;
                }
                aIndex += 4;
                bIndex += 4;
            }
        }
        for (int i3 = byteCount; i3 > 0; i3--) {
            short va3 = bufferA.getUnsignedByte(aIndex);
            short vb3 = bufferB.getUnsignedByte(bIndex);
            if (va3 > vb3) {
                return 1;
            }
            if (va3 < vb3) {
                return -1;
            }
            aIndex++;
            bIndex++;
        }
        return aLen - bLen;
    }

    public static int indexOf(ByteBuf buffer, int fromIndex, int toIndex, byte value) {
        return fromIndex <= toIndex ? firstIndexOf(buffer, fromIndex, toIndex, value) : lastIndexOf(buffer, fromIndex, toIndex, value);
    }

    public static short swapShort(short value) {
        return Short.reverseBytes(value);
    }

    public static int swapMedium(int value) {
        int swapped = ((value << 16) & 16711680) | (65280 & value) | ((value >>> 16) & 255);
        if ((8388608 & swapped) != 0) {
            return swapped | ViewCompat.MEASURED_STATE_MASK;
        }
        return swapped;
    }

    public static int swapInt(int value) {
        return Integer.reverseBytes(value);
    }

    public static long swapLong(long value) {
        return Long.reverseBytes(value);
    }

    public static ByteBuf readBytes(ByteBufAllocator alloc, ByteBuf buffer, int length) {
        boolean release = true;
        ByteBuf dst = alloc.buffer(length);
        try {
            buffer.readBytes(dst);
            release = false;
            return dst;
        } finally {
            if (release) {
                dst.release();
            }
        }
    }

    private static int firstIndexOf(ByteBuf buffer, int fromIndex, int toIndex, byte value) {
        int fromIndex2 = Math.max(fromIndex, 0);
        if (fromIndex2 >= toIndex || buffer.capacity() == 0) {
            return -1;
        }
        for (int i = fromIndex2; i < toIndex; i++) {
            if (buffer.getByte(i) == value) {
                return i;
            }
        }
        return -1;
    }

    private static int lastIndexOf(ByteBuf buffer, int fromIndex, int toIndex, byte value) {
        int fromIndex2 = Math.min(fromIndex, buffer.capacity());
        if (fromIndex2 < 0 || buffer.capacity() == 0) {
            return -1;
        }
        for (int i = fromIndex2 - 1; i >= toIndex; i--) {
            if (buffer.getByte(i) == value) {
                return i;
            }
        }
        return -1;
    }

    public static ByteBuf encodeString(ByteBufAllocator alloc, CharBuffer src, Charset charset) {
        return encodeString0(alloc, false, src, charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuf encodeString0(ByteBufAllocator alloc, boolean enforceHeap, CharBuffer src, Charset charset) {
        ByteBuf dst;
        CharsetEncoder encoder = CharsetUtil.getEncoder(charset);
        int length = (int) (src.remaining() * encoder.maxBytesPerChar());
        boolean release = true;
        if (enforceHeap) {
            dst = alloc.heapBuffer(length);
        } else {
            dst = alloc.buffer(length);
        }
        try {
            try {
                ByteBuffer dstBuf = dst.internalNioBuffer(0, length);
                int pos = dstBuf.position();
                CoderResult cr = encoder.encode(src, dstBuf, true);
                if (!cr.isUnderflow()) {
                    cr.throwException();
                }
                CoderResult cr2 = encoder.flush(dstBuf);
                if (!cr2.isUnderflow()) {
                    cr2.throwException();
                }
                dst.writerIndex((dst.writerIndex() + dstBuf.position()) - pos);
                release = false;
                return dst;
            } catch (CharacterCodingException x) {
                throw new IllegalStateException(x);
            }
        } finally {
            if (release) {
                dst.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String decodeString(ByteBuffer src, Charset charset) {
        CharsetDecoder decoder = CharsetUtil.getDecoder(charset);
        CharBuffer dst = CharBuffer.allocate((int) (src.remaining() * decoder.maxCharsPerByte()));
        try {
            CoderResult cr = decoder.decode(src, dst, true);
            if (!cr.isUnderflow()) {
                cr.throwException();
            }
            CoderResult cr2 = decoder.flush(dst);
            if (!cr2.isUnderflow()) {
                cr2.throwException();
            }
            return dst.flip().toString();
        } catch (CharacterCodingException x) {
            throw new IllegalStateException(x);
        }
    }

    public static ByteBuf threadLocalDirectBuffer() {
        if (THREAD_LOCAL_BUFFER_SIZE <= 0) {
            return null;
        }
        if (PlatformDependent.hasUnsafe()) {
            return ThreadLocalUnsafeDirectByteBuf.newInstance();
        }
        return ThreadLocalDirectByteBuf.newInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class ThreadLocalUnsafeDirectByteBuf extends UnpooledUnsafeDirectByteBuf {
        private static final Recycler<ThreadLocalUnsafeDirectByteBuf> RECYCLER = new Recycler<ThreadLocalUnsafeDirectByteBuf>() { // from class: io.netty.buffer.ByteBufUtil.ThreadLocalUnsafeDirectByteBuf.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.Recycler
            public ThreadLocalUnsafeDirectByteBuf newObject(Recycler.Handle handle) {
                return new ThreadLocalUnsafeDirectByteBuf(handle, null);
            }
        };
        private final Recycler.Handle handle;

        static ThreadLocalUnsafeDirectByteBuf newInstance() {
            ThreadLocalUnsafeDirectByteBuf buf = RECYCLER.get();
            buf.setRefCnt(1);
            return buf;
        }

        /* synthetic */ ThreadLocalUnsafeDirectByteBuf(Recycler.Handle handle, ThreadLocalUnsafeDirectByteBuf threadLocalUnsafeDirectByteBuf) {
            this(handle);
        }

        private ThreadLocalUnsafeDirectByteBuf(Recycler.Handle handle) {
            super(UnpooledByteBufAllocator.DEFAULT, 256, Integer.MAX_VALUE);
            this.handle = handle;
        }

        @Override // io.netty.buffer.UnpooledUnsafeDirectByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf
        protected void deallocate() {
            if (capacity() > ByteBufUtil.THREAD_LOCAL_BUFFER_SIZE) {
                super.deallocate();
            } else {
                clear();
                RECYCLER.recycle(this, this.handle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class ThreadLocalDirectByteBuf extends UnpooledDirectByteBuf {
        private static final Recycler<ThreadLocalDirectByteBuf> RECYCLER = new Recycler<ThreadLocalDirectByteBuf>() { // from class: io.netty.buffer.ByteBufUtil.ThreadLocalDirectByteBuf.1
            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.Recycler
            public ThreadLocalDirectByteBuf newObject(Recycler.Handle handle) {
                return new ThreadLocalDirectByteBuf(handle, null);
            }
        };
        private final Recycler.Handle handle;

        static ThreadLocalDirectByteBuf newInstance() {
            ThreadLocalDirectByteBuf buf = RECYCLER.get();
            buf.setRefCnt(1);
            return buf;
        }

        /* synthetic */ ThreadLocalDirectByteBuf(Recycler.Handle handle, ThreadLocalDirectByteBuf threadLocalDirectByteBuf) {
            this(handle);
        }

        private ThreadLocalDirectByteBuf(Recycler.Handle handle) {
            super(UnpooledByteBufAllocator.DEFAULT, 256, Integer.MAX_VALUE);
            this.handle = handle;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf
        protected void deallocate() {
            if (capacity() > ByteBufUtil.THREAD_LOCAL_BUFFER_SIZE) {
                super.deallocate();
            } else {
                clear();
                RECYCLER.recycle(this, this.handle);
            }
        }
    }

    private ByteBufUtil() {
    }
}
