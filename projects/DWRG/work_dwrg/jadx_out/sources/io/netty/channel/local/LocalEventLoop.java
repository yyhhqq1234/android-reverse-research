package io.netty.channel.local;

import io.netty.channel.SingleThreadEventLoop;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
final class LocalEventLoop extends SingleThreadEventLoop {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalEventLoop(LocalEventLoopGroup parent, ThreadFactory threadFactory) {
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
