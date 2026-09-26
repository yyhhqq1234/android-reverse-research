package com.netease.pharos.qos;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.util.LogUtil;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Qos4GProxy {
    private static final String TAG = "Qos4GProxy";
    private static Qos4GProxy sQos4GProxy = null;
    private Map<String, Qos> mQosMap = new HashMap();

    private Qos4GProxy() {
    }

    public static Qos4GProxy getInstance() {
        if (sQos4GProxy == null) {
            sQos4GProxy = new Qos4GProxy();
        }
        return sQos4GProxy;
    }

    public void pharosqosexec(final String ip, final long duration) {
        LogUtil.i(TAG, "Qos4GProxy [pharosqosexec] ip=" + ip + ", duration=" + duration);
        if (!TextUtils.isEmpty(ip) && duration > 0) {
            if (!this.mQosMap.containsKey(ip)) {
                new Thread(new Runnable() { // from class: com.netease.pharos.qos.Qos4GProxy.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Qos qos = new Qos();
                        Qos4GProxy.this.mQosMap.put(ip, qos);
                        qos.pharosqosexec(ip, duration);
                        PharosProxy.getInstance().pharosqosstatus(ip);
                    }
                }).start();
            } else {
                LogUtil.i(TAG, "Qos4GProxy [pharosqosexec] 该ip已在加速中");
            }
        }
    }

    public void cancel(final String ip) {
        LogUtil.i(TAG, "Qos4GProxy [cancel] ip=" + ip);
        if (!TextUtils.isEmpty(ip)) {
            LogUtil.i(TAG, "Qos4GProxy [cancel] 取消前 mQosMap=" + this.mQosMap.toString());
            if (this.mQosMap.containsKey(ip)) {
                new Thread(new Runnable() { // from class: com.netease.pharos.qos.Qos4GProxy.2
                    @Override // java.lang.Runnable
                    public void run() {
                        int result = 11;
                        Qos qos = (Qos) Qos4GProxy.this.mQosMap.get(ip);
                        if (qos != null) {
                            result = qos.clean();
                        }
                        if (result == 0) {
                            LogUtil.i(Qos4GProxy.TAG, "Qos4GProxy [cancel] mQosMap remove ip=" + ip);
                            Qos4GProxy.this.mQosMap.remove(ip);
                        }
                        LogUtil.i(Qos4GProxy.TAG, "Qos4GProxy [cancel] 取消后 mQosMap=" + Qos4GProxy.this.mQosMap.toString() + ", 取消结果=" + result);
                    }
                }).start();
            } else {
                LogUtil.i(TAG, "Qos4GProxy [cancel] 该ip之前未加速，无需取消");
            }
        }
    }

    public JSONObject getResult(String ip) {
        LogUtil.i(TAG, "Qos4GProxy [getResult] ip=" + ip);
        JSONObject result = new JSONObject();
        if (TextUtils.isEmpty(ip)) {
            return result;
        }
        LogUtil.i(TAG, "Qos4GProxy [getResult] 总结果=" + QosStatus.getInstance().getResult());
        if (QosStatus.getInstance().has(ip)) {
            JSONObject qosResult = QosProxy.getInstance().getQosResult();
            LogUtil.i(TAG, "Qos4GProxy [getResult] qosResult=" + qosResult);
            if (qosResult != null && qosResult.has("qos")) {
                try {
                    result = qosResult.getJSONObject("qos");
                } catch (JSONException e) {
                    LogUtil.i(TAG, "Qos4GProxy [getResult] JSONException1=" + e);
                }
            }
            JSONObject ipJson = new JSONObject();
            try {
                ipJson.put(ip, QosStatus.getInstance().getResult(ip));
                result.put("qos_status", ipJson);
            } catch (JSONException e2) {
                LogUtil.i(TAG, "Qos4GProxy [getResult] JSONException2=" + e2);
            }
        } else {
            LogUtil.i(TAG, "Qos4GProxy [getResult] 总结果中不包含该ip，ip=" + ip);
        }
        LogUtil.i(TAG, "Qos4GProxy [getResult] 过滤ip，获取的结果=" + result + ", ip=" + ip);
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
