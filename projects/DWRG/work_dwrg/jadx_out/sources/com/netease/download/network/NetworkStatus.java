package com.netease.download.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.netease.download.Const;
import com.netease.download.downloader.DownloadProxy;
import com.netease.download.handler.Dispatcher;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class NetworkStatus {
    public static final int STATUS_MOBILE = 2;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_WIFI = 1;
    private static final String TAG = "NetworkStatus";
    private static boolean sPreConnected;
    private static int sPreValidStatus;
    private static boolean sNeedRefresh = false;
    private static boolean sIsInit = false;

    public static void initialize(Context context) {
        int i;
        if (!sIsInit) {
            if (isConnectedWifi(context)) {
                i = 1;
            } else {
                i = isConnectedMobile(context) ? 2 : 0;
            }
            sPreValidStatus = i;
            sIsInit = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void change(Context context) {
        ReportInfo.getInstance().mNetworkSwitch = 1;
        boolean isNowConnected = isConnected(context);
        LogUtil.i(TAG, "网络是否连接=" + isNowConnected);
        if (sPreConnected != isNowConnected) {
            sPreConnected = isNowConnected;
        }
        int code = 0;
        if (isConnectedWifi(context)) {
            LogUtil.i(TAG, "连接的是WIFI网络");
            code = 1;
        } else if (isConnectedMobile(context)) {
            LogUtil.i(TAG, "连接的是移动网络");
            code = 2;
        }
        LogUtil.i(TAG, "sPreValidStatus=" + sPreValidStatus + ", isNowConnected=" + isNowConnected);
        if (sPreValidStatus != 0 && !isNowConnected) {
            LogUtil.i(TAG, "没有网络连接,停止掉所有任务");
            NetController.getInstances().setInterruptedCode(13);
            DownloadProxy.stopAll();
        }
        if (sPreValidStatus == 0 && isNowConnected) {
            LogUtil.i(TAG, "有网络连接，重新启动所有任务");
            NetController.getInstances().setInterruptedCode(0);
        }
        if (sPreValidStatus != 0 && code != sPreValidStatus) {
            LogUtil.i(TAG, "网络状态发生了改变，原来是" + sPreValidStatus + ", 现在是" + code);
            Dispatcher.getInstance().notifyNetworkChanged();
            sNeedRefresh = true;
        }
        sPreValidStatus = code;
    }

    public static boolean needRefresh() {
        boolean result = sNeedRefresh;
        sNeedRefresh = false;
        return result;
    }

    private static NetworkInfo getNetworkInfo(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        return cm.getActiveNetworkInfo();
    }

    public static boolean isConnected(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        return info != null && info.isConnected();
    }

    private static boolean isConnectedWifi(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        return info != null && info.isConnected() && info.getType() == 1;
    }

    public static boolean isConnectedMobile(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        return info != null && info.isConnected() && info.getType() == 0;
    }

    public static int getNetStatus() {
        return sPreValidStatus;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
