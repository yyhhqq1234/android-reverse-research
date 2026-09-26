package io.netty.util.concurrent;

import io.netty.util.Signal;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.InternalThreadLocalMap;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.ArrayDeque;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class DefaultPromise<V> extends AbstractFuture<V> implements Promise<V> {
    private static final int MAX_LISTENER_STACK_DEPTH = 8;
    private final EventExecutor executor;
    private DefaultPromise<V>.LateListeners lateListeners;
    private Object listeners;
    private volatile Object result;
    private short waiters;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) DefaultPromise.class);
    private static final InternalLogger rejectedExecutionLogger = InternalLoggerFactory.getInstance(String.valueOf(DefaultPromise.class.getName()) + ".rejectedExecution");
    private static final Signal SUCCESS = Signal.valueOf(String.valueOf(DefaultPromise.class.getName()) + ".SUCCESS");
    private static final Signal UNCANCELLABLE = Signal.valueOf(String.valueOf(DefaultPromise.class.getName()) + ".UNCANCELLABLE");
    private static final CauseHolder CANCELLATION_CAUSE_HOLDER = new CauseHolder(new CancellationException());

    static {
        CANCELLATION_CAUSE_HOLDER.cause.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
    }

    public DefaultPromise(EventExecutor executor) {
        if (executor == null) {
            throw new NullPointerException("executor");
        }
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DefaultPromise() {
        this.executor = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EventExecutor executor() {
        return this.executor;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return isCancelled0(this.result);
    }

    private static boolean isCancelled0(Object result) {
        return (result instanceof CauseHolder) && (((CauseHolder) result).cause instanceof CancellationException);
    }

    @Override // io.netty.util.concurrent.Future
    public boolean isCancellable() {
        return this.result == null;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return isDone0(this.result);
    }

    private static boolean isDone0(Object result) {
        return (result == null || result == UNCANCELLABLE) ? false : true;
    }

    @Override // io.netty.util.concurrent.Future
    public boolean isSuccess() {
        Object result = this.result;
        return (result == null || result == UNCANCELLABLE || (result instanceof CauseHolder)) ? false : true;
    }

    @Override // io.netty.util.concurrent.Future
    public Throwable cause() {
        Object result = this.result;
        if (result instanceof CauseHolder) {
            return ((CauseHolder) result).cause;
        }
        return null;
    }

    @Override // io.netty.util.concurrent.Future
    /* renamed from: addListener */
    public Promise<V> addListener2(GenericFutureListener<? extends Future<? super V>> listener) {
        if (listener == null) {
            throw new NullPointerException("listener");
        }
        if (isDone()) {
            notifyLateListener(listener);
        } else {
            synchronized (this) {
                if (!isDone()) {
                    if (this.listeners == null) {
                        this.listeners = listener;
                    } else if (this.listeners instanceof DefaultFutureListeners) {
                        ((DefaultFutureListeners) this.listeners).add(listener);
                    } else {
                        GenericFutureListener<? extends Future<V>> firstListener = (GenericFutureListener) this.listeners;
                        this.listeners = new DefaultFutureListeners(firstListener, listener);
                    }
                } else {
                    notifyLateListener(listener);
                }
            }
        }
        return this;
    }

    @Override // io.netty.util.concurrent.Future
    /* renamed from: addListeners */
    public Promise<V> addListeners2(GenericFutureListener<? extends Future<? super V>>... genericFutureListenerArr) {
        if (genericFutureListenerArr == null) {
            throw new NullPointerException("listeners");
        }
        for (GenericFutureListener<? extends Future<? super V>> l : genericFutureListenerArr) {
            if (l == null) {
                break;
            }
            addListener2((GenericFutureListener) l);
        }
        return this;
    }

    @Override // io.netty.util.concurrent.Future
    /* renamed from: removeListener */
    public Promise<V> removeListener2(GenericFutureListener<? extends Future<? super V>> listener) {
        if (listener == null) {
            throw new NullPointerException("listener");
        }
        if (!isDone()) {
            synchronized (this) {
                if (!isDone()) {
                    if (this.listeners instanceof DefaultFutureListeners) {
                        ((DefaultFutureListeners) this.listeners).remove(listener);
                    } else if (this.listeners == listener) {
                        this.listeners = null;
                    }
                }
            }
        }
        return this;
    }

    @Override // io.netty.util.concurrent.Future
    /* renamed from: removeListeners */
    public Promise<V> removeListeners2(GenericFutureListener<? extends Future<? super V>>... genericFutureListenerArr) {
        if (genericFutureListenerArr == null) {
            throw new NullPointerException("listeners");
        }
        for (GenericFutureListener<? extends Future<? super V>> l : genericFutureListenerArr) {
            if (l == null) {
                break;
            }
            removeListener2((GenericFutureListener) l);
        }
        return this;
    }

    @Override // io.netty.util.concurrent.Future
    /* renamed from: sync */
    public Promise<V> sync2() throws InterruptedException {
        await2();
        rethrowIfFailed();
        return this;
    }

    @Override // io.netty.util.concurrent.Future
    /* renamed from: syncUninterruptibly */
    public Promise<V> syncUninterruptibly2() {
        awaitUninterruptibly2();
        rethrowIfFailed();
        return this;
    }

    private void rethrowIfFailed() {
        Throwable cause = cause();
        if (cause != null) {
            PlatformDependent.throwException(cause);
        }
    }

    @Override // io.netty.util.concurrent.Future
    /* renamed from: await */
    public Promise<V> await2() throws InterruptedException {
        if (!isDone()) {
            if (Thread.interrupted()) {
                throw new InterruptedException(toString());
            }
            synchronized (this) {
                while (!isDone()) {
                    checkDeadLock();
                    incWaiters();
                    try {
                        wait();
                        decWaiters();
                    } catch (Throwable th) {
                        decWaiters();
                        throw th;
                    }
                }
            }
        }
        return this;
    }

    @Override // io.netty.util.concurrent.Future
    public boolean await(long timeout, TimeUnit unit) throws InterruptedException {
        return await0(unit.toNanos(timeout), true);
    }

    @Override // io.netty.util.concurrent.Future
    public boolean await(long timeoutMillis) throws InterruptedException {
        return await0(TimeUnit.MILLISECONDS.toNanos(timeoutMillis), true);
    }

    @Override // io.netty.util.concurrent.Future
    /* renamed from: awaitUninterruptibly */
    public Promise<V> awaitUninterruptibly2() {
        if (!isDone()) {
            boolean interrupted = false;
            synchronized (this) {
                while (!isDone()) {
                    checkDeadLock();
                    incWaiters();
                    try {
                        wait();
                        decWaiters();
                    } catch (InterruptedException e) {
                        interrupted = true;
                        decWaiters();
                    } catch (Throwable th) {
                        decWaiters();
                        throw th;
                    }
                }
            }
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
        }
        return this;
    }

    @Override // io.netty.util.concurrent.Future
    public boolean awaitUninterruptibly(long timeout, TimeUnit unit) {
        try {
            return await0(unit.toNanos(timeout), false);
        } catch (InterruptedException e) {
            throw new InternalError();
        }
    }

    @Override // io.netty.util.concurrent.Future
    public boolean awaitUninterruptibly(long timeoutMillis) {
        try {
            return await0(TimeUnit.MILLISECONDS.toNanos(timeoutMillis), false);
        } catch (InterruptedException e) {
            throw new InternalError();
        }
    }

    private boolean await0(long timeoutNanos, boolean interruptable) throws InterruptedException {
        if (isDone()) {
            return true;
        }
        if (timeoutNanos <= 0) {
            return isDone();
        }
        if (interruptable && Thread.interrupted()) {
            throw new InterruptedException(toString());
        }
        long startTime = System.nanoTime();
        long waitTime = timeoutNanos;
        boolean interrupted = false;
        try {
            synchronized (this) {
                if (isDone()) {
                    if (0 != 0) {
                        Thread.currentThread().interrupt();
                    }
                    return true;
                }
                if (waitTime <= 0) {
                    boolean isDone = isDone();
                }
                checkDeadLock();
                incWaiters();
                do {
                    try {
                        try {
                            wait(waitTime / 1000000, (int) (waitTime % 1000000));
                        } finally {
                            decWaiters();
                        }
                    } catch (InterruptedException e) {
                        if (interruptable) {
                            throw e;
                        }
                        interrupted = true;
                    }
                    if (isDone()) {
                        if (interrupted) {
                            Thread.currentThread().interrupt();
                        }
                        return true;
                    }
                    waitTime = timeoutNanos - (System.nanoTime() - startTime);
                } while (waitTime > 0);
                boolean isDone2 = isDone();
                if (!interrupted) {
                    return isDone2;
                }
                Thread.currentThread().interrupt();
                return isDone2;
            }
        } finally {
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkDeadLock() {
        EventExecutor e = executor();
        if (e != null && e.inEventLoop()) {
            throw new BlockingOperationException(toString());
        }
    }

    public Promise<V> setSuccess(V result) {
        if (setSuccess0(result)) {
            notifyListeners();
            return this;
        }
        throw new IllegalStateException("complete already: " + this);
    }

    public boolean trySuccess(V result) {
        if (!setSuccess0(result)) {
            return false;
        }
        notifyListeners();
        return true;
    }

    public Promise<V> setFailure(Throwable cause) {
        if (setFailure0(cause)) {
            notifyListeners();
            return this;
        }
        throw new IllegalStateException("complete already: " + this, cause);
    }

    public boolean tryFailure(Throwable cause) {
        if (!setFailure0(cause)) {
            return false;
        }
        notifyListeners();
        return true;
    }

    @Override // io.netty.util.concurrent.Future, java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        Object result = this.result;
        if (isDone0(result) || result == UNCANCELLABLE) {
            return false;
        }
        synchronized (this) {
            Object result2 = this.result;
            if (isDone0(result2) || result2 == UNCANCELLABLE) {
                return false;
            }
            this.result = CANCELLATION_CAUSE_HOLDER;
            if (hasWaiters()) {
                notifyAll();
            }
            notifyListeners();
            return true;
        }
    }

    @Override // io.netty.util.concurrent.Promise
    public boolean setUncancellable() {
        boolean z;
        Object result = this.result;
        if (isDone0(result)) {
            return !isCancelled0(result);
        }
        synchronized (this) {
            Object result2 = this.result;
            if (isDone0(result2)) {
                z = isCancelled0(result2) ? false : true;
            } else {
                this.result = UNCANCELLABLE;
                z = true;
            }
        }
        return z;
    }

    private boolean setFailure0(Throwable cause) {
        if (cause == null) {
            throw new NullPointerException("cause");
        }
        if (isDone()) {
            return false;
        }
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.result = new CauseHolder(cause);
            if (hasWaiters()) {
                notifyAll();
            }
            return true;
        }
    }

    private boolean setSuccess0(V result) {
        if (isDone()) {
            return false;
        }
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            if (result == null) {
                this.result = SUCCESS;
            } else {
                this.result = result;
            }
            if (hasWaiters()) {
                notifyAll();
            }
            return true;
        }
    }

    @Override // io.netty.util.concurrent.Future
    public V getNow() {
        V v = (V) this.result;
        if ((v instanceof CauseHolder) || v == SUCCESS) {
            return null;
        }
        return v;
    }

    private boolean hasWaiters() {
        return this.waiters > 0;
    }

    private void incWaiters() {
        if (this.waiters == Short.MAX_VALUE) {
            throw new IllegalStateException("too many waiters: " + this);
        }
        this.waiters = (short) (this.waiters + 1);
    }

    private void decWaiters() {
        this.waiters = (short) (this.waiters - 1);
    }

    private void notifyListeners() {
        InternalThreadLocalMap threadLocals;
        int stackDepth;
        Object listeners = this.listeners;
        if (listeners != null) {
            EventExecutor executor = executor();
            if (executor.inEventLoop() && (stackDepth = (threadLocals = InternalThreadLocalMap.get()).futureListenerStackDepth()) < 8) {
                threadLocals.setFutureListenerStackDepth(stackDepth + 1);
                try {
                    if (listeners instanceof DefaultFutureListeners) {
                        notifyListeners0(this, (DefaultFutureListeners) listeners);
                    } else {
                        GenericFutureListener<? extends Future<V>> l = (GenericFutureListener) listeners;
                        notifyListener0(this, l);
                    }
                    return;
                } finally {
                    this.listeners = null;
                    threadLocals.setFutureListenerStackDepth(stackDepth);
                }
            }
            if (listeners instanceof DefaultFutureListeners) {
                final DefaultFutureListeners dfl = (DefaultFutureListeners) listeners;
                execute(executor, new Runnable() { // from class: io.netty.util.concurrent.DefaultPromise.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultPromise.notifyListeners0(DefaultPromise.this, dfl);
                        DefaultPromise.this.listeners = null;
                    }
                });
            } else {
                final GenericFutureListener<? extends Future<V>> l2 = (GenericFutureListener) listeners;
                execute(executor, new Runnable() { // from class: io.netty.util.concurrent.DefaultPromise.2
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultPromise.notifyListener0(DefaultPromise.this, l2);
                        DefaultPromise.this.listeners = null;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyListeners0(Future<?> future, DefaultFutureListeners listeners) {
        GenericFutureListener[] a = listeners.listeners();
        int size = listeners.size();
        for (int i = 0; i < size; i++) {
            notifyListener0(future, a[i]);
        }
    }

    private void notifyLateListener(GenericFutureListener<?> l) {
        EventExecutor executor = executor();
        if (executor.inEventLoop()) {
            if (this.listeners == null && this.lateListeners == null) {
                InternalThreadLocalMap threadLocals = InternalThreadLocalMap.get();
                int stackDepth = threadLocals.futureListenerStackDepth();
                if (stackDepth < 8) {
                    threadLocals.setFutureListenerStackDepth(stackDepth + 1);
                    try {
                        notifyListener0(this, l);
                        return;
                    } finally {
                        threadLocals.setFutureListenerStackDepth(stackDepth);
                    }
                }
            } else {
                DefaultPromise<V>.LateListeners lateListeners = this.lateListeners;
                if (lateListeners == null) {
                    lateListeners = new LateListeners();
                    this.lateListeners = lateListeners;
                }
                lateListeners.add(l);
                execute(executor, lateListeners);
                return;
            }
        }
        execute(executor, new LateListenerNotifier(l));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void notifyListener(EventExecutor eventExecutor, final Future<?> future, final GenericFutureListener<?> l) {
        InternalThreadLocalMap threadLocals;
        int stackDepth;
        if (eventExecutor.inEventLoop() && (stackDepth = (threadLocals = InternalThreadLocalMap.get()).futureListenerStackDepth()) < 8) {
            threadLocals.setFutureListenerStackDepth(stackDepth + 1);
            try {
                notifyListener0(future, l);
                return;
            } finally {
                threadLocals.setFutureListenerStackDepth(stackDepth);
            }
        }
        execute(eventExecutor, new Runnable() { // from class: io.netty.util.concurrent.DefaultPromise.3
            @Override // java.lang.Runnable
            public void run() {
                DefaultPromise.notifyListener0(Future.this, l);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void execute(EventExecutor executor, Runnable task) {
        try {
            executor.execute(task);
        } catch (Throwable t) {
            rejectedExecutionLogger.error("Failed to submit a listener notification task. Event loop shut down?", t);
        }
    }

    static void notifyListener0(Future future, GenericFutureListener l) {
        try {
            l.operationComplete(future);
        } catch (Throwable t) {
            if (logger.isWarnEnabled()) {
                logger.warn("An exception was thrown by " + l.getClass().getName() + ".operationComplete()", t);
            }
        }
    }

    private synchronized Object progressiveListeners() {
        Object obj;
        int j;
        Object listeners = this.listeners;
        if (listeners == null) {
            obj = null;
        } else if (listeners instanceof DefaultFutureListeners) {
            DefaultFutureListeners dfl = (DefaultFutureListeners) listeners;
            int progressiveSize = dfl.progressiveSize();
            switch (progressiveSize) {
                case 0:
                    obj = null;
                    break;
                case 1:
                    Object[] listeners2 = dfl.listeners();
                    int length = listeners2.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            obj = listeners2[i];
                            if (obj instanceof GenericProgressiveFutureListener) {
                                break;
                            } else {
                                i++;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                default:
                    GenericFutureListener<?>[] array = dfl.listeners();
                    GenericProgressiveFutureListener[] copy = new GenericProgressiveFutureListener[progressiveSize];
                    int i2 = 0;
                    int j2 = 0;
                    while (j2 < progressiveSize) {
                        GenericFutureListener<?> l = array[i2];
                        if (l instanceof GenericProgressiveFutureListener) {
                            j = j2 + 1;
                            copy[j2] = (GenericProgressiveFutureListener) l;
                        } else {
                            j = j2;
                        }
                        i2++;
                        j2 = j;
                    }
                    obj = copy;
                    break;
            }
        } else {
            obj = listeners instanceof GenericProgressiveFutureListener ? listeners : null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public void notifyProgressiveListeners(final long progress, final long total) {
        Object listeners = progressiveListeners();
        if (listeners != null) {
            final ProgressiveFuture<V> self = (ProgressiveFuture) this;
            EventExecutor executor = executor();
            if (executor.inEventLoop()) {
                if (listeners instanceof GenericProgressiveFutureListener[]) {
                    notifyProgressiveListeners0(self, (GenericProgressiveFutureListener[]) listeners, progress, total);
                    return;
                } else {
                    notifyProgressiveListener0(self, (GenericProgressiveFutureListener) listeners, progress, total);
                    return;
                }
            }
            if (listeners instanceof GenericProgressiveFutureListener[]) {
                final GenericProgressiveFutureListener[] array = (GenericProgressiveFutureListener[]) listeners;
                execute(executor, new Runnable() { // from class: io.netty.util.concurrent.DefaultPromise.4
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultPromise.notifyProgressiveListeners0(self, array, progress, total);
                    }
                });
            } else {
                final GenericProgressiveFutureListener<ProgressiveFuture<V>> l = (GenericProgressiveFutureListener) listeners;
                execute(executor, new Runnable() { // from class: io.netty.util.concurrent.DefaultPromise.5
                    @Override // java.lang.Runnable
                    public void run() {
                        DefaultPromise.notifyProgressiveListener0(self, l, progress, total);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyProgressiveListeners0(ProgressiveFuture<?> future, GenericProgressiveFutureListener<?>[] genericProgressiveFutureListenerArr, long progress, long total) {
        for (GenericProgressiveFutureListener<?> l : genericProgressiveFutureListenerArr) {
            if (l != null) {
                notifyProgressiveListener0(future, l, progress, total);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyProgressiveListener0(ProgressiveFuture future, GenericProgressiveFutureListener l, long progress, long total) {
        try {
            l.operationProgressed(future, progress, total);
        } catch (Throwable t) {
            if (logger.isWarnEnabled()) {
                logger.warn("An exception was thrown by " + l.getClass().getName() + ".operationProgressed()", t);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class CauseHolder {
        final Throwable cause;

        CauseHolder(Throwable cause) {
            this.cause = cause;
        }
    }

    public String toString() {
        return toStringBuilder().toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StringBuilder toStringBuilder() {
        StringBuilder buf = new StringBuilder(64);
        buf.append(StringUtil.simpleClassName(this));
        buf.append('@');
        buf.append(Integer.toHexString(hashCode()));
        Object result = this.result;
        if (result == SUCCESS) {
            buf.append("(success)");
        } else if (result == UNCANCELLABLE) {
            buf.append("(uncancellable)");
        } else if (result instanceof CauseHolder) {
            buf.append("(failure(");
            buf.append(((CauseHolder) result).cause);
            buf.append(')');
        } else {
            buf.append("(incomplete)");
        }
        return buf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class LateListeners extends ArrayDeque<GenericFutureListener<?>> implements Runnable {
        private static final long serialVersionUID = -687137418080392244L;

        LateListeners() {
            super(2);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DefaultPromise.this.listeners != null) {
                DefaultPromise.execute(DefaultPromise.this.executor(), this);
                return;
            }
            while (true) {
                GenericFutureListener<?> l = poll();
                if (l != null) {
                    DefaultPromise.notifyListener0(DefaultPromise.this, l);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class LateListenerNotifier implements Runnable {
        private GenericFutureListener<?> l;

        LateListenerNotifier(GenericFutureListener<?> l) {
            this.l = l;
        }

        @Override // java.lang.Runnable
        public void run() {
            DefaultPromise<V>.LateListeners lateListeners = DefaultPromise.this.lateListeners;
            if (this.l != null) {
                if (lateListeners == null) {
                    DefaultPromise defaultPromise = DefaultPromise.this;
                    lateListeners = new LateListeners();
                    defaultPromise.lateListeners = lateListeners;
                }
                lateListeners.add(this.l);
                this.l = null;
            }
            lateListeners.run();
        }
    }
}
