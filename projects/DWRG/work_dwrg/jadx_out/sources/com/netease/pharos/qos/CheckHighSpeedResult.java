package com.netease.pharos.qos;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.config.CheckResult;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CheckHighSpeedResult {
    private static final String TAG = "CheckHighSpeedResult";
    private static CheckHighSpeedResult sCheckHighSpeedResult = null;
    private String mProject = null;
    private String mUdid = null;
    private String mNetid = null;
    private String mRegion = null;
    private String mMethod = null;
    private String mIpAddr = null;
    private String mIpPayLoad = null;
    private String mIpSig = null;
    private String mServer = null;
    private String mIp = null;
    private String mPort = null;
    private ArrayList<CheckResult> mHighSpeedUdpResult = null;

    private CheckHighSpeedResult() {
    }

    public static CheckHighSpeedResult getInstance() {
        if (sCheckHighSpeedResult == null) {
            sCheckHighSpeedResult = new CheckHighSpeedResult();
        }
        return sCheckHighSpeedResult;
    }

    public void setHighSpeedUdpResult(ArrayList<CheckResult> highSpeedUdpResult) {
        this.mHighSpeedUdpResult = highSpeedUdpResult;
    }

    public void init(String ip, String port) {
        this.mIp = ip;
        this.mPort = port;
    }

    public JSONObject getResult() {
        String[] infos;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("project", DeviceInfo.getInstances().getProject());
            jSONObject2.put("udid", DeviceInfo.getInstances().getUdid());
            jSONObject2.put("netid", DeviceInfo.getInstances().getNetid());
            jSONObject2.put("region", DeviceInfo.getInstances().getmRegion());
            jSONObject2.put("method", DeviceInfo.getInstances().getmMethod());
            jSONObject2.put("ipaddr", DeviceInfo.getInstances().getIpaddr());
            jSONObject2.put("ip_payload", DeviceInfo.getInstances().getIpPayload());
            jSONObject2.put("ip_sig", DeviceInfo.getInstances().getIpSig());
            JSONArray value = new JSONArray();
            if (this.mHighSpeedUdpResult != null && this.mHighSpeedUdpResult.size() > 0) {
                Iterator<CheckResult> it = this.mHighSpeedUdpResult.iterator();
                while (it.hasNext()) {
                    CheckResult checkResult = it.next();
                    String pExtra = checkResult.getmExtra();
                    String tPort = null;
                    if (!TextUtils.isEmpty(pExtra) && pExtra.contains(",") && (infos = pExtra.split(",")) != null && infos.length > 1) {
                        String tExtra = infos[0];
                        tPort = infos[1];
                    }
                    JSONArray data = new JSONArray();
                    data.put(checkResult.getIp());
                    data.put(tPort);
                    value.put(data);
                }
            }
            JSONArray data2 = new JSONArray();
            if (TextUtils.isEmpty(this.mIp)) {
                this.mIp = "";
            }
            if (TextUtils.isEmpty(this.mPort)) {
                this.mPort = "";
            }
            data2.put(this.mIp);
            data2.put(this.mPort);
            value.put(data2);
            jSONObject2.put("server", value);
        } catch (Exception e) {
            LogUtil.w(TAG, "CheckHighSpeedResult [getResult] Exception1=" + e);
        }
        try {
            jSONObject.put("server", jSONObject2);
        } catch (Exception e2) {
            LogUtil.w(TAG, "CheckHighSpeedResult [getResult] Exception2=" + e2);
        }
        return jSONObject;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
