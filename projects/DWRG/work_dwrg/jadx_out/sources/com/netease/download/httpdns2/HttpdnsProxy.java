package com.netease.download.httpdns2;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.UrlSwitcher.HttpdnsUrlSwitcherCore;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.httpdns2.HttpdnsDomain2IpParams;
import com.netease.download.httpdns2.ServicesNodeParams;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.download.util.TimeZoneUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class HttpdnsProxy {
    private static final String TAG = "HttpdnsProxy";
    private static HttpdnsProxy sHttpdnsProxy = null;
    private boolean mHttpdnsResolved = false;

    private HttpdnsProxy() {
    }

    public static HttpdnsProxy getInstances() {
        if (sHttpdnsProxy == null) {
            sHttpdnsProxy = new HttpdnsProxy();
        }
        return sHttpdnsProxy;
    }

    public synchronized void synStart(String identify, String[] domains) {
        HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit unit = getInstances().getHttpdnsUrlSwitcherCore(identify);
        if (unit == null) {
            LogUtil.stepLog("Httpdns环节--开始httpdns流程");
            getInstances().start(identify, domains);
            ReportInfo.getInstance().mHttpDns = 1;
            LogUtil.stepLog("Httpdns环节--结束httpdns流程");
        } else {
            LogUtil.i(TAG, "Httpdns环节--" + identify + " 已经请求过httpdns");
        }
    }

    private int start(String identify, String[] domains) {
        ServicesNodeParams.HttpdnsServicesUnit unit;
        if (!TimeZoneUtil.isZoneEast8()) {
            LogUtil.i(TAG, "Httpdns环节--不在东八区");
            return 17;
        }
        if (TextUtils.isEmpty(identify) || domains == null || domains.length <= 0) {
            LogUtil.i(TAG, "Httpdns环节--参数错误");
            return 14;
        }
        ServicesNodeCore servicesNodeCore = new ServicesNodeCore();
        servicesNodeCore.init();
        int result = servicesNodeCore.start();
        LogUtil.i(TAG, "Httpdns环节--请求SA自建的Htttpdns服务器ip，请求返回值=" + result);
        LogUtil.i(TAG, "===============================================");
        ExecutorService exs = Executors.newFixedThreadPool(3);
        ArrayList<Future<Integer>> al = new ArrayList<>();
        if (result == 0) {
            LogUtil.stepLog("Httpdns环节--通过Httpdns解析域名");
            ServicesNodeParams.getInstances().getHttpdnsServicesUnitList();
            String overSea = DownloadInitInfo.getInstances().getOverSea();
            if ("1".equals(overSea) || "2".equals(overSea)) {
                LogUtil.i(TAG, "Httpdns环节--海外");
                unit = ServicesNodeParams.getInstances().get("oversea");
            } else {
                LogUtil.i(TAG, "Httpdns环节--大陆");
                unit = ServicesNodeParams.getInstances().get("mainland");
            }
            for (int i = 0; i < domains.length; i++) {
                LogUtil.i(TAG, "Httpdns环节-- i=" + i + ", unit=" + unit.toString() + ", 域名=" + domains[i]);
                HttpdnsDomain2IpCore httpdnsDomain2IpCore = new HttpdnsDomain2IpCore();
                httpdnsDomain2IpCore.init(unit, domains[i]);
                al.add(exs.submit(httpdnsDomain2IpCore));
            }
            Iterator<Future<Integer>> it = al.iterator();
            while (it.hasNext()) {
                Future<Integer> fs = it.next();
                try {
                    LogUtil.i(TAG, "Httpdns环节--请求httpdns服务器，解析域名，获取结果=" + fs.get());
                } catch (InterruptedException e) {
                    e.printStackTrace();
                } catch (ExecutionException e2) {
                    e2.printStackTrace();
                }
            }
            LogUtil.i(TAG, "Httpdns环节--通过Httpdns解析域名, 解析返回值=" + result);
            LogUtil.i(TAG, "Httpdns环节--结果数据，httpdns解析域名获取ip数据=" + HttpdnsDomain2IpParams.getInstances().getHttpdnsDomain2IpUnitList().toString());
            ArrayList<HttpdnsDomain2IpParams.Unit> HttpdnsDomain2IpUnitList = HttpdnsDomain2IpParams.getInstances().getHttpdnsDomain2IpUnitList();
            HttpdnsUrlSwitcherCore.getInstances().init(identify, HttpdnsDomain2IpUnitList);
            return result;
        }
        return result;
    }

    public boolean containKey(String identify) {
        if (!HttpdnsUrlSwitcherCore.getInstances().mHttpdnsUrlUnitMap.containsKey(identify)) {
            return false;
        }
        return true;
    }

    public void removeKey(String identify) {
        if (HttpdnsUrlSwitcherCore.getInstances().mHttpdnsUrlUnitMap.containsKey(identify)) {
            HttpdnsUrlSwitcherCore.getInstances().mHttpdnsUrlUnitMap.remove(identify);
        }
    }

    public HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit getHttpdnsUrlSwitcherCore(String identify) {
        if (!HttpdnsUrlSwitcherCore.getInstances().mHttpdnsUrlUnitMap.containsKey(identify)) {
            return null;
        }
        HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit result = HttpdnsUrlSwitcherCore.getInstances().mHttpdnsUrlUnitMap.get(identify);
        return result;
    }

    public boolean hasNext(String identify) {
        HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit keyHttpdnsUrlSwitcherCoreUnit;
        if (TextUtils.isEmpty(identify) || (keyHttpdnsUrlSwitcherCoreUnit = getHttpdnsUrlSwitcherCore(identify)) == null) {
            return false;
        }
        boolean result = keyHttpdnsUrlSwitcherCoreUnit.hasNext();
        return result;
    }

    public boolean isLast(String identify, String channel) {
        HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit keyHttpdnsUrlSwitcherCoreUnit;
        int count = 0;
        if (!TextUtils.isEmpty(identify) && (keyHttpdnsUrlSwitcherCoreUnit = getHttpdnsUrlSwitcherCore(identify)) != null) {
            ArrayList<HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit> httpdnsUrlUnitList = keyHttpdnsUrlSwitcherCoreUnit.mHttpdnsUrlUnitList;
            Iterator<HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit> it = httpdnsUrlUnitList.iterator();
            while (it.hasNext()) {
                HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit httpdnsUrlSwitcherCoreUnit = it.next();
                if (channel.equals(StrUtil.getCdnChannel(httpdnsUrlSwitcherCoreUnit.host))) {
                    count++;
                }
            }
        }
        if (count != 1) {
            return false;
        }
        return true;
    }

    public void clean() {
        HttpdnsUrlSwitcherCore.getInstances().mHttpdnsUrlUnitMap.clear();
    }

    public HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit next(String identify, String channel) {
        HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit keyHttpdnsUrlSwitcherCoreUnit;
        if (TextUtils.isEmpty(identify) || (keyHttpdnsUrlSwitcherCoreUnit = getHttpdnsUrlSwitcherCore(identify)) == null || keyHttpdnsUrlSwitcherCoreUnit.mHttpdnsUrlUnitList.size() <= 0) {
            return null;
        }
        HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit result = keyHttpdnsUrlSwitcherCoreUnit.next(channel);
        return result;
    }

    public void remove(String identify, String removeIp, String channel) {
        HttpdnsUrlSwitcherCore.KeyHttpdnsUrlSwitcherCoreUnit keyHttpdnsUrlSwitcherCoreUnit;
        if (!TextUtils.isEmpty(identify) && !TextUtils.isEmpty(removeIp) && (keyHttpdnsUrlSwitcherCoreUnit = getHttpdnsUrlSwitcherCore(identify)) != null) {
            for (int i = 0; i < keyHttpdnsUrlSwitcherCoreUnit.mHttpdnsUrlUnitList.size(); i++) {
                HttpdnsUrlSwitcherCore.HttpdnsUrlSwitcherCoreUnit httpdnsUrlSwitcherCoreUnit = keyHttpdnsUrlSwitcherCoreUnit.mHttpdnsUrlUnitList.get(i);
                String ip = httpdnsUrlSwitcherCoreUnit.ip;
                String pChannel = StrUtil.getCdnChannel(httpdnsUrlSwitcherCoreUnit.host);
                if (ip.equals(removeIp) && pChannel.equals(channel)) {
                    keyHttpdnsUrlSwitcherCoreUnit.mHttpdnsUrlUnitList.remove(i);
                }
            }
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
