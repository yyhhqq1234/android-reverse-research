package com.netease.pharos.deviceinfo;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.PharosProxy;
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
public class NetDnsCore {
    private static final String TAG = "NetDnsCore";
    private static NetDnsCore sNetDnsCore = null;
    private String mUrl = "https://nstool.netease.com/jsonify/";
    private NetworkDealer<Integer> dealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.deviceinfo.NetDnsCore.1
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
            LogUtil.stepLog("Dns 查询 net_dns---解析内容");
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
            NetDnsCore.this.parse(resp);
            LogUtil.i(NetDnsCore.TAG, "Dns 查询 net_dns---解析结果=" + resp);
            return Integer.valueOf(result);
        }
    };

    private NetDnsCore() {
    }

    public static NetDnsCore getInstances() {
        if (sNetDnsCore == null) {
            sNetDnsCore = new NetDnsCore();
        }
        return sNetDnsCore;
    }

    public int start() {
        String url = this.mUrl;
        if (PharosProxy.getInstance().ismEB()) {
            this.mUrl = "https://dl.nstool.easebar.com/jsonify/";
        }
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
            HttpdnsProxy.getInstances().synStart("Pharos_nstool", mDomains);
            HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit unit = HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore("Pharos_nstool");
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
        LogUtil.stepLog("Dns 查询 net_dns");
        int result = 11;
        Map<String, String> header = new HashMap<>();
        header.put("X-AUTH-PROJECT", "impression");
        header.put("X-AUTH-TOKEN", "PFtTgRbVrj43");
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
        LogUtil.stepLog("Dns 查询 net_dns---结果=" + result);
        return result;
    }

    public void parse(String resp) {
        LogUtil.i(TAG, "解析内容---" + resp);
        if (!TextUtils.isEmpty(resp)) {
            try {
                JSONObject data = new JSONObject(resp);
                if (data.has("dns_province")) {
                    data.getString("dns_province");
                }
                if (data.has("ip_city")) {
                    data.getString("ip_city");
                }
                if (data.has("ip")) {
                    data.getString("ip");
                }
                if (data.has("ip_province")) {
                    data.getString("ip_province");
                }
                if (data.has("ip_isp")) {
                    data.getString("ip_isp");
                }
                if (data.has("res")) {
                    data.getString("res");
                }
                if (data.has("dns_city")) {
                    data.getString("dns_city");
                }
                if (data.has("dns_isp")) {
                    data.getString("dns_isp");
                }
                String mDns = data.has("dns") ? data.getString("dns") : "";
                if (data.has("msg")) {
                    data.getString("msg");
                }
                DeviceInfo.getInstances().setNameserver(mDns);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
