package io.netty.channel;

import com.sina.weibo.sdk.statistic.LogBuilder;
import io.netty.util.concurrent.CompleteFuture;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;

/* loaded from: classes.dex */
abstract class CompleteChannelFuture extends CompleteFuture<Void> implements ChannelFuture {
    private final Channel channel;

    /* JADX INFO: Access modifiers changed from: protected */
    public CompleteChannelFuture(Channel channel, EventExecutor executor) {
        super(executor);
        if (channel == null) {
            throw new NullPointerException(LogBuilder.KEY_CHANNEL);
        }
        this.channel = channel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.util.concurrent.CompleteFuture
    public EventExecutor executor() {
        EventExecutor e = super.executor();
        if (e == null) {
            return channel().eventLoop();
        }
        return e;
    }

    @Override // io.netty.util.concurrent.CompleteFuture, io.netty.util.concurrent.Future
    /* renamed from: addListener, reason: merged with bridge method [inline-methods] */
    public Future<Void> addListener2(GenericFutureListener<? extends Future<? super Void>> listener) {
        super.addListener2((GenericFutureListener) listener);
        return this;
    }

    @Override // io.netty.util.concurrent.CompleteFuture, io.netty.util.concurrent.Future
    /* renamed from: addListeners, reason: merged with bridge method [inline-methods] */
    public Future<Void> addListeners2(GenericFutureListener<? extends Future<? super Void>>... genericFutureListenerArr) {
        super.addListeners2((GenericFutureListener[]) genericFutureListenerArr);
        return this;
    }

    @Override // io.netty.util.concurrent.CompleteFuture, io.netty.util.concurrent.Future
    /* renamed from: removeListener, reason: merged with bridge method [inline-methods] */
    public Future<Void> removeListener2(GenericFutureListener<? extends Future<? super Void>> listener) {
        super.removeListener2((GenericFutureListener) listener);
        return this;
    }

    @Override // io.netty.util.concurrent.CompleteFuture, io.netty.util.concurrent.Future
    /* renamed from: removeListeners, reason: merged with bridge method [inline-methods] */
    public Future<Void> removeListeners2(GenericFutureListener<? extends Future<? super Void>>... genericFutureListenerArr) {
        super.removeListeners2((GenericFutureListener[]) genericFutureListenerArr);
        return this;
    }

    @Override // io.netty.util.concurrent.CompleteFuture, io.netty.util.concurrent.Future
    /* renamed from: syncUninterruptibly, reason: merged with bridge method [inline-methods] */
    public Future<Void> syncUninterruptibly2() {
        return this;
    }

    @Override // io.netty.util.concurrent.CompleteFuture, io.netty.util.concurrent.Future
    /* renamed from: sync, reason: merged with bridge method [inline-methods] */
    public Future<Void> sync2() throws InterruptedException {
        return this;
    }

    @Override // io.netty.util.concurrent.CompleteFuture, io.netty.util.concurrent.Future
    /* renamed from: await, reason: merged with bridge method [inline-methods] */
    public Future<Void> await2() throws InterruptedException {
        return this;
    }

    @Override // io.netty.util.concurrent.CompleteFuture, io.netty.util.concurrent.Future
    /* renamed from: awaitUninterruptibly, reason: merged with bridge method [inline-methods] */
    public Future<Void> awaitUninterruptibly2() {
        return this;
    }

    @Override // io.netty.channel.ChannelFuture
    public Channel channel() {
        return this.channel;
    }

    @Override // io.netty.util.concurrent.Future
    public Void getNow() {
        return null;
    }
}
