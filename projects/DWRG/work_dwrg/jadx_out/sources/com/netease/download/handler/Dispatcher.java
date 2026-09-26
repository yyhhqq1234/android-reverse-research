package com.netease.download.handler;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.downloader.DownloadParams;
import com.netease.download.downloader.TaskParams;
import com.netease.download.task.TaskManager;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class Dispatcher extends Handler {
    private static final String TAG = "Dispatcher";
    private static Dispatcher sDispatcherInstance;
    private static Map<String, TaskParams> sTaskParamsMap = new HashMap();
    private Context mContext;
    public String mSessionId;

    public static Map<String, TaskParams> getTaskParamsMap() {
        return sTaskParamsMap;
    }

    private Dispatcher() {
        super(CommonHandlerThread.getInstance().getLooper());
        this.mSessionId = null;
        if (TextUtils.isEmpty(this.mSessionId)) {
            Date date = new Date();
            DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
            String time = format.format(date);
            this.mSessionId = String.valueOf(time) + StrUtil.getFixLenthString(9);
        }
    }

    public static Dispatcher getInstance() {
        if (sDispatcherInstance == null) {
            synchronized (Dispatcher.class) {
                if (sDispatcherInstance == null) {
                    sDispatcherInstance = new Dispatcher();
                }
            }
        }
        return sDispatcherInstance;
    }

    public void start(Context pContext, DownloadParams pParams) {
        LogUtil.i(TAG, "Dispatcher [start]");
        this.mContext = pContext;
        sendMessage(obtainMessage(1, new Property(pContext, pParams)));
    }

    public void startSyn(Context pContext, List<DownloadParams> listParams) {
        LogUtil.i(TAG, "Dispatcher [startSyn]");
        this.mContext = pContext;
        sendMessage(obtainMessage(11, listParams));
    }

    public void startPart(Context pContext, DownloadParams... pParams) {
        int i = 1;
        for (DownloadParams params : pParams) {
            i++;
            sendMessage(obtainMessage(1, new Property(pContext, params)));
        }
    }

    public void stop(DownloadParams... pParams) {
        for (DownloadParams param : pParams) {
            sendMessage(obtainMessage(6, param));
        }
    }

    public void stopTask(List<DownloadParams> pParams) {
        LogUtil.i(TAG, "一共需要停止的个数= " + pParams.size());
        for (DownloadParams param : pParams) {
            sendMessage(obtainMessage(6, param));
        }
    }

    public void restartPaused(boolean pNowIsMobile) {
        sendMessage(obtainMessage(8, pNowIsMobile ? 1 : 0, 0));
    }

    public void forceFinish() {
        sendEmptyMessageDelayed(9, 5000L);
    }

    public void notifyNetworkChanged() {
        sendEmptyMessage(10);
    }

    @Override // android.os.Handler
    public void handleMessage(Message pMsg) {
        switch (pMsg.what) {
            case 10:
            default:
                return;
            case 11:
                ArrayList<DownloadParams> paramList = (ArrayList) pMsg.obj;
                if (paramList != null) {
                    TaskManager.startSynNewTask(this.mContext, paramList);
                    return;
                }
                return;
        }
    }

    /* loaded from: classes.dex */
    private static class Property {
        Context context;
        DownloadParams param;

        Property(Context pContext, DownloadParams pParam) {
            this.context = pContext;
            this.param = pParam;
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
