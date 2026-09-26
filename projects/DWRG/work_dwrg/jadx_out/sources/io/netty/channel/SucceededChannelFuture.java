package io.netty.channel;

import io.netty.util.concurrent.EventExecutor;

/* loaded from: classes.dex */
final class SucceededChannelFuture extends CompleteChannelFuture {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SucceededChannelFuture(Channel channel, EventExecutor executor) {
        super(channel, executor);
    }

    @Override // io.netty.util.concurrent.Future
    public Throwable cause() {
        return null;
    }

    @Override // io.netty.util.concurrent.Future
    public boolean isSuccess() {
        return true;
    }
}
