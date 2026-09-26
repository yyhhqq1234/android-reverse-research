package com.netease.epay.sdk.base.util;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class BackgroundDispatcher {
    private static final int CORE_POOL_SIZE = 2;
    private static final int KEEP_ALIVE = 10;
    private static final int MAXIMUM_POOL_SIZE = 5;
    private static BackgroundDispatcher dispatcher;
    private final ThreadFactory sThreadFactory = new ThreadFactory() { // from class: com.netease.epay.sdk.base.util.BackgroundDispatcher.1
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            return new Thread(r, "BackgroundDispatcher #" + this.mCount.getAndIncrement());
        }
    };
    private ExecutorService executorService = new ThreadPoolExecutor(2, 5, 10, TimeUnit.SECONDS, new LinkedBlockingQueue(), this.sThreadFactory);

    public static BackgroundDispatcher getInstance() {
        if (dispatcher != null) {
            return dispatcher;
        }
        synchronized (BackgroundDispatcher.class) {
            if (dispatcher == null) {
                dispatcher = new BackgroundDispatcher();
            }
        }
        return dispatcher;
    }

    private BackgroundDispatcher() {
    }

    public synchronized void execute(Runnable call) {
        this.executorService.execute(call);
    }

    public synchronized <T> T submit(Callable<T> callable) {
        T t;
        try {
            t = this.executorService.submit(callable).get();
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
            t = null;
        }
        return t;
    }
}
