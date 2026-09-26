package io.netty.util;

/* loaded from: classes.dex */
public interface ReferenceCounted {
    int refCnt();

    boolean release();

    boolean release(int i);

    ReferenceCounted retain();

    ReferenceCounted retain(int i);
}
