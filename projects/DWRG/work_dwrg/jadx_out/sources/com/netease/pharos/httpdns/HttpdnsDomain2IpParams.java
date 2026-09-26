package com.netease.pharos.httpdns;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpdnsDomain2IpParams {
    private static final String TAG = "HttpdnsDomain2IpParams";
    private static HttpdnsDomain2IpParams sHttpdnsDomain2IpParams = null;
    private static volatile ArrayList<Unit> sHttpdnsDomain2IpUnitList = new ArrayList<>();

    public static HttpdnsDomain2IpParams getInstances() {
        if (sHttpdnsDomain2IpParams == null) {
            sHttpdnsDomain2IpParams = new HttpdnsDomain2IpParams();
        }
        return sHttpdnsDomain2IpParams;
    }

    private boolean isContainCdn(String domain) {
        Iterator<Unit> it = sHttpdnsDomain2IpUnitList.iterator();
        while (it.hasNext()) {
            Unit unit = it.next();
            if (unit.domain.equals(domain)) {
                return true;
            }
        }
        return false;
    }

    public synchronized ArrayList<Unit> getHttpdnsDomain2IpUnitList() {
        return sHttpdnsDomain2IpUnitList;
    }

    public synchronized int init(String data) {
        int i;
        LogUtil.stepLog("Httpdns环节--通过httpdns服务器解析域名，结果参数解析器，初始化数据");
        if (TextUtils.isEmpty(data)) {
            i = 14;
        } else {
            ArrayList<String> ipArrayList = new ArrayList<>();
            try {
                JSONObject jsonObject = new JSONObject(data);
                String domain = jsonObject.optString(Const.NT_PARAM_DOMAIN);
                JSONArray jsonArray = jsonObject.optJSONArray("addrs");
                for (int i2 = 0; i2 < jsonArray.length(); i2++) {
                    ipArrayList.add(jsonArray.optString(i2));
                }
                int ttl = jsonObject.optInt("ttl");
                if (!isContainCdn(domain)) {
                    Unit unit = new Unit(domain, ipArrayList, ttl);
                    sHttpdnsDomain2IpUnitList.add(unit);
                }
                LogUtil.i(TAG, "Httpdns环节--通过httpdns服务器解析域名，结果参数解析器, 解析结果=" + sHttpdnsDomain2IpUnitList.toString());
                i = 0;
            } catch (JSONException e) {
                e.printStackTrace();
                i = 11;
            }
        }
        return i;
    }

    /* loaded from: classes.dex */
    public static class Unit {
        public String domain;
        public ArrayList<String> ipArrayList;
        public int ttl;

        public Unit(String domain, ArrayList<String> ipArrayList, int ttl) {
            this.domain = domain;
            this.ipArrayList = ipArrayList;
            this.ttl = ttl;
        }

        public String toString() {
            return "domain=" + this.domain + ", ipArrayList=" + this.ipArrayList.toString() + ", ttl=" + this.ttl;
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
