package io.netty.util.concurrent;

import com.netease.epay.sdk.base.hybrid.common.JsConstant;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public abstract class SingleThreadEventExecutor extends AbstractEventExecutor {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final long SCHEDULE_PURGE_INTERVAL;
    private static final AtomicIntegerFieldUpdater<SingleThreadEventExecutor> STATE_UPDATER;
    private static final int ST_NOT_STARTED = 1;
    private static final int ST_SHUTDOWN = 4;
    private static final int ST_SHUTTING_DOWN = 3;
    private static final int ST_STARTED = 2;
    private static final int ST_TERMINATED = 5;
    private static final Runnable WAKEUP_TASK;
    private static final InternalLogger logger;
    private final boolean addTaskWakesUp;
    private volatile long gracefulShutdownQuietPeriod;
    private long gracefulShutdownStartTime;
    private volatile long gracefulShutdownTimeout;
    private long lastExecutionTime;
    private final EventExecutorGroup parent;
    private final Queue<Runnable> taskQueue;
    private final Thread thread;
    final Queue<ScheduledFutureTask<?>> delayedTaskQueue = new PriorityQueue();
    private final Semaphore threadLock = new Semaphore(0);
    private final Set<Runnable> shutdownHooks = new LinkedHashSet();
    private volatile int state = 1;
    private final Promise<?> terminationFuture = new DefaultPromise(GlobalEventExecutor.INSTANCE);

    protected abstract void run();

    static {
        $assertionsDisabled = !SingleThreadEventExecutor.class.desiredAssertionStatus();
        logger = InternalLoggerFactory.getInstance((Class<?>) SingleThreadEventExecutor.class);
        WAKEUP_TASK = new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.1
            @Override // java.lang.Runnable
            public void run() {
            }
        };
        AtomicIntegerFieldUpdater<SingleThreadEventExecutor> updater = PlatformDependent.newAtomicIntegerFieldUpdater(SingleThreadEventExecutor.class, "state");
        if (updater == null) {
            updater = AtomicIntegerFieldUpdater.newUpdater(SingleThreadEventExecutor.class, "state");
        }
        STATE_UPDATER = updater;
        SCHEDULE_PURGE_INTERVAL = TimeUnit.SECONDS.toNanos(1L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SingleThreadEventExecutor(EventExecutorGroup parent, ThreadFactory threadFactory, boolean addTaskWakesUp) {
        if (threadFactory == null) {
            throw new NullPointerException("threadFactory");
        }
        this.parent = parent;
        this.addTaskWakesUp = addTaskWakesUp;
        this.thread = threadFactory.newThread(new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.2
            /* JADX WARN: Code restructure failed: missing block: B:124:0x0227, code lost:
            
                r3 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:125:0x0228, code lost:
            
                io.netty.util.concurrent.SingleThreadEventExecutor.STATE_UPDATER.set(r12.this$0, 5);
                r12.this$0.threadLock.release();
             */
            /* JADX WARN: Code restructure failed: missing block: B:126:0x0244, code lost:
            
                if (r12.this$0.taskQueue.isEmpty() == false) goto L54;
             */
            /* JADX WARN: Code restructure failed: missing block: B:127:0x0246, code lost:
            
                io.netty.util.concurrent.SingleThreadEventExecutor.logger.warn("An event executor terminated with non-empty task queue (" + r12.this$0.taskQueue.size() + ')');
             */
            /* JADX WARN: Code restructure failed: missing block: B:128:0x026a, code lost:
            
                r12.this$0.terminationFuture.setSuccess(null);
             */
            /* JADX WARN: Code restructure failed: missing block: B:129:0x0273, code lost:
            
                throw r3;
             */
            /* JADX WARN: Code restructure failed: missing block: B:29:0x04b5, code lost:
            
                r3 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x04b6, code lost:
            
                io.netty.util.concurrent.SingleThreadEventExecutor.STATE_UPDATER.set(r12.this$0, 5);
                r12.this$0.threadLock.release();
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x04d2, code lost:
            
                if (r12.this$0.taskQueue.isEmpty() == false) goto L109;
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x04d4, code lost:
            
                io.netty.util.concurrent.SingleThreadEventExecutor.logger.warn("An event executor terminated with non-empty task queue (" + r12.this$0.taskQueue.size() + ')');
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x04f8, code lost:
            
                r12.this$0.terminationFuture.setSuccess(null);
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x0501, code lost:
            
                throw r3;
             */
            /* JADX WARN: Code restructure failed: missing block: B:77:0x03c9, code lost:
            
                r3 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:78:0x03ca, code lost:
            
                io.netty.util.concurrent.SingleThreadEventExecutor.STATE_UPDATER.set(r12.this$0, 5);
                r12.this$0.threadLock.release();
             */
            /* JADX WARN: Code restructure failed: missing block: B:79:0x03e6, code lost:
            
                if (r12.this$0.taskQueue.isEmpty() == false) goto L90;
             */
            /* JADX WARN: Code restructure failed: missing block: B:80:0x03e8, code lost:
            
                io.netty.util.concurrent.SingleThreadEventExecutor.logger.warn("An event executor terminated with non-empty task queue (" + r12.this$0.taskQueue.size() + ')');
             */
            /* JADX WARN: Code restructure failed: missing block: B:81:0x040c, code lost:
            
                r12.this$0.terminationFuture.setSuccess(null);
             */
            /* JADX WARN: Code restructure failed: missing block: B:82:0x0415, code lost:
            
                throw r3;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 1282
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: io.netty.util.concurrent.SingleThreadEventExecutor.AnonymousClass2.run():void");
            }
        });
        this.taskQueue = newTaskQueue();
    }

    protected Queue<Runnable> newTaskQueue() {
        return new LinkedBlockingQueue();
    }

    public EventExecutorGroup parent() {
        return this.parent;
    }

    protected void interruptThread() {
        this.thread.interrupt();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Runnable pollTask() {
        Runnable task;
        if (!$assertionsDisabled && !inEventLoop()) {
            throw new AssertionError();
        }
        do {
            task = this.taskQueue.poll();
        } while (task == WAKEUP_TASK);
        return task;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Runnable takeTask() {
        Runnable task;
        if (!$assertionsDisabled && !inEventLoop()) {
            throw new AssertionError();
        }
        if (!(this.taskQueue instanceof BlockingQueue)) {
            throw new UnsupportedOperationException();
        }
        BlockingQueue<Runnable> taskQueue = (BlockingQueue) this.taskQueue;
        do {
            ScheduledFutureTask<?> delayedTask = this.delayedTaskQueue.peek();
            if (delayedTask == null) {
                Runnable task2 = null;
                try {
                    task2 = taskQueue.take();
                    if (task2 == WAKEUP_TASK) {
                        return null;
                    }
                    return task2;
                } catch (InterruptedException e) {
                    return task2;
                }
            }
            long delayNanos = delayedTask.delayNanos();
            task = null;
            if (delayNanos > 0) {
                try {
                    Runnable task3 = taskQueue.poll(delayNanos, TimeUnit.NANOSECONDS);
                    task = task3;
                } catch (InterruptedException e2) {
                    return null;
                }
            }
            if (task == null) {
                fetchFromDelayedQueue();
                Runnable task4 = taskQueue.poll();
                task = task4;
            }
        } while (task == null);
        return task;
    }

    private void fetchFromDelayedQueue() {
        long nanoTime = 0;
        while (true) {
            ScheduledFutureTask<?> delayedTask = this.delayedTaskQueue.peek();
            if (delayedTask == null) {
                return;
            }
            if (nanoTime == 0) {
                nanoTime = ScheduledFutureTask.nanoTime();
            }
            if (delayedTask.deadlineNanos() <= nanoTime) {
                this.delayedTaskQueue.remove();
                this.taskQueue.add(delayedTask);
            } else {
                return;
            }
        }
    }

    protected Runnable peekTask() {
        if ($assertionsDisabled || inEventLoop()) {
            return this.taskQueue.peek();
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasTasks() {
        if ($assertionsDisabled || inEventLoop()) {
            return !this.taskQueue.isEmpty();
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasScheduledTasks() {
        if (!$assertionsDisabled && !inEventLoop()) {
            throw new AssertionError();
        }
        ScheduledFutureTask<?> delayedTask = this.delayedTaskQueue.peek();
        return delayedTask != null && delayedTask.deadlineNanos() <= ScheduledFutureTask.nanoTime();
    }

    public final int pendingTasks() {
        return this.taskQueue.size();
    }

    protected void addTask(Runnable task) {
        if (task == null) {
            throw new NullPointerException("task");
        }
        if (isShutdown()) {
            reject();
        }
        this.taskQueue.add(task);
    }

    protected boolean removeTask(Runnable task) {
        if (task == null) {
            throw new NullPointerException("task");
        }
        return this.taskQueue.remove(task);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean runAllTasks() {
        fetchFromDelayedQueue();
        Runnable task = pollTask();
        if (task == null) {
            return false;
        }
        do {
            try {
                task.run();
            } catch (Throwable t) {
                logger.warn("A task raised an exception.", t);
            }
            task = pollTask();
        } while (task != null);
        this.lastExecutionTime = ScheduledFutureTask.nanoTime();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean runAllTasks(long timeoutNanos) {
        long lastExecutionTime;
        fetchFromDelayedQueue();
        Runnable task = pollTask();
        if (task == null) {
            return false;
        }
        long deadline = ScheduledFutureTask.nanoTime() + timeoutNanos;
        long runTasks = 0;
        while (true) {
            try {
                task.run();
            } catch (Throwable t) {
                logger.warn("A task raised an exception.", t);
            }
            runTasks++;
            if ((63 & runTasks) == 0) {
                lastExecutionTime = ScheduledFutureTask.nanoTime();
                if (lastExecutionTime >= deadline) {
                    break;
                }
            }
            task = pollTask();
            if (task == null) {
                lastExecutionTime = ScheduledFutureTask.nanoTime();
                break;
            }
        }
        this.lastExecutionTime = lastExecutionTime;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long delayNanos(long currentTimeNanos) {
        ScheduledFutureTask<?> delayedTask = this.delayedTaskQueue.peek();
        return delayedTask == null ? SCHEDULE_PURGE_INTERVAL : delayedTask.delayNanos(currentTimeNanos);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateLastExecutionTime() {
        this.lastExecutionTime = ScheduledFutureTask.nanoTime();
    }

    protected void cleanup() {
    }

    protected void wakeup(boolean inEventLoop) {
        if (!inEventLoop || STATE_UPDATER.get(this) == 3) {
            this.taskQueue.add(WAKEUP_TASK);
        }
    }

    @Override // io.netty.util.concurrent.EventExecutor
    public boolean inEventLoop(Thread thread) {
        return thread == this.thread;
    }

    public void addShutdownHook(final Runnable task) {
        if (inEventLoop()) {
            this.shutdownHooks.add(task);
        } else {
            execute(new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.3
                @Override // java.lang.Runnable
                public void run() {
                    SingleThreadEventExecutor.this.shutdownHooks.add(task);
                }
            });
        }
    }

    public void removeShutdownHook(final Runnable task) {
        if (inEventLoop()) {
            this.shutdownHooks.remove(task);
        } else {
            execute(new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.4
                @Override // java.lang.Runnable
                public void run() {
                    SingleThreadEventExecutor.this.shutdownHooks.remove(task);
                }
            });
        }
    }

    private boolean runShutdownHooks() {
        boolean ran = false;
        while (!this.shutdownHooks.isEmpty()) {
            List<Runnable> copy = new ArrayList<>(this.shutdownHooks);
            this.shutdownHooks.clear();
            for (Runnable task : copy) {
                try {
                    task.run();
                } catch (Throwable t) {
                    logger.warn("Shutdown hook raised an exception.", t);
                } finally {
                }
            }
        }
        if (ran) {
            this.lastExecutionTime = ScheduledFutureTask.nanoTime();
        }
        return ran;
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public Future<?> shutdownGracefully(long quietPeriod, long timeout, TimeUnit unit) {
        int newState;
        if (quietPeriod < 0) {
            throw new IllegalArgumentException("quietPeriod: " + quietPeriod + " (expected >= 0)");
        }
        if (timeout < quietPeriod) {
            throw new IllegalArgumentException("timeout: " + timeout + " (expected >= quietPeriod (" + quietPeriod + "))");
        }
        if (unit == null) {
            throw new NullPointerException("unit");
        }
        if (isShuttingDown()) {
            return terminationFuture();
        }
        boolean inEventLoop = inEventLoop();
        while (!isShuttingDown()) {
            boolean wakeup = true;
            int oldState = STATE_UPDATER.get(this);
            if (inEventLoop) {
                newState = 3;
            } else {
                switch (oldState) {
                    case 1:
                    case 2:
                        newState = 3;
                        break;
                    default:
                        newState = oldState;
                        wakeup = false;
                        break;
                }
            }
            if (STATE_UPDATER.compareAndSet(this, oldState, newState)) {
                this.gracefulShutdownQuietPeriod = unit.toNanos(quietPeriod);
                this.gracefulShutdownTimeout = unit.toNanos(timeout);
                if (oldState == 1) {
                    this.thread.start();
                }
                if (wakeup) {
                    wakeup(inEventLoop);
                }
                return terminationFuture();
            }
        }
        return terminationFuture();
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public Future<?> terminationFuture() {
        return this.terminationFuture;
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutor, java.util.concurrent.ExecutorService, io.netty.util.concurrent.EventExecutorGroup
    @Deprecated
    public void shutdown() {
        int newState;
        if (!isShutdown()) {
            boolean inEventLoop = inEventLoop();
            while (!isShuttingDown()) {
                boolean wakeup = true;
                int oldState = STATE_UPDATER.get(this);
                if (inEventLoop) {
                    newState = 4;
                } else {
                    switch (oldState) {
                        case 1:
                        case 2:
                        case 3:
                            newState = 4;
                            break;
                        default:
                            newState = oldState;
                            wakeup = false;
                            break;
                    }
                }
                if (STATE_UPDATER.compareAndSet(this, oldState, newState)) {
                    if (oldState == 1) {
                        this.thread.start();
                    }
                    if (wakeup) {
                        wakeup(inEventLoop);
                        return;
                    }
                    return;
                }
            }
        }
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public boolean isShuttingDown() {
        return STATE_UPDATER.get(this) >= 3;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return STATE_UPDATER.get(this) >= 4;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return STATE_UPDATER.get(this) == 5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean confirmShutdown() {
        if (!isShuttingDown()) {
            return false;
        }
        if (!inEventLoop()) {
            throw new IllegalStateException("must be invoked from an event loop");
        }
        cancelDelayedTasks();
        if (this.gracefulShutdownStartTime == 0) {
            this.gracefulShutdownStartTime = ScheduledFutureTask.nanoTime();
        }
        if (runAllTasks() || runShutdownHooks()) {
            if (isShutdown()) {
                return true;
            }
            wakeup(true);
            return false;
        }
        long nanoTime = ScheduledFutureTask.nanoTime();
        if (isShutdown() || nanoTime - this.gracefulShutdownStartTime > this.gracefulShutdownTimeout) {
            return true;
        }
        if (nanoTime - this.lastExecutionTime > this.gracefulShutdownQuietPeriod) {
            return true;
        }
        wakeup(true);
        try {
            Thread.sleep(100L);
            return false;
        } catch (InterruptedException e) {
            return false;
        }
    }

    private void cancelDelayedTasks() {
        if (!this.delayedTaskQueue.isEmpty()) {
            ScheduledFutureTask<?>[] delayedTasks = (ScheduledFutureTask[]) this.delayedTaskQueue.toArray(new ScheduledFutureTask[this.delayedTaskQueue.size()]);
            for (ScheduledFutureTask<?> task : delayedTasks) {
                task.cancel(false);
            }
            this.delayedTaskQueue.clear();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        if (unit == null) {
            throw new NullPointerException("unit");
        }
        if (inEventLoop()) {
            throw new IllegalStateException("cannot await termination of the current thread");
        }
        if (this.threadLock.tryAcquire(timeout, unit)) {
            this.threadLock.release();
        }
        return isTerminated();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable task) {
        if (task == null) {
            throw new NullPointerException("task");
        }
        boolean inEventLoop = inEventLoop();
        if (inEventLoop) {
            addTask(task);
        } else {
            startThread();
            addTask(task);
            if (isShutdown() && removeTask(task)) {
                reject();
            }
        }
        if (!this.addTaskWakesUp && wakesUpForTask(task)) {
            wakeup(inEventLoop);
        }
    }

    protected boolean wakesUpForTask(Runnable task) {
        return true;
    }

    protected static void reject() {
        throw new RejectedExecutionException("event executor terminated");
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> schedule(Runnable command, long delay, TimeUnit unit) {
        if (command == null) {
            throw new NullPointerException(JsConstant.COMMAND);
        }
        if (unit == null) {
            throw new NullPointerException("unit");
        }
        if (delay < 0) {
            throw new IllegalArgumentException(String.format("delay: %d (expected: >= 0)", Long.valueOf(delay)));
        }
        return schedule(new ScheduledFutureTask(this, this.delayedTaskQueue, command, (Object) null, ScheduledFutureTask.deadlineNanos(unit.toNanos(delay))));
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutor, java.util.concurrent.ScheduledExecutorService
    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long delay, TimeUnit unit) {
        if (callable == null) {
            throw new NullPointerException("callable");
        }
        if (unit == null) {
            throw new NullPointerException("unit");
        }
        if (delay < 0) {
            throw new IllegalArgumentException(String.format("delay: %d (expected: >= 0)", Long.valueOf(delay)));
        }
        return schedule(new ScheduledFutureTask<>(this, this.delayedTaskQueue, callable, ScheduledFutureTask.deadlineNanos(unit.toNanos(delay))));
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable command, long initialDelay, long period, TimeUnit unit) {
        if (command == null) {
            throw new NullPointerException(JsConstant.COMMAND);
        }
        if (unit == null) {
            throw new NullPointerException("unit");
        }
        if (initialDelay < 0) {
            throw new IllegalArgumentException(String.format("initialDelay: %d (expected: >= 0)", Long.valueOf(initialDelay)));
        }
        if (period <= 0) {
            throw new IllegalArgumentException(String.format("period: %d (expected: > 0)", Long.valueOf(period)));
        }
        return schedule(new ScheduledFutureTask(this, this.delayedTaskQueue, Executors.callable(command, null), ScheduledFutureTask.deadlineNanos(unit.toNanos(initialDelay)), unit.toNanos(period)));
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable command, long initialDelay, long delay, TimeUnit unit) {
        if (command == null) {
            throw new NullPointerException(JsConstant.COMMAND);
        }
        if (unit == null) {
            throw new NullPointerException("unit");
        }
        if (initialDelay < 0) {
            throw new IllegalArgumentException(String.format("initialDelay: %d (expected: >= 0)", Long.valueOf(initialDelay)));
        }
        if (delay <= 0) {
            throw new IllegalArgumentException(String.format("delay: %d (expected: > 0)", Long.valueOf(delay)));
        }
        return schedule(new ScheduledFutureTask(this, this.delayedTaskQueue, Executors.callable(command, null), ScheduledFutureTask.deadlineNanos(unit.toNanos(initialDelay)), -unit.toNanos(delay)));
    }

    private <V> ScheduledFuture<V> schedule(final ScheduledFutureTask<V> task) {
        if (task == null) {
            throw new NullPointerException("task");
        }
        if (inEventLoop()) {
            this.delayedTaskQueue.add(task);
        } else {
            execute(new Runnable() { // from class: io.netty.util.concurrent.SingleThreadEventExecutor.5
                @Override // java.lang.Runnable
                public void run() {
                    SingleThreadEventExecutor.this.delayedTaskQueue.add(task);
                }
            });
        }
        return task;
    }

    private void startThread() {
        PurgeTask purgeTask = null;
        if (STATE_UPDATER.get(this) == 1 && STATE_UPDATER.compareAndSet(this, 1, 2)) {
            this.delayedTaskQueue.add(new ScheduledFutureTask<>(this, this.delayedTaskQueue, Executors.callable(new PurgeTask(this, purgeTask), null), ScheduledFutureTask.deadlineNanos(SCHEDULE_PURGE_INTERVAL), -SCHEDULE_PURGE_INTERVAL));
            this.thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class PurgeTask implements Runnable {
        private PurgeTask() {
        }

        /* synthetic */ PurgeTask(SingleThreadEventExecutor singleThreadEventExecutor, PurgeTask purgeTask) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator<ScheduledFutureTask<?>> i = SingleThreadEventExecutor.this.delayedTaskQueue.iterator();
            while (i.hasNext()) {
                ScheduledFutureTask<?> task = i.next();
                if (task.isCancelled()) {
                    i.remove();
                }
            }
        }
    }
}
