package com.netease.pharos.deviceinfo;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class NetDnsInfo {
    private static final String TAG = "NetDnsInfo";
    private static NetDnsInfo sNetDnsInfo = null;
    private String mDns_province = null;
    private String mIp_city = null;
    private String mIp = null;
    private String mIp_province = null;
    private String mIp_isp = null;
    private String mRes = null;
    private String mDns_city = null;
    private String mDns_isp = null;
    private String mDns = null;
    private String mMsg = null;

    private NetDnsInfo() {
    }

    public static NetDnsInfo getInstances() {
        if (sNetDnsInfo == null) {
            sNetDnsInfo = new NetDnsInfo();
        }
        return sNetDnsInfo;
    }

    public void init(String resp) {
        LogUtil.i(TAG, "解析内容---" + resp);
        if (!TextUtils.isEmpty(resp)) {
            try {
                JSONObject data = new JSONObject(resp);
                this.mDns_province = data.has("dns_province") ? data.getString("dns_province") : "";
                this.mIp_city = data.has("ip_city") ? data.getString("ip_city") : "";
                this.mIp = data.has("ip") ? data.getString("ip") : "";
                this.mIp_province = data.has("ip_province") ? data.getString("ip_province") : "";
                this.mIp_isp = data.has("ip_isp") ? data.getString("ip_isp") : "";
                this.mRes = data.has("res") ? data.getString("res") : "";
                this.mDns_city = data.has("dns_city") ? data.getString("dns_city") : "";
                this.mDns_isp = data.has("dns_isp") ? data.getString("dns_isp") : "";
                this.mDns = data.has("dns") ? data.getString("dns") : "";
                this.mMsg = data.has("msg") ? data.getString("msg") : "";
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static NetDnsInfo getsNetDnsInfo() {
        return sNetDnsInfo;
    }

    public static void setsNetDnsInfo(NetDnsInfo sNetDnsInfo2) {
        sNetDnsInfo = sNetDnsInfo2;
    }

    public String getmDns_province() {
        return this.mDns_province;
    }

    public void setmDns_province(String mDns_province) {
        this.mDns_province = mDns_province;
    }

    public String getmIp_city() {
        return this.mIp_city;
    }

    public void setmIp_city(String mIp_city) {
        this.mIp_city = mIp_city;
    }

    public String getmIp() {
        return this.mIp;
    }

    public void setmIp(String mIp) {
        this.mIp = mIp;
    }

    public String getmIp_province() {
        return this.mIp_province;
    }

    public void setmIp_province(String mIp_province) {
        this.mIp_province = mIp_province;
    }

    public String getmIp_isp() {
        return this.mIp_isp;
    }

    public void setmIp_isp(String mIp_isp) {
        this.mIp_isp = mIp_isp;
    }

    public String getmRes() {
        return this.mRes;
    }

    public void setmRes(String mRes) {
        this.mRes = mRes;
    }

    public String getmDns_city() {
        return this.mDns_city;
    }

    public void setmDns_city(String mDns_city) {
        this.mDns_city = mDns_city;
    }

    public String getmDns_isp() {
        return this.mDns_isp;
    }

    public void setmDns_isp(String mDns_isp) {
        this.mDns_isp = mDns_isp;
    }

    public String getmDns() {
        return this.mDns;
    }

    public void setmDns(String mDns) {
        this.mDns = mDns;
    }

    public String getMmsg() {
        return this.mMsg;
    }

    public void setMmsg(String mmsg) {
        this.mMsg = mmsg;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append("\n");
        result.append("mDns_province = ").append(this.mDns_province).append("\n");
        result.append("mIp_city = ").append(this.mIp_city).append("\n");
        result.append("mIp = ").append(this.mIp).append("\n");
        result.append("mIp_province = ").append(this.mIp_province).append("\n");
        result.append("mIp_isp = ").append(this.mIp_isp).append("\n");
        result.append("mRes = ").append(this.mRes).append("\n");
        result.append("mDns_city = ").append(this.mDns_city).append("\n");
        result.append("mDns_isp = ").append(this.mDns_isp).append("\n");
        result.append("mDns = ").append(this.mDns).append("\n");
        result.append("mmsg = ").append(this.mMsg).append("\n");
        return result.toString();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
