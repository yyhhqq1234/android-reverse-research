package com.netease.unisdk.gmbridge.task;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class TaskExecutor {
    private static ThreadPoolExecutorWrapper sThreadPoolExecutorWrapper;

    public static void init(int activeThreadCount, int maxThreadCount, int maxScheTaskThread) {
        if (sThreadPoolExecutorWrapper == null) {
            sThreadPoolExecutorWrapper = new ThreadPoolExecutorWrapper(activeThreadCount, maxThreadCount, maxScheTaskThread);
        }
    }

    public static void executeTask(Runnable task) {
        if (sThreadPoolExecutorWrapper == null) {
            sThreadPoolExecutorWrapper = new ThreadPoolExecutorWrapper(2, 5, 0);
        }
        sThreadPoolExecutorWrapper.executeTask(task);
    }

    public static <T> Future<T> submitTask(Callable<T> task) {
        if (sThreadPoolExecutorWrapper != null) {
            return sThreadPoolExecutorWrapper.submitTask(task);
        }
        return null;
    }

    public static void scheduleTask(long delay, Runnable task) {
        if (sThreadPoolExecutorWrapper != null) {
            sThreadPoolExecutorWrapper.scheduleTask(delay, task);
        }
    }

    public static void scheduleTaskAtFixedRateIgnoringTaskRunningTime(long initialDelay, long period, Runnable task) {
        if (sThreadPoolExecutorWrapper != null) {
            sThreadPoolExecutorWrapper.scheduleTaskAtFixedRateIgnoringTaskRunningTime(initialDelay, period, task);
        }
    }

    public static void scheduleTaskAtFixedRateIncludingTaskRunningTime(long initialDelay, long period, Runnable task) {
        if (sThreadPoolExecutorWrapper != null) {
            sThreadPoolExecutorWrapper.scheduleTaskAtFixedRateIncludingTaskRunningTime(initialDelay, period, task);
        }
    }

    public static boolean removeScheduledTask(Runnable task) {
        if (sThreadPoolExecutorWrapper != null) {
            return sThreadPoolExecutorWrapper.removeScheduledTask(task);
        }
        return false;
    }

    public static void scheduleTaskOnUiThread(long delay, Runnable task) {
        if (sThreadPoolExecutorWrapper != null) {
            sThreadPoolExecutorWrapper.scheduleTaskOnUiThread(delay, task);
        }
    }

    public static void removeScheduledTaskOnUiThread(Runnable task) {
        if (sThreadPoolExecutorWrapper != null) {
            sThreadPoolExecutorWrapper.removeScheduledTaskOnUiThread(task);
        }
    }

    public static void runTaskOnUiThread(Runnable task) {
        if (sThreadPoolExecutorWrapper == null) {
            sThreadPoolExecutorWrapper = new ThreadPoolExecutorWrapper(2, 5, 0);
        }
        sThreadPoolExecutorWrapper.runTaskOnUiThread(task);
    }

    public static void shutdown() {
        if (sThreadPoolExecutorWrapper != null) {
            sThreadPoolExecutorWrapper.shutdown();
            sThreadPoolExecutorWrapper = null;
        }
    }
}
