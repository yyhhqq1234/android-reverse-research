package com.netease.pharos.qos;

import android.text.TextUtils;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.pharos.PharosListener;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.deviceinfo.DeviceInfo;
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
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HighSpeedListCore {
    private static final String TAG = "HighSpeedListCore";
    private String mUrl = null;
    private int mStauts = 0;
    private CheckHighSpeedListCore checkHighSpeedList = null;
    private NetworkDealer<Integer> dealer = new NetworkDealer<Integer>() { // from class: com.netease.pharos.qos.HighSpeedListCore.1
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
            LogUtil.stepLog("HighSpeedListCore 获取高速列表---解析内容");
            int result = 11;
            InputStreamReader in = new InputStreamReader(pInputStream, "utf-8");
            BufferedReader e = new BufferedReader(in);
            new StringBuilder();
            while (true) {
                String line = e.readLine();
                if (line == null) {
                    break;
                }
                HighSpeedListInfo.getInstance().add(line);
            }
            JSONObject parseResult = HighSpeedListInfo.getInstance().parse();
            String ip = PharosProxy.getInstance().getmIp();
            String port = PharosProxy.getInstance().getmPort();
            if (!TextUtils.isEmpty(ip) && !TextUtils.isEmpty(port)) {
                HighSpeedListCore.this.checkHighSpeedList.setData(parseResult);
                result = HighSpeedListCore.this.checkHighSpeedList.start();
                LogUtil.i(HighSpeedListCore.TAG, "HighSpeedListCore 获取高速列表---解析结果=" + result);
                HighSpeedListCore.this.mStauts = 1;
            } else {
                LogUtil.w(HighSpeedListCore.TAG, "HighSpeedListCore 获取高速列表---解析结果, ip 或者 port 为空");
            }
            return Integer.valueOf(result);
        }
    };

    public int start() {
        String ip = PharosProxy.getInstance().getmIp();
        String port = PharosProxy.getInstance().getmPort();
        String url = PharosProxy.getInstance().getmHighSpeedUrl();
        LogUtil.i(TAG, "HighSpeedListCore [start] param error ip=" + ip + ", port=" + port + ", url=" + url);
        if (TextUtils.isEmpty(ip) || TextUtils.isEmpty(port)) {
            LogUtil.i(TAG, "HighSpeedListCore [start] param error");
            return 11;
        }
        LogUtil.i(TAG, "HighSpeedListCore [start] mStauts=" + this.mStauts);
        if (this.mStauts == 2) {
            LogUtil.i(TAG, "获取高速列表 HighSpeedListCore already start");
            return 0;
        }
        if (this.mStauts == 1) {
            PharosListener listener = PharosProxy.getInstance().getmPharosListener();
            LogUtil.i(TAG, "查询高速列表 回调结果=" + CheckHighSpeedResult.getInstance().getResult().toString());
            if (listener != null) {
                JSONObject fanalResult = CheckHighSpeedResult.getInstance().getResult();
                if (fanalResult != null) {
                    listener.onResult(fanalResult);
                } else {
                    LogUtil.i(TAG, "qosResult is null");
                }
            }
            return 0;
        }
        this.mStauts = 2;
        this.checkHighSpeedList = new CheckHighSpeedListCore(ip, port);
        String projectId = PharosProxy.getInstance().getmProjectId();
        String region = DeviceInfo.getInstances().getmRegion();
        if (!TextUtils.isEmpty(url)) {
            this.mUrl = url;
        } else {
            if (TextUtils.isEmpty(projectId) || TextUtils.isEmpty(region)) {
                LogUtil.i(TAG, "获取高速列表 [start] param error : projectId=" + projectId + ", region=" + region);
                return 14;
            }
            this.mUrl = String.format(Const.QOS_LIGHTEN_URL, projectId, region);
        }
        LogUtil.i(TAG, "获取高速列表 普通请求结果 url=" + this.mUrl);
        int result = start(this.mUrl, null);
        LogUtil.i(TAG, "获取高速列表 普通请求结果=" + result);
        if (result != 0) {
            String domain = Util.getDomainFromUrl(this.mUrl);
            if (TextUtils.isEmpty(domain)) {
                LogUtil.i(TAG, "获取高速列表 普通请求结果 domain为空");
                return 14;
            }
            LogUtil.i(TAG, "获取高速列表 普通请求结果 走Httpdns");
            String[] mDomains = {domain};
            HttpdnsProxy.getInstances().synStart("Pharos_lighten", mDomains);
            HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit unit = HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore("Pharos_lighten");
            if (unit != null) {
                LogUtil.i(TAG, "获取高速列表 httpdns结果=" + unit.toString());
                ArrayList<HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit> list = unit.getHttpdnsUrlUnitList();
                Iterator<HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit> it = list.iterator();
                while (it.hasNext()) {
                    HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit pUnit = it.next();
                    String pIp = pUnit.ip;
                    String pHost = pUnit.host;
                    LogUtil.i(TAG, "获取高速列表 原url=" + this.mUrl);
                    this.mUrl = Util.replaceDomainWithIpAddr(this.mUrl, pIp, "/");
                    LogUtil.i(TAG, "获取高速列表 新url=" + this.mUrl);
                    result = start(this.mUrl, pHost);
                    LogUtil.i(TAG, "获取高速列表 Httpdns ，返回码=" + result + ", ip=" + pIp);
                    if (result == 0) {
                        break;
                    }
                }
            } else {
                LogUtil.i(TAG, "获取高速列表 httpdns结果为空");
            }
        }
        LogUtil.i(TAG, "查询高速列表 code结果=" + result);
        PharosListener listener2 = PharosProxy.getInstance().getmPharosListener();
        LogUtil.i(TAG, "查询高速列表 回调结果=" + CheckHighSpeedResult.getInstance().getResult().toString());
        if (listener2 != null) {
            JSONObject checkHighSpeedResult = CheckHighSpeedResult.getInstance().getResult();
            if (checkHighSpeedResult != null) {
                listener2.onResult(checkHighSpeedResult);
            } else {
                LogUtil.i(TAG, "qosResult is null");
            }
        }
        return result;
    }

    public int start(String url, String host) {
        LogUtil.stepLog("获取高速列表");
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

    public void clean() {
        this.mStauts = 0;
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
