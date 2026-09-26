package com.netease.pharos.httpdns;

import android.text.TextUtils;
import android.util.Base64;
import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.netease.pharos.httpdns.DnsParams;
import com.netease.pharos.network2.NetUtil;
import com.netease.pharos.network2.NetworkDealer;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
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
    private NetworkDealer<Integer> mServicesNodeDealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.httpdns.ServicesNodeCore.1
        @Override // com.netease.pharos.network2.NetworkDealer
        public /* bridge */ /* synthetic */ Integer processContent(InputStream inputStream, int i, Map map) throws Exception {
            return processContent(inputStream, i, (Map<String, String>) map);
        }

        @Override // com.netease.pharos.network2.NetworkDealer
        public void processHeader(Map<String, List<String>> pHeader, int pCode, Map<String, String> info) {
            LogUtil.i(ServicesNodeCore.TAG, "pHeader=" + pHeader.toString() + ", pCode=" + pCode + ", info=" + info.toString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.netease.pharos.network2.NetworkDealer
        public Integer processContent(InputStream pInputStream, int pCode, Map<String, String> info) throws Exception {
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
            ServicesNodeParams.getInstances().init(decodeData.toString());
            return 0;
        }
    };

    public void init() {
    }

    public synchronized int start() {
        int result;
        LogUtil.stepLog("Httpdns环节--请求SA自建的Httpdns服务器ip");
        if (!Util.isZoneEast8()) {
            result = 17;
        } else {
            LogUtil.i(TAG, "Httpdns环节--请求SA自建的Httpdns服务器ip，先对链接做DNS解析");
            DnsCore.getInstances().init(Const.WS_HTTP_DNS_REQ_URL);
            ArrayList<DnsParams.Unit> ServicesNodeUnitList = DnsCore.getInstances().start();
            LogUtil.i(TAG, "Httpdns环节--请求SA自建的Httpdns服务器ip，链接做DNS解析，DNS结果=" + ServicesNodeUnitList.toString());
            result = 11;
            String url = Const.WS_HTTP_DNS_REQ_URL;
            if (ServicesNodeUnitList != null && ServicesNodeUnitList.size() > 0) {
                Iterator<DnsParams.Unit> it = ServicesNodeUnitList.iterator();
                while (it.hasNext()) {
                    DnsParams.Unit unit = it.next();
                    ArrayList<String> ipArray = unit.ipArrayList;
                    Iterator<String> it2 = ipArray.iterator();
                    while (it2.hasNext()) {
                        String ip = it2.next();
                        url = Util.replaceDomainWithIpAddr(url, ip, "/");
                        result = reqServicesNodeIp(url, unit.domain);
                        if (result == 0) {
                            break;
                        }
                    }
                    if (result == 0) {
                        break;
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
