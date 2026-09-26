package io.netty.util.concurrent;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public class DefaultEventExecutorGroup extends MultithreadEventExecutorGroup {
    public DefaultEventExecutorGroup(int nThreads) {
        this(nThreads, null);
    }

    public DefaultEventExecutorGroup(int nThreads, ThreadFactory threadFactory) {
        super(nThreads, threadFactory, new Object[0]);
    }

    @Override // io.netty.util.concurrent.MultithreadEventExecutorGroup
    protected EventExecutor newChild(ThreadFactory threadFactory, Object... args) throws Exception {
        return new DefaultEventExecutor(this, threadFactory);
    }
}
