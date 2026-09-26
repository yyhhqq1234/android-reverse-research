package io.netty.channel.group;

import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.util.concurrent.BlockingOperationException;
import io.netty.util.concurrent.DefaultPromise;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.ImmediateEventExecutor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class DefaultChannelGroupFuture extends DefaultPromise<Void> implements ChannelGroupFuture {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ChannelFutureListener childListener;
    private int failureCount;
    private final Map<Channel, ChannelFuture> futures;
    private final ChannelGroup group;
    private int successCount;

    static {
        $assertionsDisabled = !DefaultChannelGroupFuture.class.desiredAssertionStatus();
    }

    DefaultChannelGroupFuture(ChannelGroup group, Collection<ChannelFuture> futures, EventExecutor executor) {
        super(executor);
        this.childListener = new ChannelFutureListener() { // from class: io.netty.channel.group.DefaultChannelGroupFuture.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture future) throws Exception {
                boolean callSetDone;
                boolean success = future.isSuccess();
                synchronized (DefaultChannelGroupFuture.this) {
                    if (success) {
                        DefaultChannelGroupFuture.this.successCount++;
                    } else {
                        DefaultChannelGroupFuture.this.failureCount++;
                    }
                    callSetDone = DefaultChannelGroupFuture.this.successCount + DefaultChannelGroupFuture.this.failureCount == DefaultChannelGroupFuture.this.futures.size();
                    if (!DefaultChannelGroupFuture.$assertionsDisabled && DefaultChannelGroupFuture.this.successCount + DefaultChannelGroupFuture.this.failureCount > DefaultChannelGroupFuture.this.futures.size()) {
                        throw new AssertionError();
                    }
                }
                if (callSetDone) {
                    if (DefaultChannelGroupFuture.this.failureCount > 0) {
                        List<Map.Entry<Channel, Throwable>> failed = new ArrayList<>(DefaultChannelGroupFuture.this.failureCount);
                        for (ChannelFuture f : DefaultChannelGroupFuture.this.futures.values()) {
                            if (!f.isSuccess()) {
                                failed.add(new DefaultEntry<>(f.channel(), f.cause()));
                            }
                        }
                        DefaultChannelGroupFuture.this.setFailure0(new ChannelGroupException(failed));
                        return;
                    }
                    DefaultChannelGroupFuture.this.setSuccess0();
                }
            }
        };
        if (group == null) {
            throw new NullPointerException("group");
        }
        if (futures == null) {
            throw new NullPointerException("futures");
        }
        this.group = group;
        Map<Channel, ChannelFuture> futureMap = new LinkedHashMap<>();
        for (ChannelFuture f : futures) {
            futureMap.put(f.channel(), f);
        }
        this.futures = Collections.unmodifiableMap(futureMap);
        Iterator<ChannelFuture> it = this.futures.values().iterator();
        while (it.hasNext()) {
            it.next().addListener2((GenericFutureListener<? extends Future<? super Void>>) this.childListener);
        }
        if (this.futures.isEmpty()) {
            setSuccess0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultChannelGroupFuture(ChannelGroup group, Map<Channel, ChannelFuture> futures, EventExecutor executor) {
        super(executor);
        this.childListener = new ChannelFutureListener() { // from class: io.netty.channel.group.DefaultChannelGroupFuture.1
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture future) throws Exception {
                boolean callSetDone;
                boolean success = future.isSuccess();
                synchronized (DefaultChannelGroupFuture.this) {
                    if (success) {
                        DefaultChannelGroupFuture.this.successCount++;
                    } else {
                        DefaultChannelGroupFuture.this.failureCount++;
                    }
                    callSetDone = DefaultChannelGroupFuture.this.successCount + DefaultChannelGroupFuture.this.failureCount == DefaultChannelGroupFuture.this.futures.size();
                    if (!DefaultChannelGroupFuture.$assertionsDisabled && DefaultChannelGroupFuture.this.successCount + DefaultChannelGroupFuture.this.failureCount > DefaultChannelGroupFuture.this.futures.size()) {
                        throw new AssertionError();
                    }
                }
                if (callSetDone) {
                    if (DefaultChannelGroupFuture.this.failureCount > 0) {
                        List<Map.Entry<Channel, Throwable>> failed = new ArrayList<>(DefaultChannelGroupFuture.this.failureCount);
                        for (ChannelFuture f : DefaultChannelGroupFuture.this.futures.values()) {
                            if (!f.isSuccess()) {
                                failed.add(new DefaultEntry<>(f.channel(), f.cause()));
                            }
                        }
                        DefaultChannelGroupFuture.this.setFailure0(new ChannelGroupException(failed));
                        return;
                    }
                    DefaultChannelGroupFuture.this.setSuccess0();
                }
            }
        };
        this.group = group;
        this.futures = Collections.unmodifiableMap(futures);
        for (ChannelFuture f : this.futures.values()) {
            f.addListener2((GenericFutureListener<? extends Future<? super Void>>) this.childListener);
        }
        if (this.futures.isEmpty()) {
            setSuccess0();
        }
    }

    @Override // io.netty.channel.group.ChannelGroupFuture
    public ChannelGroup group() {
        return this.group;
    }

    @Override // io.netty.channel.group.ChannelGroupFuture
    public ChannelFuture find(Channel channel) {
        return this.futures.get(channel);
    }

    @Override // io.netty.channel.group.ChannelGroupFuture, java.lang.Iterable
    public Iterator<ChannelFuture> iterator() {
        return this.futures.values().iterator();
    }

    @Override // io.netty.channel.group.ChannelGroupFuture
    public synchronized boolean isPartialSuccess() {
        boolean z;
        if (this.successCount != 0) {
            z = this.successCount != this.futures.size();
        }
        return z;
    }

    @Override // io.netty.channel.group.ChannelGroupFuture
    public synchronized boolean isPartialFailure() {
        boolean z;
        if (this.failureCount != 0) {
            z = this.failureCount != this.futures.size();
        }
        return z;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    /* renamed from: addListener, reason: avoid collision after fix types in other method */
    public Future<Void> addListener2(GenericFutureListener<? extends Future<? super Void>> listener) {
        super.addListener2((GenericFutureListener) listener);
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    /* renamed from: addListeners, reason: avoid collision after fix types in other method */
    public Future<Void> addListeners2(GenericFutureListener<? extends Future<? super Void>>... genericFutureListenerArr) {
        super.addListeners2((GenericFutureListener[]) genericFutureListenerArr);
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    /* renamed from: removeListener, reason: avoid collision after fix types in other method */
    public Future<Void> removeListener2(GenericFutureListener<? extends Future<? super Void>> listener) {
        super.removeListener2((GenericFutureListener) listener);
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    /* renamed from: removeListeners, reason: avoid collision after fix types in other method */
    public Future<Void> removeListeners2(GenericFutureListener<? extends Future<? super Void>>... genericFutureListenerArr) {
        super.removeListeners2((GenericFutureListener[]) genericFutureListenerArr);
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    /* renamed from: await, reason: avoid collision after fix types in other method */
    public Future<Void> await2() throws InterruptedException {
        super.await2();
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    /* renamed from: awaitUninterruptibly, reason: avoid collision after fix types in other method */
    public Future<Void> awaitUninterruptibly2() {
        super.awaitUninterruptibly2();
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    /* renamed from: syncUninterruptibly, reason: avoid collision after fix types in other method */
    public Future<Void> syncUninterruptibly2() {
        super.syncUninterruptibly2();
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    /* renamed from: sync, reason: avoid collision after fix types in other method */
    public Future<Void> sync2() throws InterruptedException {
        super.sync2();
        return this;
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Future
    public ChannelGroupException cause() {
        return (ChannelGroupException) super.cause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSuccess0() {
        super.setSuccess((DefaultChannelGroupFuture) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailure0(ChannelGroupException cause) {
        super.setFailure((Throwable) cause);
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise, io.netty.util.concurrent.ProgressivePromise
    public DefaultChannelGroupFuture setSuccess(Void result) {
        throw new IllegalStateException();
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise
    public boolean trySuccess(Void result) {
        throw new IllegalStateException();
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise, io.netty.channel.ChannelPromise
    public DefaultChannelGroupFuture setFailure(Throwable cause) {
        throw new IllegalStateException();
    }

    @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise
    public boolean tryFailure(Throwable cause) {
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.DefaultPromise
    public void checkDeadLock() {
        EventExecutor e = executor();
        if (e != null && e != ImmediateEventExecutor.INSTANCE && e.inEventLoop()) {
            throw new BlockingOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class DefaultEntry<K, V> implements Map.Entry<K, V> {
        private final K key;
        private final V value;

        DefaultEntry(K key, V value) {
            this.key = key;
            this.value = value;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public V setValue(V value) {
            throw new UnsupportedOperationException("read-only");
        }
    }
}
