package com.netease.unisdk.ngvoice.task;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ThreadPoolExecutorWrapper {
    private Handler mMainHandler;
    private ScheduledThreadPoolExecutor mScheduledThreadPoolExecutor;
    private ExecutorService mThreadPoolExecutor;

    public ThreadPoolExecutorWrapper(int activeThreadCount, int maxThreadCount, int maxScheTaskThread) {
        this.mThreadPoolExecutor = new ThreadPoolExecutor(activeThreadCount, maxThreadCount, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
        if (maxScheTaskThread > 0) {
            this.mScheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(maxScheTaskThread);
        }
        this.mMainHandler = new Handler(Looper.getMainLooper());
    }

    public void executeTask(Runnable task) {
        this.mThreadPoolExecutor.execute(task);
    }

    public <T> Future<T> submitTask(Callable<T> task) {
        return this.mThreadPoolExecutor.submit(task);
    }

    public void scheduleTask(long delay, Runnable task) {
        this.mScheduledThreadPoolExecutor.schedule(task, delay, TimeUnit.MILLISECONDS);
    }

    public void scheduleTaskAtFixedRateIgnoringTaskRunningTime(long initialDelay, long period, Runnable task) {
        this.mScheduledThreadPoolExecutor.scheduleAtFixedRate(task, initialDelay, period, TimeUnit.MILLISECONDS);
    }

    public void scheduleTaskAtFixedRateIncludingTaskRunningTime(long initialDelay, long period, Runnable task) {
        this.mScheduledThreadPoolExecutor.scheduleWithFixedDelay(task, initialDelay, period, TimeUnit.MILLISECONDS);
    }

    public boolean removeScheduledTask(Runnable task) {
        return this.mScheduledThreadPoolExecutor.remove(task);
    }

    public void scheduleTaskOnUiThread(long delay, Runnable task) {
        this.mMainHandler.postDelayed(task, delay);
    }

    public void removeScheduledTaskOnUiThread(Runnable task) {
        this.mMainHandler.removeCallbacks(task);
    }

    public void runTaskOnUiThread(Runnable task) {
        this.mMainHandler.post(task);
    }

    public void shutdown() {
        if (this.mThreadPoolExecutor != null) {
            this.mThreadPoolExecutor.shutdown();
            this.mThreadPoolExecutor = null;
        }
        if (this.mScheduledThreadPoolExecutor != null) {
            this.mScheduledThreadPoolExecutor.shutdown();
            this.mScheduledThreadPoolExecutor = null;
        }
    }
}
