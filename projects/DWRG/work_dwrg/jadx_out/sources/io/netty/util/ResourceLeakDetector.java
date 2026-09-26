package io.netty.util;

import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class ResourceLeakDetector<T> {
    private static final int DEFAULT_SAMPLING_INTERVAL = 113;
    private static final String PROP_LEVEL = "io.netty.leakDetectionLevel";
    private static final String[] STACK_TRACE_ELEMENT_EXCLUSIONS;
    private static Level level;
    private long active;
    private final ResourceLeakDetector<T>.DefaultResourceLeak head;
    private long leakCheckCnt;
    private final AtomicBoolean loggedTooManyActive;
    private final long maxActive;
    private final ReferenceQueue<Object> refQueue;
    private final ConcurrentMap<String, Boolean> reportedLeaks;
    private final String resourceType;
    private final int samplingInterval;
    private final ResourceLeakDetector<T>.DefaultResourceLeak tail;
    private static final Level DEFAULT_LEVEL = Level.SIMPLE;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) ResourceLeakDetector.class);

    /* loaded from: classes.dex */
    public enum Level {
        DISABLED,
        SIMPLE,
        ADVANCED,
        PARANOID;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Level[] valuesCustom() {
            Level[] valuesCustom = values();
            int length = valuesCustom.length;
            Level[] levelArr = new Level[length];
            System.arraycopy(valuesCustom, 0, levelArr, 0, length);
            return levelArr;
        }
    }

    static {
        boolean disabled;
        if (SystemPropertyUtil.get("io.netty.noResourceLeakDetection") != null) {
            disabled = SystemPropertyUtil.getBoolean("io.netty.noResourceLeakDetection", false);
            logger.debug("-Dio.netty.noResourceLeakDetection: {}", Boolean.valueOf(disabled));
            logger.warn("-Dio.netty.noResourceLeakDetection is deprecated. Use '-D{}={}' instead.", PROP_LEVEL, DEFAULT_LEVEL.name().toLowerCase());
        } else {
            disabled = false;
        }
        Level defaultLevel = disabled ? Level.DISABLED : DEFAULT_LEVEL;
        String levelStr = SystemPropertyUtil.get(PROP_LEVEL, defaultLevel.name()).trim().toUpperCase();
        Level level2 = DEFAULT_LEVEL;
        Iterator it = EnumSet.allOf(Level.class).iterator();
        while (it.hasNext()) {
            Level l = (Level) it.next();
            if (levelStr.equals(l.name()) || levelStr.equals(String.valueOf(l.ordinal()))) {
                level2 = l;
            }
        }
        level = level2;
        if (logger.isDebugEnabled()) {
            logger.debug("-D{}: {}", PROP_LEVEL, level2.name().toLowerCase());
        }
        STACK_TRACE_ELEMENT_EXCLUSIONS = new String[]{"io.netty.buffer.AbstractByteBufAllocator.toLeakAwareBuffer("};
    }

    @Deprecated
    public static void setEnabled(boolean enabled) {
        setLevel(enabled ? Level.SIMPLE : Level.DISABLED);
    }

    public static boolean isEnabled() {
        return getLevel().ordinal() > Level.DISABLED.ordinal();
    }

    public static void setLevel(Level level2) {
        if (level2 == null) {
            throw new NullPointerException("level");
        }
        level = level2;
    }

    public static Level getLevel() {
        return level;
    }

    public ResourceLeakDetector(Class<?> resourceType) {
        this(StringUtil.simpleClassName(resourceType));
    }

    public ResourceLeakDetector(String resourceType) {
        this(resourceType, DEFAULT_SAMPLING_INTERVAL, Long.MAX_VALUE);
    }

    public ResourceLeakDetector(Class<?> resourceType, int samplingInterval, long maxActive) {
        this(StringUtil.simpleClassName(resourceType), samplingInterval, maxActive);
    }

    public ResourceLeakDetector(String resourceType, int samplingInterval, long maxActive) {
        this.head = new DefaultResourceLeak(null);
        this.tail = new DefaultResourceLeak(null);
        this.refQueue = new ReferenceQueue<>();
        this.reportedLeaks = PlatformDependent.newConcurrentHashMap();
        this.loggedTooManyActive = new AtomicBoolean();
        if (resourceType == null) {
            throw new NullPointerException("resourceType");
        }
        if (samplingInterval <= 0) {
            throw new IllegalArgumentException("samplingInterval: " + samplingInterval + " (expected: 1+)");
        }
        if (maxActive <= 0) {
            throw new IllegalArgumentException("maxActive: " + maxActive + " (expected: 1+)");
        }
        this.resourceType = resourceType;
        this.samplingInterval = samplingInterval;
        this.maxActive = maxActive;
        ((DefaultResourceLeak) this.head).next = this.tail;
        ((DefaultResourceLeak) this.tail).prev = this.head;
    }

    public ResourceLeak open(T obj) {
        Level level2 = level;
        if (level2 == Level.DISABLED) {
            return null;
        }
        if (level2.ordinal() < Level.PARANOID.ordinal()) {
            long j = this.leakCheckCnt;
            this.leakCheckCnt = 1 + j;
            if (j % this.samplingInterval != 0) {
                return null;
            }
            reportLeak(level2);
            return new DefaultResourceLeak(obj);
        }
        reportLeak(level2);
        return new DefaultResourceLeak(obj);
    }

    private void reportLeak(Level level2) {
        if (logger.isErrorEnabled()) {
            int samplingInterval = level2 == Level.PARANOID ? 1 : this.samplingInterval;
            if (this.active * samplingInterval > this.maxActive && this.loggedTooManyActive.compareAndSet(false, true)) {
                logger.error("LEAK: You are creating too many " + this.resourceType + " instances.  " + this.resourceType + " is a shared resource that must be reused across the JVM,so that only a few instances are created.");
            }
            while (true) {
                ResourceLeakDetector<T>.DefaultResourceLeak ref = (DefaultResourceLeak) this.refQueue.poll();
                if (ref != null) {
                    ref.clear();
                    if (ref.close()) {
                        String records = ref.toString();
                        if (this.reportedLeaks.putIfAbsent(records, Boolean.TRUE) == null) {
                            if (records.isEmpty()) {
                                logger.error("LEAK: {}.release() was not called before it's garbage-collected. Enable advanced leak reporting to find out where the leak occurred. To enable advanced leak reporting, specify the JVM option '-D{}={}' or call {}.setLevel()", this.resourceType, PROP_LEVEL, Level.ADVANCED.name().toLowerCase(), StringUtil.simpleClassName(this));
                            } else {
                                logger.error("LEAK: {}.release() was not called before it's garbage-collected.{}", this.resourceType, records);
                            }
                        }
                    }
                } else {
                    return;
                }
            }
        } else {
            while (true) {
                ResourceLeakDetector<T>.DefaultResourceLeak ref2 = (DefaultResourceLeak) this.refQueue.poll();
                if (ref2 != null) {
                    ref2.close();
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class DefaultResourceLeak extends PhantomReference<Object> implements ResourceLeak {
        private static final int MAX_RECORDS = 4;
        private final String creationRecord;
        private final AtomicBoolean freed;
        private final Deque<String> lastRecords;
        private ResourceLeakDetector<T>.DefaultResourceLeak next;
        private ResourceLeakDetector<T>.DefaultResourceLeak prev;

        DefaultResourceLeak(Object referent) {
            super(referent, referent != null ? ResourceLeakDetector.this.refQueue : null);
            this.lastRecords = new ArrayDeque();
            if (referent != null) {
                Level level = ResourceLeakDetector.getLevel();
                if (level.ordinal() >= Level.ADVANCED.ordinal()) {
                    this.creationRecord = ResourceLeakDetector.newRecord(3);
                } else {
                    this.creationRecord = null;
                }
                synchronized (ResourceLeakDetector.this.head) {
                    this.prev = ResourceLeakDetector.this.head;
                    this.next = ResourceLeakDetector.this.head.next;
                    ResourceLeakDetector.this.head.next.prev = this;
                    ResourceLeakDetector.this.head.next = this;
                    ResourceLeakDetector.this.active++;
                }
                this.freed = new AtomicBoolean();
                return;
            }
            this.creationRecord = null;
            this.freed = new AtomicBoolean(true);
        }

        @Override // io.netty.util.ResourceLeak
        public void record() {
            if (this.creationRecord != null) {
                String value = ResourceLeakDetector.newRecord(2);
                synchronized (this.lastRecords) {
                    int size = this.lastRecords.size();
                    if (size == 0 || !this.lastRecords.getLast().equals(value)) {
                        this.lastRecords.add(value);
                    }
                    if (size > 4) {
                        this.lastRecords.removeFirst();
                    }
                }
            }
        }

        @Override // io.netty.util.ResourceLeak
        public boolean close() {
            if (!this.freed.compareAndSet(false, true)) {
                return false;
            }
            synchronized (ResourceLeakDetector.this.head) {
                ResourceLeakDetector.this.active--;
                this.prev.next = this.next;
                this.next.prev = this.prev;
                this.prev = null;
                this.next = null;
            }
            return true;
        }

        public String toString() {
            Object[] array;
            if (this.creationRecord == null) {
                return "";
            }
            synchronized (this.lastRecords) {
                array = this.lastRecords.toArray();
            }
            StringBuilder buf = new StringBuilder(16384);
            buf.append(StringUtil.NEWLINE);
            buf.append("Recent access records: ");
            buf.append(array.length);
            buf.append(StringUtil.NEWLINE);
            if (array.length > 0) {
                for (int i = array.length - 1; i >= 0; i--) {
                    buf.append('#');
                    buf.append(i + 1);
                    buf.append(':');
                    buf.append(StringUtil.NEWLINE);
                    buf.append(array[i]);
                }
            }
            buf.append("Created at:");
            buf.append(StringUtil.NEWLINE);
            buf.append(this.creationRecord);
            buf.setLength(buf.length() - StringUtil.NEWLINE.length());
            return buf.toString();
        }
    }

    static String newRecord(int recordsToSkip) {
        StringBuilder buf = new StringBuilder(4096);
        StackTraceElement[] array = new Throwable().getStackTrace();
        for (StackTraceElement e : array) {
            if (recordsToSkip > 0) {
                recordsToSkip--;
            } else {
                String estr = e.toString();
                boolean excluded = false;
                String[] strArr = STACK_TRACE_ELEMENT_EXCLUSIONS;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    String exclusion = strArr[i];
                    if (!estr.startsWith(exclusion)) {
                        i++;
                    } else {
                        excluded = true;
                        break;
                    }
                }
                if (!excluded) {
                    buf.append('\t');
                    buf.append(estr);
                    buf.append(StringUtil.NEWLINE);
                }
            }
        }
        return buf.toString();
    }
}
