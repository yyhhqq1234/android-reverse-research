package com.netease.pharos;

import android.content.Context;
import android.util.Log;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.deviceinfo.DevicesInfoProxy;
import com.netease.pharos.linkcheck.LinkCheckProxy;
import com.netease.pharos.linkcheck.LinkCheckResult;
import com.netease.pharos.location.LocationCheckProxy;
import com.netease.pharos.qos.HighSpeedListCoreProxy;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PharosProxy {
    private static final String TAG = "PharosProxy";
    private static PharosProxy sPharosProxy = null;
    private Context mContext = null;
    private String mProjectId = null;
    private String mUdid = null;
    private String mNetId = null;
    private boolean mEB = false;
    private PharosListener mPharosListener = null;
    private String mIp = null;
    private String mPort = null;
    private String mHighSpeedUrl = null;
    private int mOption = 1;
    private int mDecision = 0;
    private boolean mIsDebug = true;
    private boolean mHasSet = false;
    private JSONArray mPorts = null;

    private PharosProxy() {
    }

    public Context getmContext() {
        return this.mContext;
    }

    public boolean isDebug() {
        return this.mIsDebug;
    }

    public void setDebug(boolean isDebug) {
        this.mIsDebug = isDebug;
    }

    public boolean ismHasSet() {
        return this.mHasSet;
    }

    public void setmHasSet(boolean mHasSet) {
        this.mHasSet = mHasSet;
    }

    public String getmIp() {
        return this.mIp;
    }

    public void setmIp(String mIp) {
        this.mIp = mIp;
    }

    public String getmPort() {
        return this.mPort;
    }

    public void setmPort(String mPort) {
        this.mPort = mPort;
    }

    public String getmHighSpeedUrl() {
        return this.mHighSpeedUrl;
    }

    public void setmHighSpeedUrl(String mHighSpeedUrl) {
        this.mHighSpeedUrl = mHighSpeedUrl;
    }

    public int getmDecision() {
        return this.mDecision;
    }

    public void setmDecision(int mDecision) {
        this.mDecision = mDecision;
    }

    public String getmProjectId() {
        return this.mProjectId;
    }

    public String getmUdid() {
        return this.mUdid;
    }

    public String getmNetId() {
        return this.mNetId;
    }

    public void setmOption(int mOption) {
        this.mOption = mOption;
    }

    public int getmOption() {
        return this.mOption;
    }

    public PharosListener getmPharosListener() {
        return this.mPharosListener;
    }

    public boolean ismEB() {
        return this.mEB;
    }

    public void setmEB(boolean mEB) {
        this.mEB = mEB;
    }

    public String getmLinktestId() {
        String linktestId = LinkCheckResult.getInstance().getmLinktestId();
        if (linktestId == null) {
            return "";
        }
        return linktestId;
    }

    public void setmPharosListener(PharosListener mPharosListener) {
        this.mPharosListener = mPharosListener;
        if (mPharosListener == null) {
            LogUtil.i(TAG, "mPharosListener 为 null");
        } else {
            LogUtil.i(TAG, "mPharosListener 不为 null");
        }
    }

    public static PharosProxy getInstance() {
        if (sPharosProxy == null) {
            sPharosProxy = new PharosProxy();
        }
        return sPharosProxy;
    }

    public void init(Context context, String projectId) {
        this.mContext = context;
        this.mProjectId = projectId;
        this.mUdid = Util.getDeviceId(context);
        if (!this.mHasSet) {
            this.mIsDebug = Util.isApkDebugable(context);
        }
        Log.i(TAG, "Pharos isDebug = " + this.mIsDebug);
        LogUtil.setIsShowLog(this.mIsDebug);
        this.mNetId = String.valueOf(this.mUdid) + "-" + System.currentTimeMillis();
    }

    public void pharosFunc(JSONObject paramJson) {
    }

    public JSONArray getmPorts() {
        return this.mPorts;
    }

    public void setmPorts(JSONArray mPorts) {
        this.mPorts = mPorts;
    }

    public void start() {
        new Thread(new Runnable() { // from class: com.netease.pharos.PharosProxy.1
            @Override // java.lang.Runnable
            public void run() {
                int DevicesResult = 0;
                if (!DevicesInfoProxy.getInstances().isStart()) {
                    LogUtil.i(PharosProxy.TAG, "网络监控----设备探测");
                    DevicesInfoProxy.getInstances().init(PharosProxy.this.mContext);
                    DevicesResult = DevicesInfoProxy.getInstances().start();
                }
                LogUtil.i(PharosProxy.TAG, "网络监控----设备探测，结果=" + DeviceInfo.getInstances().getDeviceInfo(false));
                LogUtil.i(PharosProxy.TAG, "网络监控----设备探测，返回码=" + DevicesResult);
                int LocationResult = 0;
                if (!LocationCheckProxy.getInstances().isStart()) {
                    LogUtil.i(PharosProxy.TAG, "网络监控----区域决策");
                    LocationResult = LocationCheckProxy.getInstances().start();
                }
                LogUtil.i(PharosProxy.TAG, "网络监控----区域决策，结果=" + DeviceInfo.getInstances().getDeviceInfo(false));
                LogUtil.i(PharosProxy.TAG, "网络监控----区域决策，返回码=" + LocationResult);
                if (DevicesResult == 0 && LocationResult == 0) {
                    LogUtil.i(PharosProxy.TAG, "网络监控----链路探测");
                    LinkCheckProxy.getInstance().start();
                    LogUtil.i(PharosProxy.TAG, "网络监控----链路探测，结束");
                }
                LogUtil.i(PharosProxy.TAG, "获取高速列表");
                HighSpeedListCoreProxy.getInstance().init();
                HighSpeedListCoreProxy.getInstance().start();
            }
        }).start();
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
