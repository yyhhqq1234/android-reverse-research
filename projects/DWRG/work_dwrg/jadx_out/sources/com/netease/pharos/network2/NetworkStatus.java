package com.netease.pharos.network2;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class NetworkStatus {
    private static final String TAG = "NetworkStatus";
    private static NetworkStatus sNetworkStatus = null;
    private int sPreValidStatus;
    private final int STATUS_NONE = 0;
    private final int STATUS_WIFI = 1;
    private final int STATUS_MOBILE = 2;
    private boolean sNeedRefresh = false;
    private boolean sIsInit = false;

    private NetworkStatus() {
    }

    public static NetworkStatus getInstance() {
        if (sNetworkStatus == null) {
            sNetworkStatus = new NetworkStatus();
        }
        return sNetworkStatus;
    }

    public void initialize(Context context) {
        int i;
        if (!this.sIsInit) {
            if (isConnectedWifi(context)) {
                i = 1;
            } else {
                i = isConnectedMobile(context) ? 2 : 0;
            }
            this.sPreValidStatus = i;
            this.sIsInit = true;
        }
    }

    public void change(Context context) {
        LogUtil.i(TAG, "NetworkStatus [change]");
        boolean isNowConnected = isConnected(context);
        LogUtil.i(TAG, "NetworkStatus [change] 当前网络连接状态=" + isNowConnected + ", 之前的网络状态=" + this.sPreValidStatus);
        int code = 0;
        if (isConnectedWifi(context)) {
            LogUtil.i(TAG, "连接的是WIFI网络");
            code = 1;
        } else if (isConnectedMobile(context)) {
            LogUtil.i(TAG, "连接的是移动网络");
            code = 2;
        }
        if (this.sPreValidStatus != 0 && !isNowConnected) {
            LogUtil.i(TAG, "没有网络连接,停止掉所有任务");
            PharosProxy.getInstance().clean();
        }
        if (this.sPreValidStatus == 0 && isNowConnected) {
            LogUtil.i(TAG, "有网络连接，重新启动所有任务");
            PharosProxy.getInstance().start();
        }
        if (this.sPreValidStatus != 0 && isNowConnected && code != this.sPreValidStatus) {
            LogUtil.i(TAG, "网络状态发生了改变，原来是" + this.sPreValidStatus + ", 现在是" + code);
            this.sNeedRefresh = true;
        }
        this.sPreValidStatus = code;
    }

    private boolean needRefresh() {
        boolean result = this.sNeedRefresh;
        this.sNeedRefresh = false;
        return result;
    }

    private NetworkInfo getNetworkInfo(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        return cm.getActiveNetworkInfo();
    }

    private boolean isConnected(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        return info != null && info.isConnected();
    }

    private boolean isConnectedWifi(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        return info != null && info.isConnected() && info.getType() == 1;
    }

    private boolean isConnectedMobile(Context context) {
        NetworkInfo info = getNetworkInfo(context);
        return info != null && info.isConnected() && info.getType() == 0;
    }

    private int getNetStatus() {
        return this.sPreValidStatus;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
