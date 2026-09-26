package io.netty.util.concurrent;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
final class DefaultEventExecutor extends SingleThreadEventExecutor {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultEventExecutor(DefaultEventExecutorGroup parent, ThreadFactory threadFactory) {
        super(parent, threadFactory, true);
    }

    @Override // io.netty.util.concurrent.SingleThreadEventExecutor
    protected void run() {
        do {
            Runnable task = takeTask();
            if (task != null) {
                task.run();
                updateLastExecutionTime();
            }
        } while (!confirmShutdown());
    }
}
