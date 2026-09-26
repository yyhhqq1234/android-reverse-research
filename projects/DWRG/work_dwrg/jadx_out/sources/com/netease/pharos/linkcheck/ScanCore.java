package com.netease.pharos.linkcheck;

import android.text.TextUtils;
import com.netease.environment.config.SdkConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.link.LinkCheckListener;
import com.netease.pharos.link.NetmonProxy;
import com.netease.pharos.util.LogUtil;
import com.netease.push.utils.PushConstants;
import com.sina.weibo.sdk.constant.WBPageConstants;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ScanCore implements Callable<Integer> {
    private static final String TAG = "ScanCore";
    private String mStyle = null;
    private LinkCheckListener mListener = null;
    private CycleTaskStopListener mCycleTaskStopListener = null;
    private ConfigInfoListener mConfigInfoListener = null;
    private CheckOverNotifyListener mCheckOverNotifyListener = null;

    public void init(String style, LinkCheckListener listener, CycleTaskStopListener cycleTaskStopListener, ConfigInfoListener configInfoListener, CheckOverNotifyListener checkOverNotifyListener) {
        this.mStyle = style;
        this.mListener = listener;
        this.mCycleTaskStopListener = cycleTaskStopListener;
        this.mConfigInfoListener = configInfoListener;
        this.mCheckOverNotifyListener = checkOverNotifyListener;
    }

    public int startOnceNapIcmp() {
        LogUtil.i(TAG, "NapIcmp 探测");
        boolean enable = RegionConfigInfo.getInstance().getEnable();
        int interval = RegionConfigInfo.getInstance().getInterval();
        JSONObject json = RegionConfigInfo.getInstance().getNapIcmp();
        boolean napIcmpEnable = false;
        boolean napIcmpCycle = false;
        if (json != null) {
            try {
                if (json.has(SdkConstants.JSON_KEY_ENABLE)) {
                    napIcmpEnable = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
                }
                if (json.has("cycle")) {
                    napIcmpCycle = json.getBoolean("cycle");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        String gateWay = DeviceInfo.getInstances().getGateway();
        int count = 10;
        if (json.has(WBPageConstants.ParamKey.COUNT)) {
            try {
                count = json.getInt(WBPageConstants.ParamKey.COUNT);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        LogUtil.i(TAG, "NapIcmp---enable=" + enable + ", napIcmpEnable=" + napIcmpEnable + ", interval=" + interval + ", gateWay=" + gateWay + ", count=" + count);
        if (enable && napIcmpEnable) {
            if (interval >= 10 && interval <= 60 && napIcmpCycle) {
                if (this.mConfigInfoListener != null) {
                    this.mConfigInfoListener.callBack(true, "nap_icmp");
                }
                LogUtil.i(TAG, "NapIcmp 探测 周期处理");
                NetmonProxy.getInstance().addNetmonCore(4, gateWay, -1, count, Const.TIME_OUT, -1, this.mListener, interval, this.mCycleTaskStopListener, this.mCheckOverNotifyListener, "nap_icmp");
                return 0;
            }
            LogUtil.i(TAG, "NapIcmp 探测 一次性处理");
            if (this.mConfigInfoListener != null) {
                this.mConfigInfoListener.callBack(false, "nap_icmp");
            }
            NetmonProxy.getInstance().addNetmonCore(4, gateWay, -1, count, Const.TIME_OUT, -1, this.mListener, 0, null, null, "nap_icmp");
            return 11;
        }
        this.mCheckOverNotifyListener.callBack("nap_icmp");
        LogUtil.i(TAG, "enable == 0, NapIcmp 探测 不执行");
        return 11;
    }

    public int startOnceRapIcmp() {
        LogUtil.i(TAG, "RapIcmp 探测");
        int result = 11;
        boolean enable = RegionConfigInfo.getInstance().getEnable();
        int interval = RegionConfigInfo.getInstance().getInterval();
        JSONObject json = RegionConfigInfo.getInstance().getRapIcmp();
        boolean napIcmpEnable = false;
        boolean napIcmpCycle = false;
        if (json != null) {
            try {
                if (json.has(SdkConstants.JSON_KEY_ENABLE)) {
                    napIcmpEnable = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
                }
                if (json.has("cycle")) {
                    napIcmpCycle = json.getBoolean("cycle");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        String dest = null;
        int count = 10;
        try {
            if (json.has(WBPageConstants.ParamKey.COUNT)) {
                count = json.getInt(WBPageConstants.ParamKey.COUNT);
            }
            if (json.has("dest")) {
                dest = json.getString("dest");
            }
        } catch (Exception e2) {
            LogUtil.w(TAG, "Exception=" + e2);
        }
        if (dest == null) {
            return 11;
        }
        LogUtil.i(TAG, "RapIcmp---enable=" + enable + ", napIcmpEnable=" + napIcmpEnable + ", dest=" + dest + ", count=" + count);
        if (enable && napIcmpEnable) {
            if (interval >= 10 && interval <= 60 && napIcmpCycle) {
                LogUtil.i(TAG, "RapIcmp 探测 周期处理");
                if (this.mConfigInfoListener != null) {
                    this.mConfigInfoListener.callBack(true, "rap_icmp");
                }
                NetmonProxy.getInstance().addNetmonCore(4, dest, -1, count, Const.TIME_OUT, -1, this.mListener, interval, this.mCycleTaskStopListener, this.mCheckOverNotifyListener, "rap_icmp");
                result = 0;
            } else {
                LogUtil.i(TAG, "RapIcmp 探测 一次性处理");
                if (this.mConfigInfoListener != null) {
                    this.mConfigInfoListener.callBack(false, "rap_icmp");
                }
                NetmonProxy.getInstance().addNetmonCore(4, dest, -1, count, Const.TIME_OUT, -1, this.mListener, 0, null, null, "rap_icmp");
            }
        } else {
            this.mCheckOverNotifyListener.callBack("rap_icmp");
            LogUtil.i(TAG, "enable == 0, RapIcmp 探测 不执行");
        }
        return result;
    }

    public int startOnceRapTransfer() {
        String[] info;
        LogUtil.i(TAG, "RapTransfer 探测");
        boolean enable = RegionConfigInfo.getInstance().getEnable();
        int interval = RegionConfigInfo.getInstance().getInterval();
        JSONObject json = RegionConfigInfo.getInstance().getRapTransfer();
        boolean napIcmpEnable = false;
        boolean napIcmpCycle = false;
        if (json != null) {
            try {
                if (json.has(SdkConstants.JSON_KEY_ENABLE)) {
                    napIcmpEnable = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
                }
                if (json.has("cycle")) {
                    napIcmpCycle = json.getBoolean("cycle");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        String pProtocal = null;
        int pCount = 10;
        int pPackage = 2;
        String pDest = null;
        String pIp = null;
        int pPort = -1;
        int pStyle = 1;
        try {
            if (json.has("protocol")) {
                pProtocal = json.getString("protocol");
            }
            if (json.has(WBPageConstants.ParamKey.COUNT)) {
                pCount = json.getInt(WBPageConstants.ParamKey.COUNT);
            }
            if (json.has("dest")) {
                pDest = json.getString("dest");
            }
            if (json.has(PushConstants.INTENT_PACKAGE_NAME)) {
                pPackage = json.getInt(PushConstants.INTENT_PACKAGE_NAME);
            }
            if (!TextUtils.isEmpty(pProtocal)) {
                if ("tcp".equals(pProtocal)) {
                    pStyle = 1;
                } else if ("kcp".equals(pProtocal)) {
                    pStyle = 3;
                }
            }
            if (!TextUtils.isEmpty(pDest) && (info = pDest.split(com.netease.download.Const.RESP_CONTENT_SPIT2)) != null && info.length > 1) {
                pIp = info[0];
                try {
                    pPort = Integer.parseInt(info[1]);
                } catch (Exception e2) {
                    LogUtil.w(TAG, "Exception=" + e2);
                }
            }
        } catch (Exception e3) {
            LogUtil.w(TAG, "Exception=" + e3);
        }
        LogUtil.i(TAG, "RapTransfer---pStyle=" + pStyle + ",pIp=" + pIp + ",pPort=" + pPort + ", pCount=" + pCount + ", pPackage=" + (pPackage * 1024));
        if (enable && napIcmpEnable && !TextUtils.isEmpty(pIp) && -1 != pPort) {
            if (interval >= 10 && interval <= 60 && napIcmpCycle) {
                LogUtil.i(TAG, "周期处理");
                if (this.mConfigInfoListener != null) {
                    this.mConfigInfoListener.callBack(true, "rap_transfer");
                }
                NetmonProxy.getInstance().addNetmonCore(pStyle, pIp, pPort, pCount, Const.TIME_OUT, pPackage * 1024, this.mListener, interval, this.mCycleTaskStopListener, this.mCheckOverNotifyListener, "rap_transfer");
                return 0;
            }
            LogUtil.i(TAG, "一次性处理");
            if (this.mConfigInfoListener != null) {
                this.mConfigInfoListener.callBack(false, "rap_transfer");
            }
            NetmonProxy.getInstance().addNetmonCore(pStyle, pIp, pPort, pCount, Const.TIME_OUT, pPackage * 1024, this.mListener, 0, null, null, "rap_transfer");
            return 11;
        }
        this.mCheckOverNotifyListener.callBack("rap_transfer");
        LogUtil.i(TAG, "enable == 0, 不执行");
        return 11;
    }

    public int startOnceRapUdp() {
        String[] info;
        LogUtil.i(TAG, "RapUdp 探测");
        boolean enable = RegionConfigInfo.getInstance().getEnable();
        int interval = RegionConfigInfo.getInstance().getInterval();
        JSONObject json = RegionConfigInfo.getInstance().getRapUdp();
        boolean napIcmpEnable = false;
        boolean napIcmpCycle = false;
        if (json != null) {
            try {
                if (json.has(SdkConstants.JSON_KEY_ENABLE)) {
                    napIcmpEnable = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
                }
                if (json.has("cycle")) {
                    napIcmpCycle = json.getBoolean("cycle");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        int pCount = 10;
        int pPackage = 16;
        String pDest = null;
        String pIp = null;
        int pPort = -1;
        try {
            if (json.has(WBPageConstants.ParamKey.COUNT)) {
                pCount = json.getInt(WBPageConstants.ParamKey.COUNT);
            }
            if (json.has("dest")) {
                pDest = json.getString("dest");
            }
            if (json.has(PushConstants.INTENT_PACKAGE_NAME)) {
                pPackage = json.getInt(PushConstants.INTENT_PACKAGE_NAME);
            }
            if (!TextUtils.isEmpty(pDest) && (info = pDest.split(com.netease.download.Const.RESP_CONTENT_SPIT2)) != null && info.length > 1) {
                pIp = info[0];
                try {
                    pPort = Integer.parseInt(info[1]);
                } catch (Exception e2) {
                    LogUtil.w(TAG, "Exception=" + e2);
                }
            }
        } catch (Exception e3) {
            LogUtil.w(TAG, "Exception=" + e3);
        }
        LogUtil.i(TAG, "RapUdp---pIp=" + pIp + ",pPort=" + pPort + ", pCount=" + pCount + ", pPackage=" + (pPackage * 1024));
        if (enable && napIcmpEnable) {
            if (interval >= 10 && interval <= 60 && napIcmpCycle) {
                LogUtil.i(TAG, "周期处理");
                if (this.mConfigInfoListener != null) {
                    this.mConfigInfoListener.callBack(true, "rap_udp");
                }
                NetmonProxy.getInstance().addNetmonCore(2, pIp, pPort, pCount, Const.TIME_OUT, pPackage * 32, this.mListener, interval, this.mCycleTaskStopListener, this.mCheckOverNotifyListener, "rap_udp");
                return 0;
            }
            LogUtil.i(TAG, "一次性处理");
            if (this.mConfigInfoListener != null) {
                this.mConfigInfoListener.callBack(false, "rap_udp");
            }
            NetmonProxy.getInstance().addNetmonCore(2, pIp, pPort, pCount, Const.TIME_OUT, pPackage * 32, this.mListener, 0, null, null, "rap_udp");
            return 11;
        }
        this.mCheckOverNotifyListener.callBack("rap_udp");
        LogUtil.i(TAG, "enable == 0, 不执行");
        return 11;
    }

    public void startOnceRapMtr() {
        LogUtil.i(TAG, "RapMtr 探测");
        boolean enable = RegionConfigInfo.getInstance().getEnable();
        int interval = RegionConfigInfo.getInstance().getInterval();
        JSONObject json = RegionConfigInfo.getInstance().getRapMtr();
        boolean napIcmpEnable = false;
        boolean napIcmpCycle = false;
        if (json != null) {
            try {
                if (json.has(SdkConstants.JSON_KEY_ENABLE)) {
                    napIcmpEnable = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
                }
                if (json.has("cycle")) {
                    napIcmpCycle = json.getBoolean("cycle");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        this.mCheckOverNotifyListener.callBack("rap_mtr");
        if (enable && napIcmpEnable) {
            if (interval >= 10 && interval <= 60 && napIcmpCycle) {
                LogUtil.i(TAG, "周期处理");
                return;
            } else {
                LogUtil.i(TAG, "一次性处理");
                return;
            }
        }
        this.mCheckOverNotifyListener.callBack("rap_mtr");
        LogUtil.i(TAG, "enable == 0, 不执行");
    }

    public int startOnceSapTransfer() {
        String[] info;
        LogUtil.i(TAG, "SapTransfer 探测");
        boolean enable = RegionConfigInfo.getInstance().getEnable();
        int interval = RegionConfigInfo.getInstance().getInterval();
        JSONObject json = RegionConfigInfo.getInstance().getSapTransfer();
        boolean napIcmpEnable = false;
        boolean napIcmpCycle = false;
        if (json != null) {
            try {
                if (json.has(SdkConstants.JSON_KEY_ENABLE)) {
                    napIcmpEnable = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
                }
                if (json.has("cycle")) {
                    napIcmpCycle = json.getBoolean("cycle");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        int pCount = 10;
        int pPackage = 2;
        String pDest = null;
        String pIp = null;
        int pPort = -1;
        int pStyle = 1;
        try {
            if (json.has(WBPageConstants.ParamKey.COUNT)) {
                pCount = json.getInt(WBPageConstants.ParamKey.COUNT);
            }
            if (json.has("dest")) {
                pDest = json.getString("dest");
            }
            if (json.has(PushConstants.INTENT_PACKAGE_NAME)) {
                pPackage = json.getInt(PushConstants.INTENT_PACKAGE_NAME);
            }
            if (!TextUtils.isEmpty(null)) {
                if (!"tcp".equals(null)) {
                    if ("kcp".equals(null)) {
                        pStyle = 3;
                    }
                } else {
                    pStyle = 1;
                }
            }
            if (!TextUtils.isEmpty(pDest) && (info = pDest.split(com.netease.download.Const.RESP_CONTENT_SPIT2)) != null && info.length > 1) {
                pIp = info[0];
                try {
                    pPort = Integer.parseInt(info[1]);
                } catch (Exception e2) {
                    LogUtil.w(TAG, "Exception=" + e2);
                }
            }
        } catch (Exception e3) {
            LogUtil.w(TAG, "Exception=" + e3);
        }
        LogUtil.i(TAG, "SapTransfer---pStyle=" + pStyle + ",pIp=" + pIp + ",pPort=" + pPort + ", pCount=" + pCount + ", pPackage=" + (pPackage * 1024));
        if (enable && napIcmpEnable) {
            if (interval >= 10 && interval <= 60 && napIcmpCycle) {
                LogUtil.i(TAG, "周期处理");
                if (this.mConfigInfoListener != null) {
                    this.mConfigInfoListener.callBack(true, "sap_transfer");
                }
                NetmonProxy.getInstance().addNetmonCore(pStyle, pIp, pPort, pCount, Const.TIME_OUT, pPackage * 1024, this.mListener, interval, this.mCycleTaskStopListener, this.mCheckOverNotifyListener, "sap_transfer");
                return 0;
            }
            LogUtil.i(TAG, "一次性处理");
            if (this.mConfigInfoListener != null) {
                this.mConfigInfoListener.callBack(false, "sap_transfer");
            }
            NetmonProxy.getInstance().addNetmonCore(pStyle, pIp, pPort, pCount, Const.TIME_OUT, pPackage * 1024, this.mListener, 0, null, null, "sap_transfer");
            return 11;
        }
        this.mCheckOverNotifyListener.callBack("sap_transfer");
        LogUtil.i(TAG, "enable == 0, 不执行");
        return 11;
    }

    public int startOnceSapUdp() {
        String[] info;
        LogUtil.i(TAG, "SapUdp 探测");
        boolean enable = RegionConfigInfo.getInstance().getEnable();
        int interval = RegionConfigInfo.getInstance().getInterval();
        JSONObject json = RegionConfigInfo.getInstance().getSapUdp();
        boolean napIcmpEnable = false;
        boolean napIcmpCycle = false;
        if (json != null) {
            try {
                if (json.has(SdkConstants.JSON_KEY_ENABLE)) {
                    napIcmpEnable = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
                }
                if (json.has("cycle")) {
                    napIcmpCycle = json.getBoolean("cycle");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        int pCount = 10;
        int pPackage = 16;
        String pDest = null;
        String pIp = null;
        int pPort = -1;
        try {
            if (json.has(WBPageConstants.ParamKey.COUNT)) {
                pCount = json.getInt(WBPageConstants.ParamKey.COUNT);
            }
            if (json.has("dest")) {
                pDest = json.getString("dest");
            }
            if (json.has(PushConstants.INTENT_PACKAGE_NAME)) {
                pPackage = json.getInt(PushConstants.INTENT_PACKAGE_NAME);
            }
            if (!TextUtils.isEmpty(pDest) && (info = pDest.split(com.netease.download.Const.RESP_CONTENT_SPIT2)) != null && info.length > 1) {
                pIp = info[0];
                try {
                    pPort = Integer.parseInt(info[1]);
                } catch (Exception e2) {
                    LogUtil.w(TAG, "Exception=" + e2);
                }
            }
        } catch (Exception e3) {
            LogUtil.w(TAG, "Exception=" + e3);
        }
        LogUtil.i(TAG, "SapUdp---pIp=" + pIp + ",pPort=" + pPort + ", pCount=" + pCount + ", pPackage=" + (pPackage * 1024));
        if (enable && napIcmpEnable) {
            if (interval >= 10 && interval <= 60 && napIcmpCycle) {
                LogUtil.i(TAG, "周期处理");
                if (this.mConfigInfoListener != null) {
                    this.mConfigInfoListener.callBack(true, "sap_udp");
                }
                NetmonProxy.getInstance().addNetmonCore(2, pIp, pPort, pCount, Const.TIME_OUT, pPackage * 32, this.mListener, interval, this.mCycleTaskStopListener, this.mCheckOverNotifyListener, "sap_udp");
                return 0;
            }
            LogUtil.i(TAG, "一次性处理");
            if (this.mConfigInfoListener != null) {
                this.mConfigInfoListener.callBack(false, "sap_udp");
            }
            NetmonProxy.getInstance().addNetmonCore(2, pIp, pPort, pCount, Const.TIME_OUT, pPackage * 32, this.mListener, 0, null, null, "sap_udp");
            return 11;
        }
        this.mCheckOverNotifyListener.callBack("sap_udp");
        LogUtil.i(TAG, "enable == 0, 不执行");
        return 11;
    }

    public int startOnceResolve() {
        LogUtil.i(TAG, "Resolve 探测");
        boolean enable = RegionConfigInfo.getInstance().getEnable();
        int interval = RegionConfigInfo.getInstance().getInterval();
        JSONObject json = RegionConfigInfo.getInstance().getResolve();
        boolean napIcmpEnable = false;
        boolean napIcmpCycle = false;
        if (json != null) {
            try {
                if (json.has(SdkConstants.JSON_KEY_ENABLE)) {
                    napIcmpEnable = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
                }
                if (json.has("cycle")) {
                    napIcmpCycle = json.getBoolean("cycle");
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        String pDest = null;
        try {
            if (json.has("dest")) {
                pDest = json.getString("dest");
            }
        } catch (Exception e2) {
            LogUtil.w(TAG, "Exception=" + e2);
        }
        LogUtil.i(TAG, "Resolve---pDest=" + pDest);
        if (enable && napIcmpEnable) {
            if (interval >= 10 && interval <= 60 && napIcmpCycle) {
                LogUtil.i(TAG, "周期处理");
                if (this.mConfigInfoListener != null) {
                    this.mConfigInfoListener.callBack(true, "resolve");
                }
                NetmonProxy.getInstance().addNetmonCore(5, pDest, 0, 0, 0, 0, this.mListener, interval, this.mCycleTaskStopListener, this.mCheckOverNotifyListener, "resolve");
                return 0;
            }
            LogUtil.i(TAG, "一次性处理");
            if (this.mConfigInfoListener != null) {
                this.mConfigInfoListener.callBack(false, "resolve");
            }
            NetmonProxy.getInstance().addNetmonCore(5, pDest, 0, 0, 0, 0, this.mListener, 0, null, null, "resolve");
            return 11;
        }
        this.mCheckOverNotifyListener.callBack("resolve");
        LogUtil.i(TAG, "enable == 0, 不执行");
        return 11;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        int result = 0;
        LogUtil.i(TAG, "mStyle=" + this.mStyle);
        if (this.mStyle.equals("nap_icmp")) {
            result = startOnceNapIcmp();
        } else if (this.mStyle.equals("rap_icmp")) {
            result = startOnceRapIcmp();
        } else if (this.mStyle.equals("rap_udp")) {
            result = startOnceRapUdp();
        } else if (this.mStyle.equals("rap_transfer")) {
            result = startOnceRapTransfer();
        } else if (this.mStyle.equals("rap_mtr")) {
            startOnceRapMtr();
        } else if (this.mStyle.equals("sap_udp")) {
            startOnceSapUdp();
        } else if (this.mStyle.equals("sap_transfer")) {
            result = startOnceSapTransfer();
        } else if (this.mStyle.equals("resolve")) {
            result = startOnceResolve();
        }
        return Integer.valueOf(result);
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
