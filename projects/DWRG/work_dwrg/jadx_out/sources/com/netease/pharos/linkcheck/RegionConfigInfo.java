package com.netease.pharos.linkcheck;

import android.text.TextUtils;
import com.netease.environment.config.SdkConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.qos.QosProxy;
import com.netease.pharos.util.LogUtil;
import com.netease.push.utils.PushConstants;
import com.sina.weibo.sdk.constant.WBPageConstants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RegionConfigInfo {
    private static final String TAG = "RegionConfigInfo";
    private static RegionConfigInfo sRegionConfigInfo = null;
    private JSONObject mInfo = null;
    private JSONObject mResult = null;

    private RegionConfigInfo() {
    }

    public static RegionConfigInfo getInstance() {
        if (sRegionConfigInfo == null) {
            sRegionConfigInfo = new RegionConfigInfo();
        }
        return sRegionConfigInfo;
    }

    public JSONObject getmResult() {
        return this.mResult;
    }

    public void setmResult(JSONObject mResult) {
        this.mResult = mResult;
    }

    public void init(String info) {
        if (TextUtils.isEmpty(info)) {
            LogUtil.i(TAG, "init 参数为空");
        }
        try {
            this.mInfo = new JSONObject(info);
        } catch (JSONException e) {
            LogUtil.w(TAG, "init JSONException = " + e);
        }
    }

    public void parse() {
        if (this.mInfo == null) {
            LogUtil.i(TAG, "dictionaryCfg 参数为空");
            return;
        }
        String deviceInfo = DeviceInfo.getInstances().getDeviceInfo(false);
        LogUtil.i(TAG, "mInfo 信息=" + this.mInfo.toString());
        JSONObject info = null;
        try {
            JSONObject info2 = new JSONObject(deviceInfo);
            info = info2;
        } catch (Exception e) {
            LogUtil.w(TAG, "parse Exception=" + e);
        }
        String ipContenent = null;
        String ipCountry = null;
        String ipProvince = null;
        try {
            ipContenent = info.getString("ip_continent");
            ipCountry = info.getString("ip_country");
            ipProvince = info.getString("ip_province");
        } catch (JSONException e1) {
            e1.printStackTrace();
        }
        LogUtil.i(TAG, "ipContenent=" + ipContenent + ", ipCountry=" + ipCountry + ", ipProvince=" + ipProvince);
        try {
            this.mResult = new JSONObject();
            if (this.mInfo.has("default")) {
                this.mResult = this.mInfo.getJSONObject("default");
            }
            JSONArray itemsArray = null;
            if (this.mInfo.has("continent") && !TextUtils.isEmpty(ipContenent)) {
                LogUtil.i(TAG, "continent环节");
                JSONObject continentJson = this.mInfo.getJSONObject("continent");
                LogUtil.i(TAG, "continent环节---continentJson=" + continentJson.toString());
                if (continentJson.has("items")) {
                    itemsArray = continentJson.getJSONArray("items");
                    LogUtil.i(TAG, "itemsArray=" + itemsArray.toString());
                }
                boolean isMatch = false;
                if (itemsArray != null && itemsArray.length() > 0) {
                    for (int i = 0; i < itemsArray.length(); i++) {
                        if (ipContenent.equals(itemsArray.getString(i))) {
                            isMatch = true;
                        }
                    }
                }
                LogUtil.i(TAG, "continent isMatch=" + isMatch);
                if (isMatch) {
                    LogUtil.i(TAG, "continent环节---匹配");
                    if (continentJson.has("measure") && this.mResult.has("measure")) {
                        JSONObject measureJson = continentJson.getJSONObject("measure");
                        Iterator it = measureJson.keys();
                        while (it.hasNext()) {
                            String key = it.next();
                            if (measureJson.has(key)) {
                                if ("interval".equals(key)) {
                                    int temp_int = measureJson.getInt(key);
                                    LogUtil.i(TAG, "continent环节 key=" + key + ", temp=" + temp_int);
                                    this.mResult.getJSONObject("measure").put(key, temp_int);
                                } else if (SdkConstants.JSON_KEY_ENABLE.equals(key)) {
                                    boolean temp_boolean = measureJson.getBoolean(key);
                                    LogUtil.i(TAG, "continent环节 key=" + key + ", temp=" + temp_boolean);
                                    this.mResult.getJSONObject("measure").put(key, temp_boolean);
                                } else if ("test".equals(key) || "desc".equals(key)) {
                                    String temp_string = measureJson.getString(key);
                                    LogUtil.i(TAG, "continent环节 key=" + key + ", temp=" + temp_string);
                                    this.mResult.getJSONObject("measure").put(key, temp_string);
                                } else {
                                    JSONObject temp = measureJson.getJSONObject(key);
                                    LogUtil.i(TAG, "continent环节 key=" + key + ", temp=" + temp);
                                    this.mResult.getJSONObject("measure").put(key, temp);
                                }
                            }
                        }
                    }
                    LogUtil.i(TAG, "continent环节---匹配---mResult=" + this.mResult.toString());
                }
            }
            if (this.mInfo.has("country") && !TextUtils.isEmpty(ipCountry)) {
                LogUtil.i(TAG, "country环节");
                JSONObject countryJson = this.mInfo.getJSONObject("country");
                if (countryJson.has("items")) {
                    itemsArray = countryJson.getJSONArray("items");
                    LogUtil.i(TAG, "itemsArray=" + itemsArray.toString());
                }
                boolean isMatch2 = false;
                if (itemsArray != null && itemsArray.length() > 0) {
                    for (int i2 = 0; i2 < itemsArray.length(); i2++) {
                        if (ipCountry.equals(itemsArray.getString(i2))) {
                            isMatch2 = true;
                        }
                    }
                }
                LogUtil.i(TAG, "country isMatch=" + isMatch2);
                if (isMatch2) {
                    LogUtil.i(TAG, "country环节--匹配");
                    if (countryJson.has("measure") && this.mResult.has("measure")) {
                        JSONObject measureJson2 = countryJson.getJSONObject("measure");
                        Iterator it2 = measureJson2.keys();
                        while (it2.hasNext()) {
                            String key2 = it2.next();
                            if (measureJson2.has(key2)) {
                                if ("interval".equals(key2)) {
                                    int temp_int2 = measureJson2.getInt(key2);
                                    LogUtil.i(TAG, "country环节 key=" + key2 + ", temp=" + temp_int2);
                                    this.mResult.getJSONObject("measure").put(key2, temp_int2);
                                } else if (SdkConstants.JSON_KEY_ENABLE.equals(key2)) {
                                    boolean temp_boolean2 = measureJson2.getBoolean(key2);
                                    LogUtil.i(TAG, "country环节 key=" + key2 + ", temp=" + temp_boolean2);
                                    this.mResult.getJSONObject("measure").put(key2, temp_boolean2);
                                } else if ("test".equals(key2) || "desc".equals(key2)) {
                                    String temp_string2 = measureJson2.getString(key2);
                                    LogUtil.i(TAG, "country环节 key=" + key2 + ", temp=" + temp_string2);
                                    this.mResult.getJSONObject("measure").put(key2, temp_string2);
                                } else {
                                    JSONObject temp2 = measureJson2.getJSONObject(key2);
                                    LogUtil.i(TAG, "country环节 key=" + key2 + ", temp=" + temp2);
                                    this.mResult.getJSONObject("measure").put(key2, temp2);
                                }
                            }
                        }
                    }
                    LogUtil.i(TAG, "country环节--匹配---mResult=" + this.mResult.toString());
                }
            }
            if (this.mInfo.has("province") && !TextUtils.isEmpty(ipProvince)) {
                LogUtil.i(TAG, "province环节");
                JSONObject provinceJson = this.mInfo.getJSONObject("province");
                if (provinceJson.has("items")) {
                    itemsArray = provinceJson.getJSONArray("items");
                    LogUtil.i(TAG, "itemsArray=" + itemsArray.toString());
                }
                boolean isMatch3 = false;
                if (itemsArray != null && itemsArray.length() > 0) {
                    for (int i3 = 0; i3 < itemsArray.length(); i3++) {
                        if (ipProvince.equals(itemsArray.getString(i3))) {
                            isMatch3 = true;
                        }
                    }
                }
                LogUtil.i(TAG, "province isMatch=" + isMatch3);
                if (isMatch3) {
                    LogUtil.i(TAG, "province环节--匹配");
                    if (provinceJson.has("measure") && this.mResult.has("measure")) {
                        JSONObject measureJson3 = provinceJson.getJSONObject("measure");
                        Iterator it3 = measureJson3.keys();
                        while (it3.hasNext()) {
                            String key3 = it3.next();
                            if (measureJson3.has(key3)) {
                                if ("interval".equals(key3)) {
                                    int temp_int3 = measureJson3.getInt(key3);
                                    LogUtil.i(TAG, "province环节 key=" + key3 + ", temp=" + temp_int3);
                                    this.mResult.getJSONObject("measure").put(key3, temp_int3);
                                } else if (SdkConstants.JSON_KEY_ENABLE.equals(key3)) {
                                    boolean temp_boolean3 = measureJson3.getBoolean(key3);
                                    LogUtil.i(TAG, "province环节 key=" + key3 + ", temp=" + temp_boolean3);
                                    this.mResult.getJSONObject("measure").put(key3, temp_boolean3);
                                } else if ("test".equals(key3) || "desc".equals(key3)) {
                                    String temp_string3 = measureJson3.getString(key3);
                                    LogUtil.i(TAG, "province环节 key=" + key3 + ", temp=" + temp_string3);
                                    this.mResult.getJSONObject("measure").put(key3, temp_string3);
                                } else {
                                    JSONObject temp3 = measureJson3.getJSONObject(key3);
                                    LogUtil.i(TAG, "province环节 key=" + key3 + ", temp=" + temp3);
                                    this.mResult.getJSONObject("measure").put(key3, temp3);
                                }
                            }
                        }
                    }
                    LogUtil.i(TAG, "province环节--匹配---mResult=" + this.mResult.toString());
                }
            }
            String projectId = DeviceInfo.getInstances().getProject();
            if (this.mInfo.has("project") && !TextUtils.isEmpty(projectId)) {
                LogUtil.i(TAG, "project环节");
                JSONObject projectJson = this.mInfo.getJSONObject("project");
                if (projectJson.has("items")) {
                    itemsArray = projectJson.getJSONArray("items");
                    LogUtil.i(TAG, "itemsArray=" + itemsArray.toString());
                }
                boolean isMatch4 = false;
                if (itemsArray != null && itemsArray.length() > 0) {
                    for (int i4 = 0; i4 < itemsArray.length(); i4++) {
                        if (projectId.equals(itemsArray.getString(i4))) {
                            isMatch4 = true;
                        }
                    }
                }
                LogUtil.i(TAG, "project isMatch=" + isMatch4);
                if (isMatch4) {
                    LogUtil.i(TAG, "project环节--匹配");
                    if (projectJson.has("measure") && this.mResult.has("measure")) {
                        JSONObject measureJson4 = projectJson.getJSONObject("measure");
                        Iterator it4 = measureJson4.keys();
                        while (it4.hasNext()) {
                            String key4 = it4.next();
                            if (measureJson4.has(key4)) {
                                if ("interval".equals(key4)) {
                                    int temp_int4 = measureJson4.getInt(key4);
                                    LogUtil.i(TAG, "project环节 key=" + key4 + ", temp=" + temp_int4);
                                    this.mResult.getJSONObject("measure").put(key4, temp_int4);
                                } else if (SdkConstants.JSON_KEY_ENABLE.equals(key4)) {
                                    boolean temp_boolean4 = measureJson4.getBoolean(key4);
                                    LogUtil.i(TAG, "project环节 key=" + key4 + ", temp=" + temp_boolean4);
                                    this.mResult.getJSONObject("measure").put(key4, temp_boolean4);
                                } else if ("test".equals(key4) || "desc".equals(key4)) {
                                    String temp_string4 = measureJson4.getString(key4);
                                    LogUtil.i(TAG, "project环节 key=" + key4 + ", temp=" + temp_string4);
                                    this.mResult.getJSONObject("measure").put(key4, temp_string4);
                                } else {
                                    JSONObject temp4 = measureJson4.getJSONObject(key4);
                                    LogUtil.i(TAG, "project环节 key=" + key4 + ", temp=" + temp4);
                                    this.mResult.getJSONObject("measure").put(key4, temp4);
                                }
                            }
                        }
                    }
                    LogUtil.i(TAG, "project环节--匹配---mResult=" + this.mResult.toString());
                }
            }
            LogUtil.i(TAG, "配置文件解析结果 = " + this.mResult.toString());
        } catch (Exception e2) {
            LogUtil.e(TAG, "dictionaryCfg Exception = " + e2);
        }
        QosProxy.getInstance().clean();
    }

    public boolean getEnable() {
        if (!this.mResult.has("measure")) {
            return false;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has(SdkConstants.JSON_KEY_ENABLE)) {
                return false;
            }
            boolean result = json.getBoolean(SdkConstants.JSON_KEY_ENABLE);
            return result;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getInterval() {
        int result = 0;
        if (!this.mResult.has("measure")) {
            return 0;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("interval")) {
                return 0;
            }
            try {
                result = json.getInt("interval");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return 0;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getNapIcmp() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("nap_icmp")) {
                return null;
            }
            try {
                result = json.getJSONObject("nap_icmp");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getRapIcmp() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("rap_icmp")) {
                return null;
            }
            try {
                result = json.getJSONObject("rap_icmp");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getRapUdp() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("rap_udp")) {
                return null;
            }
            try {
                result = json.getJSONObject("rap_udp");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getRapTransfer() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("rap_transfer")) {
                return null;
            }
            try {
                result = json.getJSONObject("rap_transfer");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getRapMtr() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("rap_mtr")) {
                return null;
            }
            try {
                result = json.getJSONObject("rap_mtr");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getSapUdp() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("sap_udp")) {
                return null;
            }
            try {
                result = json.getJSONObject("sap_udp");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getSapTransfer() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("sap_transfer")) {
                return null;
            }
            try {
                result = json.getJSONObject("sap_transfer");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getResolve() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("resolve")) {
                return null;
            }
            try {
                result = json.getJSONObject("resolve");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public JSONObject getRapQos() {
        JSONObject result = null;
        if (!this.mResult.has("measure")) {
            return null;
        }
        try {
            JSONObject json = this.mResult.getJSONObject("measure");
            if (json == null || !json.has("rap_qos")) {
                return null;
            }
            try {
                result = json.getJSONObject("rap_qos");
                return result;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
            return result;
        }
    }

    public void setTestResult() {
        JSONObject jSONObject = new JSONObject();
        JSONObject measure = new JSONObject();
        JSONObject nap_icmp = new JSONObject();
        try {
            nap_icmp.put(SdkConstants.JSON_KEY_ENABLE, true);
            nap_icmp.put("cycle", true);
            nap_icmp.put(WBPageConstants.ParamKey.COUNT, 10);
            JSONObject rap_icmp = new JSONObject();
            rap_icmp.put("dest", "106.2.42.128");
            rap_icmp.put(SdkConstants.JSON_KEY_ENABLE, true);
            rap_icmp.put("cycle", false);
            rap_icmp.put(WBPageConstants.ParamKey.COUNT, 20);
            JSONObject rap_udp = new JSONObject();
            rap_udp.put("dest", "106.2.42.128:8001");
            rap_udp.put(SdkConstants.JSON_KEY_ENABLE, true);
            rap_udp.put("cycle", false);
            rap_udp.put(WBPageConstants.ParamKey.COUNT, 10);
            rap_udp.put(PushConstants.INTENT_PACKAGE_NAME, 2);
            rap_udp.put("gate", Const.TIME_OUT);
            JSONObject rap_transfer = new JSONObject();
            rap_transfer.put("dest", "106.2.42.128:8001");
            rap_transfer.put(SdkConstants.JSON_KEY_ENABLE, true);
            rap_transfer.put("cycle", false);
            rap_transfer.put(WBPageConstants.ParamKey.COUNT, 10);
            rap_transfer.put("protocol", "kcp");
            rap_transfer.put(PushConstants.INTENT_PACKAGE_NAME, 2);
            JSONObject rap_mtr = new JSONObject();
            rap_mtr.put(SdkConstants.JSON_KEY_ENABLE, true);
            rap_mtr.put("cycle", false);
            rap_mtr.put(WBPageConstants.ParamKey.COUNT, 10);
            JSONObject sap_udp = new JSONObject();
            sap_udp.put("dest", "106.2.42.128:8001");
            sap_udp.put(SdkConstants.JSON_KEY_ENABLE, true);
            sap_udp.put("cycle", false);
            sap_udp.put(WBPageConstants.ParamKey.COUNT, 10);
            sap_udp.put("gate", Const.TIME_OUT);
            JSONObject sap_transfer = new JSONObject();
            sap_transfer.put("dest", "106.2.42.128:8001");
            sap_transfer.put(SdkConstants.JSON_KEY_ENABLE, true);
            sap_transfer.put("cycle", false);
            sap_transfer.put(WBPageConstants.ParamKey.COUNT, 10);
            sap_transfer.put("protocol", "tcp");
            sap_transfer.put(PushConstants.INTENT_PACKAGE_NAME, 2);
            JSONObject resolve = new JSONObject();
            resolve.put("dest", "impression.update.netease.com");
            resolve.put(SdkConstants.JSON_KEY_ENABLE, true);
            resolve.put("cycle", false);
            measure.put("nap_icmp", nap_icmp);
            measure.put("rap_icmp", rap_icmp);
            measure.put("rap_udp", rap_udp);
            measure.put("rap_transfer", rap_transfer);
            measure.put("rap_mtr", rap_mtr);
            measure.put("sap_udp", sap_udp);
            measure.put("sap_transfer", sap_transfer);
            measure.put("resolve", resolve);
            measure.put("interval", 20);
            measure.put(SdkConstants.JSON_KEY_ENABLE, true);
            measure.put("test", "test");
            jSONObject.put("measure", measure);
        } catch (Exception e) {
            LogUtil.w(TAG, "Exception=" + e);
        }
        this.mResult = jSONObject;
    }

    public JSONObject getTestConfig() {
        JSONObject jSONObject = new JSONObject();
        JSONObject measure = new JSONObject();
        JSONObject defaultJson = new JSONObject();
        JSONObject nap_icmp = new JSONObject();
        try {
            nap_icmp.put(SdkConstants.JSON_KEY_ENABLE, true);
            nap_icmp.put("cycle", false);
            nap_icmp.put(WBPageConstants.ParamKey.COUNT, 10);
            JSONObject rap_icmp = new JSONObject();
            rap_icmp.put("dest", "106.2.42.128");
            rap_icmp.put(SdkConstants.JSON_KEY_ENABLE, true);
            rap_icmp.put("cycle", true);
            rap_icmp.put(WBPageConstants.ParamKey.COUNT, 20);
            JSONObject rap_udp = new JSONObject();
            rap_udp.put("dest", "106.2.42.128:8001");
            rap_udp.put(SdkConstants.JSON_KEY_ENABLE, true);
            rap_udp.put("cycle", false);
            rap_udp.put(WBPageConstants.ParamKey.COUNT, 10);
            rap_udp.put(PushConstants.INTENT_PACKAGE_NAME, 2);
            rap_udp.put("gate", Const.TIME_OUT);
            JSONObject rap_transfer = new JSONObject();
            rap_transfer.put("dest", "106.2.42.128:8002");
            rap_transfer.put(SdkConstants.JSON_KEY_ENABLE, true);
            rap_transfer.put("cycle", false);
            rap_transfer.put(WBPageConstants.ParamKey.COUNT, 10);
            rap_transfer.put("protocol", "tcp");
            rap_transfer.put(PushConstants.INTENT_PACKAGE_NAME, 2);
            JSONObject rap_mtr = new JSONObject();
            rap_mtr.put(SdkConstants.JSON_KEY_ENABLE, true);
            rap_mtr.put("cycle", false);
            rap_mtr.put(WBPageConstants.ParamKey.COUNT, 10);
            JSONObject sap_udp = new JSONObject();
            sap_udp.put("dest", "52.52.108.248:8001");
            sap_udp.put(SdkConstants.JSON_KEY_ENABLE, true);
            sap_udp.put("cycle", false);
            sap_udp.put(WBPageConstants.ParamKey.COUNT, 10);
            sap_udp.put("gate", Const.TIME_OUT);
            JSONObject sap_transfer = new JSONObject();
            sap_transfer.put("dest", "52.52.108.248:8002");
            sap_transfer.put(SdkConstants.JSON_KEY_ENABLE, true);
            sap_transfer.put("cycle", false);
            sap_transfer.put(WBPageConstants.ParamKey.COUNT, 10);
            sap_transfer.put("protocol", "tcp");
            sap_transfer.put(PushConstants.INTENT_PACKAGE_NAME, 2);
            JSONObject resolve = new JSONObject();
            resolve.put("dest", "impression.update.netease.com");
            resolve.put(SdkConstants.JSON_KEY_ENABLE, true);
            resolve.put("cycle", false);
            measure.put("nap_icmp", nap_icmp);
            measure.put("rap_icmp", rap_icmp);
            measure.put("rap_udp", rap_udp);
            measure.put("rap_transfer", rap_transfer);
            measure.put("rap_mtr", rap_mtr);
            measure.put("sap_udp", sap_udp);
            measure.put("sap_transfer", sap_transfer);
            measure.put("resolve", resolve);
            measure.put("interval", 20);
            measure.put(SdkConstants.JSON_KEY_ENABLE, true);
            measure.put("test", "test");
            defaultJson.put("measure", measure);
            jSONObject.put("default", defaultJson);
            JSONArray itemsArray = new JSONArray();
            JSONObject continentJson = new JSONObject();
            itemsArray.put("asia");
            continentJson.put("items", itemsArray);
            JSONObject nap_icmp_temp = new JSONObject();
            JSONObject measureJson1 = new JSONObject();
            nap_icmp_temp.put(SdkConstants.JSON_KEY_ENABLE, false);
            nap_icmp_temp.put("cycle", false);
            nap_icmp_temp.put(WBPageConstants.ParamKey.COUNT, 20);
            measureJson1.put("nap_icmp", nap_icmp_temp);
            measureJson1.put("interval", 100);
            measureJson1.put(SdkConstants.JSON_KEY_ENABLE, false);
            measureJson1.put("test", "test1");
            continentJson.put("measure", measureJson1);
            jSONObject.put("continent", continentJson);
            JSONObject jSONObject2 = new JSONObject();
            JSONArray itemsArray2 = new JSONArray();
            itemsArray2.put("china");
            jSONObject2.put("items", itemsArray2);
            JSONObject measureJson2 = new JSONObject();
            JSONObject nap_icmp_temp2 = new JSONObject();
            nap_icmp_temp2.put(SdkConstants.JSON_KEY_ENABLE, true);
            nap_icmp_temp2.put("cycle", true);
            nap_icmp_temp2.put(WBPageConstants.ParamKey.COUNT, 30);
            measureJson2.put("nap_icmp", nap_icmp_temp2);
            jSONObject2.put("measure", measureJson2);
            jSONObject.put("country", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            JSONArray itemsArray3 = new JSONArray();
            itemsArray3.put("guangdong");
            jSONObject3.put("items", itemsArray3);
            JSONObject measureJson3 = new JSONObject();
            JSONObject nap_icmp_temp3 = new JSONObject();
            nap_icmp_temp3.put(SdkConstants.JSON_KEY_ENABLE, false);
            nap_icmp_temp3.put("cycle", false);
            nap_icmp_temp3.put(WBPageConstants.ParamKey.COUNT, 40);
            measureJson3.put("nap_icmp", nap_icmp_temp3);
            jSONObject3.put("measure", measureJson3);
            jSONObject.put("province", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            JSONArray itemsArray4 = new JSONArray();
            itemsArray4.put("111");
            jSONObject4.put("items", itemsArray4);
            JSONObject measureJson4 = new JSONObject();
            JSONObject nap_icmp_temp4 = new JSONObject();
            nap_icmp_temp4.put(SdkConstants.JSON_KEY_ENABLE, true);
            nap_icmp_temp4.put("cycle", true);
            nap_icmp_temp4.put(WBPageConstants.ParamKey.COUNT, 50);
            measureJson4.put("nap_icmp", nap_icmp_temp4);
            jSONObject4.put("measure", measureJson4);
            jSONObject.put("project", jSONObject4);
        } catch (Exception e) {
            LogUtil.w(TAG, "Exception=" + e);
        }
        return jSONObject;
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
