package io.netty.channel;

/* loaded from: classes.dex */
public interface MessageSizeEstimator {

    /* loaded from: classes.dex */
    public interface Handle {
        int size(Object obj);
    }

    Handle newHandle();
}
