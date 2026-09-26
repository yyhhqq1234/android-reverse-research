package com.netease.pharos.location;

import android.text.TextUtils;
import com.alipay.android.phone.mrpc.core.Headers;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class NetAreaInfo {
    private static final String TAG = "NetAreaInfo";
    private static NetAreaInfo sNetAreaInfo = null;
    private String mLocation = null;
    private Map<String, ArrayList<NetAreaInfoUnit>> mIpHashMap = new HashMap();
    private Map<String, ArrayList<NetAreaInfoUnit>> mTimezonehashMap = new HashMap();
    private Map<String, String> mUdphashMap = new HashMap();

    private NetAreaInfo() {
    }

    public static NetAreaInfo getInstances() {
        if (sNetAreaInfo == null) {
            sNetAreaInfo = new NetAreaInfo();
        }
        return sNetAreaInfo;
    }

    public void init(String resp) {
        LogUtil.i(TAG, "下载关系映射表, 解析内容---" + resp);
        if (!TextUtils.isEmpty(resp)) {
            try {
                JSONObject info = new JSONObject(resp);
                this.mLocation = info.has(Headers.LOCATION) ? info.getString(Headers.LOCATION) : "";
                DeviceInfo.getInstances().setmLocation(this.mLocation);
                JSONObject iphash = info.has("iphash") ? info.getJSONObject("iphash") : null;
                if (iphash != null && iphash.length() > 0) {
                    Iterator it = iphash.keys();
                    while (it.hasNext()) {
                        String key = it.next();
                        JSONObject value = iphash.getJSONObject(key);
                        ArrayList<NetAreaInfoUnit> list = new ArrayList<>();
                        if (value != null && value.length() > 0) {
                            Iterator tempIt = value.keys();
                            while (tempIt.hasNext()) {
                                String key1 = tempIt.next();
                                String value1 = value.getString(key1);
                                NetAreaInfoUnit unit = new NetAreaInfoUnit(key1, value1);
                                list.add(unit);
                            }
                        }
                        this.mIpHashMap.put(key, list);
                    }
                }
                JSONObject timeZoneHash = info.has("timezonehash") ? info.getJSONObject("timezonehash") : null;
                if (timeZoneHash != null && timeZoneHash.length() > 0) {
                    Iterator it2 = timeZoneHash.keys();
                    while (it2.hasNext()) {
                        String key2 = it2.next();
                        JSONObject value2 = timeZoneHash.getJSONObject(key2);
                        ArrayList<NetAreaInfoUnit> list2 = new ArrayList<>();
                        if (value2 != null && value2.length() > 0) {
                            Iterator tempIt2 = value2.keys();
                            while (tempIt2.hasNext()) {
                                String key12 = tempIt2.next();
                                String value12 = value2.getString(key12);
                                NetAreaInfoUnit unit2 = new NetAreaInfoUnit(key12, value12);
                                list2.add(unit2);
                            }
                        }
                        this.mTimezonehashMap.put(key2, list2);
                    }
                }
                JSONObject udpHash = info.has("udphash") ? info.getJSONObject("udphash") : null;
                if (udpHash != null && udpHash.length() > 0) {
                    Iterator it3 = udpHash.keys();
                    while (it3.hasNext()) {
                        String key3 = it3.next();
                        this.mUdphashMap.put(key3, udpHash.getString(key3));
                    }
                }
            } catch (JSONException e) {
                LogUtil.i(TAG, "下载关系映射表, 解析内容=" + e);
                e.printStackTrace();
            }
        }
        LogUtil.i(TAG, "下载关系映射表, 解析内容，结果= " + toString());
    }

    public String getmLocation() {
        return this.mLocation;
    }

    public void setmLocation(String mLocation) {
        this.mLocation = mLocation;
    }

    public Map<String, ArrayList<NetAreaInfoUnit>> getmIpHashMap() {
        return this.mIpHashMap;
    }

    public void setmIpHashMap(Map<String, ArrayList<NetAreaInfoUnit>> mIpHashMap) {
        this.mIpHashMap = mIpHashMap;
    }

    public Map<String, ArrayList<NetAreaInfoUnit>> getmTimezonehashMap() {
        return this.mTimezonehashMap;
    }

    public void setmTimezonehashMap(Map<String, ArrayList<NetAreaInfoUnit>> mTimezonehashMap) {
        this.mTimezonehashMap = mTimezonehashMap;
    }

    public Map<String, String> getMudphashMap() {
        return this.mUdphashMap;
    }

    public void setMudphashMap(Map<String, String> mudphashMap) {
        this.mUdphashMap = mudphashMap;
    }

    public String timezonehashMapGetValue(String key, String info) {
        String result = null;
        if (TextUtils.isEmpty(key) || TextUtils.isEmpty(info)) {
            return null;
        }
        LogUtil.i(TAG, "mTimezonehashMap=" + this.mTimezonehashMap.toString());
        if (this.mTimezonehashMap.containsKey(key)) {
            ArrayList<NetAreaInfoUnit> list = this.mTimezonehashMap.get(key);
            Iterator<NetAreaInfoUnit> it = list.iterator();
            while (it.hasNext()) {
                NetAreaInfoUnit netAreaInfoUnit = it.next();
                String pKey = netAreaInfoUnit.mKey;
                String pValue = netAreaInfoUnit.mValue;
                if (info.equals(pKey)) {
                    result = pValue;
                }
            }
        }
        return result;
    }

    public String ipHashMapGetValue(String key, String info) {
        String result = null;
        if (TextUtils.isEmpty(key) || TextUtils.isEmpty(info)) {
            return null;
        }
        LogUtil.i(TAG, "mIpHashMap=" + this.mIpHashMap.toString());
        if (this.mIpHashMap.containsKey(key)) {
            ArrayList<NetAreaInfoUnit> list = this.mIpHashMap.get(key);
            Iterator<NetAreaInfoUnit> it = list.iterator();
            while (it.hasNext()) {
                NetAreaInfoUnit netAreaInfoUnit = it.next();
                String pKey = netAreaInfoUnit.mKey;
                String pValue = netAreaInfoUnit.mValue;
                if (info.equals(pKey)) {
                    result = pValue;
                }
            }
        }
        return result;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append("mLocation=").append(this.mLocation).append("\n\n");
        result.append("mIpHashMap=").append(this.mIpHashMap.toString()).append("\n\n");
        result.append("mTimezonehashMap=").append(this.mTimezonehashMap.toString()).append("\n\n");
        result.append("mudphashMap=").append(this.mUdphashMap.toString()).append("\n\n");
        return result.toString();
    }

    public String getDefaultData() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Headers.LOCATION, "cn");
            JSONObject iphash = new JSONObject();
            JSONObject continent = new JSONObject();
            JSONObject country = new JSONObject();
            continent.put("australia", "au");
            continent.put("oceania", "au");
            continent.put("europe", "eu");
            country.put("china", "cn");
            country.put("hongkong", "jp");
            country.put("macao", "jp");
            country.put("japan", "jp");
            country.put("republicofkorea", "jp");
            country.put("northKorea", "jp");
            country.put("taiwan", "jp");
            country.put("singapore", "sg");
            country.put("malaysia", "sg");
            country.put("thailand", "sg");
            country.put("vietnam", "sg");
            country.put("indonesia", "sg");
            country.put("india", "sg");
            country.put("laos", "sg");
            country.put("philippines", "sg");
            country.put("myanmar", "sg");
            iphash.put("continent", continent);
            iphash.put("country", country);
            jSONObject.put("iphash", iphash);
            JSONObject timezonehash = new JSONObject();
            JSONObject timezone = new JSONObject();
            JSONObject continent2 = new JSONObject();
            JSONObject country2 = new JSONObject();
            continent2.put("australia", "au");
            continent2.put("antarctica", "au");
            continent2.put("europe", "eu");
            continent2.put("america", "us");
            country2.put("hongkong", "jp");
            country2.put("macau", "jp");
            country2.put("pyongyang", "jp");
            country2.put("seoul", "jp");
            country2.put("singapore", "sg");
            country2.put("brunei", "sg");
            country2.put("kualalumpur", "sg");
            country2.put("vientiane", "sg");
            country2.put("jakarta", "sg");
            country2.put("manila", "sg");
            country2.put("philippines", "sg");
            country2.put("manado", "sg");
            country2.put("mataram", "sg");
            country2.put("denpasar", "sg");
            country2.put("ende", "sg");
            country2.put("raba", "sg");
            country2.put("singaraja", "sg");
            country2.put("kupang", "sg");
            timezone.put("+7", "sg");
            timezone.put("+8", "cn");
            timezone.put("+9", "jp");
            timezone.put("default", "us");
            timezonehash.put("continent", continent2);
            timezonehash.put("country", country2);
            timezonehash.put("timezone", timezone);
            jSONObject.put("timezonehash", timezonehash);
            JSONObject udphash = new JSONObject();
            udphash.put("au", "54.79.7.114:9999");
            udphash.put("eu", "52.59.177.115:9999");
            udphash.put("us", "13.56.172.0:9999");
            udphash.put("jp", "52.192.8.71:9999");
            udphash.put("sg", "13.228.230.21:9999");
            udphash.put("cn", "106.2.42.123:9999");
            jSONObject.put("udphash", udphash);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        LogUtil.i(TAG, "配置文件默认数据=" + jSONObject.toString());
        return jSONObject.toString();
    }

    /* loaded from: classes.dex */
    public class NetAreaInfoUnit {
        public String mKey;
        public String mValue;

        public NetAreaInfoUnit(String key, String value) {
            this.mKey = null;
            this.mValue = null;
            this.mKey = key;
            this.mValue = value;
        }

        public String toString() {
            StringBuffer result = new StringBuffer();
            result.append("mKey=").append(this.mKey).append(", mValue=").append(this.mValue).append("\n");
            return result.toString();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
