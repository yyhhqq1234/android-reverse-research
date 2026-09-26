package com.netease.download.config2;

import com.netease.download.Const;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class Lvsip {
    private static Lvsip lvsip = null;
    private static ArrayList<String> sLvsip = new ArrayList<>();
    private String[] mLvsips = null;
    private int index = 0;

    public static Lvsip getInstance() {
        if (lvsip == null) {
            lvsip = new Lvsip();
        }
        return lvsip;
    }

    public void init(String[] lvsips) {
        if (this.mLvsips == null) {
            this.mLvsips = lvsips;
        }
    }

    public boolean isCteateIp() {
        return sLvsip.size() != 0;
    }

    public void createLvsip() {
        String[] lvsips;
        ReportInfo.getInstance().mLvsip = 1;
        if (this.mLvsips != null) {
            lvsips = this.mLvsips;
        } else {
            lvsips = Const.REQ_IPS_WS;
        }
        for (String ip : lvsips) {
            sLvsip.add(ip);
        }
        ReportInfo.getInstance().mLvsipIps = sLvsip;
    }

    public boolean hasNext() {
        if (this.index >= sLvsip.size()) {
            return false;
        }
        return true;
    }

    public String getNewIpFromArray() {
        if (this.index >= sLvsip.size()) {
            return null;
        }
        String ip = sLvsip.get(this.index);
        String ip2 = ip;
        this.index++;
        return ip2;
    }

    public void clean() {
        this.index = 0;
        if (this.mLvsips != null && this.mLvsips.length > 0) {
            this.mLvsips = null;
        }
        if (sLvsip != null && sLvsip.size() > 0) {
            sLvsip.clear();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
