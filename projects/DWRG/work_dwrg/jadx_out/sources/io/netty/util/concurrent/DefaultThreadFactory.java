package io.netty.util.concurrent;

import android.support.v4.os.EnvironmentCompat;
import io.netty.util.internal.StringUtil;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class DefaultThreadFactory implements ThreadFactory {
    private static final AtomicInteger poolId = new AtomicInteger();
    private final boolean daemon;
    private final AtomicInteger nextId;
    private final String prefix;
    private final int priority;

    public DefaultThreadFactory(Class<?> poolType) {
        this(poolType, false, 5);
    }

    public DefaultThreadFactory(String poolName) {
        this(poolName, false, 5);
    }

    public DefaultThreadFactory(Class<?> poolType, boolean daemon) {
        this(poolType, daemon, 5);
    }

    public DefaultThreadFactory(String poolName, boolean daemon) {
        this(poolName, daemon, 5);
    }

    public DefaultThreadFactory(Class<?> poolType, int priority) {
        this(poolType, false, priority);
    }

    public DefaultThreadFactory(String poolName, int priority) {
        this(poolName, false, priority);
    }

    public DefaultThreadFactory(Class<?> poolType, boolean daemon, int priority) {
        this(toPoolName(poolType), daemon, priority);
    }

    private static String toPoolName(Class<?> poolType) {
        if (poolType == null) {
            throw new NullPointerException("poolType");
        }
        String poolName = StringUtil.simpleClassName(poolType);
        switch (poolName.length()) {
            case 0:
                return EnvironmentCompat.MEDIA_UNKNOWN;
            case 1:
                return poolName.toLowerCase(Locale.US);
            default:
                if (Character.isUpperCase(poolName.charAt(0)) && Character.isLowerCase(poolName.charAt(1))) {
                    return String.valueOf(Character.toLowerCase(poolName.charAt(0))) + poolName.substring(1);
                }
                return poolName;
        }
    }

    public DefaultThreadFactory(String poolName, boolean daemon, int priority) {
        this.nextId = new AtomicInteger();
        if (poolName == null) {
            throw new NullPointerException("poolName");
        }
        if (priority < 1 || priority > 10) {
            throw new IllegalArgumentException("priority: " + priority + " (expected: Thread.MIN_PRIORITY <= priority <= Thread.MAX_PRIORITY)");
        }
        this.prefix = String.valueOf(poolName) + '-' + poolId.incrementAndGet() + '-';
        this.daemon = daemon;
        this.priority = priority;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable r) {
        Thread t = newThread(new DefaultRunnableDecorator(r), String.valueOf(this.prefix) + this.nextId.incrementAndGet());
        try {
            if (t.isDaemon()) {
                if (!this.daemon) {
                    t.setDaemon(false);
                }
            } else if (this.daemon) {
                t.setDaemon(true);
            }
            if (t.getPriority() != this.priority) {
                t.setPriority(this.priority);
            }
        } catch (Exception e) {
        }
        return t;
    }

    protected Thread newThread(Runnable r, String name) {
        return new FastThreadLocalThread(r, name);
    }

    /* loaded from: classes.dex */
    private static final class DefaultRunnableDecorator implements Runnable {
        private final Runnable r;

        DefaultRunnableDecorator(Runnable r) {
            this.r = r;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.r.run();
            } finally {
                FastThreadLocal.removeAll();
            }
        }
    }
}
