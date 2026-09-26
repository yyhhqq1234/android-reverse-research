package com.netease.download.config2;

import android.content.Context;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.dns.DnsCore;
import com.netease.download.dns.DnsParams;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.downloader.DownloadProxy;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.reporter.ReportUtil;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ConfigProxy {
    private static final String TAG = "ConfigProxy";
    private static ConfigProxy sConfigProxy = null;
    private int mRetry = 3;

    private ConfigProxy() {
    }

    public static ConfigProxy getInstances() {
        if (sConfigProxy == null) {
            sConfigProxy = new ConfigProxy();
        }
        return sConfigProxy;
    }

    public int start(Context context, String projectId) {
        if (!TextUtils.isEmpty(DownloadInitInfo.getInstances().mConfigurl)) {
            DnsCore.getInstances().init(DownloadInitInfo.getInstances().mConfigurl);
        } else {
            DnsCore.getInstances().init(Const.URL_CONFIG_FORMAT);
        }
        ArrayList<DnsParams.Unit> dnsIpNodeUnitList = DnsCore.getInstances().start();
        LogUtil.i(TAG, "配置文件做DNS解析，DNS结果=" + dnsIpNodeUnitList.toString());
        if (dnsIpNodeUnitList != null && dnsIpNodeUnitList.size() > 0) {
            DownloadListenerCore.getInstances();
            DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(0, 0L, 0L, "__DOWNLOAD_DNS_RESOLVED__", "__DOWNLOAD_DNS_RESOLVED__", ReportUtil.getInstances().getCurrentSessionId());
        } else {
            DownloadListenerCore.getInstances();
            DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(11, 0L, 0L, "__DOWNLOAD_DNS_RESOLVED__", "__DOWNLOAD_DNS_RESOLVED__", ReportUtil.getInstances().getCurrentSessionId());
        }
        ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_COLLECT_CONDITION, "46");
        int result = 11;
        ConfigCore2 configCore2 = new ConfigCore2();
        if (dnsIpNodeUnitList != null && dnsIpNodeUnitList.size() > 0) {
            ReportInfo.getInstance().mUpdateSvrIps = dnsIpNodeUnitList.get(0).ipArrayList;
            Iterator<DnsParams.Unit> it = dnsIpNodeUnitList.iterator();
            while (it.hasNext()) {
                DnsParams.Unit unit = it.next();
                ArrayList<String> ipArray = unit.ipArrayList;
                Iterator<String> it2 = ipArray.iterator();
                while (it2.hasNext() && (result = configCore2.start(context, projectId, it2.next())) != 0) {
                }
                if (result == 0) {
                    break;
                }
            }
        }
        LogUtil.stepLog("请求配置文件，采用dns请求，请求结果=" + result);
        if (result != 0) {
            LogUtil.stepLog("请求配置文件，采用lvsip, 是否创建过ip=" + Lvsip.getInstance().isCteateIp());
            if (!Lvsip.getInstance().isCteateIp()) {
                String oversea = DownloadInitInfo.getInstances().getOverSea();
                LogUtil.i(TAG, "海外=" + oversea);
                if ("1".equals(oversea) || "2".equals(oversea)) {
                    Lvsip.getInstance().init(Const.REQ_IPS_WS_OVERSEA);
                } else if ("0".equals(oversea) || "-1".equals(oversea)) {
                    Lvsip.getInstance().init(Const.REQ_IPS_WS_CHINA);
                } else {
                    Lvsip.getInstance().init(Const.REQ_IPS_WS);
                }
                Lvsip.getInstance().createLvsip();
            }
            while (Lvsip.getInstance().hasNext() && result != 0) {
                String ip = Lvsip.getInstance().getNewIpFromArray();
                LogUtil.i(TAG, "请求配置文件环节--采用lvsip，将要使用的ip=" + ip);
                if (!TextUtils.isEmpty(ip) && (result = configCore2.start(context, projectId, ip)) == 0) {
                    break;
                }
            }
        }
        if (result != 0) {
            DownloadProxy.mIsStart = false;
        }
        return result;
    }

    public void clean() {
        if (ConfigParams2.getInstance() != null) {
            ConfigParams2.getInstance().clean();
        }
    }

    public ConfigParams2 getResult() {
        return ConfigParams2.getInstance();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
