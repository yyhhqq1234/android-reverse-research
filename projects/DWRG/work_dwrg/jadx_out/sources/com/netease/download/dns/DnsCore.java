package com.netease.download.dns;

import com.netease.download.Const;
import com.netease.download.dns.DnsParams;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DnsCore {
    private static final String TAG = "DnsCore";
    private static DnsCore sDnsCore = null;
    private String[] mDomains = null;

    private DnsCore() {
    }

    public static DnsCore getInstances() {
        if (sDnsCore == null) {
            sDnsCore = new DnsCore();
        }
        return sDnsCore;
    }

    public void init(String[] domains) {
        this.mDomains = null;
        this.mDomains = domains;
    }

    public void init(String domain) {
        this.mDomains = null;
        this.mDomains = new String[1];
        this.mDomains[0] = domain;
    }

    public ArrayList<DnsParams.Unit> start() {
        DnsParams dnsParams = new DnsParams();
        for (String domain : this.mDomains) {
            LogUtil.i(TAG, "url=" + domain);
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_PATCH_HOST, domain);
            ArrayList<String> ipArrayList = new ArrayList<>();
            String domain2 = StrUtil.getDomainFromUrl(domain);
            try {
                LogUtil.i(TAG, "domain=" + domain2);
                long startTime = System.currentTimeMillis();
                InetAddress[] returnStr = InetAddress.getAllByName(domain2);
                long endTime = System.currentTimeMillis();
                ReportInfo.getInstance().mDnsTime.put(domain2, Long.valueOf(endTime - startTime));
                LogUtil.i(TAG, "returnStr.length=" + returnStr.length);
                for (InetAddress inetAddress : returnStr) {
                    String ip = inetAddress.getHostAddress();
                    LogUtil.i(TAG, "dns ip=" + ip);
                    ipArrayList.add(ip);
                }
            } catch (UnknownHostException e) {
                e.printStackTrace();
            }
            ReportInfo.getInstance().mSvrIps.put("dns." + domain2, ipArrayList);
            dnsParams.add(domain2, ipArrayList);
        }
        ArrayList<DnsParams.Unit> result = dnsParams.getDnsIpNodeUnitList();
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
