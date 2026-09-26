package com.sina.weibo.sdk.statistic;

import android.app.ActivityManager;
import android.content.Context;
import com.sina.weibo.sdk.utils.LogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WBAgentHandler {
    private static int MAX_CACHE_SIZE = 5;
    private static List<PageLog> mActivePages;
    private static WBAgentHandler mInstance;
    private static Map<String, PageLog> mPages;
    private static Timer mTimer;

    public static synchronized WBAgentHandler getInstance() {
        WBAgentHandler wBAgentHandler;
        synchronized (WBAgentHandler.class) {
            if (mInstance == null) {
                mInstance = new WBAgentHandler();
            }
            wBAgentHandler = mInstance;
        }
        return wBAgentHandler;
    }

    private WBAgentHandler() {
        mActivePages = new ArrayList();
        mPages = new HashMap();
        LogUtil.i(WBAgent.TAG, "init handler");
    }

    public void onPageStart(String pageName) {
        if (!StatisticConfig.ACTIVITY_DURATION_OPEN) {
            PageLog pageLog = new PageLog(pageName);
            pageLog.setType(LogType.FRAGMENT);
            synchronized (mPages) {
                mPages.put(pageName, pageLog);
            }
            LogUtil.d(WBAgent.TAG, String.valueOf(pageName) + ", " + (pageLog.getStartTime() / 1000));
        }
    }

    public void onPageEnd(String pageName) {
        if (!StatisticConfig.ACTIVITY_DURATION_OPEN) {
            if (mPages.containsKey(pageName)) {
                PageLog pageLog = mPages.get(pageName);
                pageLog.setDuration(System.currentTimeMillis() - pageLog.getStartTime());
                synchronized (mActivePages) {
                    mActivePages.add(pageLog);
                }
                synchronized (mPages) {
                    mPages.remove(pageName);
                }
                LogUtil.d(WBAgent.TAG, String.valueOf(pageName) + ", " + (pageLog.getStartTime() / 1000) + ", " + (pageLog.getDuration() / 1000));
            } else {
                LogUtil.e(WBAgent.TAG, "please call onPageStart before onPageEnd");
            }
            if (mActivePages.size() >= MAX_CACHE_SIZE) {
                saveActivePages(mActivePages);
                mActivePages.clear();
            }
        }
    }

    public void onResume(Context context) {
        if (LogReport.getPackageName() == null) {
            LogReport.setPackageName(context.getPackageName());
        }
        if (mTimer == null) {
            mTimer = timerTask(context, 500L, StatisticConfig.getUploadInterval());
        }
        long curTime = System.currentTimeMillis();
        String pageName = context.getClass().getName();
        checkNewSession(context, curTime);
        if (StatisticConfig.ACTIVITY_DURATION_OPEN) {
            PageLog pageLog = new PageLog(pageName, curTime);
            pageLog.setType(LogType.ACTIVITY);
            synchronized (mPages) {
                mPages.put(pageName, pageLog);
            }
        }
        LogUtil.d(WBAgent.TAG, String.valueOf(pageName) + ", " + (curTime / 1000));
    }

    public void onPause(Context context) {
        long curTime = System.currentTimeMillis();
        String pageName = context.getClass().getName();
        LogUtil.i(WBAgent.TAG, "update last page endtime:" + (curTime / 1000));
        PageLog.updateSession(context, null, 0L, Long.valueOf(curTime));
        if (StatisticConfig.ACTIVITY_DURATION_OPEN) {
            if (mPages.containsKey(pageName)) {
                PageLog pageLog = mPages.get(pageName);
                pageLog.setDuration(curTime - pageLog.getStartTime());
                synchronized (mActivePages) {
                    mActivePages.add(pageLog);
                }
                synchronized (mPages) {
                    mPages.remove(pageName);
                }
                LogUtil.d(WBAgent.TAG, String.valueOf(pageName) + ", " + (pageLog.getStartTime() / 1000) + ", " + (pageLog.getDuration() / 1000));
            } else {
                LogUtil.e(WBAgent.TAG, "please call onResume before onPause");
            }
            if (mActivePages.size() >= MAX_CACHE_SIZE) {
                saveActivePages(mActivePages);
                mActivePages.clear();
            }
        }
        checkAppStatus(context);
    }

    public void onEvent(String pageName, String eventId, Map<String, String> extend) {
        EventLog eventLog = new EventLog(pageName, eventId, extend);
        eventLog.setType(LogType.EVENT);
        synchronized (mActivePages) {
            mActivePages.add(eventLog);
        }
        if (extend == null) {
            LogUtil.d(WBAgent.TAG, "event--- page:" + pageName + " ,event name:" + eventId);
        } else {
            LogUtil.d(WBAgent.TAG, "event--- page:" + pageName + " ,event name:" + eventId + " ,extend:" + extend.toString());
        }
        if (mActivePages.size() >= MAX_CACHE_SIZE) {
            saveActivePages(mActivePages);
            mActivePages.clear();
        }
    }

    public void uploadAppLogs(final Context context) {
        long duration = System.currentTimeMillis() - LogReport.getTime(context);
        if (LogReport.getTime(context) > 0 && duration < StatisticConfig.MIN_UPLOAD_INTERVAL) {
            timerTask(context, StatisticConfig.MIN_UPLOAD_INTERVAL - duration, 0L);
        } else {
            WBAgentExecutor.execute(new Runnable() { // from class: com.sina.weibo.sdk.statistic.WBAgentHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    LogReport.uploadAppLogs(context, WBAgentHandler.this.getLogsInMemory());
                }
            });
        }
    }

    public void onStop(Context context) {
        checkAppStatus(context);
    }

    private void checkAppStatus(Context context) {
        if (isBackground(context)) {
            saveActivePages(mActivePages);
            mActivePages.clear();
        }
    }

    private boolean isBackground(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> appProcesses = activityManager.getRunningAppProcesses();
        for (ActivityManager.RunningAppProcessInfo appProcess : appProcesses) {
            if (appProcess.processName.equals(context.getPackageName())) {
                if (appProcess.importance == 400) {
                    LogUtil.i(WBAgent.TAG, "后台:" + appProcess.processName);
                    return true;
                }
                LogUtil.i(WBAgent.TAG, "前台:" + appProcess.processName);
                return false;
            }
        }
        return false;
    }

    public void onKillProcess() {
        LogUtil.i(WBAgent.TAG, "save applogs and close timer and shutdown thread executor");
        saveActivePages(mActivePages);
        mInstance = null;
        closeTimer();
        WBAgentExecutor.shutDownExecutor();
    }

    private void checkNewSession(Context context, long curTime) {
        if (PageLog.isNewSession(context, curTime)) {
            PageLog old_session = new PageLog(context);
            old_session.setType(LogType.SESSION_END);
            PageLog new_session = new PageLog(context, curTime);
            new_session.setType(LogType.SESSION_START);
            synchronized (mActivePages) {
                if (old_session.getEndTime() > 0) {
                    mActivePages.add(old_session);
                } else {
                    LogUtil.d(WBAgent.TAG, "is a new install");
                }
                mActivePages.add(new_session);
            }
            LogUtil.d(WBAgent.TAG, "last session--- starttime:" + old_session.getStartTime() + " ,endtime:" + old_session.getEndTime());
            LogUtil.d(WBAgent.TAG, "is a new session--- starttime:" + new_session.getStartTime());
            return;
        }
        LogUtil.i(WBAgent.TAG, "is not a new session");
    }

    private synchronized void saveActivePages(List<PageLog> pages) {
        final String content = LogBuilder.getPageLogs(pages);
        WBAgentExecutor.execute(new Runnable() { // from class: com.sina.weibo.sdk.statistic.WBAgentHandler.2
            @Override // java.lang.Runnable
            public void run() {
                LogFileUtil.writeToFile(LogFileUtil.getAppLogPath(LogFileUtil.ANALYTICS_FILE_NAME), content, true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized String getLogsInMemory() {
        String memorylogs;
        memorylogs = "";
        if (mActivePages.size() > 0) {
            memorylogs = LogBuilder.getPageLogs(mActivePages);
            mActivePages.clear();
        }
        return memorylogs;
    }

    private Timer timerTask(final Context context, long delay, long peirod) {
        Timer timer = new Timer();
        TimerTask task = new TimerTask() { // from class: com.sina.weibo.sdk.statistic.WBAgentHandler.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                LogReport.uploadAppLogs(context, WBAgentHandler.this.getLogsInMemory());
            }
        };
        if (peirod == 0) {
            timer.schedule(task, delay);
        } else {
            timer.schedule(task, delay, peirod);
        }
        return timer;
    }

    private void closeTimer() {
        if (mTimer != null) {
            mTimer.cancel();
        }
    }
}
