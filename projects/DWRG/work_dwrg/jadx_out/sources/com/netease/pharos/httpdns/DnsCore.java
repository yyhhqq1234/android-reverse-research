package com.netease.pharos.httpdns;

import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.netease.pharos.httpdns.DnsParams;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
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
            ArrayList<String> ipArrayList = new ArrayList<>();
            String domain2 = Util.getDomainFromUrl(domain);
            try {
                LogUtil.i(TAG, "domain=" + domain2);
                System.currentTimeMillis();
                InetAddress[] returnStr = InetAddress.getAllByName(domain2);
                System.currentTimeMillis();
                LogUtil.i(TAG, "returnStr.length=" + returnStr.length);
                for (InetAddress inetAddress : returnStr) {
                    String ip = inetAddress.getHostAddress();
                    LogUtil.i(TAG, "dns ip=" + ip);
                    ipArrayList.add(ip);
                }
            } catch (UnknownHostException e) {
                e.printStackTrace();
            }
            dnsParams.add(domain2, ipArrayList);
        }
        ArrayList<DnsParams.Unit> result = dnsParams.getDnsIpNodeUnitList();
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
