package com.netease.pharos.deviceinfo;

import android.text.TextUtils;
import android.util.Base64;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.httpdns.HttpdnsProxy;
import com.netease.pharos.httpdns.HttpdnsUrlSwitcherCore;
import com.netease.pharos.network2.NetUtil;
import com.netease.pharos.network2.NetworkDealer;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class IpInfoCore {
    private static final String TAG = "IpInfoCore";
    private static IpInfoCore sDevicesCore = null;
    private String mUrl = "https://whoami.nie.netease.com/v1";
    private NetworkDealer<Integer> dealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.deviceinfo.IpInfoCore.1
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
            LogUtil.stepLog("探测用户设备的基本信息---解析内容");
            int result = 11;
            InputStreamReader in = new InputStreamReader(pInputStream);
            BufferedReader e = new BufferedReader(in);
            StringBuilder cache = new StringBuilder();
            while (true) {
                String line = e.readLine();
                if (line == null) {
                    break;
                }
                cache.append(line);
            }
            String resp = cache.toString();
            if (!TextUtils.isEmpty(resp)) {
                result = 0;
            }
            IpInfoCore.this.parse(resp);
            LogUtil.i(IpInfoCore.TAG, "探测用户设备的基本信息---解析结果=" + resp);
            return Integer.valueOf(result);
        }
    };

    private IpInfoCore() {
    }

    public static IpInfoCore getInstances() {
        if (sDevicesCore == null) {
            sDevicesCore = new IpInfoCore();
        }
        return sDevicesCore;
    }

    public int start() {
        String url = this.mUrl;
        int result = start(this.mUrl, null);
        LogUtil.i(TAG, "普通请求结果=" + result);
        if (result != 0) {
            String domain = Util.getDomainFromUrl(this.mUrl);
            if (TextUtils.isEmpty(domain)) {
                LogUtil.i(TAG, "domain为空");
                return result;
            }
            LogUtil.i(TAG, "走Httpdns");
            String[] mDomains = {domain};
            HttpdnsProxy.getInstances().synStart("Pharos_whoami", mDomains);
            HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit unit = HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore("Pharos_whoami");
            if (unit != null) {
                LogUtil.i(TAG, "httpdns结果=" + unit.toString());
                ArrayList<HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit> list = unit.getHttpdnsUrlUnitList();
                Iterator<HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit> it = list.iterator();
                while (it.hasNext()) {
                    HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit pUnit = it.next();
                    String pIp = pUnit.ip;
                    String pHost = pUnit.host;
                    LogUtil.i(TAG, "原url=" + url);
                    url = Util.replaceDomainWithIpAddr(url, pIp, "/");
                    LogUtil.i(TAG, "新url=" + url);
                    result = start(url, pHost);
                    LogUtil.i(TAG, "Httpdns ，返回码=" + result + ", ip=" + pIp);
                    if (result == 0) {
                        break;
                    }
                }
            } else {
                LogUtil.i(TAG, "httpdns结果为空");
            }
        }
        return result;
    }

    public int start(String url, String host) {
        LogUtil.stepLog("探测用户设备的基本信息");
        int result = 11;
        Map<String, String> header = new HashMap<>();
        header.put("X-AUTH-PRODUCT", "impression");
        header.put("X-AUTH-TOKEN", "token.e8sUKKMswYmL");
        header.put("X-IPDB-LOCALE", "en");
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
        LogUtil.stepLog("探测用户设备的基本信息---结果=" + result);
        return result;
    }

    public void parse(String resp) {
        LogUtil.i(TAG, "解析内容---" + resp);
        if (!TextUtils.isEmpty(resp)) {
            try {
                JSONObject data = new JSONObject(resp);
                String mIp_payload = data.has("payload") ? data.getString("payload") : "";
                String jsonStr = new String(Base64.decode(mIp_payload.getBytes(), 0));
                JSONObject payloadObj = new JSONObject(jsonStr);
                String mIp_addr = payloadObj.has("ip") ? payloadObj.getString("ip") : "";
                String mIp_province = null;
                if (payloadObj.has("subdivisions")) {
                    JSONObject temp1 = payloadObj.getJSONObject("subdivisions");
                    if (temp1.has("names")) {
                        JSONObject temp2 = temp1.getJSONObject("names");
                        if (temp2.has("en")) {
                            mIp_province = temp2.getString("en");
                        }
                    }
                }
                String mIp_country = null;
                if (payloadObj.has("country")) {
                    JSONObject temp12 = payloadObj.getJSONObject("country");
                    if (temp12.has("names")) {
                        JSONObject temp22 = temp12.getJSONObject("names");
                        if (temp22.has("en")) {
                            mIp_country = temp22.getString("en");
                        }
                    }
                }
                String mIp_continent = null;
                if (payloadObj.has("continent")) {
                    JSONObject temp13 = payloadObj.getJSONObject("continent");
                    if (temp13.has("names")) {
                        JSONObject temp23 = temp13.getJSONObject("names");
                        if (temp23.has("en")) {
                            mIp_continent = temp23.getString("en");
                        }
                    }
                }
                String mIp_sig = data.has("sig") ? data.getString("sig") : "";
                DeviceInfo.getInstances().setIpaddr(mIp_addr);
                DeviceInfo.getInstances().setIpContinent(mIp_continent);
                DeviceInfo.getInstances().setIpCountry(mIp_country);
                DeviceInfo.getInstances().setipProvince(mIp_province);
                DeviceInfo.getInstances().setIpPayload(mIp_payload);
                DeviceInfo.getInstances().setIpSig(mIp_sig);
            } catch (JSONException e) {
                LogUtil.e(TAG, "解析内容=" + e);
                e.printStackTrace();
            }
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
