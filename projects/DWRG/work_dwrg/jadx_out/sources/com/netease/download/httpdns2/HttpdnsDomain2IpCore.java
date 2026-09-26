package com.netease.download.httpdns2;

import com.netease.download.Const;
import com.netease.download.httpdns2.ServicesNodeParams;
import com.netease.download.network.NetUtil;
import com.netease.download.network.NetworkDealer;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.download.util.TimeZoneUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpdnsDomain2IpCore implements Callable<Integer> {
    private static final String TAG = "HttpdnsDomain2IpCore";
    private String mDomain;
    private long mStartTime;
    private String mZone;
    private ArrayList<String> mHttpdnsServicesIpList = new ArrayList<>();
    private int mIndex = 0;
    private NetworkDealer<Boolean> mDomainDealer = new NetworkDealer<Boolean>() { // from class: com.netease.download.httpdns2.HttpdnsDomain2IpCore.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.netease.download.network.NetworkDealer
        public Boolean processContent(InputStream pInputStream) throws Exception {
            long useTime = System.currentTimeMillis() - HttpdnsDomain2IpCore.this.mStartTime;
            ReportInfo.getInstance().mHttpdnsTime.put(HttpdnsDomain2IpCore.this.mDomain, Long.valueOf(useTime));
            InputStreamReader in = new InputStreamReader(pInputStream, "utf-8");
            BufferedReader reader = new BufferedReader(in);
            StringBuffer info = new StringBuffer();
            while (true) {
                String line = reader.readLine();
                if (line != null) {
                    info.append(line);
                } else {
                    LogUtil.i(HttpdnsDomain2IpCore.TAG, "Httpdns环节--通过httpdns服务器解析域名，请求结果数据=" + info.toString());
                    JSONObject jsonObject = new JSONObject(info.toString());
                    boolean result = HttpdnsDomain2IpParams.getInstances().init(jsonObject.toString());
                    return Boolean.valueOf(result);
                }
            }
        }

        @Override // com.netease.download.network.NetworkDealer
        public void processHeader(Map<String, List<String>> pHeader, int pCode, String resUrl) {
        }
    };

    public void init(ServicesNodeParams.HttpdnsServicesUnit unit, String domain) {
        if (unit != null) {
            this.mZone = unit.zone;
            this.mHttpdnsServicesIpList = unit.ipArrayList;
            if (domain.contains("/")) {
                this.mDomain = StrUtil.getDomainFromUrl(domain);
            } else {
                this.mDomain = domain;
            }
        }
    }

    private boolean hasNext() {
        return this.mHttpdnsServicesIpList != null && this.mHttpdnsServicesIpList.size() > 0 && this.mIndex < this.mHttpdnsServicesIpList.size();
    }

    private String next() {
        String result = null;
        if (this.mHttpdnsServicesIpList != null && this.mHttpdnsServicesIpList.size() > this.mIndex) {
            result = this.mHttpdnsServicesIpList.get(this.mIndex);
        }
        this.mIndex++;
        return result;
    }

    public int start() {
        LogUtil.stepLog("Httpdns环节--通过httpdns服务器解析域名，开始");
        if (!TimeZoneUtil.isZoneEast8()) {
            return 17;
        }
        if (!hasNext()) {
            return 11;
        }
        String url = HttpDnsUtil.getHttpdnsDomain2IpUrl(next(), this.mDomain);
        int result = reqCdnTargetIp(url);
        return result;
    }

    public synchronized int reqCdnTargetIp(String url) {
        int result;
        LogUtil.stepLog("Httpdns环节--通过httpdns服务器解析域名，初始化");
        Map<String, String> header = new HashMap<>();
        result = 0;
        try {
            LogUtil.i(TAG, "Httpdns环节--通过httpdns服务器解析域名，url=" + url);
            header.put("Host", this.mDomain);
            this.mStartTime = System.currentTimeMillis();
            result = ((Integer) NetUtil.doHttpReq(url, null, "GET", header, this.mDomainDealer)).intValue();
        } catch (IOException e) {
            e.printStackTrace();
        }
        LogUtil.i(TAG, "Httpdns环节--通过httpdns服务器解析域名,请求结果=" + result);
        if (result != 0 && hasNext()) {
            result = start();
        }
        return result;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        return Integer.valueOf(start());
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
