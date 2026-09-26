package com.netease.download.dns;

import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DnsParams {
    private ArrayList<Unit> mDnsIpNodeUnitList = new ArrayList<>();

    public void add(String domain, ArrayList<String> ipArrayList) {
        Unit unit = new Unit(domain, ipArrayList);
        this.mDnsIpNodeUnitList.add(unit);
    }

    public ArrayList<Unit> getDnsIpNodeUnitList() {
        return this.mDnsIpNodeUnitList;
    }

    /* loaded from: classes.dex */
    public static class Unit {
        public String domain;
        public ArrayList<String> ipArrayList;

        public Unit(String domain, ArrayList<String> ipArrayList) {
            this.domain = domain;
            this.ipArrayList = ipArrayList;
        }

        public String toString() {
            return "domain=" + this.domain + ", ipArrayList=" + this.ipArrayList.toString();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
