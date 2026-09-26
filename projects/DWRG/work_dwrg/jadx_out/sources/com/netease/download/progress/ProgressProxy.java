package com.netease.download.progress;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.downloader.DownloadParams;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public class ProgressProxy {
    private static final String TAG = "ProgressProxy";
    private static ProgressProxy sProgressProxy = null;
    private Context mContext = null;
    private boolean isNewTask = true;

    private ProgressProxy() {
    }

    public static ProgressProxy getInstances() {
        if (sProgressProxy == null) {
            sProgressProxy = new ProgressProxy();
        }
        return sProgressProxy;
    }

    public void init(Context context) {
        this.mContext = context;
    }

    public String getParentTask(String downloadid, String taskparams) {
        if (getInfo(this.mContext, downloadid) == null) {
            LogUtil.i(TAG, "没有持久化过该任务，进行持久化");
            setInfo(this.mContext, downloadid, taskparams);
            this.isNewTask = true;
        } else {
            LogUtil.i(TAG, "已经持久化过该任务");
            this.isNewTask = false;
        }
        String taskParams = getInfo(this.mContext, downloadid);
        LogUtil.i(TAG, "从持久化中获取的数据=" + taskParams);
        return taskParams;
    }

    public int getDownloadedSize(List<DownloadParams> taskparams) {
        int size = 0;
        int count = 0;
        for (DownloadParams downloadParams : taskparams) {
            count++;
            LogUtil.i(TAG, "扫描 第" + count + " 个文件");
            String path = downloadParams.getFilePath();
            if (!TextUtils.isEmpty(path)) {
                File file = new File(path);
                if (file != null && file.exists()) {
                    size = (int) (size + file.length());
                    int validateCount = ReportInfo.getInstance().mFileNum.get(KeyConst.KEY_VALIDATE) != null ? ReportInfo.getInstance().mFileNum.get(KeyConst.KEY_VALIDATE).intValue() : 0;
                    ReportInfo.getInstance().mFileNum.put(KeyConst.KEY_VALIDATE, Integer.valueOf(validateCount + 1));
                } else {
                    LogUtil.i(TAG, "参数MD5=" + downloadParams.getMd5() + ", 真实文件md5=" + ((String) null) + ", 文件路径=" + downloadParams.getFilePath());
                }
            }
        }
        DownloadListenerCore.getInstances();
        DownloadListenerCore.getDownloadListenerHandler().sendProgressMsg(DownloadInitInfo.getInstances().getAllSize(), size, "xxxx", "xxxx");
        return size;
    }

    private void setInfo(Context context, String key, String info) {
        if (context == null) {
            LogUtil.i(TAG, "setInfo context is null");
            return;
        }
        LogUtil.i(TAG, "持久化 key=" + key + ", info=" + info);
        SharedPreferences pref = context.getSharedPreferences(Const.PREFERENCES_FILE_NAME, 0);
        SharedPreferences.Editor editor = pref.edit();
        editor.putString(key, info);
        editor.commit();
    }

    private String getInfo(Context context, String key) {
        if (context == null) {
            LogUtil.i(TAG, "setInfo context is null");
            return null;
        }
        SharedPreferences pref = context.getSharedPreferences(Const.PREFERENCES_FILE_NAME, 0);
        String data = pref.getString(key, null);
        LogUtil.i(TAG, "从持久化获取 key=" + key + ", data=" + data);
        return data;
    }

    public void removeInfo(Context context, String key) {
        if (context == null) {
            LogUtil.i(TAG, "removeInfo context is null");
            return;
        }
        LogUtil.i(TAG, "移除持久化 key=" + key);
        SharedPreferences pref = context.getSharedPreferences(Const.PREFERENCES_FILE_NAME, 0);
        SharedPreferences.Editor editor = pref.edit();
        editor.remove(key);
        editor.commit();
    }

    public void clearAllDownloadId(Context context) {
        if (context == null) {
            LogUtil.i(TAG, "clearAllDownloadId context is null");
            return;
        }
        LogUtil.i(TAG, "清除所有downloadId");
        SharedPreferences pref = context.getSharedPreferences(Const.PREFERENCES_FILE_NAME, 0);
        pref.edit().clear().commit();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
