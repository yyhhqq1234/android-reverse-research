package io.netty.bootstrap;

import io.netty.channel.Channel;

/* loaded from: classes.dex */
public interface ChannelFactory<T extends Channel> {
    T newChannel();
}
