package io.netty.channel;

/* loaded from: classes.dex */
public final class ChannelMetadata {
    private final boolean hasDisconnect;

    public ChannelMetadata(boolean hasDisconnect) {
        this.hasDisconnect = hasDisconnect;
    }

    public boolean hasDisconnect() {
        return this.hasDisconnect;
    }
}
