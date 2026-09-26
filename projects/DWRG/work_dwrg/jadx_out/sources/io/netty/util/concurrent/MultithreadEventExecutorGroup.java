package io.netty.util.concurrent;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class MultithreadEventExecutorGroup extends AbstractEventExecutorGroup {
    private final EventExecutor[] children;
    private final EventExecutorChooser chooser;
    private final AtomicInteger childIndex = new AtomicInteger();
    private final AtomicInteger terminatedChildren = new AtomicInteger();
    private final Promise<?> terminationFuture = new DefaultPromise(GlobalEventExecutor.INSTANCE);

    /* loaded from: classes.dex */
    private interface EventExecutorChooser {
        EventExecutor next();
    }

    protected abstract EventExecutor newChild(ThreadFactory threadFactory, Object... objArr) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public MultithreadEventExecutorGroup(int i, ThreadFactory threadFactory, Object... objArr) {
        int i2;
        boolean isTerminated;
        PowerOfTwoEventExecutorChooser powerOfTwoEventExecutorChooser = null;
        Object[] objArr2 = 0;
        if (i <= 0) {
            throw new IllegalArgumentException(String.format("nThreads: %d (expected: > 0)", Integer.valueOf(i)));
        }
        threadFactory = threadFactory == null ? newDefaultThreadFactory() : threadFactory;
        this.children = new SingleThreadEventExecutor[i];
        if (isPowerOfTwo(this.children.length)) {
            this.chooser = new PowerOfTwoEventExecutorChooser(this, powerOfTwoEventExecutorChooser);
        } else {
            this.chooser = new GenericEventExecutorChooser(this, objArr2 == true ? 1 : 0);
        }
        int i3 = 0;
        while (i3 < i) {
            boolean z = false;
            try {
                try {
                    this.children[i3] = newChild(threadFactory, objArr);
                    boolean z2 = true;
                    if (!z2) {
                        while (i2 < i3) {
                            while (true) {
                                try {
                                    if (isTerminated) {
                                        break;
                                    }
                                } catch (InterruptedException e) {
                                }
                            }
                        }
                    }
                    i3++;
                } finally {
                    if (!z) {
                        for (int i4 = 0; i4 < i3; i4++) {
                            this.children[i4].shutdownGracefully();
                        }
                        for (int i5 = 0; i5 < i3; i5++) {
                            EventExecutor eventExecutor = this.children[i5];
                            while (!eventExecutor.isTerminated()) {
                                try {
                                    eventExecutor.awaitTermination(2147483647L, TimeUnit.SECONDS);
                                } catch (InterruptedException e2) {
                                    Thread.currentThread().interrupt();
                                }
                            }
                        }
                    }
                }
            } catch (Exception e3) {
                throw new IllegalStateException("failed to create a child event loop", e3);
            }
        }
        FutureListener<Object> futureListener = new FutureListener<Object>() { // from class: io.netty.util.concurrent.MultithreadEventExecutorGroup.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(Future<Object> future) throws Exception {
                if (MultithreadEventExecutorGroup.this.terminatedChildren.incrementAndGet() == MultithreadEventExecutorGroup.this.children.length) {
                    MultithreadEventExecutorGroup.this.terminationFuture.setSuccess(null);
                }
            }
        };
        for (EventExecutor eventExecutor2 : this.children) {
            eventExecutor2.terminationFuture().addListener2(futureListener);
        }
    }

    protected ThreadFactory newDefaultThreadFactory() {
        return new DefaultThreadFactory(getClass());
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public EventExecutor next() {
        return this.chooser.next();
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup, java.lang.Iterable
    public Iterator<EventExecutor> iterator() {
        return children().iterator();
    }

    public final int executorCount() {
        return this.children.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Set<EventExecutor> children() {
        Set<EventExecutor> children = Collections.newSetFromMap(new LinkedHashMap());
        Collections.addAll(children, this.children);
        return children;
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public Future<?> shutdownGracefully(long quietPeriod, long timeout, TimeUnit unit) {
        for (EventExecutor l : this.children) {
            l.shutdownGracefully(quietPeriod, timeout, unit);
        }
        return terminationFuture();
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public Future<?> terminationFuture() {
        return this.terminationFuture;
    }

    @Override // io.netty.util.concurrent.AbstractEventExecutorGroup, io.netty.util.concurrent.EventExecutorGroup, java.util.concurrent.ExecutorService
    @Deprecated
    public void shutdown() {
        for (EventExecutor l : this.children) {
            l.shutdown();
        }
    }

    @Override // io.netty.util.concurrent.EventExecutorGroup
    public boolean isShuttingDown() {
        for (EventExecutor l : this.children) {
            if (!l.isShuttingDown()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        for (EventExecutor l : this.children) {
            if (!l.isShutdown()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        for (EventExecutor l : this.children) {
            if (!l.isTerminated()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        long timeLeft;
        long deadline = System.nanoTime() + unit.toNanos(timeout);
        loop0: for (EventExecutor l : this.children) {
            do {
                timeLeft = deadline - System.nanoTime();
                if (timeLeft <= 0) {
                    break loop0;
                }
            } while (!l.awaitTermination(timeLeft, TimeUnit.NANOSECONDS));
        }
        return isTerminated();
    }

    private static boolean isPowerOfTwo(int val) {
        return ((-val) & val) == val;
    }

    /* loaded from: classes.dex */
    private final class PowerOfTwoEventExecutorChooser implements EventExecutorChooser {
        private PowerOfTwoEventExecutorChooser() {
        }

        /* synthetic */ PowerOfTwoEventExecutorChooser(MultithreadEventExecutorGroup multithreadEventExecutorGroup, PowerOfTwoEventExecutorChooser powerOfTwoEventExecutorChooser) {
            this();
        }

        @Override // io.netty.util.concurrent.MultithreadEventExecutorGroup.EventExecutorChooser
        public EventExecutor next() {
            return MultithreadEventExecutorGroup.this.children[MultithreadEventExecutorGroup.this.childIndex.getAndIncrement() & (MultithreadEventExecutorGroup.this.children.length - 1)];
        }
    }

    /* loaded from: classes.dex */
    private final class GenericEventExecutorChooser implements EventExecutorChooser {
        private GenericEventExecutorChooser() {
        }

        /* synthetic */ GenericEventExecutorChooser(MultithreadEventExecutorGroup multithreadEventExecutorGroup, GenericEventExecutorChooser genericEventExecutorChooser) {
            this();
        }

        @Override // io.netty.util.concurrent.MultithreadEventExecutorGroup.EventExecutorChooser
        public EventExecutor next() {
            return MultithreadEventExecutorGroup.this.children[Math.abs(MultithreadEventExecutorGroup.this.childIndex.getAndIncrement() % MultithreadEventExecutorGroup.this.children.length)];
        }
    }
}
