package io.netty.util;

/* loaded from: classes.dex */
public interface ResourceLeak {
    boolean close();

    void record();
}
