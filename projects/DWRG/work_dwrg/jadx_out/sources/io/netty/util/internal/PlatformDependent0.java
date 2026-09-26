package io.netty.util.internal;

import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PlatformDependent0 {
    private static final long ADDRESS_FIELD_OFFSET;
    private static final boolean BIG_ENDIAN;
    private static final boolean UNALIGNED;
    private static final Unsafe UNSAFE;
    private static final long UNSAFE_COPY_THRESHOLD = 1048576;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) PlatformDependent0.class);

    static {
        Field addressField;
        Unsafe unsafe;
        boolean unaligned;
        BIG_ENDIAN = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        ByteBuffer direct = ByteBuffer.allocateDirect(1);
        try {
            addressField = Buffer.class.getDeclaredField("address");
            addressField.setAccessible(true);
            if (addressField.getLong(ByteBuffer.allocate(1)) != 0) {
                addressField = null;
            } else if (addressField.getLong(direct) == 0) {
                addressField = null;
            }
        } catch (Throwable th) {
            addressField = null;
        }
        logger.debug("java.nio.Buffer.address: {}", addressField != null ? "available" : "unavailable");
        if (addressField != null) {
            try {
                Field unsafeField = Unsafe.class.getDeclaredField("theUnsafe");
                unsafeField.setAccessible(true);
                unsafe = (Unsafe) unsafeField.get(null);
                logger.debug("sun.misc.Unsafe.theUnsafe: {}", unsafe != null ? "available" : "unavailable");
                if (unsafe != null) {
                    try {
                        unsafe.getClass().getDeclaredMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
                        logger.debug("sun.misc.Unsafe.copyMemory: available");
                    } catch (NoSuchMethodError t) {
                        logger.debug("sun.misc.Unsafe.copyMemory: unavailable");
                        throw t;
                    } catch (NoSuchMethodException e) {
                        logger.debug("sun.misc.Unsafe.copyMemory: unavailable");
                        throw e;
                    }
                }
            } catch (Throwable th2) {
                unsafe = null;
            }
        } else {
            unsafe = null;
        }
        UNSAFE = unsafe;
        if (unsafe == null) {
            ADDRESS_FIELD_OFFSET = -1L;
            UNALIGNED = false;
            return;
        }
        ADDRESS_FIELD_OFFSET = objectFieldOffset(addressField);
        try {
            Class<?> bitsClass = Class.forName("java.nio.Bits", false, ClassLoader.getSystemClassLoader());
            Method unalignedMethod = bitsClass.getDeclaredMethod("unaligned", new Class[0]);
            unalignedMethod.setAccessible(true);
            unaligned = Boolean.TRUE.equals(unalignedMethod.invoke(null, new Object[0]));
        } catch (Throwable th3) {
            String arch = SystemPropertyUtil.get("os.arch", "");
            unaligned = arch.matches("^(i[3-6]86|x86(_64)?|x64|amd64)$");
        }
        UNALIGNED = unaligned;
        logger.debug("java.nio.Bits.unaligned: {}", Boolean.valueOf(UNALIGNED));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasUnsafe() {
        return UNSAFE != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void throwException(Throwable t) {
        UNSAFE.throwException(t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void freeDirectBuffer(ByteBuffer buffer) {
        Cleaner0.freeDirectBuffer(buffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long directBufferAddress(ByteBuffer buffer) {
        return getLong(buffer, ADDRESS_FIELD_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long arrayBaseOffset() {
        return UNSAFE.arrayBaseOffset(byte[].class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getObject(Object object, long fieldOffset) {
        return UNSAFE.getObject(object, fieldOffset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getObjectVolatile(Object object, long fieldOffset) {
        return UNSAFE.getObjectVolatile(object, fieldOffset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getInt(Object object, long fieldOffset) {
        return UNSAFE.getInt(object, fieldOffset);
    }

    private static long getLong(Object object, long fieldOffset) {
        return UNSAFE.getLong(object, fieldOffset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long objectFieldOffset(Field field) {
        return UNSAFE.objectFieldOffset(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte getByte(long address) {
        return UNSAFE.getByte(address);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short getShort(long address) {
        if (UNALIGNED) {
            return UNSAFE.getShort(address);
        }
        if (BIG_ENDIAN) {
            return (short) ((getByte(address) << 8) | (getByte(1 + address) & 255));
        }
        return (short) ((getByte(address + 1) << 8) | (getByte(address) & 255));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getInt(long address) {
        if (UNALIGNED) {
            return UNSAFE.getInt(address);
        }
        if (BIG_ENDIAN) {
            return (getByte(address) << 24) | ((getByte(address + 1) & 255) << 16) | ((getByte(address + 2) & 255) << 8) | (getByte(address + 3) & 255);
        }
        return (getByte(address + 3) << 24) | ((getByte(address + 2) & 255) << 16) | ((getByte(address + 1) & 255) << 8) | (getByte(address) & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLong(long address) {
        if (UNALIGNED) {
            return UNSAFE.getLong(address);
        }
        if (BIG_ENDIAN) {
            return (getByte(address) << 56) | ((getByte(1 + address) & 255) << 48) | ((getByte(2 + address) & 255) << 40) | ((getByte(3 + address) & 255) << 32) | ((getByte(4 + address) & 255) << 24) | ((getByte(5 + address) & 255) << 16) | ((getByte(6 + address) & 255) << 8) | (getByte(7 + address) & 255);
        }
        return (getByte(7 + address) << 56) | ((getByte(6 + address) & 255) << 48) | ((getByte(5 + address) & 255) << 40) | ((getByte(4 + address) & 255) << 32) | ((getByte(3 + address) & 255) << 24) | ((getByte(2 + address) & 255) << 16) | ((getByte(1 + address) & 255) << 8) | (getByte(address) & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putOrderedObject(Object object, long address, Object value) {
        UNSAFE.putOrderedObject(object, address, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putByte(long address, byte value) {
        UNSAFE.putByte(address, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putShort(long address, short value) {
        if (UNALIGNED) {
            UNSAFE.putShort(address, value);
        } else if (BIG_ENDIAN) {
            putByte(address, (byte) (value >>> 8));
            putByte(address + 1, (byte) value);
        } else {
            putByte(address + 1, (byte) (value >>> 8));
            putByte(address, (byte) value);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putInt(long address, int value) {
        if (UNALIGNED) {
            UNSAFE.putInt(address, value);
            return;
        }
        if (BIG_ENDIAN) {
            putByte(address, (byte) (value >>> 24));
            putByte(address + 1, (byte) (value >>> 16));
            putByte(address + 2, (byte) (value >>> 8));
            putByte(address + 3, (byte) value);
            return;
        }
        putByte(address + 3, (byte) (value >>> 24));
        putByte(address + 2, (byte) (value >>> 16));
        putByte(address + 1, (byte) (value >>> 8));
        putByte(address, (byte) value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putLong(long address, long value) {
        if (UNALIGNED) {
            UNSAFE.putLong(address, value);
            return;
        }
        if (BIG_ENDIAN) {
            putByte(address, (byte) (value >>> 56));
            putByte(1 + address, (byte) (value >>> 48));
            putByte(2 + address, (byte) (value >>> 40));
            putByte(3 + address, (byte) (value >>> 32));
            putByte(4 + address, (byte) (value >>> 24));
            putByte(5 + address, (byte) (value >>> 16));
            putByte(6 + address, (byte) (value >>> 8));
            putByte(7 + address, (byte) value);
            return;
        }
        putByte(7 + address, (byte) (value >>> 56));
        putByte(6 + address, (byte) (value >>> 48));
        putByte(5 + address, (byte) (value >>> 40));
        putByte(4 + address, (byte) (value >>> 32));
        putByte(3 + address, (byte) (value >>> 24));
        putByte(2 + address, (byte) (value >>> 16));
        putByte(1 + address, (byte) (value >>> 8));
        putByte(address, (byte) value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void copyMemory(long srcAddr, long dstAddr, long length) {
        while (length > 0) {
            long size = Math.min(length, UNSAFE_COPY_THRESHOLD);
            UNSAFE.copyMemory(srcAddr, dstAddr, size);
            length -= size;
            srcAddr += size;
            dstAddr += size;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void copyMemory(Object src, long srcOffset, Object dst, long dstOffset, long length) {
        while (length > 0) {
            long size = Math.min(length, UNSAFE_COPY_THRESHOLD);
            UNSAFE.copyMemory(src, srcOffset, dst, dstOffset, size);
            length -= size;
            srcOffset += size;
            dstOffset += size;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <U, W> AtomicReferenceFieldUpdater<U, W> newAtomicReferenceFieldUpdater(Class<U> tclass, String fieldName) throws Exception {
        return new UnsafeAtomicReferenceFieldUpdater(UNSAFE, tclass, fieldName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> AtomicIntegerFieldUpdater<T> newAtomicIntegerFieldUpdater(Class<?> tclass, String fieldName) throws Exception {
        return new UnsafeAtomicIntegerFieldUpdater(UNSAFE, tclass, fieldName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> AtomicLongFieldUpdater<T> newAtomicLongFieldUpdater(Class<?> tclass, String fieldName) throws Exception {
        return new UnsafeAtomicLongFieldUpdater(UNSAFE, tclass, fieldName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ClassLoader getClassLoader(final Class<?> clazz) {
        return System.getSecurityManager() == null ? clazz.getClassLoader() : (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: io.netty.util.internal.PlatformDependent0.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return clazz.getClassLoader();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ClassLoader getContextClassLoader() {
        return System.getSecurityManager() == null ? Thread.currentThread().getContextClassLoader() : (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: io.netty.util.internal.PlatformDependent0.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return Thread.currentThread().getContextClassLoader();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ClassLoader getSystemClassLoader() {
        return System.getSecurityManager() == null ? ClassLoader.getSystemClassLoader() : (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: io.netty.util.internal.PlatformDependent0.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                return ClassLoader.getSystemClassLoader();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int addressSize() {
        return UNSAFE.addressSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long allocateMemory(long size) {
        return UNSAFE.allocateMemory(size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void freeMemory(long address) {
        UNSAFE.freeMemory(address);
    }

    private PlatformDependent0() {
    }
}
