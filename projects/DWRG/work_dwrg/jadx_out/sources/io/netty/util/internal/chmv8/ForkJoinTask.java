package io.netty.util.internal.chmv8;

import io.netty.util.internal.chmv8.ForkJoinPool;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class ForkJoinTask<V> implements Future<V>, Serializable {
    static final int CANCELLED = -1073741824;
    static final int DONE_MASK = -268435456;
    static final int EXCEPTIONAL = Integer.MIN_VALUE;
    private static final int EXCEPTION_MAP_CAPACITY = 32;
    static final int NORMAL = -268435456;
    static final int SIGNAL = 65536;
    static final int SMASK = 65535;
    private static final long STATUS;
    private static final Unsafe U;
    private static final long serialVersionUID = -7721805057305804111L;
    volatile int status;
    private static final ReentrantLock exceptionTableLock = new ReentrantLock();
    private static final ReferenceQueue<Object> exceptionTableRefQueue = new ReferenceQueue<>();
    private static final ExceptionNode[] exceptionTable = new ExceptionNode[32];

    protected abstract boolean exec();

    public abstract V getRawResult();

    protected abstract void setRawResult(V v);

    private int setCompletion(int completion) {
        int s;
        do {
            s = this.status;
            if (s < 0) {
                return s;
            }
        } while (!U.compareAndSwapInt(this, STATUS, s, s | completion));
        if ((s >>> 16) != 0) {
            synchronized (this) {
                notifyAll();
            }
        }
        return completion;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int doExec() {
        int s = this.status;
        if (s >= 0) {
            try {
                boolean completed = exec();
                if (completed) {
                    s = setCompletion(-268435456);
                }
            } catch (Throwable rex) {
                return setExceptionalCompletion(rex);
            }
        }
        return s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean trySetSignal() {
        int s = this.status;
        return s >= 0 && U.compareAndSwapInt(this, STATUS, s, s | 65536);
    }

    private int externalAwaitDone() {
        ForkJoinPool cp = ForkJoinPool.common;
        int s = this.status;
        if (s >= 0) {
            if (cp != null) {
                if (this instanceof CountedCompleter) {
                    s = cp.externalHelpComplete((CountedCompleter) this);
                } else if (cp.tryExternalUnpush(this)) {
                    s = doExec();
                }
            }
            if (s >= 0 && (s = this.status) >= 0) {
                boolean interrupted = false;
                do {
                    if (U.compareAndSwapInt(this, STATUS, s, s | 65536)) {
                        synchronized (this) {
                            if (this.status >= 0) {
                                try {
                                    wait();
                                } catch (InterruptedException e) {
                                    interrupted = true;
                                }
                            } else {
                                notifyAll();
                            }
                        }
                    }
                    s = this.status;
                } while (s >= 0);
                if (interrupted) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        return s;
    }

    private int externalInterruptibleAwaitDone() throws InterruptedException {
        ForkJoinPool cp = ForkJoinPool.common;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        if (this.status >= 0 && cp != null) {
            if (this instanceof CountedCompleter) {
                cp.externalHelpComplete((CountedCompleter) this);
            } else if (cp.tryExternalUnpush(this)) {
                doExec();
            }
        }
        while (true) {
            int s = this.status;
            if (s >= 0) {
                if (U.compareAndSwapInt(this, STATUS, s, s | 65536)) {
                    synchronized (this) {
                        if (this.status >= 0) {
                            wait();
                        } else {
                            notifyAll();
                        }
                    }
                }
            } else {
                return s;
            }
        }
    }

    private int doJoin() {
        int s;
        int s2 = this.status;
        if (s2 < 0) {
            return s2;
        }
        Thread t = Thread.currentThread();
        if (!(t instanceof ForkJoinWorkerThread)) {
            return externalAwaitDone();
        }
        ForkJoinWorkerThread wt = (ForkJoinWorkerThread) t;
        ForkJoinPool.WorkQueue w = wt.workQueue;
        return (!w.tryUnpush(this) || (s = doExec()) >= 0) ? wt.pool.awaitJoin(w, this) : s;
    }

    private int doInvoke() {
        int s = doExec();
        if (s < 0) {
            return s;
        }
        Thread t = Thread.currentThread();
        if (!(t instanceof ForkJoinWorkerThread)) {
            return externalAwaitDone();
        }
        ForkJoinWorkerThread wt = (ForkJoinWorkerThread) t;
        return wt.pool.awaitJoin(wt.workQueue, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class ExceptionNode extends WeakReference<ForkJoinTask<?>> {
        final Throwable ex;
        ExceptionNode next;
        final long thrower;

        ExceptionNode(ForkJoinTask<?> task, Throwable ex, ExceptionNode next) {
            super(task, ForkJoinTask.exceptionTableRefQueue);
            this.ex = ex;
            this.next = next;
            this.thrower = Thread.currentThread().getId();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001b, code lost:
    
        r5[r2] = new io.netty.util.internal.chmv8.ForkJoinTask.ExceptionNode(r8, r9, r5[r2]);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int recordExceptionalCompletion(java.lang.Throwable r9) {
        /*
            r8 = this;
            int r4 = r8.status
            if (r4 < 0) goto L2d
            int r1 = java.lang.System.identityHashCode(r8)
            java.util.concurrent.locks.ReentrantLock r3 = io.netty.util.internal.chmv8.ForkJoinTask.exceptionTableLock
            r3.lock()
            expungeStaleExceptions()     // Catch: java.lang.Throwable -> L37
            io.netty.util.internal.chmv8.ForkJoinTask$ExceptionNode[] r5 = io.netty.util.internal.chmv8.ForkJoinTask.exceptionTable     // Catch: java.lang.Throwable -> L37
            int r6 = r5.length     // Catch: java.lang.Throwable -> L37
            int r6 = r6 + (-1)
            r2 = r1 & r6
            r0 = r5[r2]     // Catch: java.lang.Throwable -> L37
        L19:
            if (r0 != 0) goto L2e
            io.netty.util.internal.chmv8.ForkJoinTask$ExceptionNode r6 = new io.netty.util.internal.chmv8.ForkJoinTask$ExceptionNode     // Catch: java.lang.Throwable -> L37
            r7 = r5[r2]     // Catch: java.lang.Throwable -> L37
            r6.<init>(r8, r9, r7)     // Catch: java.lang.Throwable -> L37
            r5[r2] = r6     // Catch: java.lang.Throwable -> L37
        L24:
            r3.unlock()
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            int r4 = r8.setCompletion(r6)
        L2d:
            return r4
        L2e:
            java.lang.Object r6 = r0.get()     // Catch: java.lang.Throwable -> L37
            if (r6 == r8) goto L24
            io.netty.util.internal.chmv8.ForkJoinTask$ExceptionNode r0 = r0.next     // Catch: java.lang.Throwable -> L37
            goto L19
        L37:
            r6 = move-exception
            r3.unlock()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.chmv8.ForkJoinTask.recordExceptionalCompletion(java.lang.Throwable):int");
    }

    private int setExceptionalCompletion(Throwable ex) {
        int s = recordExceptionalCompletion(ex);
        if (((-268435456) & s) == Integer.MIN_VALUE) {
            internalPropagateException(ex);
        }
        return s;
    }

    void internalPropagateException(Throwable ex) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void cancelIgnoringExceptions(ForkJoinTask<?> t) {
        if (t != null && t.status >= 0) {
            try {
                t.cancel(false);
            } catch (Throwable th) {
            }
        }
    }

    private void clearExceptionalCompletion() {
        int h = System.identityHashCode(this);
        ReentrantLock lock = exceptionTableLock;
        lock.lock();
        try {
            ExceptionNode[] t = exceptionTable;
            int i = h & (t.length - 1);
            ExceptionNode e = t[i];
            ExceptionNode pred = null;
            while (true) {
                if (e == null) {
                    break;
                }
                ExceptionNode next = e.next;
                if (e.get() == this) {
                    if (pred == null) {
                        t[i] = next;
                    } else {
                        pred.next = next;
                    }
                } else {
                    pred = e;
                    e = next;
                }
            }
            expungeStaleExceptions();
            this.status = 0;
        } finally {
            lock.unlock();
        }
    }

    private Throwable getThrowableException() {
        Throwable ex;
        if ((this.status & (-268435456)) != Integer.MIN_VALUE) {
            return null;
        }
        int h = System.identityHashCode(this);
        ReentrantLock lock = exceptionTableLock;
        lock.lock();
        try {
            expungeStaleExceptions();
            ExceptionNode[] t = exceptionTable;
            ExceptionNode e = t[(t.length - 1) & h];
            while (e != null) {
                if (e.get() == this) {
                    break;
                }
                e = e.next;
            }
            if (e == null || (ex = e.ex) == null) {
                return null;
            }
            return ex;
        } finally {
            lock.unlock();
        }
    }

    private static void expungeStaleExceptions() {
        while (true) {
            Reference x = exceptionTableRefQueue.poll();
            if (x != null) {
                if (x instanceof ExceptionNode) {
                    ForkJoinTask<?> key = (ForkJoinTask) ((ExceptionNode) x).get();
                    ExceptionNode[] t = exceptionTable;
                    int i = System.identityHashCode(key) & (t.length - 1);
                    ExceptionNode e = t[i];
                    ExceptionNode pred = null;
                    while (true) {
                        if (e != null) {
                            ExceptionNode next = e.next;
                            if (e == x) {
                                if (pred == null) {
                                    t[i] = next;
                                } else {
                                    pred.next = next;
                                }
                            } else {
                                pred = e;
                                e = next;
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void helpExpungeStaleExceptions() {
        ReentrantLock lock = exceptionTableLock;
        if (lock.tryLock()) {
            try {
                expungeStaleExceptions();
            } finally {
                lock.unlock();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void rethrow(Throwable ex) {
        if (ex != null) {
            uncheckedThrow(ex);
        }
    }

    static <T extends Throwable> void uncheckedThrow(Throwable t) throws Throwable {
        throw t;
    }

    private void reportException(int s) {
        if (s == CANCELLED) {
            throw new CancellationException();
        }
        if (s == Integer.MIN_VALUE) {
            rethrow(getThrowableException());
        }
    }

    public final ForkJoinTask<V> fork() {
        Thread t = Thread.currentThread();
        if (t instanceof ForkJoinWorkerThread) {
            ((ForkJoinWorkerThread) t).workQueue.push(this);
        } else {
            ForkJoinPool.common.externalPush(this);
        }
        return this;
    }

    public final V join() {
        int s = doJoin() & (-268435456);
        if (s != -268435456) {
            reportException(s);
        }
        return getRawResult();
    }

    public final V invoke() {
        int s = doInvoke() & (-268435456);
        if (s != -268435456) {
            reportException(s);
        }
        return getRawResult();
    }

    public static void invokeAll(ForkJoinTask<?> t1, ForkJoinTask<?> t2) {
        t2.fork();
        int s1 = t1.doInvoke() & (-268435456);
        if (s1 != -268435456) {
            t1.reportException(s1);
        }
        int s2 = t2.doJoin() & (-268435456);
        if (s2 != -268435456) {
            t2.reportException(s2);
        }
    }

    public static void invokeAll(ForkJoinTask<?>... tasks) {
        Throwable ex = null;
        int last = tasks.length - 1;
        for (int i = last; i >= 0; i--) {
            ForkJoinTask<?> t = tasks[i];
            if (t == null) {
                if (ex == null) {
                    ex = new NullPointerException();
                }
            } else if (i != 0) {
                t.fork();
            } else if (t.doInvoke() < -268435456 && ex == null) {
                ex = t.getException();
            }
        }
        for (int i2 = 1; i2 <= last; i2++) {
            ForkJoinTask<?> t2 = tasks[i2];
            if (t2 != null) {
                if (ex != null) {
                    t2.cancel(false);
                } else if (t2.doJoin() < -268435456) {
                    ex = t2.getException();
                }
            }
        }
        if (ex != null) {
            rethrow(ex);
        }
    }

    public static <T extends ForkJoinTask<?>> Collection<T> invokeAll(Collection<T> tasks) {
        if (!(tasks instanceof RandomAccess) || !(tasks instanceof List)) {
            invokeAll((ForkJoinTask<?>[]) tasks.toArray(new ForkJoinTask[tasks.size()]));
        } else {
            List<? extends ForkJoinTask<?>> ts = (List) tasks;
            Throwable ex = null;
            int last = ts.size() - 1;
            for (int i = last; i >= 0; i--) {
                ForkJoinTask<?> t = ts.get(i);
                if (t == null) {
                    if (ex == null) {
                        ex = new NullPointerException();
                    }
                } else if (i != 0) {
                    t.fork();
                } else if (t.doInvoke() < -268435456 && ex == null) {
                    ex = t.getException();
                }
            }
            for (int i2 = 1; i2 <= last; i2++) {
                ForkJoinTask<?> t2 = ts.get(i2);
                if (t2 != null) {
                    if (ex != null) {
                        t2.cancel(false);
                    } else if (t2.doJoin() < -268435456) {
                        ex = t2.getException();
                    }
                }
            }
            if (ex != null) {
                rethrow(ex);
            }
        }
        return tasks;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        return (setCompletion(CANCELLED) & (-268435456)) == CANCELLED;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.status < 0;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return (this.status & (-268435456)) == CANCELLED;
    }

    public final boolean isCompletedAbnormally() {
        return this.status < -268435456;
    }

    public final boolean isCompletedNormally() {
        return (this.status & (-268435456)) == -268435456;
    }

    public final Throwable getException() {
        int s = this.status & (-268435456);
        if (s >= -268435456) {
            return null;
        }
        return s == CANCELLED ? new CancellationException() : getThrowableException();
    }

    public void completeExceptionally(Throwable ex) {
        if (!(ex instanceof RuntimeException) && !(ex instanceof Error)) {
            ex = new RuntimeException(ex);
        }
        setExceptionalCompletion(ex);
    }

    public void complete(V value) {
        try {
            setRawResult(value);
            setCompletion(-268435456);
        } catch (Throwable rex) {
            setExceptionalCompletion(rex);
        }
    }

    public final void quietlyComplete() {
        setCompletion(-268435456);
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        Throwable ex;
        int s = (Thread.currentThread() instanceof ForkJoinWorkerThread ? doJoin() : externalInterruptibleAwaitDone()) & (-268435456);
        if (s == CANCELLED) {
            throw new CancellationException();
        }
        if (s == Integer.MIN_VALUE && (ex = getThrowableException()) != null) {
            throw new ExecutionException(ex);
        }
        return getRawResult();
    }

    @Override // java.util.concurrent.Future
    public final V get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        long ns = unit.toNanos(timeout);
        int s = this.status;
        if (s >= 0 && ns > 0) {
            long deadline = System.nanoTime() + ns;
            ForkJoinPool p = null;
            ForkJoinPool.WorkQueue w = null;
            Thread t = Thread.currentThread();
            if (t instanceof ForkJoinWorkerThread) {
                ForkJoinWorkerThread wt = (ForkJoinWorkerThread) t;
                p = wt.pool;
                w = wt.workQueue;
                p.helpJoinOnce(w, this);
            } else {
                ForkJoinPool cp = ForkJoinPool.common;
                if (cp != null) {
                    if (this instanceof CountedCompleter) {
                        cp.externalHelpComplete((CountedCompleter) this);
                    } else if (cp.tryExternalUnpush(this)) {
                        doExec();
                    }
                }
            }
            boolean canBlock = false;
            boolean interrupted = false;
            while (true) {
                try {
                    s = this.status;
                    if (s < 0) {
                        break;
                    }
                    if (w != null && w.qlock < 0) {
                        cancelIgnoringExceptions(this);
                    } else if (!canBlock) {
                        if (p != null) {
                            if (p.tryCompensate(p.ctl)) {
                            }
                        }
                        canBlock = true;
                    } else {
                        long ms = TimeUnit.NANOSECONDS.toMillis(ns);
                        if (ms > 0 && U.compareAndSwapInt(this, STATUS, s, s | 65536)) {
                            synchronized (this) {
                                if (this.status >= 0) {
                                    try {
                                        wait(ms);
                                    } catch (InterruptedException e) {
                                        if (p == null) {
                                            interrupted = true;
                                        }
                                    }
                                } else {
                                    notifyAll();
                                }
                            }
                        }
                        s = this.status;
                        if (s < 0 || interrupted) {
                            break;
                        }
                        ns = deadline - System.nanoTime();
                        if (ns <= 0) {
                            break;
                        }
                    }
                } finally {
                    if (p != null && canBlock) {
                        p.incrementActiveCount();
                    }
                }
            }
            if (interrupted) {
                throw new InterruptedException();
            }
        }
        int s2 = s & (-268435456);
        if (s2 != -268435456) {
            if (s2 == CANCELLED) {
                throw new CancellationException();
            }
            if (s2 != Integer.MIN_VALUE) {
                throw new TimeoutException();
            }
            Throwable ex = getThrowableException();
            if (ex != null) {
                throw new ExecutionException(ex);
            }
        }
        return getRawResult();
    }

    public final void quietlyJoin() {
        doJoin();
    }

    public final void quietlyInvoke() {
        doInvoke();
    }

    public static void helpQuiesce() {
        Thread t = Thread.currentThread();
        if (t instanceof ForkJoinWorkerThread) {
            ForkJoinWorkerThread wt = (ForkJoinWorkerThread) t;
            wt.pool.helpQuiescePool(wt.workQueue);
        } else {
            ForkJoinPool.quiesceCommonPool();
        }
    }

    public void reinitialize() {
        if ((this.status & (-268435456)) == Integer.MIN_VALUE) {
            clearExceptionalCompletion();
        } else {
            this.status = 0;
        }
    }

    public static ForkJoinPool getPool() {
        Thread t = Thread.currentThread();
        if (t instanceof ForkJoinWorkerThread) {
            return ((ForkJoinWorkerThread) t).pool;
        }
        return null;
    }

    public static boolean inForkJoinPool() {
        return Thread.currentThread() instanceof ForkJoinWorkerThread;
    }

    public boolean tryUnfork() {
        Thread t = Thread.currentThread();
        return t instanceof ForkJoinWorkerThread ? ((ForkJoinWorkerThread) t).workQueue.tryUnpush(this) : ForkJoinPool.common.tryExternalUnpush(this);
    }

    public static int getQueuedTaskCount() {
        ForkJoinPool.WorkQueue q;
        Thread t = Thread.currentThread();
        if (t instanceof ForkJoinWorkerThread) {
            q = ((ForkJoinWorkerThread) t).workQueue;
        } else {
            q = ForkJoinPool.commonSubmitterQueue();
        }
        if (q == null) {
            return 0;
        }
        return q.queueSize();
    }

    public static int getSurplusQueuedTaskCount() {
        return ForkJoinPool.getSurplusQueuedTaskCount();
    }

    protected static ForkJoinTask<?> peekNextLocalTask() {
        ForkJoinPool.WorkQueue q;
        Thread t = Thread.currentThread();
        if (t instanceof ForkJoinWorkerThread) {
            q = ((ForkJoinWorkerThread) t).workQueue;
        } else {
            q = ForkJoinPool.commonSubmitterQueue();
        }
        if (q == null) {
            return null;
        }
        return q.peek();
    }

    protected static ForkJoinTask<?> pollNextLocalTask() {
        Thread t = Thread.currentThread();
        if (t instanceof ForkJoinWorkerThread) {
            return ((ForkJoinWorkerThread) t).workQueue.nextLocalTask();
        }
        return null;
    }

    protected static ForkJoinTask<?> pollTask() {
        Thread t = Thread.currentThread();
        if (!(t instanceof ForkJoinWorkerThread)) {
            return null;
        }
        ForkJoinWorkerThread wt = (ForkJoinWorkerThread) t;
        return wt.pool.nextTaskFor(wt.workQueue);
    }

    public final short getForkJoinTaskTag() {
        return (short) this.status;
    }

    public final short setForkJoinTaskTag(short tag) {
        Unsafe unsafe;
        long j;
        int s;
        do {
            unsafe = U;
            j = STATUS;
            s = this.status;
        } while (!unsafe.compareAndSwapInt(this, j, s, (65535 & tag) | ((-65536) & s)));
        return (short) s;
    }

    public final boolean compareAndSetForkJoinTaskTag(short e, short tag) {
        int s;
        do {
            s = this.status;
            if (((short) s) != e) {
                return false;
            }
        } while (!U.compareAndSwapInt(this, STATUS, s, (65535 & tag) | ((-65536) & s)));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class AdaptedRunnable<T> extends ForkJoinTask<T> implements RunnableFuture<T> {
        private static final long serialVersionUID = 5232453952276885070L;
        T result;
        final Runnable runnable;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdaptedRunnable(Runnable runnable, T result) {
            if (runnable == null) {
                throw new NullPointerException();
            }
            this.runnable = runnable;
            this.result = result;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final T getRawResult() {
            return this.result;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final void setRawResult(T v) {
            this.result = v;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final boolean exec() {
            this.runnable.run();
            return true;
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public final void run() {
            invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class AdaptedRunnableAction extends ForkJoinTask<Void> implements RunnableFuture<Void> {
        private static final long serialVersionUID = 5232453952276885070L;
        final Runnable runnable;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdaptedRunnableAction(Runnable runnable) {
            if (runnable == null) {
                throw new NullPointerException();
            }
            this.runnable = runnable;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final Void getRawResult() {
            return null;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final void setRawResult(Void v) {
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final boolean exec() {
            this.runnable.run();
            return true;
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public final void run() {
            invoke();
        }
    }

    /* loaded from: classes.dex */
    static final class RunnableExecuteAction extends ForkJoinTask<Void> {
        private static final long serialVersionUID = 5232453952276885070L;
        final Runnable runnable;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RunnableExecuteAction(Runnable runnable) {
            if (runnable == null) {
                throw new NullPointerException();
            }
            this.runnable = runnable;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final Void getRawResult() {
            return null;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final void setRawResult(Void v) {
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final boolean exec() {
            this.runnable.run();
            return true;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        void internalPropagateException(Throwable ex) {
            rethrow(ex);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class AdaptedCallable<T> extends ForkJoinTask<T> implements RunnableFuture<T> {
        private static final long serialVersionUID = 2838392045355241008L;
        final Callable<? extends T> callable;
        T result;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdaptedCallable(Callable<? extends T> callable) {
            if (callable == null) {
                throw new NullPointerException();
            }
            this.callable = callable;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final T getRawResult() {
            return this.result;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final void setRawResult(T v) {
            this.result = v;
        }

        @Override // io.netty.util.internal.chmv8.ForkJoinTask
        public final boolean exec() {
            try {
                this.result = this.callable.call();
                return true;
            } catch (Error err) {
                throw err;
            } catch (RuntimeException rex) {
                throw rex;
            } catch (Exception ex) {
                throw new RuntimeException(ex);
            }
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public final void run() {
            invoke();
        }
    }

    public static ForkJoinTask<?> adapt(Runnable runnable) {
        return new AdaptedRunnableAction(runnable);
    }

    public static <T> ForkJoinTask<T> adapt(Runnable runnable, T result) {
        return new AdaptedRunnable(runnable, result);
    }

    public static <T> ForkJoinTask<T> adapt(Callable<? extends T> callable) {
        return new AdaptedCallable(callable);
    }

    private void writeObject(ObjectOutputStream s) throws IOException {
        s.defaultWriteObject();
        s.writeObject(getException());
    }

    private void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException {
        s.defaultReadObject();
        Object ex = s.readObject();
        if (ex != null) {
            setExceptionalCompletion((Throwable) ex);
        }
    }

    static {
        try {
            U = getUnsafe();
            STATUS = U.objectFieldOffset(ForkJoinTask.class.getDeclaredField("status"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    private static Unsafe getUnsafe() {
        try {
            return Unsafe.getUnsafe();
        } catch (SecurityException e) {
            try {
                return (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: io.netty.util.internal.chmv8.ForkJoinTask.1
                    @Override // java.security.PrivilegedExceptionAction
                    public Unsafe run() throws Exception {
                        Field[] arr$ = Unsafe.class.getDeclaredFields();
                        for (Field f : arr$) {
                            f.setAccessible(true);
                            Object x = f.get(null);
                            if (Unsafe.class.isInstance(x)) {
                                return (Unsafe) Unsafe.class.cast(x);
                            }
                        }
                        throw new NoSuchFieldError("the Unsafe");
                    }
                });
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        }
    }
}
