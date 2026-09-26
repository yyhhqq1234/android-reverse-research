package io.netty.channel.group;

import io.netty.channel.Channel;

/* loaded from: classes.dex */
public interface ChannelMatcher {
    boolean matches(Channel channel);
}
