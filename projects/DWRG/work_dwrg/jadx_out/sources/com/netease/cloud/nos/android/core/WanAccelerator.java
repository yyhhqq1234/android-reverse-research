package com.netease.cloud.nos.android.core;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.cloud.nos.android.exception.InvalidParameterException;
import com.netease.cloud.nos.android.monitor.MonitorTask;
import com.netease.cloud.nos.android.service.MonitorService;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.Util;
import java.io.File;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class WanAccelerator {
    private static AcceleratorConf conf;
    private static boolean isInit;
    protected static boolean isOpened;
    private static Timer monitorTimer;
    private static final String LOGTAG = LogUtil.makeLogTag(WanAccelerator.class);
    public static Map<String, String> map = new ConcurrentHashMap();

    private static void initScheduler(Context ctx) {
        if (getConf().isMonitorThreadEnabled()) {
            LogUtil.d(LOGTAG, "init monitor timer");
            monitorTimer = new Timer();
            MonitorTask task = new MonitorTask(ctx);
            monitorTimer.schedule(task, getConf().getMonitorInterval(), getConf().getMonitorInterval());
            return;
        }
        LogUtil.d(LOGTAG, "init scheduler");
        Intent intent = new Intent(ctx, (Class<?>) MonitorService.class);
        PendingIntent pintent = PendingIntent.getService(ctx, 0, intent, 0);
        AlarmManager am = (AlarmManager) ctx.getSystemService("alarm");
        am.setRepeating(1, 0L, getConf().getMonitorInterval(), pintent);
    }

    public static UploadTaskExecutor putFileByHttp(Context context, File file, Object fileParam, String uploadContext, WanNOSObject obj, Callback callback) throws InvalidParameterException {
        Util.checkParameters(context, file, fileParam, obj, callback);
        return put(context, obj.getUploadToken(), obj.getNosBucketName(), obj.getNosObjectName(), file, fileParam, uploadContext, callback, false, obj);
    }

    public static UploadTaskExecutor putFileByHttps(Context context, File file, Object fileParam, String uploadContext, WanNOSObject obj, Callback callback) throws InvalidParameterException {
        Util.checkParameters(context, file, fileParam, obj, callback);
        return put(context, obj.getUploadToken(), obj.getNosBucketName(), obj.getNosObjectName(), file, fileParam, uploadContext, callback, true, obj);
    }

    private static UploadTaskExecutor put(Context context, String uploadToken, String bucketName, String fileName, File file, Object fileParam, String uploadContext, Callback callback, boolean isHttps, WanNOSObject obj) {
        if (!isInit) {
            isInit = true;
            initScheduler(context);
        }
        try {
            UploadTask task = new UploadTask(context, uploadToken, bucketName, fileName, file, fileParam, uploadContext, callback, isHttps, obj);
            if (Build.VERSION.SDK_INT < 11) {
                task.execute(new Object[0]);
            } else {
                task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
            }
            return new UploadTaskExecutor(task);
        } catch (Exception e) {
            callback.onFailure(new CallRet(fileParam, uploadContext, Code.UNKNOWN_REASON, "", "", null, e));
            return null;
        }
    }

    public static void setConf(AcceleratorConf conf2) {
        conf = conf2;
    }

    public static AcceleratorConf getConf() {
        if (conf == null) {
            conf = new AcceleratorConf();
        }
        return conf;
    }
}
