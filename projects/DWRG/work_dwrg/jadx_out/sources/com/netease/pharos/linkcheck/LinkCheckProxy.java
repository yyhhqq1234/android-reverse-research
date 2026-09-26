package com.netease.pharos.linkcheck;

import android.text.TextUtils;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.pharos.PharosListener;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.qos.QosProxy;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LinkCheckProxy {
    private static final String TAG = "LinkCheckProxy";
    public static LinkCheckProxy sLinkCheckProxy = null;
    private boolean isCycle = false;
    private boolean isStarting = false;
    private volatile ArrayList<String> mCycleList = new ArrayList<>();
    private volatile ArrayList<String> mOnceList = new ArrayList<>();
    private volatile ArrayList<String> mStopList = new ArrayList<>();
    private JSONObject mPharosResultCache = null;
    private CycleTaskStopListener mCycleTaskStopListener = new CycleTaskStopListener() { // from class: com.netease.pharos.linkcheck.LinkCheckProxy.1
        @Override // com.netease.pharos.linkcheck.CycleTaskStopListener
        public void callBack(String extra) {
            LogUtil.i(LinkCheckProxy.TAG, "该任务已经结束=" + extra);
            LinkCheckProxy.this.mStopList.add(extra);
            if (LinkCheckProxy.this.mCycleList != null && LinkCheckProxy.this.mCycleList.size() > 0 && LinkCheckProxy.this.mStopList.size() > 0 && LinkCheckProxy.this.mStopList.containsAll(LinkCheckProxy.this.mCycleList)) {
                LogUtil.i(LinkCheckProxy.TAG, "结束一次周期");
                LogUtil.i(LinkCheckProxy.TAG, "重新发起一次周期");
                LinkCheckProxy.this.isCycle = false;
                LinkCheckProxy.this.isStarting = false;
                LinkCheckProxy.this.mStopList.clear();
                LinkCheckProxy.this.start();
            }
        }
    };
    private ConfigInfoListener mConfigInfoListener = new ConfigInfoListener() { // from class: com.netease.pharos.linkcheck.LinkCheckProxy.2
        @Override // com.netease.pharos.linkcheck.ConfigInfoListener
        public void callBack(boolean cycle, String extra) {
            LogUtil.i(LinkCheckProxy.TAG, "mConfigInfoListener mOnceList=" + LinkCheckProxy.this.mOnceList.toString());
            if (!LinkCheckProxy.this.mOnceList.contains(extra)) {
                LinkCheckProxy.this.mOnceList.add(extra);
            }
            if (cycle) {
                LogUtil.i(LinkCheckProxy.TAG, "mConfigInfoListener cycle=" + cycle + ", extra=" + extra);
                LinkCheckProxy.this.isCycle = cycle;
                if (!LinkCheckProxy.this.mCycleList.contains(extra)) {
                    LinkCheckProxy.this.mCycleList.add(extra);
                }
            }
        }
    };

    private LinkCheckProxy() {
    }

    public ArrayList<String> getmCycleList() {
        return this.mCycleList;
    }

    public void setmCycleList(ArrayList<String> mCycleList) {
        this.mCycleList = mCycleList;
    }

    public ArrayList<String> getmOnceList() {
        return this.mOnceList;
    }

    public void setmOnceList(ArrayList<String> mOnceList) {
        this.mOnceList = mOnceList;
    }

    public void cleanOnceList() {
        this.mOnceList.clear();
    }

    public JSONObject getmPharosResultCache() {
        return this.mPharosResultCache;
    }

    public void setmPharosResultCache(JSONObject mPharosResultCache) {
        this.mPharosResultCache = mPharosResultCache;
    }

    public static LinkCheckProxy getInstance() {
        if (sLinkCheckProxy == null) {
            sLinkCheckProxy = new LinkCheckProxy();
        }
        return sLinkCheckProxy;
    }

    public int downloadRegionConfig() {
        LogUtil.i(TAG, "下载配置文件");
        String region = DeviceInfo.getInstances().getmRegion();
        if (TextUtils.isEmpty(region)) {
            region = "cn";
        }
        String url = String.format(Const.REGION_CONFIG_URL, region);
        RegionConfigCore regionConfigCore = new RegionConfigCore();
        regionConfigCore.init(url);
        int result = regionConfigCore.start();
        return result;
    }

    public void start() {
        LogUtil.i(TAG, "isStarting=" + this.isStarting + ", isCycle=" + this.isCycle);
        if (this.isStarting) {
            LogUtil.i(TAG, "任务已经进行中");
            PharosListener listener = PharosProxy.getInstance().getmPharosListener();
            if (listener != null) {
                JSONObject callBackInfo = getInstance().getCallBackInfo();
                if (callBackInfo != null) {
                    listener.onResult(callBackInfo);
                } else {
                    LogUtil.i(TAG, "callBackInfo is null");
                }
                JSONObject qosResult = QosProxy.getInstance().getQosResult();
                if (qosResult != null) {
                    listener.onResult(qosResult);
                    return;
                } else {
                    LogUtil.i(TAG, "qosResult is null");
                    return;
                }
            }
            return;
        }
        if (this.isCycle) {
            LogUtil.i(TAG, "任务存在循环机制，不能再次启动");
            PharosListener listener2 = PharosProxy.getInstance().getmPharosListener();
            if (listener2 != null) {
                JSONObject callBackInfo2 = getInstance().getCallBackInfo();
                if (callBackInfo2 != null) {
                    listener2.onResult(callBackInfo2);
                } else {
                    LogUtil.i(TAG, "callBackInfo is null");
                }
                JSONObject qosResult2 = QosProxy.getInstance().getQosResult();
                if (qosResult2 != null) {
                    listener2.onResult(qosResult2);
                    return;
                } else {
                    LogUtil.i(TAG, "qosResult is null");
                    return;
                }
            }
            return;
        }
        this.mCycleList.clear();
        this.mOnceList.clear();
        new Thread(new Runnable() { // from class: com.netease.pharos.linkcheck.LinkCheckProxy.3
            @Override // java.lang.Runnable
            public void run() {
                LinkCheckProxy.this.isStarting = true;
                LogUtil.i(LinkCheckProxy.TAG, "发起一次探测周期");
                int result = LinkCheckProxy.this.downloadRegionConfig();
                LogUtil.i(LinkCheckProxy.TAG, "下载配置文件结果=" + result);
                if (result == 0) {
                    ScanProxy.getInstance().init(LinkCheckProxy.this.mCycleTaskStopListener, LinkCheckProxy.this.mConfigInfoListener);
                    ScanProxy.getInstance().start();
                }
                LinkCheckProxy.this.isStarting = false;
            }
        }).start();
    }

    public JSONObject getPharosResultInfo() {
        JSONObject result = new JSONObject();
        String linktestId = LinkCheckResult.getInstance().getmLinktestId();
        String deviceInfo = DeviceInfo.getInstances().getDeviceInfo(true);
        String linkCheckResult = LinkCheckResult.getInstance().getLinkCheckResultInfo();
        JSONObject deviceInfoJson = null;
        JSONObject linkCheckResultJson = null;
        try {
            if (!TextUtils.isEmpty(deviceInfo)) {
                deviceInfoJson = new JSONObject(deviceInfo);
            }
            if (!TextUtils.isEmpty(linkCheckResult)) {
                linkCheckResultJson = new JSONObject(linkCheckResult);
            }
        } catch (Exception e) {
            LogUtil.w(TAG, "getCallBackInfo Exception=" + e);
        }
        try {
            result.put("linktest_id", linktestId);
            result.put("policy", deviceInfoJson);
            result.put("probe", linkCheckResultJson);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return result;
    }

    public JSONObject getCallBackInfo() {
        JSONObject result = getInstance().getmPharosResultCache();
        if (result != null) {
            LogUtil.i(TAG, "options=" + PharosProxy.getInstance().getmOption());
            if (PharosProxy.getInstance().getmOption() != 33) {
                result.remove("probe");
            }
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
