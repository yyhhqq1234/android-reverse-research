package io.netty.channel;

import io.netty.util.concurrent.EventExecutor;

/* loaded from: classes.dex */
public interface EventLoop extends EventExecutor, EventLoopGroup {
    @Override // io.netty.util.concurrent.EventExecutor
    EventLoopGroup parent();
}
