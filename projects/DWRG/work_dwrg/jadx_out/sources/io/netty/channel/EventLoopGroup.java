package io.netty.channel;

import io.netty.util.concurrent.EventExecutorGroup;

/* loaded from: classes.dex */
public interface EventLoopGroup extends EventExecutorGroup {
    @Override // io.netty.util.concurrent.EventExecutorGroup
    EventLoop next();

    ChannelFuture register(Channel channel);

    ChannelFuture register(Channel channel, ChannelPromise channelPromise);
}
