package com.netease.pharos.httpdns;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.netease.pharos.httpdns.HttpdnsDomain2IpParams;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class HttpdnsUrlSwitcherCore {
    private static final String TAG = "HttpdnsUrlSwitcherCore";
    private static HttpdnsUrlSwitcherCore sHttpdnsUrlSwitcherCore = null;
    public HashMap<String, KeyHttpdnsUrlSwitcherCoreUnit> mHttpdnsUrlUnitMap = new HashMap<>();

    private HttpdnsUrlSwitcherCore() {
    }

    public static HttpdnsUrlSwitcherCore getInstances() {
        if (sHttpdnsUrlSwitcherCore == null) {
            sHttpdnsUrlSwitcherCore = new HttpdnsUrlSwitcherCore();
        }
        return sHttpdnsUrlSwitcherCore;
    }

    public void init(String identification, ArrayList<HttpdnsDomain2IpParams.Unit> list) {
        if (!this.mHttpdnsUrlUnitMap.containsKey(identification)) {
            ArrayList<HttpdnsUrlSwitcherCoreUnit> httpdnsUrlUnitList = new ArrayList<>();
            Iterator<HttpdnsDomain2IpParams.Unit> it = list.iterator();
            while (it.hasNext()) {
                HttpdnsDomain2IpParams.Unit unit = it.next();
                ArrayList<String> ipArrayList = unit.ipArrayList;
                String host = unit.domain;
                for (int i = 0; i < ipArrayList.size(); i++) {
                    HttpdnsUrlSwitcherCoreUnit httpdnsUrlSwitcherCoreUnit = new HttpdnsUrlSwitcherCoreUnit(host, ipArrayList.get(i));
                    httpdnsUrlUnitList.add(httpdnsUrlSwitcherCoreUnit);
                }
            }
            KeyHttpdnsUrlSwitcherCoreUnit keyHttpdnsUrlSwitcherCoreUnit = new KeyHttpdnsUrlSwitcherCoreUnit(httpdnsUrlUnitList);
            this.mHttpdnsUrlUnitMap.put(identification, keyHttpdnsUrlSwitcherCoreUnit);
        }
    }

    /* loaded from: classes.dex */
    public static class KeyHttpdnsUrlSwitcherCoreUnit {
        public ArrayList<HttpdnsUrlSwitcherCoreUnit> mHttpdnsUrlUnitList;
        public int mIndex = 0;

        public KeyHttpdnsUrlSwitcherCoreUnit(ArrayList<HttpdnsUrlSwitcherCoreUnit> httpdnsUrlUnitList) {
            this.mHttpdnsUrlUnitList = new ArrayList<>();
            this.mHttpdnsUrlUnitList = httpdnsUrlUnitList;
        }

        public boolean hasNext() {
            LogUtil.i(HttpdnsUrlSwitcherCore.TAG, "mIndex=" + this.mIndex + ", mHttpdnsUrlUnitList.size()=" + this.mHttpdnsUrlUnitList.size());
            if (this.mHttpdnsUrlUnitList.size() <= 0) {
                return false;
            }
            return true;
        }

        public HttpdnsUrlSwitcherCoreUnit next(String channel) {
            HttpdnsUrlSwitcherCoreUnit result = null;
            int min = -1;
            LogUtil.i(HttpdnsUrlSwitcherCore.TAG, "选择前=" + this.mHttpdnsUrlUnitList.toString());
            Iterator<HttpdnsUrlSwitcherCoreUnit> it = this.mHttpdnsUrlUnitList.iterator();
            while (it.hasNext()) {
                HttpdnsUrlSwitcherCoreUnit httpdnsUrlSwitcherCoreUnit = it.next();
                LogUtil.i(HttpdnsUrlSwitcherCore.TAG, "host=" + Util.getCdnChannel(httpdnsUrlSwitcherCoreUnit.host) + ", channel=" + channel);
                if (httpdnsUrlSwitcherCoreUnit != null && Util.getCdnChannel(httpdnsUrlSwitcherCoreUnit.host).equals(channel)) {
                    int linkCount = httpdnsUrlSwitcherCoreUnit.mLinkCount;
                    if (-1 == min) {
                        min = linkCount;
                        LogUtil.i(HttpdnsUrlSwitcherCore.TAG, "选择了1=" + httpdnsUrlSwitcherCoreUnit.toString());
                        result = httpdnsUrlSwitcherCoreUnit;
                    } else if (linkCount <= min) {
                        min = linkCount;
                        LogUtil.i(HttpdnsUrlSwitcherCore.TAG, "选择了2=" + httpdnsUrlSwitcherCoreUnit.toString());
                        result = httpdnsUrlSwitcherCoreUnit;
                    }
                }
            }
            if (result != null) {
                result.mLinkCount++;
            }
            LogUtil.i(HttpdnsUrlSwitcherCore.TAG, "选择后=" + this.mHttpdnsUrlUnitList.toString());
            return result;
        }

        public void remove(String removeIp) {
            if (!TextUtils.isEmpty(removeIp)) {
                for (int i = 0; i < this.mHttpdnsUrlUnitList.size(); i++) {
                    HttpdnsUrlSwitcherCoreUnit httpdnsUrlSwitcherCoreUnit = this.mHttpdnsUrlUnitList.get(i);
                    String ip = httpdnsUrlSwitcherCoreUnit.ip;
                    if (ip.equals(removeIp)) {
                        this.mHttpdnsUrlUnitList.remove(i);
                    }
                }
            }
        }

        public ArrayList<HttpdnsUrlSwitcherCoreUnit> getHttpdnsUrlUnitList() {
            return this.mHttpdnsUrlUnitList;
        }

        public String toString() {
            return "mIndex=" + this.mIndex + ", mHttpdnsUrlUnitList=" + this.mHttpdnsUrlUnitList.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class HttpdnsUrlSwitcherCoreUnit {
        public String host;
        public String ip;
        public int mLinkCount = 0;

        public HttpdnsUrlSwitcherCoreUnit(String host, String ip) {
            this.host = host;
            this.ip = ip;
        }

        public String toString() {
            return "host=" + this.host + ", ip=" + this.ip + ", mLinkCount=" + this.mLinkCount;
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
