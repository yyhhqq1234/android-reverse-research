package com.netease.download.task;

import android.content.Context;
import com.netease.download.Const;
import com.netease.download.config2.ConfigParams2;
import com.netease.download.config2.ConfigProxy;
import com.netease.download.config2.Lvsip;
import com.netease.download.dns.CdnIpController;
import com.netease.download.dns.CdnUseTimeProxy;
import com.netease.download.dns.DnsCore;
import com.netease.download.dns.DnsParams;
import com.netease.download.httpdns2.HttpdnsProxy;
import com.netease.download.listener.DownloadListenerCore;
import com.netease.download.reporter.ReportUtil;
import com.netease.download.util.LogUtil;
import com.netease.download.util.SpUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class Pre implements Callable<Integer> {
    private static final String TAG = "Pre";
    private static Pre sPre = null;
    private Context mContext;
    private String mOverSea;
    private String mProjectId;

    private Pre() {
    }

    public static synchronized Pre getInstatnces() {
        Pre pre;
        synchronized (Pre.class) {
            if (sPre == null) {
                sPre = new Pre();
            }
            pre = sPre;
        }
        return pre;
    }

    public void init(Context context, String projectId) {
        LogUtil.i(TAG, "预处理---初始化---开始");
        this.mProjectId = projectId;
        this.mContext = context;
        SpUtil.initialize(this.mContext);
        LogUtil.i(TAG, "预处理---初始化---结束");
    }

    public int start() {
        LogUtil.i(TAG, "预处理---开始");
        int result = 11;
        ExecutorService exs = Executors.newSingleThreadExecutor();
        ArrayList<Future<Integer>> al = new ArrayList<>();
        al.add(exs.submit(sPre));
        Iterator<Future<Integer>> it = al.iterator();
        while (it.hasNext()) {
            Future<Integer> fs = it.next();
            try {
                result = fs.get().intValue();
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
            }
        }
        LogUtil.i(TAG, "预处理---开始，结果=" + result);
        return result;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Integer call() throws Exception {
        int result;
        if (ConfigProxy.getInstances().getResult() == null) {
            result = ConfigProxy.getInstances().start(this.mContext, this.mProjectId);
            int mRetry = 3;
            while (result != 0 && mRetry > 0) {
                LogUtil.i(TAG, "配置文件重新下载,还有" + mRetry + "次重试机会");
                mRetry--;
                Lvsip.getInstance().clean();
                result = ConfigProxy.getInstances().start(this.mContext, this.mProjectId);
            }
        } else {
            result = 0;
        }
        DownloadListenerCore.getInstances();
        DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(result, 0L, 0L, "__DOWNLOAD_CONFIG__", "__DOWNLOAD_CONFIG__", ReportUtil.getInstances().getCurrentSessionId());
        ConfigParams2 configParams2 = ConfigProxy.getInstances().getResult();
        if (configParams2 != null) {
            LogUtil.i(TAG, "[QAQA]预处理，配置文件结果=" + configParams2.toString());
            ReportUtil.getInstances().getQuery();
            String[] cdnArray = configParams2.getCndArray();
            CdnUseTimeProxy.getInstance().init(cdnArray);
            if (cdnArray != null && cdnArray.length > 0) {
                DnsCore.getInstances().init(configParams2.getCndArray());
                ArrayList<DnsParams.Unit> dnsIpNodeUnitList = DnsCore.getInstances().start();
                LogUtil.i(TAG, "预处理，DNS结果=" + dnsIpNodeUnitList);
                if (dnsIpNodeUnitList != null && dnsIpNodeUnitList.size() > 0) {
                    DownloadListenerCore.getInstances();
                    DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(0, 0L, 0L, "__DOWNLOAD_DNS_RESOLVED__", "__DOWNLOAD_DNS_RESOLVED__", ReportUtil.getInstances().getCurrentSessionId());
                } else {
                    DownloadListenerCore.getInstances();
                    DownloadListenerCore.getDownloadListenerHandler().sendFinishMsg(11, 0L, 0L, "__DOWNLOAD_DNS_RESOLVED__", "__DOWNLOAD_DNS_RESOLVED__", ReportUtil.getInstances().getCurrentSessionId());
                }
                if (dnsIpNodeUnitList == null || dnsIpNodeUnitList.size() <= 0) {
                    LogUtil.i(TAG, "预处理，DNS解析失败，进入Httpdns解析流程");
                    HttpdnsProxy.getInstances().synStart(Const.HTTPDNS_CONFIG_CND, configParams2.getCndArray());
                    if (HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore(Const.HTTPDNS_CONFIG_CND) != null) {
                        LogUtil.i(TAG, "预处理，Httpdns结果=" + HttpdnsProxy.getInstances().getHttpdnsUrlSwitcherCore(Const.HTTPDNS_CONFIG_CND).toString());
                    } else {
                        LogUtil.i(TAG, "预处理，Httpdns结果为null");
                    }
                }
                LogUtil.i(TAG, "DnsParams.getInstances().getDnsIpNodeUnitList()=" + dnsIpNodeUnitList.toString());
                LogUtil.i(TAG, "ConfigParams2.getInstance().getWeights()=" + ConfigParams2.getInstance().getWeights());
                CdnIpController.getInstances().init(dnsIpNodeUnitList, ConfigParams2.getInstance().getWeights());
                LogUtil.i(TAG, "mOriginalMap=" + CdnIpController.getInstances().mOriginalMap.toString());
                LogUtil.i(TAG, "mActualTimeMap=" + CdnIpController.getInstances().mActualTimeMap.toString());
            }
        } else {
            LogUtil.i(TAG, "[QAQA]预处理，配置文件结果 = null");
        }
        LogUtil.i(TAG, "[QAQA]预处理，返回值=" + result);
        return Integer.valueOf(result);
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
