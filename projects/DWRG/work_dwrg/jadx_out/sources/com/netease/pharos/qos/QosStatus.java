package com.netease.pharos.qos;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class QosStatus {
    private static final String TAG = "QosStatus";
    private static QosStatus sQosStatus = null;
    private JSONObject mResult = new JSONObject();

    private QosStatus() {
    }

    public static QosStatus getInstance() {
        if (sQosStatus == null) {
            sQosStatus = new QosStatus();
        }
        return sQosStatus;
    }

    public JSONObject getResult() {
        return this.mResult;
    }

    public JSONObject getResult(String ip) {
        JSONObject result = null;
        if (TextUtils.isEmpty(ip)) {
            return null;
        }
        try {
            result = this.mResult.getJSONObject(ip);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean has(String ip) {
        boolean result = false;
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [has] param error");
            return false;
        }
        if (this.mResult.has(ip)) {
            result = true;
        }
        return result;
    }

    public void setIp(String ip) {
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [setIp] param error");
            return;
        }
        if (this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [setIp] 已包含该元素");
            return;
        }
        JSONObject ipJson = new JSONObject();
        try {
            this.mResult.put(ip, ipJson);
            setId(ip, "");
            setExpire(ip, "0");
            setStatus(ip, -11);
            setValidity(ip, 0L);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public long getValidity(String ip) {
        long validity = -1;
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [getValidity] param error");
            return -1L;
        }
        if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [getValidity] mResult 不包含 " + ip);
            return -1L;
        }
        try {
            JSONObject data = this.mResult.getJSONObject(ip);
            if (data != null && data.has("validity")) {
                validity = data.getLong("validity");
            }
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosStatus [getValidity] JSONException=" + e);
        }
        return validity;
    }

    public void setValidity(String ip, long validity) {
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [setValidity] param error");
            return;
        }
        if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [setValidity] mResult 不包含 " + ip);
            return;
        }
        try {
            JSONObject data = this.mResult.getJSONObject(ip);
            if (data != null) {
                data.put("validity", validity);
            }
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosStatus [setValidity] JSONException=" + e);
        }
    }

    public int getStatus(String ip) {
        int status = -100;
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [getStatus] param error");
            return -100;
        }
        if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [getStatus] mResult 不包含 " + ip);
            return -100;
        }
        try {
            JSONObject data = this.mResult.getJSONObject(ip);
            if (data != null && data.has("status")) {
                status = data.getInt("status");
            }
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosStatus [getStatus] JSONException=" + e);
        }
        return status;
    }

    public void setStatus(String ip, int status) {
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [setStatus] param error");
            return;
        }
        if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [setStatus] mResult 不包含 " + ip);
            return;
        }
        try {
            JSONObject data = this.mResult.getJSONObject(ip);
            if (data != null) {
                data.put("status", status);
            }
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosStatus [setStatus] JSONException=" + e);
        }
    }

    public String getExpire(String ip) {
        String expire = null;
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [getExpire] param error");
            return null;
        }
        if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [getExpire] mResult 不包含 " + ip);
            return null;
        }
        try {
            JSONObject data = this.mResult.getJSONObject(ip);
            if (data != null && data.has("expire")) {
                expire = data.getString("expire");
            }
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosStatus [getExpire] JSONException=" + e);
        }
        return expire;
    }

    public void setExpire(String ip, String expire) {
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [setExpire] param error");
            return;
        }
        if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [setExpire] mResult 不包含 " + ip);
            return;
        }
        try {
            JSONObject data = this.mResult.getJSONObject(ip);
            if (data != null) {
                data.put("expire", expire);
            }
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosStatus [setExpire] JSONException=" + e);
        }
    }

    public String getId(String ip) {
        String id = null;
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [getId] param error");
            return null;
        }
        if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [getId] mResult 不包含 " + ip);
            return null;
        }
        try {
            JSONObject data = this.mResult.getJSONObject(ip);
            if (data != null && data.has(ResIdReader.RES_TYPE_ID)) {
                id = data.getString(ResIdReader.RES_TYPE_ID);
            }
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosStatus [getExpire] JSONException=" + e);
        }
        return id;
    }

    public void setId(String ip, String id) {
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [setId] param error");
            return;
        }
        if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [setId] mResult 不包含 " + ip);
            return;
        }
        try {
            JSONObject data = this.mResult.getJSONObject(ip);
            if (data != null) {
                data.put(ResIdReader.RES_TYPE_ID, id);
            }
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosStatus [setId] JSONException=" + e);
        }
    }

    public void clean() {
        this.mResult = new JSONObject();
    }

    public void cleanIp(String ip) {
        if (TextUtils.isEmpty(ip)) {
            LogUtil.w(TAG, "QosStatus [cleanIp] param error");
        } else if (!this.mResult.has(ip)) {
            LogUtil.w(TAG, "QosStatus [setId] mResult 不包含 " + ip);
        } else {
            this.mResult.remove(ip);
        }
    }

    public void setTestData() {
        try {
            JSONObject data1 = new JSONObject();
            data1.put(ResIdReader.RES_TYPE_ID, "1111");
            data1.put("expire", System.currentTimeMillis());
            data1.put("status", 0);
            data1.put("validity", System.currentTimeMillis());
            JSONObject data2 = new JSONObject();
            data2.put(ResIdReader.RES_TYPE_ID, "222");
            data2.put("expire", System.currentTimeMillis());
            data2.put("status", 0);
            data2.put("validity", System.currentTimeMillis());
            this.mResult.put("8.8.8.8", data1);
            this.mResult.put("4.4.4.4", data2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
