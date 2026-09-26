package com.netease.pharos.location;

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

/* loaded from: classes.dex */
public class NetAreaCore {
    private static final String TAG = "NetAreaCore";
    private static NetAreaCore sLocationCore = null;
    private String mUrl = "https://impression.update.netease.com/net_decision.txt";
    private NetworkDealer<Integer> dealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.location.NetAreaCore.1
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
            LogUtil.stepLog("下载关系映射表---解析内容");
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
            LogUtil.i(NetAreaCore.TAG, "下载关系映射表---解析结果=" + cache.toString());
            NetAreaInfo.getInstances().init(cache.toString());
            return Integer.valueOf(result);
        }
    };

    private NetAreaCore() {
    }

    public static NetAreaCore getInstances() {
        if (sLocationCore == null) {
            sLocationCore = new NetAreaCore();
        }
        return sLocationCore;
    }

    public int start() {
        String url = this.mUrl;
        LogUtil.i(TAG, "普通请求结果 decision=" + PharosProxy.getInstance().getmDecision());
        if (1 == PharosProxy.getInstance().getmDecision()) {
            url = "https://impression.update.netease.com/net_decision_" + PharosProxy.getInstance().getmProjectId() + ".txt";
        }
        LogUtil.i(TAG, "普通请求结果=11");
        int result = start(url, null);
        LogUtil.i(TAG, "普通请求结果=" + result);
        if (result != 0) {
            String domain = Util.getDomainFromUrl(url);
            if (TextUtils.isEmpty(domain)) {
                LogUtil.i(TAG, "domain为空");
                return result;
            }
            LogUtil.i(TAG, "走Httpdns");
            String[] mDomains = {domain};
            HttpdnsProxy.getInstances().synStart("Pharos_impression", mDomains);
            HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit unit = HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore("Pharos_impression");
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
        if (result != 0) {
            LogUtil.stepLog("下载关系映射表---获取失败，采用默认数据");
            String defaultData = NetAreaInfo.getInstances().getDefaultData();
            LogUtil.stepLog("下载关系映射表---默认数据=" + defaultData);
            NetAreaInfo.getInstances().init(defaultData);
        }
        return result;
    }

    public int start(String url, String host) {
        LogUtil.stepLog("下载关系映射表");
        int result = 11;
        Map<String, String> header = new HashMap<>();
        if (!TextUtils.isEmpty(host)) {
            header.put("Host", host);
        }
        if (!TextUtils.isEmpty(url)) {
            try {
                result = ((Integer) NetUtil.doHttpReq(url, null, "GET", null, this.dealer)).intValue();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        LogUtil.stepLog("下载关系映射表---结果=" + result);
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
