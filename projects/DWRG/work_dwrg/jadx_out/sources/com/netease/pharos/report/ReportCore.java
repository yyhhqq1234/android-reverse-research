package com.netease.pharos.report;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.httpdns.HttpdnsProxy;
import com.netease.pharos.httpdns.HttpdnsUrlSwitcherCore;
import com.netease.pharos.network2.NetUtil;
import com.netease.pharos.network2.NetworkDealer;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
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

/* loaded from: classes.dex */
public class ReportCore {
    private static final String TAG = "ReportCore";
    private String mUrl = null;
    private NetworkDealer<Integer> dealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.report.ReportCore.1
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
            LogUtil.stepLog("日志上传模块---解析内容");
            LogUtil.i(ReportCore.TAG, "上传结果=" + pCode);
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
            LogUtil.i(ReportCore.TAG, "日志上传模块---解析结果=" + resp);
            return Integer.valueOf(result);
        }
    };

    public void init(String url) {
        this.mUrl = url;
    }

    public int start(String info, String extra) {
        String url = this.mUrl;
        int result = start(info, this.mUrl, null);
        LogUtil.i(TAG, "普通上传结果=" + result);
        if (result != 0) {
            String domain = Util.getDomainFromUrl(this.mUrl);
            if (TextUtils.isEmpty(domain)) {
                LogUtil.i(TAG, "domain为空");
                return result;
            }
            LogUtil.i(TAG, "走Httpdns");
            String[] mDomains = {domain};
            HttpdnsProxy.getInstances().synStart("Pharos", mDomains);
            HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit unit = HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore("Pharos_sigma");
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
                    result = start(info, url, pHost);
                    LogUtil.i(TAG, "Httpdns 上传，返回码=" + result + ", ip=" + pIp);
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

    public int start(String info, String url, String host) {
        int result = 1;
        LogUtil.stepLog("日志上传模块");
        if (TextUtils.isEmpty(this.mUrl)) {
            LogUtil.i(TAG, "日志上传模块---url为空");
        } else if (TextUtils.isEmpty(info)) {
            LogUtil.i(TAG, "日志上传模块---上传信息为空");
        } else {
            LogUtil.i(TAG, "日志上传模块---上传信息1=" + info);
            result = 11;
            Map<String, String> header = new HashMap<>();
            header.put(HttpHeaders.Names.CONTENT_TYPE, "application/json");
            if (!TextUtils.isEmpty(host)) {
                header.put("Host-Type", host);
                header.put("Host", host);
            }
            Map<String, Object> pParams = new HashMap<>();
            pParams.put("post_content", info);
            if (!TextUtils.isEmpty(url)) {
                try {
                    result = ((Integer) NetUtil.doHttpReq(url, pParams, "POST", header, this.dealer)).intValue();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            LogUtil.stepLog("日志上传模块---结果=" + result);
        }
        return result;
    }

    public int start(String info) {
        int result = 1;
        LogUtil.stepLog("日志上传模块");
        if (TextUtils.isEmpty(this.mUrl)) {
            LogUtil.i(TAG, "日志上传模块---url为空");
        } else if (TextUtils.isEmpty(info)) {
            LogUtil.i(TAG, "日志上传模块---上传信息为空");
        } else {
            LogUtil.i(TAG, "日志上传模块---上传信息2=" + info);
            result = 11;
            Map<String, String> header = new HashMap<>();
            header.put(HttpHeaders.Names.CONTENT_TYPE, "application/json");
            Map<String, Object> pParams = new HashMap<>();
            pParams.put("post_content", info);
            if (!TextUtils.isEmpty(this.mUrl)) {
                try {
                    result = ((Integer) NetUtil.doHttpReq(this.mUrl, pParams, "POST", header, this.dealer)).intValue();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            LogUtil.stepLog("日志上传模块---结果=" + result);
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
