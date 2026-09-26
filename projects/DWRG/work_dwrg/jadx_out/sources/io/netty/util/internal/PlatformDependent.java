package io.netty.util.internal;

import io.netty.util.internal.chmv8.ConcurrentHashMapV8;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.File;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class PlatformDependent {
    private static final int ADDRESS_SIZE;
    private static final long ARRAY_BASE_OFFSET;
    private static final int BIT_MODE;
    private static final boolean CAN_ENABLE_TCP_NODELAY_BY_DEFAULT;
    private static final boolean CAN_USE_CHM_V8;
    private static final boolean DIRECT_BUFFER_PREFERRED;
    private static final boolean HAS_JAVASSIST;
    private static final boolean HAS_UNSAFE;
    private static final long MAX_DIRECT_MEMORY;
    private static final File TMPDIR;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) PlatformDependent.class);
    private static final Pattern MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN = Pattern.compile("\\s*-XX:MaxDirectMemorySize\\s*=\\s*([0-9]+)\\s*([kKmMgG]?)\\s*$");
    private static final boolean IS_ANDROID = isAndroid0();
    private static final boolean IS_WINDOWS = isWindows0();
    private static final boolean IS_ROOT = isRoot0();
    private static final int JAVA_VERSION = javaVersion0();

    static {
        CAN_ENABLE_TCP_NODELAY_BY_DEFAULT = !isAndroid();
        HAS_UNSAFE = hasUnsafe0();
        CAN_USE_CHM_V8 = HAS_UNSAFE && JAVA_VERSION < 8;
        DIRECT_BUFFER_PREFERRED = HAS_UNSAFE && !SystemPropertyUtil.getBoolean("io.netty.noPreferDirect", false);
        MAX_DIRECT_MEMORY = maxDirectMemory0();
        ARRAY_BASE_OFFSET = arrayBaseOffset0();
        HAS_JAVASSIST = hasJavassist0();
        TMPDIR = tmpdir0();
        BIT_MODE = bitMode0();
        ADDRESS_SIZE = addressSize0();
        if (logger.isDebugEnabled()) {
            logger.debug("-Dio.netty.noPreferDirect: {}", Boolean.valueOf(DIRECT_BUFFER_PREFERRED ? false : true));
        }
        if (!hasUnsafe() && !isAndroid()) {
            logger.info("Your platform does not provide complete low-level API for accessing direct buffers reliably. Unless explicitly requested, heap buffer will always be preferred to avoid potential system unstability.");
        }
    }

    public static boolean isAndroid() {
        return IS_ANDROID;
    }

    public static boolean isWindows() {
        return IS_WINDOWS;
    }

    public static boolean isRoot() {
        return IS_ROOT;
    }

    public static int javaVersion() {
        return JAVA_VERSION;
    }

    public static boolean canEnableTcpNoDelayByDefault() {
        return CAN_ENABLE_TCP_NODELAY_BY_DEFAULT;
    }

    public static boolean hasUnsafe() {
        return HAS_UNSAFE;
    }

    public static boolean directBufferPreferred() {
        return DIRECT_BUFFER_PREFERRED;
    }

    public static long maxDirectMemory() {
        return MAX_DIRECT_MEMORY;
    }

    public static boolean hasJavassist() {
        return HAS_JAVASSIST;
    }

    public static File tmpdir() {
        return TMPDIR;
    }

    public static int bitMode() {
        return BIT_MODE;
    }

    public static int addressSize() {
        return ADDRESS_SIZE;
    }

    public static long allocateMemory(long size) {
        return PlatformDependent0.allocateMemory(size);
    }

    public static void freeMemory(long address) {
        PlatformDependent0.freeMemory(address);
    }

    public static void throwException(Throwable t) {
        if (hasUnsafe()) {
            PlatformDependent0.throwException(t);
        } else {
            throwException0(t);
        }
    }

    private static <E extends Throwable> void throwException0(Throwable t) throws Throwable {
        throw t;
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap() {
        return CAN_USE_CHM_V8 ? new ConcurrentHashMapV8() : new ConcurrentHashMap();
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap(int initialCapacity) {
        return CAN_USE_CHM_V8 ? new ConcurrentHashMapV8(initialCapacity) : new ConcurrentHashMap(initialCapacity);
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap(int initialCapacity, float loadFactor) {
        return CAN_USE_CHM_V8 ? new ConcurrentHashMapV8(initialCapacity, loadFactor) : new ConcurrentHashMap(initialCapacity, loadFactor);
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap(int initialCapacity, float loadFactor, int concurrencyLevel) {
        return CAN_USE_CHM_V8 ? new ConcurrentHashMapV8(initialCapacity, loadFactor, concurrencyLevel) : new ConcurrentHashMap(initialCapacity, loadFactor, concurrencyLevel);
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentHashMap(Map<? extends K, ? extends V> map) {
        return CAN_USE_CHM_V8 ? new ConcurrentHashMapV8(map) : new ConcurrentHashMap(map);
    }

    public static void freeDirectBuffer(ByteBuffer buffer) {
        if (hasUnsafe() && !isAndroid()) {
            PlatformDependent0.freeDirectBuffer(buffer);
        }
    }

    public static long directBufferAddress(ByteBuffer buffer) {
        return PlatformDependent0.directBufferAddress(buffer);
    }

    public static Object getObject(Object object, long fieldOffset) {
        return PlatformDependent0.getObject(object, fieldOffset);
    }

    public static Object getObjectVolatile(Object object, long fieldOffset) {
        return PlatformDependent0.getObjectVolatile(object, fieldOffset);
    }

    public static int getInt(Object object, long fieldOffset) {
        return PlatformDependent0.getInt(object, fieldOffset);
    }

    public static long objectFieldOffset(Field field) {
        return PlatformDependent0.objectFieldOffset(field);
    }

    public static byte getByte(long address) {
        return PlatformDependent0.getByte(address);
    }

    public static short getShort(long address) {
        return PlatformDependent0.getShort(address);
    }

    public static int getInt(long address) {
        return PlatformDependent0.getInt(address);
    }

    public static long getLong(long address) {
        return PlatformDependent0.getLong(address);
    }

    public static void putOrderedObject(Object object, long address, Object value) {
        PlatformDependent0.putOrderedObject(object, address, value);
    }

    public static void putByte(long address, byte value) {
        PlatformDependent0.putByte(address, value);
    }

    public static void putShort(long address, short value) {
        PlatformDependent0.putShort(address, value);
    }

    public static void putInt(long address, int value) {
        PlatformDependent0.putInt(address, value);
    }

    public static void putLong(long address, long value) {
        PlatformDependent0.putLong(address, value);
    }

    public static void copyMemory(long srcAddr, long dstAddr, long length) {
        PlatformDependent0.copyMemory(srcAddr, dstAddr, length);
    }

    public static void copyMemory(byte[] src, int srcIndex, long dstAddr, long length) {
        PlatformDependent0.copyMemory(src, ARRAY_BASE_OFFSET + srcIndex, null, dstAddr, length);
    }

    public static void copyMemory(long srcAddr, byte[] dst, int dstIndex, long length) {
        PlatformDependent0.copyMemory(null, srcAddr, dst, dstIndex + ARRAY_BASE_OFFSET, length);
    }

    public static <U, W> AtomicReferenceFieldUpdater<U, W> newAtomicReferenceFieldUpdater(Class<U> tclass, String fieldName) {
        if (hasUnsafe()) {
            try {
                return PlatformDependent0.newAtomicReferenceFieldUpdater(tclass, fieldName);
            } catch (Throwable th) {
            }
        }
        return null;
    }

    public static <T> AtomicIntegerFieldUpdater<T> newAtomicIntegerFieldUpdater(Class<?> tclass, String fieldName) {
        if (hasUnsafe()) {
            try {
                return PlatformDependent0.newAtomicIntegerFieldUpdater(tclass, fieldName);
            } catch (Throwable th) {
            }
        }
        return null;
    }

    public static <T> AtomicLongFieldUpdater<T> newAtomicLongFieldUpdater(Class<?> tclass, String fieldName) {
        if (hasUnsafe()) {
            try {
                return PlatformDependent0.newAtomicLongFieldUpdater(tclass, fieldName);
            } catch (Throwable th) {
            }
        }
        return null;
    }

    public static <T> Queue<T> newMpscQueue() {
        return new MpscLinkedQueue();
    }

    public static ClassLoader getClassLoader(Class<?> clazz) {
        return PlatformDependent0.getClassLoader(clazz);
    }

    public static ClassLoader getContextClassLoader() {
        return PlatformDependent0.getContextClassLoader();
    }

    public static ClassLoader getSystemClassLoader() {
        return PlatformDependent0.getSystemClassLoader();
    }

    private static boolean isAndroid0() {
        boolean android2;
        try {
            Class.forName("android.app.Application", false, getSystemClassLoader());
            android2 = true;
        } catch (Exception e) {
            android2 = false;
        }
        if (android2) {
            logger.debug("Platform: Android");
        }
        return android2;
    }

    private static boolean isWindows0() {
        boolean windows = SystemPropertyUtil.get("os.name", "").toLowerCase(Locale.US).contains("win");
        if (windows) {
            logger.debug("Platform: Windows");
        }
        return windows;
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isRoot0() {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.PlatformDependent.isRoot0():boolean");
    }

    private static int javaVersion0() {
        int javaVersion;
        if (isAndroid()) {
            javaVersion = 6;
        } else {
            try {
                Class.forName("java.time.Clock", false, getClassLoader(Object.class));
                javaVersion = 8;
            } catch (Exception e) {
                try {
                    Class.forName("java.util.concurrent.LinkedTransferQueue", false, getClassLoader(BlockingQueue.class));
                    javaVersion = 7;
                } catch (Exception e2) {
                    javaVersion = 6;
                }
            }
        }
        if (logger.isDebugEnabled()) {
            logger.debug("Java version: {}", Integer.valueOf(javaVersion));
        }
        return javaVersion;
    }

    private static boolean hasUnsafe0() {
        boolean tryUnsafe;
        boolean noUnsafe = SystemPropertyUtil.getBoolean("io.netty.noUnsafe", false);
        logger.debug("-Dio.netty.noUnsafe: {}", Boolean.valueOf(noUnsafe));
        if (isAndroid()) {
            logger.debug("sun.misc.Unsafe: unavailable (Android)");
            return false;
        }
        if (noUnsafe) {
            logger.debug("sun.misc.Unsafe: unavailable (io.netty.noUnsafe)");
            return false;
        }
        if (SystemPropertyUtil.contains("io.netty.tryUnsafe")) {
            tryUnsafe = SystemPropertyUtil.getBoolean("io.netty.tryUnsafe", true);
        } else {
            tryUnsafe = SystemPropertyUtil.getBoolean("org.jboss.netty.tryUnsafe", true);
        }
        if (!tryUnsafe) {
            logger.debug("sun.misc.Unsafe: unavailable (io.netty.tryUnsafe/org.jboss.netty.tryUnsafe)");
            return false;
        }
        try {
            boolean hasUnsafe = PlatformDependent0.hasUnsafe();
            logger.debug("sun.misc.Unsafe: {}", hasUnsafe ? "available" : "unavailable");
            return hasUnsafe;
        } catch (Throwable th) {
            return false;
        }
    }

    private static long arrayBaseOffset0() {
        if (hasUnsafe()) {
            return PlatformDependent0.arrayBaseOffset();
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0081, code lost:
    
        r2 = java.lang.Long.parseLong(r1.group(1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0094, code lost:
    
        switch(r1.group(2).charAt(0)) {
            case 71: goto L19;
            case 75: goto L17;
            case 77: goto L18;
            case 103: goto L19;
            case 107: goto L17;
            case 109: goto L18;
            default: goto L14;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b0, code lost:
    
        r2 = r2 * 1024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b4, code lost:
    
        r2 = r2 * 1048576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b9, code lost:
    
        r2 = r2 * 1073741824;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long maxDirectMemory0() {
        /*
            r12 = 0
            r2 = 0
            java.lang.String r9 = "sun.misc.VM"
            r10 = 1
            java.lang.ClassLoader r11 = getSystemClassLoader()     // Catch: java.lang.Throwable -> Lcd
            java.lang.Class r8 = java.lang.Class.forName(r9, r10, r11)     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r9 = "maxDirectMemory"
            r10 = 0
            java.lang.Class[] r10 = new java.lang.Class[r10]     // Catch: java.lang.Throwable -> Lcd
            java.lang.reflect.Method r1 = r8.getDeclaredMethod(r9, r10)     // Catch: java.lang.Throwable -> Lcd
            r9 = 0
            r10 = 0
            java.lang.Object[] r10 = new java.lang.Object[r10]     // Catch: java.lang.Throwable -> Lcd
            java.lang.Object r9 = r1.invoke(r9, r10)     // Catch: java.lang.Throwable -> Lcd
            java.lang.Number r9 = (java.lang.Number) r9     // Catch: java.lang.Throwable -> Lcd
            long r2 = r9.longValue()     // Catch: java.lang.Throwable -> Lcd
        L26:
            int r9 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1))
            if (r9 <= 0) goto L2b
        L2a:
            return r2
        L2b:
            java.lang.String r9 = "java.lang.management.ManagementFactory"
            r10 = 1
            java.lang.ClassLoader r11 = getSystemClassLoader()     // Catch: java.lang.Throwable -> Lcb
            java.lang.Class r4 = java.lang.Class.forName(r9, r10, r11)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r9 = "java.lang.management.RuntimeMXBean"
            r10 = 1
            java.lang.ClassLoader r11 = getSystemClassLoader()     // Catch: java.lang.Throwable -> Lcb
            java.lang.Class r6 = java.lang.Class.forName(r9, r10, r11)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r9 = "getRuntimeMXBean"
            r10 = 0
            java.lang.Class[] r10 = new java.lang.Class[r10]     // Catch: java.lang.Throwable -> Lcb
            java.lang.reflect.Method r9 = r4.getDeclaredMethod(r9, r10)     // Catch: java.lang.Throwable -> Lcb
            r10 = 0
            r11 = 0
            java.lang.Object[] r11 = new java.lang.Object[r11]     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object r5 = r9.invoke(r10, r11)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r9 = "getInputArguments"
            r10 = 0
            java.lang.Class[] r10 = new java.lang.Class[r10]     // Catch: java.lang.Throwable -> Lcb
            java.lang.reflect.Method r9 = r6.getDeclaredMethod(r9, r10)     // Catch: java.lang.Throwable -> Lcb
            r10 = 0
            java.lang.Object[] r10 = new java.lang.Object[r10]     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object r7 = r9.invoke(r5, r10)     // Catch: java.lang.Throwable -> Lcb
            java.util.List r7 = (java.util.List) r7     // Catch: java.lang.Throwable -> Lcb
            int r9 = r7.size()     // Catch: java.lang.Throwable -> Lcb
            int r0 = r9 + (-1)
        L6a:
            if (r0 < 0) goto L97
            java.util.regex.Pattern r10 = io.netty.util.internal.PlatformDependent.MAX_DIRECT_MEMORY_SIZE_ARG_PATTERN     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object r9 = r7.get(r0)     // Catch: java.lang.Throwable -> Lcb
            java.lang.CharSequence r9 = (java.lang.CharSequence) r9     // Catch: java.lang.Throwable -> Lcb
            java.util.regex.Matcher r1 = r10.matcher(r9)     // Catch: java.lang.Throwable -> Lcb
            boolean r9 = r1.matches()     // Catch: java.lang.Throwable -> Lcb
            if (r9 != 0) goto L81
            int r0 = r0 + (-1)
            goto L6a
        L81:
            r9 = 1
            java.lang.String r9 = r1.group(r9)     // Catch: java.lang.Throwable -> Lcb
            long r2 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Throwable -> Lcb
            r9 = 2
            java.lang.String r9 = r1.group(r9)     // Catch: java.lang.Throwable -> Lcb
            r10 = 0
            char r9 = r9.charAt(r10)     // Catch: java.lang.Throwable -> Lcb
            switch(r9) {
                case 71: goto Lb9;
                case 75: goto Lb0;
                case 77: goto Lb4;
                case 103: goto Lb9;
                case 107: goto Lb0;
                case 109: goto Lb4;
                default: goto L97;
            }
        L97:
            int r9 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1))
            if (r9 > 0) goto Lbe
            java.lang.Runtime r9 = java.lang.Runtime.getRuntime()
            long r2 = r9.maxMemory()
            io.netty.util.internal.logging.InternalLogger r9 = io.netty.util.internal.PlatformDependent.logger
            java.lang.String r10 = "maxDirectMemory: {} bytes (maybe)"
            java.lang.Long r11 = java.lang.Long.valueOf(r2)
            r9.debug(r10, r11)
            goto L2a
        Lb0:
            r10 = 1024(0x400, double:5.06E-321)
            long r2 = r2 * r10
            goto L97
        Lb4:
            r10 = 1048576(0x100000, double:5.180654E-318)
            long r2 = r2 * r10
            goto L97
        Lb9:
            r10 = 1073741824(0x40000000, double:5.304989477E-315)
            long r2 = r2 * r10
            goto L97
        Lbe:
            io.netty.util.internal.logging.InternalLogger r9 = io.netty.util.internal.PlatformDependent.logger
            java.lang.String r10 = "maxDirectMemory: {} bytes"
            java.lang.Long r11 = java.lang.Long.valueOf(r2)
            r9.debug(r10, r11)
            goto L2a
        Lcb:
            r9 = move-exception
            goto L97
        Lcd:
            r9 = move-exception
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.PlatformDependent.maxDirectMemory0():long");
    }

    private static boolean hasJavassist0() {
        if (isAndroid()) {
            return false;
        }
        boolean noJavassist = SystemPropertyUtil.getBoolean("io.netty.noJavassist", false);
        logger.debug("-Dio.netty.noJavassist: {}", Boolean.valueOf(noJavassist));
        if (noJavassist) {
            logger.debug("Javassist: unavailable (io.netty.noJavassist)");
            return false;
        }
        try {
            JavassistTypeParameterMatcherGenerator.generate(Object.class, getClassLoader(PlatformDependent.class));
            logger.debug("Javassist: available");
            return true;
        } catch (Throwable th) {
            logger.debug("Javassist: unavailable");
            logger.debug("You don't have Javassist in your class path or you don't have enough permission to load dynamically generated classes.  Please check the configuration for better performance.");
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.File tmpdir0() {
        /*
            java.lang.String r2 = "io.netty.tmpdir"
            java.lang.String r2 = io.netty.util.internal.SystemPropertyUtil.get(r2)     // Catch: java.lang.Exception -> L28
            java.io.File r0 = toDirectory(r2)     // Catch: java.lang.Exception -> L28
            if (r0 == 0) goto L14
            io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.logger     // Catch: java.lang.Exception -> L28
            java.lang.String r3 = "-Dio.netty.tmpdir: {}"
            r2.debug(r3, r0)     // Catch: java.lang.Exception -> L28
        L13:
            return r0
        L14:
            java.lang.String r2 = "java.io.tmpdir"
            java.lang.String r2 = io.netty.util.internal.SystemPropertyUtil.get(r2)     // Catch: java.lang.Exception -> L28
            java.io.File r0 = toDirectory(r2)     // Catch: java.lang.Exception -> L28
            if (r0 == 0) goto L3e
            io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.logger     // Catch: java.lang.Exception -> L28
            java.lang.String r3 = "-Dio.netty.tmpdir: {} (java.io.tmpdir)"
            r2.debug(r3, r0)     // Catch: java.lang.Exception -> L28
            goto L13
        L28:
            r2 = move-exception
        L29:
            boolean r2 = isWindows()
            if (r2 == 0) goto Lb8
            java.io.File r0 = new java.io.File
            java.lang.String r2 = "C:\\Windows\\Temp"
            r0.<init>(r2)
        L36:
            io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.logger
            java.lang.String r3 = "Failed to get the temporary directory; falling back to: {}"
            r2.warn(r3, r0)
            goto L13
        L3e:
            boolean r2 = isWindows()     // Catch: java.lang.Exception -> L28
            if (r2 == 0) goto La3
            java.lang.String r2 = "TEMP"
            java.lang.String r2 = java.lang.System.getenv(r2)     // Catch: java.lang.Exception -> L28
            java.io.File r0 = toDirectory(r2)     // Catch: java.lang.Exception -> L28
            if (r0 == 0) goto L58
            io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.logger     // Catch: java.lang.Exception -> L28
            java.lang.String r3 = "-Dio.netty.tmpdir: {} (%TEMP%)"
            r2.debug(r3, r0)     // Catch: java.lang.Exception -> L28
            goto L13
        L58:
            java.lang.String r2 = "USERPROFILE"
            java.lang.String r1 = java.lang.System.getenv(r2)     // Catch: java.lang.Exception -> L28
            if (r1 == 0) goto L29
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L28
            r2.<init>()     // Catch: java.lang.Exception -> L28
            java.lang.StringBuilder r2 = r2.append(r1)     // Catch: java.lang.Exception -> L28
            java.lang.String r3 = "\\AppData\\Local\\Temp"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> L28
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L28
            java.io.File r0 = toDirectory(r2)     // Catch: java.lang.Exception -> L28
            if (r0 == 0) goto L81
            io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.logger     // Catch: java.lang.Exception -> L28
            java.lang.String r3 = "-Dio.netty.tmpdir: {} (%USERPROFILE%\\AppData\\Local\\Temp)"
            r2.debug(r3, r0)     // Catch: java.lang.Exception -> L28
            goto L13
        L81:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L28
            r2.<init>()     // Catch: java.lang.Exception -> L28
            java.lang.StringBuilder r2 = r2.append(r1)     // Catch: java.lang.Exception -> L28
            java.lang.String r3 = "\\Local Settings\\Temp"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Exception -> L28
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L28
            java.io.File r0 = toDirectory(r2)     // Catch: java.lang.Exception -> L28
            if (r0 == 0) goto L29
            io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.logger     // Catch: java.lang.Exception -> L28
            java.lang.String r3 = "-Dio.netty.tmpdir: {} (%USERPROFILE%\\Local Settings\\Temp)"
            r2.debug(r3, r0)     // Catch: java.lang.Exception -> L28
            goto L13
        La3:
            java.lang.String r2 = "TMPDIR"
            java.lang.String r2 = java.lang.System.getenv(r2)     // Catch: java.lang.Exception -> L28
            java.io.File r0 = toDirectory(r2)     // Catch: java.lang.Exception -> L28
            if (r0 == 0) goto L29
            io.netty.util.internal.logging.InternalLogger r2 = io.netty.util.internal.PlatformDependent.logger     // Catch: java.lang.Exception -> L28
            java.lang.String r3 = "-Dio.netty.tmpdir: {} ($TMPDIR)"
            r2.debug(r3, r0)     // Catch: java.lang.Exception -> L28
            goto L13
        Lb8:
            java.io.File r0 = new java.io.File
            java.lang.String r2 = "/tmp"
            r0.<init>(r2)
            goto L36
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.PlatformDependent.tmpdir0():java.io.File");
    }

    private static File toDirectory(String path) {
        if (path == null) {
            return null;
        }
        File f = new File(path);
        f.mkdirs();
        if (!f.isDirectory()) {
            return null;
        }
        try {
            return f.getAbsoluteFile();
        } catch (Exception e) {
            return f;
        }
    }

    private static int bitMode0() {
        int bitMode = SystemPropertyUtil.getInt("io.netty.bitMode", 0);
        if (bitMode > 0) {
            logger.debug("-Dio.netty.bitMode: {}", Integer.valueOf(bitMode));
            return bitMode;
        }
        int bitMode2 = SystemPropertyUtil.getInt("sun.arch.data.model", 0);
        if (bitMode2 > 0) {
            logger.debug("-Dio.netty.bitMode: {} (sun.arch.data.model)", Integer.valueOf(bitMode2));
            return bitMode2;
        }
        int bitMode3 = SystemPropertyUtil.getInt("com.ibm.vm.bitmode", 0);
        if (bitMode3 > 0) {
            logger.debug("-Dio.netty.bitMode: {} (com.ibm.vm.bitmode)", Integer.valueOf(bitMode3));
            return bitMode3;
        }
        String arch = SystemPropertyUtil.get("os.arch", "").toLowerCase(Locale.US).trim();
        if ("amd64".equals(arch) || "x86_64".equals(arch)) {
            bitMode3 = 64;
        } else if ("i386".equals(arch) || "i486".equals(arch) || "i586".equals(arch) || "i686".equals(arch)) {
            bitMode3 = 32;
        }
        if (bitMode3 > 0) {
            logger.debug("-Dio.netty.bitMode: {} (os.arch: {})", Integer.valueOf(bitMode3), arch);
        }
        String vm = SystemPropertyUtil.get("java.vm.name", "").toLowerCase(Locale.US);
        Pattern BIT_PATTERN = Pattern.compile("([1-9][0-9]+)-?bit");
        Matcher m = BIT_PATTERN.matcher(vm);
        if (m.find()) {
            return Integer.parseInt(m.group(1));
        }
        return 64;
    }

    private static int addressSize0() {
        if (hasUnsafe()) {
            return PlatformDependent0.addressSize();
        }
        return -1;
    }

    private PlatformDependent() {
    }
}
