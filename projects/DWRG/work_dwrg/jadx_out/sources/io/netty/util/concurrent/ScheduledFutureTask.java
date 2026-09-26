package io.netty.util.concurrent;

import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ScheduledFutureTask<V> extends PromiseTask<V> implements ScheduledFuture<V> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final long START_TIME;
    private static final AtomicLong nextTaskId;
    private long deadlineNanos;
    private final Queue<ScheduledFutureTask<?>> delayedTaskQueue;
    private final long id;
    private final long periodNanos;

    static {
        $assertionsDisabled = !ScheduledFutureTask.class.desiredAssertionStatus();
        nextTaskId = new AtomicLong();
        START_TIME = System.nanoTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long nanoTime() {
        return System.nanoTime() - START_TIME;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long deadlineNanos(long delay) {
        return nanoTime() + delay;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScheduledFutureTask(EventExecutor executor, Queue<ScheduledFutureTask<?>> delayedTaskQueue, Runnable runnable, V result, long nanoTime) {
        this(executor, delayedTaskQueue, toCallable(runnable, result), nanoTime);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScheduledFutureTask(EventExecutor executor, Queue<ScheduledFutureTask<?>> delayedTaskQueue, Callable<V> callable, long nanoTime, long period) {
        super(executor, callable);
        this.id = nextTaskId.getAndIncrement();
        if (period == 0) {
            throw new IllegalArgumentException("period: 0 (expected: != 0)");
        }
        this.delayedTaskQueue = delayedTaskQueue;
        this.deadlineNanos = nanoTime;
        this.periodNanos = period;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScheduledFutureTask(EventExecutor executor, Queue<ScheduledFutureTask<?>> delayedTaskQueue, Callable<V> callable, long nanoTime) {
        super(executor, callable);
        this.id = nextTaskId.getAndIncrement();
        this.delayedTaskQueue = delayedTaskQueue;
        this.deadlineNanos = nanoTime;
        this.periodNanos = 0L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.DefaultPromise
    public EventExecutor executor() {
        return super.executor();
    }

    public long deadlineNanos() {
        return this.deadlineNanos;
    }

    public long delayNanos() {
        return Math.max(0L, deadlineNanos() - nanoTime());
    }

    public long delayNanos(long currentTimeNanos) {
        return Math.max(0L, deadlineNanos() - (currentTimeNanos - START_TIME));
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit unit) {
        return unit.convert(delayNanos(), TimeUnit.NANOSECONDS);
    }

    @Override // java.lang.Comparable
    public int compareTo(Delayed o) {
        if (this == o) {
            return 0;
        }
        ScheduledFutureTask<?> that = (ScheduledFutureTask) o;
        long d = deadlineNanos() - that.deadlineNanos();
        if (d < 0) {
            return -1;
        }
        if (d > 0) {
            return 1;
        }
        if (this.id < that.id) {
            return -1;
        }
        if (this.id == that.id) {
            throw new Error();
        }
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.util.concurrent.PromiseTask, java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        if (!$assertionsDisabled && !executor().inEventLoop()) {
            throw new AssertionError();
        }
        try {
            if (this.periodNanos == 0) {
                if (setUncancellableInternal()) {
                    V result = this.task.call();
                    setSuccessInternal(result);
                    return;
                }
                return;
            }
            if (!isCancelled()) {
                this.task.call();
                if (!executor().isShutdown()) {
                    long p = this.periodNanos;
                    if (p > 0) {
                        this.deadlineNanos += p;
                    } else {
                        this.deadlineNanos = nanoTime() - p;
                    }
                    if (!isCancelled()) {
                        this.delayedTaskQueue.add(this);
                    }
                }
            }
        } catch (Throwable cause) {
            setFailureInternal(cause);
        }
    }

    @Override // io.netty.util.concurrent.PromiseTask, io.netty.util.concurrent.DefaultPromise
    protected StringBuilder toStringBuilder() {
        StringBuilder buf = super.toStringBuilder();
        buf.setCharAt(buf.length() - 1, ',');
        buf.append(" id: ");
        buf.append(this.id);
        buf.append(", deadline: ");
        buf.append(this.deadlineNanos);
        buf.append(", period: ");
        buf.append(this.periodNanos);
        buf.append(')');
        return buf;
    }
}
