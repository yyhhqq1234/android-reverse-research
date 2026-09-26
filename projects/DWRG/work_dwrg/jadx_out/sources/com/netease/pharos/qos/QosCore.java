package com.netease.pharos.qos;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.alipay.sdk.util.k;
import com.netease.download.Const;
import com.netease.environment.config.SdkConstants;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.PharosListener;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.deviceinfo.NetDevices;
import com.netease.pharos.httpdns.HttpdnsProxy;
import com.netease.pharos.httpdns.HttpdnsUrlSwitcherCore;
import com.netease.pharos.linkcheck.LinkCheckResult;
import com.netease.pharos.network2.NetUtil;
import com.netease.pharos.network2.NetworkDealer;
import com.netease.pharos.report.ReportProxy;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class QosCore {
    private static final String TAG = "QosCore";
    private Context mContext = null;
    private JSONObject mSource = null;
    private JSONObject mResult = new JSONObject();
    private JSONObject mQosResult = new JSONObject();
    private boolean mEnable = false;
    private boolean mCycle = false;
    private String mDest = null;
    private String mPhoneUrl = null;
    private String mPhone = null;
    private boolean mIsFitthreshold = false;
    private boolean mIsCycle = false;
    private int mStauts = 0;
    private NetworkDealer<Integer> qos_dealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.qos.QosCore.1
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
            JSONObject dataJson;
            LogUtil.stepLog("发起 QOS 加速---解析内容");
            int result = 11;
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
            LogUtil.stepLog("发起 QOS 加速---解析内容=" + ((Object) cache));
            int resend_flag = -1;
            String code = null;
            String time = null;
            if (!TextUtils.isEmpty(cache.toString())) {
                try {
                    JSONObject data = new JSONObject(cache.toString());
                    if (data.has("resend_flag")) {
                        resend_flag = data.optInt("resend_flag");
                    }
                    if (data.has("code")) {
                        code = data.optString("code");
                    }
                    if (data.has("data") && (dataJson = data.optJSONObject("data")) != null && dataJson.has(Const.KEY_TIME)) {
                        time = dataJson.optString(Const.KEY_TIME);
                    }
                    if (resend_flag == 1) {
                        QosCore.this.mResult.put("rap_qos_status", "11");
                    } else if (!TextUtils.isEmpty(code)) {
                        QosCore.this.mResult.put("rap_qos_status", code);
                    }
                    if (!TextUtils.isEmpty(time)) {
                        QosCore.this.mResult.put("rap_qos_expire", time);
                    }
                    QosCore.this.mStauts = 1;
                    LogUtil.i(QosCore.TAG, "发起 QOS 加速---最终输出结果  mResult=" + QosCore.this.mResult.toString());
                    result = 0;
                } catch (JSONException e2) {
                    LogUtil.w(QosCore.TAG, "发起 QOS 加速---解析内容  JSONException=" + e2);
                }
            }
            QosCore.this.mStauts = 1;
            return Integer.valueOf(result);
        }
    };
    private NetworkDealer<Integer> dealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.qos.QosCore.2
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
            LogUtil.stepLog("获取手机号码---解析内容");
            int result = 11;
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
            LogUtil.stepLog("获取手机号码---解析内容=" + ((Object) cache));
            if (!TextUtils.isEmpty(cache.toString())) {
                try {
                    JSONObject data = new JSONObject(cache.toString());
                    if (data.has(k.c)) {
                        QosCore.this.mPhone = data.optString(k.c);
                    }
                    result = 0;
                } catch (JSONException e2) {
                    LogUtil.w(QosCore.TAG, "获取手机号码---解析内容  JSONException=" + e2);
                }
            }
            if (!TextUtils.isEmpty(QosCore.this.mPhone)) {
                LogUtil.i(QosCore.TAG, "获取手机号码---解析内容  phone=" + QosCore.this.mPhone);
                result = QosCore.this.qos();
            } else {
                LogUtil.w(QosCore.TAG, "获取手机号码---解析内容  phone 错误，不发起Qos");
            }
            return Integer.valueOf(result);
        }
    };

    public void init(Context context, JSONObject source) {
        this.mSource = source;
        this.mContext = context;
        try {
            this.mResult.put("rap_qos_status", com.netease.pharos.Const.QOS_DEFAULT);
            this.mResult.put("rap_qos_expire", "0");
        } catch (JSONException e) {
            LogUtil.i(TAG, "QosCore [init] JSONException=" + e);
        }
        String udid = DeviceInfo.getInstances().getUdid();
        String ip = Util.getLocalIp(this.mContext);
        String ip_public = DeviceInfo.getInstances().getIpaddr();
        LogUtil.i(TAG, "QosCore [qos] udid=" + udid + ", ip=" + ip + ", ip_public=" + ip_public + ", mPhone=" + this.mPhone + ", mDest=" + this.mDest);
        try {
            this.mQosResult.put(ResIdReader.RES_TYPE_ID, udid);
            this.mQosResult.put("ip", ip);
            this.mQosResult.put("ip_public", ip_public);
            this.mQosResult.put("phone", this.mPhone);
        } catch (JSONException e2) {
            LogUtil.w(TAG, "QosCore [init] 初始化mQosResult JSONException =" + e2);
        }
        if (this.mSource != null) {
            LogUtil.i(TAG, "QosCore 测试数据= " + this.mSource.toString());
        }
    }

    public int parse() {
        JSONObject thresholdJson;
        JSONObject ispJson;
        JSONObject cmccJson;
        LogUtil.i(TAG, "QosCore [parse] mStauts=" + this.mStauts);
        if (this.mSource == null) {
            return 14;
        }
        if (this.mSource.has(SdkConstants.JSON_KEY_ENABLE)) {
            this.mEnable = this.mSource.optBoolean(SdkConstants.JSON_KEY_ENABLE);
        }
        if (this.mSource.has("cycle")) {
            this.mCycle = this.mSource.optBoolean("cycle");
        }
        if (this.mSource.has("dest")) {
            this.mDest = this.mSource.optString("dest");
        }
        if (this.mSource.has("isp") && (ispJson = this.mSource.optJSONObject("isp")) != null && ispJson.has("cmcc") && (cmccJson = ispJson.optJSONObject("cmcc")) != null) {
            Iterator iterator = cmccJson.keys();
            while (iterator.hasNext()) {
                String key = iterator.next();
                String ip_province = DeviceInfo.getInstances().getipProvince();
                LogUtil.i(TAG, "QosCore [parse] key=" + key + ", ip_province=" + ip_province);
                if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(ip_province) && key.equals(ip_province)) {
                    this.mPhoneUrl = cmccJson.optString(key);
                    if (!TextUtils.isEmpty(this.mPhoneUrl)) {
                        this.mPhoneUrl = new String(Base64.decode(this.mPhoneUrl.getBytes(), 0));
                    }
                }
            }
        }
        if (this.mSource.has("threshold") && (thresholdJson = this.mSource.optJSONObject("threshold")) != null) {
            Iterator iterator2 = thresholdJson.keys();
            while (true) {
                if (!iterator2.hasNext()) {
                    break;
                }
                String key2 = iterator2.next();
                JSONArray array = thresholdJson.optJSONArray(key2);
                if (array != null && array.length() > 1) {
                    int lost = array.optInt(0);
                    int rtt = array.optInt(1);
                    if (isThreshHold(key2, lost, rtt)) {
                        this.mIsFitthreshold = true;
                        break;
                    }
                }
            }
        }
        LogUtil.i(TAG, "mEnable=" + this.mEnable + ", mCycle=" + this.mCycle + ", mDest=" + this.mDest + ", mPhoneUrl=" + this.mPhoneUrl + ", mIsFitthreshold=" + this.mIsFitthreshold);
        return 11;
    }

    public int checkIsNeedToQos() throws JSONException {
        LogUtil.i(TAG, "QosCore [checkIsNeedToQos] mEnable=" + this.mEnable + ", isISP()=" + isISP() + ", mIsFitthreshold=" + this.mIsFitthreshold + ", checkExpire()=" + checkExpire() + ", TextUtils.isEmpty(mPhoneUrl)=" + TextUtils.isEmpty(this.mPhoneUrl) + ", mStauts" + this.mStauts);
        int result = 11;
        if (this.mStauts == 2) {
            LogUtil.i(TAG, "QosCore already start");
            return 11;
        }
        this.mStauts = 2;
        if (this.mStauts == 1) {
            PharosListener listener = PharosProxy.getInstance().getmPharosListener();
            LogUtil.i(TAG, "qos回调结果=" + this.mQosResult.toString());
            if (listener != null) {
                JSONObject qosResult = getQosResult();
                if (qosResult != null) {
                    listener.onResult(qosResult);
                } else {
                    LogUtil.i(TAG, "qosResult is null");
                }
            }
            return 0;
        }
        if (this.mEnable) {
            LogUtil.i(TAG, "QosCore [checkIsNeedToQos] isISP()=" + isISP());
            if (isISP()) {
                if (this.mIsFitthreshold) {
                    if (checkExpire()) {
                        result = TextUtils.isEmpty(this.mPhoneUrl) ? qos() : start(this.mPhoneUrl);
                    } else {
                        this.mResult.put("rap_qos_status", "11");
                    }
                } else {
                    this.mResult.put("rap_qos_status", com.netease.pharos.Const.QOS_NOT_FIT_THRESHOLD);
                }
            } else {
                this.mResult.put("rap_qos_status", com.netease.pharos.Const.QOS_IS_NOT_ISP);
            }
        } else {
            this.mResult.put("rap_qos_status", com.netease.pharos.Const.QOS_DEFAULT);
        }
        PharosListener listener2 = PharosProxy.getInstance().getmPharosListener();
        if (listener2 != null) {
            try {
                JSONObject qosResult2 = getQosResult();
                LogUtil.i(TAG, "qos回调结果=" + this.mQosResult.toString());
                if (qosResult2 != null) {
                    listener2.onResult(qosResult2);
                } else {
                    LogUtil.i(TAG, "qosResult is null");
                }
            } catch (Exception e) {
                LogUtil.w(TAG, "qosResult Exception=" + e);
            }
        }
        LinkCheckResult.getInstance().setmRapQosStatus(this.mResult.optString("rap_qos_status"));
        LinkCheckResult.getInstance().setmRapQosExpire(this.mResult.optString("rap_qos_expire"));
        String info = LinkCheckResult.getInstance().getLinkCheckResultInfo();
        if (!TextUtils.isEmpty(info)) {
            LogUtil.i(TAG, "Qos 上传内容=" + info);
            ReportProxy.getInstance().report(info);
            LinkCheckResult.getInstance().clean();
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int qos() {
        LogUtil.i(TAG, "QosCore [qos] 发起qos加速");
        LogUtil.i(TAG, "QosCore [qos] mQosResult=" + this.mQosResult);
        try {
            this.mQosResult.put("phone", this.mPhone);
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosCore [qos] 发起qos加速 JSONException =" + e);
        }
        int result = qos_post(this.mQosResult.toString(), this.mDest);
        return result;
    }

    public int qos_post(String info, String url) {
        LogUtil.stepLog("发起 QOS 加速");
        int result = 11;
        LogUtil.i(TAG, "发起 QOS 加速---参数 info=" + info + ", url=" + url);
        if (TextUtils.isEmpty(info) || TextUtils.isEmpty(url)) {
            LogUtil.i(TAG, "发起 QOS 加速---参数错误");
            return 14;
        }
        String url2 = "https://" + url;
        LogUtil.i(TAG, "发起 QOS 加速---处理后的url=" + url2);
        Map<String, String> header = new HashMap<>();
        header.put(HttpHeaders.Names.CONTENT_TYPE, "application/json");
        Map<String, Object> pParams = new HashMap<>();
        pParams.put("post_content", info);
        if (!TextUtils.isEmpty(url2)) {
            try {
                result = ((Integer) NetUtil.doHttpReq(url2, pParams, "POST", header, this.qos_dealer)).intValue();
            } catch (IOException e) {
                LogUtil.stepLog("发起 QOS 加速 [qos_post] IOException=" + e);
            }
        }
        LogUtil.stepLog("发起 QOS 加速---结果=" + result);
        return result;
    }

    private boolean isISP() {
        String network = NetDevices.getInstances().getNetworkType();
        String region = DeviceInfo.getInstances().getmRegion();
        LogUtil.i(TAG, "QosCore [isISP] network=" + network + ", region=" + region);
        if (!BaseConstants.NET_KEY_mobile.equals(network) || !"cn".equals(region)) {
            return false;
        }
        return true;
    }

    private boolean isThreshHold(String key, int lost, int rtt) {
        boolean result = false;
        LogUtil.i(TAG, "QosCore [isThreshHold] 参数 key=" + key + ", lost=" + lost + ", rtt=" + rtt);
        if (TextUtils.isEmpty(key) || lost < 0 || lost > 100 || rtt < 0) {
            LogUtil.w(TAG, "QosCore [isThreshHold] 参数错误");
            return false;
        }
        if ("nap_icmp".equals(key)) {
            int tLost = LinkCheckResult.getInstance().getmNapIcmpLost();
            double tRtt = LinkCheckResult.getInstance().getmNapIcmpRtt();
            LogUtil.i(TAG, "QosCore [isThreshHold] nap_icmp tLost=" + tLost + ", tRtt=" + tRtt);
            if ((tLost > lost && tLost < 100) || (tRtt > rtt && tRtt < 800.0d)) {
                result = true;
            }
        } else if ("rap_icmp".equals(key)) {
            int tLost2 = LinkCheckResult.getInstance().getmRapIcmpLost();
            double tRtt2 = LinkCheckResult.getInstance().getmRapIcmpRtt();
            LogUtil.i(TAG, "QosCore [isThreshHold] rap_icmp tLost=" + tLost2 + ", tRtt=" + tRtt2);
            if ((tLost2 > lost && tLost2 < 100) || (tRtt2 > rtt && tRtt2 < 800.0d)) {
                result = true;
            }
        } else if ("rap_transfer".equals(key)) {
            int tLost3 = LinkCheckResult.getInstance().getmRapIcmpLost();
            double tRtt3 = LinkCheckResult.getInstance().getmRapIcmpRtt();
            LogUtil.i(TAG, "QosCore [isThreshHold] rap_transfer tLost=" + tLost3 + ", tRtt=" + tRtt3);
            if ((tLost3 > lost && tLost3 < 100) || (tRtt3 > rtt && tRtt3 < 800.0d)) {
                result = true;
            }
        } else if ("rap_udp".equals(key)) {
            double pLost = LinkCheckResult.getInstance().getmRapUdpLost();
            double tRtt4 = LinkCheckResult.getInstance().getmRapUdpRtt();
            LogUtil.i(TAG, "QosCore [isThreshHold] rap_udp tLost=" + pLost + ", tRtt=" + tRtt4);
            if ((pLost > lost && pLost < 100.0d) || (tRtt4 > rtt && tRtt4 < 800.0d)) {
                result = true;
            }
        } else if ("sap_transfer".equals(key)) {
            double pLost2 = LinkCheckResult.getInstance().getmSapTransferFail();
            double tRtt5 = LinkCheckResult.getInstance().getmSapTransferRtt();
            LogUtil.i(TAG, "QosCore [isThreshHold] sap_transfer tLost=" + pLost2 + ", tRtt=" + tRtt5);
            if ((pLost2 > lost && pLost2 < 100.0d) || (tRtt5 > rtt && tRtt5 < 800.0d)) {
                result = true;
            }
        } else if ("sap_udp".equals(key)) {
            double pLost3 = LinkCheckResult.getInstance().getmSapUdpLost();
            double tRtt6 = LinkCheckResult.getInstance().getmSapUdpRtt();
            LogUtil.i(TAG, "QosCore [isThreshHold] sap_udp tLost=" + pLost3 + ", tRtt=" + tRtt6);
            if ((pLost3 > lost && pLost3 < 100.0d) || (tRtt6 > rtt && tRtt6 < 800.0d)) {
                result = true;
            }
        } else {
            result = false;
        }
        return result;
    }

    private boolean checkExpire() {
        if (this.mResult.has("rap_qos_expire")) {
            String time = this.mResult.optString("rap_qos_expire");
            long longTime = 0;
            try {
                long longTime2 = Long.parseLong(time);
                longTime = longTime2 * 1000;
            } catch (Exception e) {
                LogUtil.i(TAG, "QosCore [checkExpire] Exception=" + e);
            }
            LogUtil.i(TAG, "QosCore [checkExpire] longTime=" + longTime + ", System.currentTimeMillis()=" + System.currentTimeMillis());
            if (0 != longTime && longTime >= System.currentTimeMillis()) {
                return false;
            }
            return true;
        }
        return true;
    }

    public int start(String mUrl) {
        LogUtil.i(TAG, "获取手机号码 url=" + mUrl);
        if (TextUtils.isEmpty(mUrl)) {
            LogUtil.i(TAG, "获取手机号码 参数错误");
            return 11;
        }
        int result = start(mUrl, null);
        LogUtil.i(TAG, "获取手机号码  普通请求结果=" + result);
        if (result != 0) {
            String domain = Util.getDomainFromUrl(mUrl);
            if (TextUtils.isEmpty(domain)) {
                LogUtil.i(TAG, "获取手机号码  普通请求结果 domain为空");
                return 14;
            }
            LogUtil.i(TAG, "获取手机号码   走Httpdns");
            String[] mDomains = {domain};
            HttpdnsProxy.getInstances().synStart("Pharos_qos_phone", mDomains);
            HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit unit = HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore("Pharos_qos_phone");
            if (unit != null) {
                LogUtil.i(TAG, "获取手机号码 httpdns结果=" + unit.toString());
                ArrayList<HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit> list = unit.getHttpdnsUrlUnitList();
                Iterator<HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit> it = list.iterator();
                while (it.hasNext()) {
                    HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit pUnit = it.next();
                    String pIp = pUnit.ip;
                    String pHost = pUnit.host;
                    LogUtil.i(TAG, "获取手机号码 原url=" + mUrl);
                    mUrl = Util.replaceDomainWithIpAddr(mUrl, pIp, "/");
                    LogUtil.i(TAG, "获取手机号码 新url=" + mUrl);
                    result = start(mUrl, pHost);
                    LogUtil.i(TAG, "获取手机号码 Httpdns ，返回码=" + result + ", ip=" + pIp);
                    if (result == 0) {
                        break;
                    }
                }
            } else {
                LogUtil.i(TAG, "获取手机号码 httpdns结果为空");
            }
        }
        return result;
    }

    public int start(String url, String host) {
        LogUtil.stepLog("获取手机号码");
        int result = 11;
        Map<String, String> header = new HashMap<>();
        if (!TextUtils.isEmpty(host)) {
            header.put("Host", host);
        }
        if (!TextUtils.isEmpty(url)) {
            try {
                result = ((Integer) NetUtil.doHttpReq(url, null, "GET", header, this.dealer)).intValue();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        LogUtil.stepLog("获取高速列表---结果=" + result);
        return result;
    }

    private JSONObject setTestData() {
        JSONObject jSONObject = new JSONObject();
        if (this.mSource == null) {
            try {
                jSONObject.put(SdkConstants.JSON_KEY_ENABLE, true);
                jSONObject.put("cycle", true);
                jSONObject.put("dest", "106.2.42.123:9995");
                JSONObject guangdongJson = new JSONObject();
                guangdongJson.put("guangdong", "aHR0cDovLzEyMC4xOTYuMTY2LjE1Ni9iZHByb3h5Lz9hcHBpZD1uZXRlYXNlCg==");
                JSONObject cmccJson = new JSONObject();
                cmccJson.put("cmcc", guangdongJson);
                jSONObject.put("isp", cmccJson);
                JSONObject thresholdJson = new JSONObject();
                JSONArray thresholdArray = new JSONArray();
                thresholdArray.put(10);
                thresholdArray.put(100);
                thresholdJson.put("nap_icmp", thresholdArray);
                thresholdJson.put("rap_transfer", thresholdArray);
                thresholdJson.put("rap_udp", thresholdArray);
                jSONObject.put("threshold", thresholdJson);
            } catch (Exception e) {
            }
        }
        return jSONObject;
    }

    public JSONObject getQosResult() {
        JSONObject result = new JSONObject();
        boolean qos_effective = false;
        if (this.mResult.has("rap_qos_status")) {
            String rap_qos_status = this.mResult.optString("rap_qos_status");
            if (!TextUtils.isEmpty(rap_qos_status)) {
                int t_rap_qos_status = Integer.parseInt(rap_qos_status);
                if (t_rap_qos_status > -9) {
                    qos_effective = true;
                }
            }
        }
        try {
            this.mQosResult.put("qos_effective", qos_effective);
            result.put("qos", this.mQosResult);
        } catch (JSONException e) {
            LogUtil.w(TAG, "QosCore [getResult] JSONException=" + e);
        }
        return result;
    }

    public void clean() {
        this.mStauts = 0;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
