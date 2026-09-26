package com.netease.download.httpdns2;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ServicesNodeParams {
    private static final String TAG = "ServicesNodeParams";
    private static ServicesNodeParams sServicesNodeParams = null;
    private ArrayList<HttpdnsServicesUnit> mHttpdnsServicesUnitList = new ArrayList<>();

    public static ServicesNodeParams getInstances() {
        if (sServicesNodeParams == null) {
            sServicesNodeParams = new ServicesNodeParams();
        }
        return sServicesNodeParams;
    }

    public boolean contain(String key) {
        boolean result = false;
        if (this.mHttpdnsServicesUnitList != null && this.mHttpdnsServicesUnitList.size() > 0) {
            Iterator<HttpdnsServicesUnit> it = this.mHttpdnsServicesUnitList.iterator();
            while (it.hasNext()) {
                HttpdnsServicesUnit httpdnsServicesUnit = it.next();
                if (httpdnsServicesUnit.zone.equals(key)) {
                    result = true;
                }
            }
        }
        return result;
    }

    public HttpdnsServicesUnit get(String key) {
        if (this.mHttpdnsServicesUnitList == null || this.mHttpdnsServicesUnitList.size() <= 0) {
            return null;
        }
        Iterator<HttpdnsServicesUnit> it = this.mHttpdnsServicesUnitList.iterator();
        while (it.hasNext()) {
            HttpdnsServicesUnit httpdnsServicesUnit = it.next();
            if (httpdnsServicesUnit.zone.equals(key)) {
                return httpdnsServicesUnit;
            }
        }
        return null;
    }

    public ArrayList<HttpdnsServicesUnit> getHttpdnsServicesUnitList() {
        return this.mHttpdnsServicesUnitList;
    }

    public boolean init(String data) {
        boolean z = false;
        LogUtil.stepLog("Httpdns环节--请求SA自建的Httpdns服务器ip，结果参数解析器，初始化数据");
        if (TextUtils.isEmpty(data)) {
            LogUtil.i(TAG, "Httpdns环节--请求SA自建的Httpdns服务器ip，结果参数解析器，数据为空");
            return false;
        }
        try {
            JSONObject jsonObject = new JSONObject(data);
            Iterator keys = jsonObject.keys();
            ArrayList<String> ipArrayList = null;
            while (keys.hasNext()) {
                try {
                    String zone = keys.next();
                    ArrayList<String> ipArrayList2 = new ArrayList<>();
                    if (!contain(zone)) {
                        JSONArray jsonArray = jsonObject.getJSONArray(zone);
                        for (int i = 0; i < jsonArray.length(); i++) {
                            String ip = jsonArray.getString(i);
                            ipArrayList2.add(ip);
                        }
                        HttpdnsServicesUnit unit = new HttpdnsServicesUnit(zone, ipArrayList2);
                        this.mHttpdnsServicesUnitList.add(unit);
                    }
                    ipArrayList = ipArrayList2;
                } catch (JSONException e) {
                    e = e;
                    e.printStackTrace();
                    return z;
                }
            }
            LogUtil.i(TAG, "Httpdns环节--请求SA自建的Httpdns服务器ip，结果参数解析器 , 解析结果=" + this.mHttpdnsServicesUnitList.toString());
            z = true;
            return true;
        } catch (JSONException e2) {
            e = e2;
        }
    }

    /* loaded from: classes.dex */
    public static class HttpdnsServicesUnit {
        public ArrayList<String> ipArrayList;
        public String zone;

        public HttpdnsServicesUnit(String zone, ArrayList<String> ipArrayList) {
            this.zone = zone;
            this.ipArrayList = ipArrayList;
        }

        public String toString() {
            return "zone=" + this.zone + ", ipArrayList=" + this.ipArrayList.toString();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
