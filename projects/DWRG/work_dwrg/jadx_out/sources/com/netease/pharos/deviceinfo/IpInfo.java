package com.netease.pharos.deviceinfo;

import android.text.TextUtils;
import android.util.Base64;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class IpInfo {
    private static final String TAG = "IpInfo";
    private static IpInfo sIpInfo = null;
    private String mIp_addr = "";
    private String mIp_continent = "";
    private String mIp_country = "";
    private String mIp_province = "";
    private String mIp_payload = "";
    private String mIp_sig = "";

    private IpInfo() {
    }

    public static IpInfo getInstances() {
        if (sIpInfo == null) {
            sIpInfo = new IpInfo();
        }
        return sIpInfo;
    }

    public void init(String resp) {
        LogUtil.i(TAG, "解析内容---" + resp);
        if (!TextUtils.isEmpty(resp)) {
            try {
                JSONObject data = new JSONObject(resp);
                String payload = data.has("payload") ? data.getString("payload") : "";
                String jsonStr = new String(Base64.decode(payload.getBytes(), 0));
                JSONObject payloadObj = new JSONObject(jsonStr);
                this.mIp_addr = payloadObj.has("ip") ? payloadObj.getString("ip") : "";
                if (payloadObj.has("subdivisions")) {
                    JSONObject temp1 = payloadObj.getJSONObject("subdivisions");
                    if (temp1.has("names")) {
                        JSONObject temp2 = temp1.getJSONObject("names");
                        if (temp2.has("en")) {
                            this.mIp_province = temp2.getString("en");
                        }
                    }
                }
                if (payloadObj.has("country")) {
                    JSONObject temp12 = payloadObj.getJSONObject("country");
                    if (temp12.has("names")) {
                        JSONObject temp22 = temp12.getJSONObject("names");
                        if (temp22.has("en")) {
                            this.mIp_country = temp22.getString("en");
                        }
                    }
                }
                if (payloadObj.has("continent")) {
                    JSONObject temp13 = payloadObj.getJSONObject("continent");
                    if (temp13.has("names")) {
                        JSONObject temp23 = temp13.getJSONObject("names");
                        if (temp23.has("en")) {
                            this.mIp_continent = temp23.getString("en");
                        }
                    }
                }
                this.mIp_payload = payload;
                this.mIp_sig = data.has("sig") ? data.getString("sig") : "";
            } catch (JSONException e) {
                LogUtil.w(TAG, "解析内容=" + e);
                e.printStackTrace();
            }
        }
    }

    public String getmIp_addr() {
        return this.mIp_addr;
    }

    public void setmIp_addr(String mIp_addr) {
        this.mIp_addr = mIp_addr;
    }

    public String getmIp_continent() {
        return this.mIp_continent;
    }

    public void setmIp_continent(String mIp_continent) {
        this.mIp_continent = mIp_continent;
    }

    public String getmIp_country() {
        return this.mIp_country;
    }

    public void setmIp_country(String mIp_country) {
        this.mIp_country = mIp_country;
    }

    public String getmIp_province() {
        return this.mIp_province;
    }

    public void setmIp_province(String mIp_province) {
        this.mIp_province = mIp_province;
    }

    public String getmIp_payload() {
        return this.mIp_payload;
    }

    public void setmIp_payload(String mIp_payload) {
        this.mIp_payload = mIp_payload;
    }

    public String getmIp_sig() {
        return this.mIp_sig;
    }

    public void setmIp_sig(String mIp_sig) {
        this.mIp_sig = mIp_sig;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append("mIp_addr=").append(this.mIp_addr).append("\n");
        result.append("mIp_continent=").append(this.mIp_continent).append("\n");
        result.append("mIp_country=").append(this.mIp_country).append("\n");
        result.append("mIp_province=").append(this.mIp_province).append("\n");
        result.append("mIp_payload=").append(this.mIp_payload).append("\n");
        result.append("mIp_sig=").append(this.mIp_sig).append("\n");
        return result.toString();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
