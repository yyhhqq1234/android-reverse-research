package com.netease.pharos.qos;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.environment.config.SdkConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.network2.NetUtil;
import com.netease.pharos.network2.NetworkDealer;
import com.netease.pharos.util.LogUtil;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Qos {
    private static final String TAG = "Qos";
    private boolean mIsCycleQosOpen = true;
    private ArrayList<String> mFirstQosIpList = new ArrayList<>();
    private String mIp = null;
    private long mDuration = 0;
    private long mValidity = 0;
    private boolean hasQos = false;
    private String mId = null;
    private NetworkDealer<Integer> qos_dealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.qos.Qos.1
        @Override // com.netease.pharos.network2.NetworkDealer
        public /* bridge */ /* synthetic */ Integer processContent(InputStream inputStream, int i, Map map) throws Exception {
            return processContent(inputStream, i, (Map<String, String>) map);
        }

        @Override // com.netease.pharos.network2.NetworkDealer
        public void processHeader(Map<String, List<String>> pHeader, int pCode, Map<String, String> info) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.netease.pharos.network2.NetworkDealer
        public Integer processContent(InputStream pInputStream, int pCode, Map<String, String> info) throws Exception {
            LogUtil.i(Qos.TAG, "Qos [网络回调处理] 解析内容 pCode=" + pCode + ", info=" + info.toString());
            int result = 11;
            if (info == null || !info.containsKey("extra_data")) {
                LogUtil.i(Qos.TAG, "Qos [网络回调处理] 解析内容 参数错误1");
                return 11;
            }
            String serverIp = null;
            String extra_data = info.get("extra_data");
            JSONObject extra_data_json = null;
            if (!TextUtils.isEmpty(extra_data)) {
                extra_data_json = new JSONObject(extra_data);
            }
            String style = null;
            if (extra_data_json != null && extra_data_json.has(ResIdReader.RES_TYPE_STYLE)) {
                style = extra_data_json.optString(ResIdReader.RES_TYPE_STYLE);
            }
            if ("qos".equals(style)) {
                if (extra_data_json != null && extra_data_json.has("server")) {
                    serverIp = extra_data_json.optString("server");
                }
                LogUtil.i(Qos.TAG, "Qos [网络回调处理] 解析内容 serverIp=" + serverIp);
                if (TextUtils.isEmpty(serverIp)) {
                    LogUtil.i(Qos.TAG, "Qos [网络回调处理] 解析内容 参数错误2");
                    return 11;
                }
                QosStatus.getInstance().setIp(serverIp);
            }
            InputStreamReader in = new InputStreamReader(pInputStream, "utf-8");
            BufferedReader e = new BufferedReader(in);
            StringBuilder cache = new StringBuilder();
            while (true) {
                String line = e.readLine();
                if (line == null) {
                    break;
                }
                cache.append(line);
            }
            LogUtil.i(Qos.TAG, "Qos [网络回调处理] 解析内容=" + ((Object) cache));
            String code = null;
            String time = null;
            if (!TextUtils.isEmpty(cache.toString())) {
                try {
                    JSONObject data = new JSONObject(cache.toString());
                    if (data.has("resend_flag")) {
                        data.optInt("resend_flag");
                    }
                    if (data.has("code")) {
                        code = data.optString("code");
                    }
                    if (data.has("data")) {
                        JSONObject dataJson = data.optJSONObject("data");
                        LogUtil.i(Qos.TAG, "dataJson=" + dataJson.toString());
                        if (dataJson != null) {
                            if (dataJson.has(Const.KEY_TIME)) {
                                time = dataJson.optString(Const.KEY_TIME);
                            }
                            if (dataJson.has(ResIdReader.RES_TYPE_ID)) {
                                Qos.this.mId = dataJson.optString(ResIdReader.RES_TYPE_ID);
                            }
                        }
                    }
                    if ("1".equals(code)) {
                        QosStatus.getInstance().setStatus(serverIp, 1);
                        result = 0;
                    } else if (!TextUtils.isEmpty(code)) {
                        int code_int = -9;
                        try {
                            code_int = Integer.parseInt(code);
                        } catch (Exception e2) {
                        }
                        QosStatus.getInstance().setStatus(serverIp, code_int);
                    }
                    if (!TextUtils.isEmpty(time)) {
                        QosStatus.getInstance().setExpire(serverIp, time);
                    }
                    if (!TextUtils.isEmpty(Qos.this.mId)) {
                        QosStatus.getInstance().setId(serverIp, Qos.this.mId);
                    }
                    QosStatus.getInstance().getValidity(Qos.this.mIp);
                    LogUtil.i(Qos.TAG, "Qos [网络回调处理] 解析内容，结果=" + QosStatus.getInstance().getResult());
                } catch (JSONException e22) {
                    LogUtil.w(Qos.TAG, "Qos [网络回调处理] 解析内容  JSONException=" + e22);
                }
                LogUtil.i(Qos.TAG, "Qos [网络回调处理] 解析内容 result=" + result);
                if ("qos".equals(style)) {
                    LogUtil.i(Qos.TAG, "Qos [网络回调处理] 解析内容 执行循环qos");
                    Qos.this.cycleQos2(result);
                }
            }
            return Integer.valueOf(result);
        }
    };

    public void cycleQos() {
        LogUtil.i(TAG, "Qos [cycleQos] mIsCycleQosOpen=" + this.mIsCycleQosOpen);
        if (this.mIsCycleQosOpen) {
            LogUtil.i(TAG, "Qos [cycleQos] QosStatus result=" + QosStatus.getInstance().getResult() + ", mIp=" + this.mIp);
            long validity = QosStatus.getInstance().getValidity(this.mIp);
            LogUtil.i(TAG, "Qos [cycleQos] validity=" + validity + ", 当前时间=" + System.currentTimeMillis() + ", hasQos=" + this.hasQos);
            if (validity < System.currentTimeMillis()) {
                LogUtil.i(TAG, "Qos [cycleQos] 加速时间已过, 加速结束");
                Qos4GProxy.getInstance().cancel(this.mIp);
                return;
            }
            JSONObject data = QosProxy.getInstance().getQosResult();
            LogUtil.i(TAG, "Qos [cycleQos] QosStatus result=" + QosStatus.getInstance().getResult());
            boolean qos_effective = false;
            if (data != null && data.has("qos_effective")) {
                try {
                    qos_effective = data.getBoolean("qos_effective");
                } catch (Exception e) {
                }
            }
            LogUtil.i(TAG, "Qos [cycleQos] qos_effective=" + qos_effective);
            if (qos_effective) {
                this.hasQos = true;
                qos();
                return;
            }
            try {
                LogUtil.i(TAG, "Qos [cycleQos] 休眠1分钟");
                Thread.sleep(SdkConstants.A_MUNITE);
                if (validity < System.currentTimeMillis()) {
                    LogUtil.i(TAG, "Qos [cycleQos] validity=" + validity + ", 当前时间=" + System.currentTimeMillis() + ", 已超过加速时间, 结束qos");
                } else {
                    LogUtil.i(TAG, "Qos [cycleQos] 睡眠时间结束，自动进入周期");
                    cycleQos();
                }
                return;
            } catch (InterruptedException e2) {
                LogUtil.w(TAG, "Qos [cycleQos] InterruptedException2=" + e2);
                return;
            }
        }
        LogUtil.w(TAG, "Qos [cycleQos] mIsCycleQosOpen = false");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cycleQos2(int result) {
        LogUtil.i(TAG, "Qos [cycleQos2] result=" + result);
        String rap_qos_expire = QosStatus.getInstance().getExpire(this.mIp);
        QosStatus.getInstance().getValidity(this.mIp);
        LogUtil.i(TAG, "Qos [cycleQos2] rap_qos_expire=" + rap_qos_expire);
        if (!TextUtils.isEmpty(rap_qos_expire) && result == 0) {
            long expire = Long.parseLong(rap_qos_expire);
            long currentTimeMillis = (expire * 1000) - System.currentTimeMillis();
            LogUtil.i(TAG, "Qos [cycleQos2] 发起加速后，expire * 1000=" + (expire * 1000) + ", 当前时间=" + System.currentTimeMillis() + ", sleepTime=" + SdkConstants.A_MUNITE);
            try {
                Thread.sleep(SdkConstants.A_MUNITE);
                LogUtil.i(TAG, "Qos [cycleQos2] 睡眠时间结束，自动进入周期");
                cycleQos();
                return;
            } catch (InterruptedException e) {
                LogUtil.w(TAG, "Qos [cycleQos2] InterruptedException1=" + e);
                return;
            }
        }
        try {
            LogUtil.i(TAG, "Qos [cycleQos2] 休眠1分钟");
            Thread.sleep(SdkConstants.A_MUNITE);
            LogUtil.i(TAG, "Qos [cycleQos2] 睡眠时间结束，自动进入周期");
            cycleQos();
        } catch (InterruptedException e2) {
            LogUtil.w(TAG, "Qos [cycleQos2] InterruptedException2=" + e2);
        }
    }

    public int pharosqosexec(String ip, long duration) {
        LogUtil.i(TAG, "Qos [pharosqosexec] start");
        LogUtil.i(TAG, "Qos [pharosqosexec] ip=" + ip + ", duration=" + duration);
        if (TextUtils.isEmpty(ip) || duration <= 0) {
            LogUtil.w(TAG, "Qos [pharosqosexec] param error");
            return 14;
        }
        this.mIp = ip;
        this.mDuration = duration;
        long pValidity = System.currentTimeMillis() + this.mDuration;
        LogUtil.i(TAG, "Qos [pharosqosexec] QosStatus result=" + QosStatus.getInstance().getResult());
        if (!QosStatus.getInstance().has(this.mIp)) {
            if (!this.mFirstQosIpList.contains(this.mIp)) {
                LogUtil.i(TAG, "Qos [pharosqosexec] 首次进入加速");
                this.mFirstQosIpList.add(this.mIp);
                QosStatus.getInstance().setIp(this.mIp);
                QosStatus.getInstance().setValidity(this.mIp, pValidity);
                cycleQos();
                return 11;
            }
            LogUtil.w(TAG, "Qos [pharosqosexec] 首次加速进行中");
            return 11;
        }
        long validity = QosStatus.getInstance().getValidity(this.mIp);
        LogUtil.i(TAG, "Qos [pharosqosexec] validity=" + validity + " , 当前时间=" + System.currentTimeMillis());
        if (validity > System.currentTimeMillis()) {
            LogUtil.i(TAG, "Qos [pharosqosexec] 处于加速周期内, 直接结束");
            return 11;
        }
        LogUtil.i(TAG, "Qos [pharosqosexec] 发起一次新的加速");
        QosStatus.getInstance().cleanIp(this.mIp);
        cycleQos();
        return 11;
    }

    public boolean ismIsCycleQosOpen() {
        return this.mIsCycleQosOpen;
    }

    public void setmIsCycleQosOpen(boolean mIsCycleQosOpen) {
        this.mIsCycleQosOpen = mIsCycleQosOpen;
    }

    public int qos() {
        LogUtil.i(TAG, "Qos [qos] 加速核心");
        LogUtil.i(TAG, "Qos [qos] 发起qos加速");
        JSONObject pResult = QosProxy.getInstance().getQosResult();
        if (pResult == null || !pResult.has("qos")) {
            LogUtil.i(TAG, "Qos [qos] param error");
            return 11;
        }
        LogUtil.i(TAG, "Qos [qos] pResult=" + pResult.toString());
        String dest = QosProxy.getInstance().getDest();
        LogUtil.i(TAG, "Qos [qos] param dest=" + dest);
        if (TextUtils.isEmpty(dest)) {
            LogUtil.i(TAG, "Qos [qos] param dest error");
            return 11;
        }
        String id = null;
        String ip = null;
        String ip_public = null;
        String phone = null;
        try {
            JSONObject qosJson = pResult.getJSONObject("qos");
            if (qosJson != null) {
                id = qosJson.getString(ResIdReader.RES_TYPE_ID);
                ip = qosJson.getString("ip");
                ip_public = qosJson.getString("ip_public");
                phone = qosJson.getString("phone");
            }
        } catch (JSONException e) {
            LogUtil.i(TAG, "Qos [qos] JSONException =" + e);
        }
        LogUtil.i(TAG, "Qos [qos] mQosResult=" + pResult);
        JSONObject mQosResult = new JSONObject();
        try {
            mQosResult.put(ResIdReader.RES_TYPE_ID, id);
            mQosResult.put("ip", ip);
            mQosResult.put("ip_public", ip_public);
            if (!TextUtils.isEmpty(phone)) {
                mQosResult.put("phone", phone);
            }
            mQosResult.put("server", this.mIp);
        } catch (JSONException e2) {
            LogUtil.w(TAG, "Qos [qos] 发起qos加速 JSONException =" + e2);
        }
        LogUtil.i(TAG, "Qos [qos] param id=" + id + ", ip=" + ip + ", ip_public=" + ip_public + ", phone=" + phone);
        int result = qos_post(mQosResult.toString(), dest, "qos");
        return result;
    }

    public int cancelQos() {
        LogUtil.i(TAG, "Qos [cancelQos] 取消加速");
        LogUtil.i(TAG, "Qos [cancelQos] mId=" + this.mId);
        if (TextUtils.isEmpty(this.mId)) {
            LogUtil.i(TAG, "Qos [cancelQos] id is null");
            return 11;
        }
        String dest = QosProxy.getInstance().getDest();
        LogUtil.i(TAG, "Qos [cancelQos] param dest=" + dest);
        if (TextUtils.isEmpty(dest)) {
            LogUtil.i(TAG, "Qos [cancelQos] param dest error");
            return 11;
        }
        JSONObject mQosResult = new JSONObject();
        try {
            mQosResult.put(ResIdReader.RES_TYPE_ID, this.mId.trim());
        } catch (JSONException e) {
            LogUtil.w(TAG, "Qos [cancelQos] JSONException =" + e);
        }
        LogUtil.i(TAG, "Qos [cancelQos] param id=" + this.mId);
        int result = qos_post(mQosResult.toString(), dest, "cancel_qos");
        return result;
    }

    public int qos_post(String info, String url, String extra) {
        LogUtil.stepLog("Qos [qos_post] start");
        int result = 11;
        LogUtil.i(TAG, "Qos [qos_post]---参数 info=" + info + ", url=" + url);
        if (TextUtils.isEmpty(info) || TextUtils.isEmpty(url)) {
            LogUtil.i(TAG, "Qos [qos_post]---参数错误");
            return 14;
        }
        String url2 = "https://" + url;
        LogUtil.i(TAG, "Qos [qos_post]---处理后的url=" + url2);
        Map<String, String> header = new HashMap<>();
        header.put(HttpHeaders.Names.CONTENT_TYPE, "application/json");
        Map<String, Object> pParams = new HashMap<>();
        pParams.put("post_content", info);
        try {
            JSONObject infoJson = new JSONObject(info);
            infoJson.put(ResIdReader.RES_TYPE_STYLE, extra);
            pParams.put("extra_data", infoJson);
            LogUtil.stepLog("Qos [qos_post] pParams=" + pParams.toString());
        } catch (JSONException e1) {
            e1.printStackTrace();
        }
        if (!TextUtils.isEmpty(url2)) {
            try {
                String style = "POST";
                if ("cancel_qos".equals(extra)) {
                    style = "DELETE";
                }
                LogUtil.stepLog("Qos [qos_post] style=" + style);
                result = ((Integer) NetUtil.doHttpReq(url2, pParams, style, header, this.qos_dealer)).intValue();
            } catch (IOException e) {
                LogUtil.stepLog("Qos [qos_post] IOException=" + e);
            }
        }
        LogUtil.i(TAG, "Qos [qos_post] 结果=" + result);
        return result;
    }

    public int clean() {
        LogUtil.i(TAG, "Qos [clean] 取消加速 ip=" + this.mIp);
        int result = cancelQos();
        if (result == 0) {
            LogUtil.i(TAG, "Qos [clean] 取消加速 清理数据 ip=" + this.mIp);
            this.mIsCycleQosOpen = false;
            QosStatus.getInstance().cleanIp(this.mIp);
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
