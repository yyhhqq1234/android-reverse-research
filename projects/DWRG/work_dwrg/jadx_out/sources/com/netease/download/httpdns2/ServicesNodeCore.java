package com.netease.download.httpdns2;

import android.text.TextUtils;
import android.util.Base64;
import com.netease.download.Const;
import com.netease.download.config2.ConfigParams2;
import com.netease.download.config2.Lvsip;
import com.netease.download.dns.DnsCore;
import com.netease.download.dns.DnsParams;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.network.NetUtil;
import com.netease.download.network.NetworkDealer;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.download.util.TimeZoneUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ServicesNodeCore {
    private static final String TAG = "HttpDnsCore";
    private String mHost = null;
    private NetworkDealer<Boolean> mServicesNodeDealer = new NetworkDealer<Boolean>() { // from class: com.netease.download.httpdns2.ServicesNodeCore.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.netease.download.network.NetworkDealer
        public Boolean processContent(InputStream pInputStream) throws Exception {
            InputStreamReader in = new InputStreamReader(pInputStream, "utf-8");
            BufferedReader reader = new BufferedReader(in);
            StringBuffer encodeData = new StringBuffer();
            while (true) {
                try {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    }
                    encodeData.append(line);
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
            String decodeData = new String(Base64.decode(encodeData.toString().getBytes(), 0));
            LogUtil.i(ServicesNodeCore.TAG, "Httpdns环节--请求SA自建的Httpdns服务器，获取结果 = " + decodeData);
            boolean result = ServicesNodeParams.getInstances().init(decodeData.toString());
            return Boolean.valueOf(result);
        }

        @Override // com.netease.download.network.NetworkDealer
        public void processHeader(Map<String, List<String>> pHeader, int pCode, String resUrl) {
            ArrayList<String> list;
            ArrayList<String> slowIps;
            ArrayList<String> errorIps;
            LogUtil.i(ServicesNodeCore.TAG, "pHeader=" + pHeader.toString() + ", pCode=" + pCode + ", resUrl=" + resUrl);
            if (200 != pCode && 206 != pCode && pCode != 0) {
                int count = ReportInfo.getInstance().mAbnormalRetnum.containsKey(new StringBuilder(String.valueOf(pCode)).toString()) ? ReportInfo.getInstance().mAbnormalRetnum.get(new StringBuilder(String.valueOf(pCode)).toString()).intValue() : 0;
                ReportInfo.getInstance().mAbnormalRetnum.put(new StringBuilder(String.valueOf(pCode)).toString(), Integer.valueOf(count + 1));
                String ip = StrUtil.getDomainFromUrl(resUrl);
                String domainUrl = StrUtil.replaceDomainWithIpAddr(resUrl, ServicesNodeCore.this.mHost, "/");
                if (ReportInfo.getInstance().mRetcodeFiles.containsKey(String.valueOf(pCode) + "!" + domainUrl)) {
                    list = ReportInfo.getInstance().mRetcodeFiles.get(String.valueOf(pCode) + "!" + domainUrl);
                } else {
                    list = new ArrayList<>();
                }
                if (!list.contains(ip)) {
                    list.add(ip);
                    LogUtil.i(ServicesNodeCore.TAG, "Httpdns环节--记录起来的出错的key=" + pCode + "!" + domainUrl + ", list是=" + list.toString());
                }
                ReportInfo.getInstance().mRetcodeFiles.put(String.valueOf(pCode) + "!" + domainUrl, list);
                ReportInfo.getInstance().mIpRemoved = 1;
                if (ReportInfo.getInstance().mSlowIps.get(ServicesNodeCore.this.mHost) != null) {
                    slowIps = ReportInfo.getInstance().mSlowIps.get(ServicesNodeCore.this.mHost);
                } else {
                    slowIps = new ArrayList<>();
                }
                if (!slowIps.contains(ip)) {
                    if (ReportInfo.getInstance().mErrorIps.get(ServicesNodeCore.this.mHost) != null) {
                        errorIps = ReportInfo.getInstance().mErrorIps.get(ServicesNodeCore.this.mHost);
                    } else {
                        errorIps = new ArrayList<>();
                    }
                    if (!errorIps.contains(ip)) {
                        errorIps.add(ip);
                        ReportInfo.getInstance().mErrorIps.put(ServicesNodeCore.this.mHost, errorIps);
                    }
                }
            }
        }
    };

    public void init() {
    }

    public synchronized int start() {
        int result;
        LogUtil.stepLog("Httpdns环节--请求SA自建的Httpdns服务器ip");
        if (!TimeZoneUtil.isZoneEast8()) {
            result = 17;
        } else {
            String oversea = DownloadInitInfo.getInstances().getOverSea();
            LogUtil.i(TAG, "Httpdns环节--请求SA自建的Httpdns服务器ip，先对链接做DNS解析");
            String url = HttpDnsUtil.getHttpdnsServicesIp();
            if ("2".equals(oversea)) {
                url = url.replaceAll("netease.com", "easebar.com");
            }
            DnsCore.getInstances().init(url);
            ArrayList<DnsParams.Unit> ServicesNodeUnitList = DnsCore.getInstances().start();
            LogUtil.i(TAG, "Httpdns环节--请求SA自建的Httpdns服务器ip，链接做DNS解析，DNS结果=" + ServicesNodeUnitList.toString());
            result = 11;
            if (ServicesNodeUnitList != null && ServicesNodeUnitList.size() > 0) {
                Iterator<DnsParams.Unit> it = ServicesNodeUnitList.iterator();
                while (it.hasNext()) {
                    DnsParams.Unit unit = it.next();
                    ArrayList<String> ipArray = unit.ipArrayList;
                    Iterator<String> it2 = ipArray.iterator();
                    while (it2.hasNext() && (result = reqServicesNodeIp((url = StrUtil.replaceDomainWithIpAddr(url, it2.next(), "/")), unit.domain)) != 0) {
                    }
                    if (result == 0) {
                        break;
                    }
                }
            }
            if (result != 0) {
                LogUtil.stepLog("Httpdns环节--请求SA自建的Httpdns服务器ip, 采用lvsip, 是否创建过lvsip列表=" + Lvsip.getInstance().isCteateIp());
                this.mHost = StrUtil.getDomainFromUrl(Const.WS_HTTP_DNS_REQ_URL);
                if (!Lvsip.getInstance().isCteateIp()) {
                    String[] ips = null;
                    if (ConfigParams2.getInstance() != null) {
                        ips = ConfigParams2.getInstance().getLvsipArray();
                    }
                    if (ips == null || ips.length <= 0) {
                        String oversea2 = DownloadInitInfo.getInstances().getOverSea();
                        if ("1".equals(oversea2)) {
                            ips = Const.REQ_IPS_WS_OVERSEA;
                            this.mHost = Const.REQ_URL_FOR_WS;
                        } else if ("2".equals(oversea2)) {
                            ips = Const.REQ_IPS_WS_OVERSEA;
                            this.mHost = "mbdl.update.easebar.com";
                        } else if ("0".equals(oversea2) || "-1".equals(oversea2)) {
                            ips = Const.REQ_IPS_WS_CHINA;
                            this.mHost = Const.REQ_URL_FOR_WS;
                        } else {
                            ips = Const.REQ_IPS_WS;
                            this.mHost = Const.REQ_URL_FOR_WS;
                        }
                    }
                    Lvsip.getInstance().init(ips);
                    Lvsip.getInstance().createLvsip();
                }
                while (Lvsip.getInstance().hasNext() && result != 0) {
                    String ip = Lvsip.getInstance().getNewIpFromArray();
                    LogUtil.i(TAG, "Httpdns环节--请求SA自建的Httpdns服务器ip, 采用lvsip，将要使用的ip=" + ip);
                    if (!TextUtils.isEmpty(ip)) {
                        url = StrUtil.replaceDomainWithIpAddr(url, ip, "/");
                        LogUtil.i(TAG, "Httpdns环节--请求SA自建的Httpdns服务器ip, 采用lvsip，将要使用的host=" + this.mHost);
                        result = reqServicesNodeIp(url, this.mHost);
                        if (result == 0) {
                            break;
                        }
                    }
                }
            }
        }
        return result;
    }

    public synchronized int reqServicesNodeIp(String url, String host) {
        int result;
        LogUtil.stepLog("Httpdns环节--请求SA自建的Htttpdns服务器ip");
        result = 11;
        try {
            Map<String, String> pHeaders = new HashMap<>();
            if (!TextUtils.isEmpty(host)) {
                pHeaders.put("Host", host);
                LogUtil.i(TAG, "Httpdns环节--请求SA自建的Htttpdns服务器ip，host=" + host);
            }
            LogUtil.i(TAG, "Httpdns环节--请求SA自建的Htttpdns服务器ip，url=" + url);
            if (!TextUtils.isEmpty(url)) {
                result = ((Integer) NetUtil.doHttpReq(url, null, "GET", pHeaders, this.mServicesNodeDealer)).intValue();
            }
        } catch (FileNotFoundException e) {
            result = 4;
            e.printStackTrace();
        } catch (SocketTimeoutException e2) {
            result = 13;
            e2.printStackTrace();
        } catch (Exception e3) {
            LogUtil.e(TAG, "Exception=" + e3.toString() + ", url=" + url.toString());
            result = 11;
            e3.printStackTrace();
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
