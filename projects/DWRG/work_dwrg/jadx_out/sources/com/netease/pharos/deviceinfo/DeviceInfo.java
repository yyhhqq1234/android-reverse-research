package com.netease.pharos.deviceinfo;

import android.text.TextUtils;
import com.alipay.android.phone.mrpc.core.Headers;
import com.netease.download.Const;
import com.netease.environment.config.SdkConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DeviceInfo {
    private static final String TAG = "DeviceInfo";
    private static DeviceInfo sDeviceInfo = null;
    private String mNetid;
    private String mProject;
    private String mUdid;
    private String mIpaddr = "";
    private String mIpContinent = "";
    private String mIpCountry = "";
    private String mipProvince = "";
    private String mIpPayload = "";
    private String mIpSig = "";
    private String mNameserver = "";
    private String mNetwork = "";
    private String mNetworkIsp = "";
    private String mNetworkSignal = "";
    private String mNetworkIspName = "";
    private String mGateway = "";
    private String mTimezone = "";
    private String mAreazoneContinent = "";
    private String mAreazoneCountry = "";
    private String mOsName = "";
    private String mOsVer = "";
    private String mLocation = "";
    private String mRegion = "";
    private String mMethod = "";
    private Map<String, ArrayList<String>> mUdpMap = new HashMap();

    private DeviceInfo() {
        this.mProject = "";
        this.mUdid = "";
        this.mNetid = "";
        this.mProject = PharosProxy.getInstance().getmProjectId();
        this.mUdid = PharosProxy.getInstance().getmUdid();
        this.mNetid = PharosProxy.getInstance().getmNetId();
    }

    public static DeviceInfo getInstances() {
        if (sDeviceInfo == null) {
            sDeviceInfo = new DeviceInfo();
        }
        return sDeviceInfo;
    }

    public String getProject() {
        return this.mProject;
    }

    public void setProject(String mProject) {
        this.mProject = mProject;
    }

    public String getUdid() {
        return this.mUdid;
    }

    public void setUdid(String mUdid) {
        this.mUdid = mUdid;
    }

    public String getNetid() {
        return this.mNetid;
    }

    public void setNetid(String mNetid) {
        this.mNetid = mNetid;
    }

    public String getIpaddr() {
        return this.mIpaddr;
    }

    public void setIpaddr(String mIpaddr) {
        this.mIpaddr = mIpaddr;
    }

    public String getIpContinent() {
        return this.mIpContinent;
    }

    public void setIpContinent(String mIpContinent) {
        if (!TextUtils.isEmpty(mIpContinent)) {
            this.mIpContinent = mIpContinent.toLowerCase().replaceAll("_", "").replaceAll(" ", "");
        }
    }

    public String getIpCountry() {
        return this.mIpCountry;
    }

    public void setIpCountry(String mIpCountry) {
        if (!TextUtils.isEmpty(mIpCountry)) {
            this.mIpCountry = mIpCountry.toLowerCase().replaceAll("_", "").replaceAll(" ", "");
        }
    }

    public String getipProvince() {
        return this.mipProvince;
    }

    public void setipProvince(String mipProvince) {
        if (!TextUtils.isEmpty(mipProvince)) {
            this.mipProvince = mipProvince.toLowerCase().replaceAll("_", "").replaceAll(" ", "");
        }
    }

    public String getIpPayload() {
        return this.mIpPayload;
    }

    public void setIpPayload(String mIpPayload) {
        this.mIpPayload = mIpPayload;
    }

    public String getIpSig() {
        return this.mIpSig;
    }

    public void setIpSig(String mIpSig) {
        this.mIpSig = mIpSig;
    }

    public String getGateway() {
        return this.mGateway;
    }

    public void setGateway(String mGateway) {
        this.mGateway = mGateway;
    }

    public String getTimezone() {
        return this.mTimezone;
    }

    public void setTimezone(String mTimezone) {
        this.mTimezone = mTimezone;
    }

    public String getAreazoneContinent() {
        return this.mAreazoneContinent;
    }

    public void setAreazoneContinent(String mAreazoneContinent) {
        if (!TextUtils.isEmpty(mAreazoneContinent)) {
            this.mAreazoneContinent = mAreazoneContinent.toLowerCase().replaceAll("_", "").replaceAll(" ", "");
        }
    }

    public String getAreazoneCountry() {
        return this.mAreazoneCountry;
    }

    public void setAreazoneCountry(String mAreazoneCountry) {
        if (!TextUtils.isEmpty(mAreazoneCountry)) {
            this.mAreazoneCountry = mAreazoneCountry.toLowerCase().replaceAll("_", "").replaceAll(" ", "");
        }
    }

    public String getNetwork() {
        return this.mNetwork;
    }

    public void setNetwork(String mNetwork) {
        if (!TextUtils.isEmpty(mNetwork)) {
            this.mNetwork = mNetwork.toLowerCase();
        }
    }

    public String getNetworkIsp() {
        return this.mNetworkIsp;
    }

    public void setNetworkIsp(String mNetworkIsp) {
        this.mNetworkIsp = mNetworkIsp;
    }

    public String getNetworkIspName() {
        return this.mNetworkIspName;
    }

    public void setNetworkIspName(String mNetworkIspName) {
        this.mNetworkIspName = mNetworkIspName;
    }

    public String getNetworkSignal() {
        return this.mNetworkSignal;
    }

    public void setNetworkSignal(String mNetworkSignal) {
        this.mNetworkSignal = mNetworkSignal;
    }

    public String getNameserver() {
        return this.mNameserver;
    }

    public void setNameserver(String mNameserver) {
        this.mNameserver = mNameserver;
    }

    public String getOsName() {
        return this.mOsName;
    }

    public void setOsName(String mOsName) {
        this.mOsName = mOsName;
    }

    public String getOsVer() {
        return this.mOsVer;
    }

    public void setOsVer(String mOsVer) {
        this.mOsVer = mOsVer;
    }

    public String getmRegion() {
        return this.mRegion;
    }

    public void setmRegion(String mRegion) {
        this.mRegion = mRegion;
    }

    public String getmMethod() {
        return this.mMethod;
    }

    public void setmMethod(String mMethod) {
        this.mMethod = mMethod;
    }

    public String getmLocation() {
        return this.mLocation;
    }

    public void setmLocation(String mLocation) {
        this.mLocation = mLocation;
    }

    public Map<String, ArrayList<String>> getmUdpMap() {
        return this.mUdpMap;
    }

    public void setmUdpMap(Map<String, ArrayList<String>> mUdpMap) {
        this.mUdpMap = mUdpMap;
    }

    public String getDeviceInfo(boolean isAll) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("project", this.mProject != null ? this.mProject : "00000");
            jSONObject.put("udid", this.mUdid != null ? this.mUdid : "00000");
            jSONObject.put("netid", this.mNetid != null ? this.mNetid : "00000");
            jSONObject.put("ipaddr", this.mIpaddr);
            jSONObject.put("ip_continent", this.mIpContinent);
            jSONObject.put("ip_country", this.mIpCountry);
            jSONObject.put("ip_province", this.mipProvince);
            if (isAll) {
                jSONObject.put("ip_payload", this.mIpPayload);
                jSONObject.put("ip_sig", this.mIpSig);
            }
            jSONObject.put("nameserver", this.mNameserver);
            jSONObject.put("network", this.mNetwork);
            jSONObject.put("network_isp", this.mNetworkIsp);
            jSONObject.put("network_signal", this.mNetworkSignal);
            jSONObject.put("network_isp_name", this.mNetworkIspName);
            jSONObject.put("gateway", this.mGateway);
            jSONObject.put("timezone", this.mTimezone);
            jSONObject.put("areazone_continent", this.mAreazoneContinent);
            jSONObject.put("areazone_country", this.mAreazoneCountry);
            jSONObject.put("os_name", this.mOsName);
            jSONObject.put("os_ver", this.mOsVer);
            jSONObject.put(Headers.LOCATION, this.mLocation);
            if (this.mUdpMap != null && this.mUdpMap.size() > 0) {
                JSONObject udpPing = new JSONObject();
                String tBestRegion = this.mRegion;
                double rtt = 5000.0d;
                LogUtil.i(TAG, "mUdpMap=" + this.mUdpMap.toString());
                for (String pRegion : this.mUdpMap.keySet()) {
                    JSONArray udpArray = new JSONArray();
                    ArrayList<String> list = this.mUdpMap.get(pRegion);
                    for (int i = 0; i < list.size(); i++) {
                        udpArray.put(list.get(i));
                        if (1 == i && list.size() > 1) {
                            try {
                                double pRtt = Double.parseDouble(list.get(i));
                                LogUtil.i(TAG, "pRtt=" + pRtt + ", rtt=" + rtt);
                                if (-1.0d != pRtt && pRtt < rtt) {
                                    rtt = pRtt;
                                    tBestRegion = pRegion;
                                    LogUtil.i(TAG, "tBestRegion=" + tBestRegion + ", pRegion=" + pRegion);
                                }
                            } catch (Exception e) {
                                LogUtil.i(TAG, "Exception=" + e);
                            }
                        }
                    }
                    if (5000.0d != rtt) {
                        this.mRegion = tBestRegion;
                        this.mMethod = "udpping";
                    }
                    udpPing.put(pRegion, udpArray);
                }
                jSONObject.put("udp", udpPing);
            }
            jSONObject.put("region", this.mRegion);
            jSONObject.put("method", this.mMethod);
            jSONObject.put("type", "decision");
            if (PharosProxy.getInstance().isDebug()) {
                jSONObject.put("testlog", 1);
            } else {
                jSONObject.put("testlog", 0);
            }
            jSONObject.put("cell_id", Util.getCellId(PharosProxy.getInstance().getmContext()));
            jSONObject.put("ip_local", Util.getLocalIp(PharosProxy.getInstance().getmContext()));
        } catch (JSONException e2) {
            e2.printStackTrace();
            LogUtil.w(TAG, "DeviceInfo JSONException = " + e2);
        }
        return jSONObject.toString();
    }

    public String toString() {
        String result = getDeviceInfo(true);
        return result;
    }

    public JSONObject getTestDeviceInfo(boolean isAll) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("project", this.mProject != null ? this.mProject : "00000");
            jSONObject.put("udid", this.mUdid != null ? this.mUdid : "00000");
            jSONObject.put("netid", this.mNetid != null ? this.mNetid : "00000");
            jSONObject.put("ipaddr", "218.107.55.253");
            jSONObject.put("ip_continent", "asia");
            jSONObject.put("ip_country", "china");
            jSONObject.put("ip_province", "guangdong");
            if (isAll) {
                jSONObject.put("ip_payload", "eyJpcCI6ICIyMTguMTA3LjU1LjI1MyIsICJzdWJkaXZpc2lvbnMiOiB7Imlzb19jb2RlIjogIjQ0IiwgIm5hbWVzIjogeyJlbiI6ICJHdWFuZ2RvbmcifX0sICJjb250aW5lbnQiOiB7ImNvZGUiOiAiQVMiLCAibmFtZXMiOiB7ImVuIjogIkFzaWEifX0sICJjb3VudHJ5IjogeyJpc29fY29kZSI6ICJDTiIsICJuYW1lcyI6IHsiZW4iOiAiQ2hpbmEifX19");
                jSONObject.put("ip_sig", "ipzn228de5ca25215681eb0c04329d751dce");
            }
            jSONObject.put("nameserver", "218.107.55.177");
            jSONObject.put("network", "wifi");
            jSONObject.put("network_isp", "00000");
            jSONObject.put("network_signal", "4");
            jSONObject.put("network_isp_name", "unknow");
            jSONObject.put("gateway", "172.20.153.6");
            jSONObject.put("timezone", "+8");
            jSONObject.put("areazone_continent", "asia");
            jSONObject.put("areazone_country", "shanghai");
            jSONObject.put("os_name", SdkConstants.SYSTEM);
            jSONObject.put("os_ver", "6.0");
            jSONObject.put(Headers.LOCATION, "oversea");
            ArrayList<String> pList = new ArrayList<>();
            pList.add("7");
            pList.add("0.1");
            this.mUdpMap.put("cn", pList);
            this.mUdpMap.put("au", pList);
            this.mUdpMap.put("jp", pList);
            this.mUdpMap.put("us", pList);
            this.mUdpMap.put("eu", pList);
            this.mUdpMap.put("sg", pList);
            if (this.mUdpMap != null && this.mUdpMap.size() > 0) {
                JSONObject udpPing = new JSONObject();
                for (String pRegion : this.mUdpMap.keySet()) {
                    JSONArray udpArray = new JSONArray();
                    ArrayList<String> list = this.mUdpMap.get(pRegion);
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        String info = it.next();
                        udpArray.put(info);
                    }
                    udpPing.put(pRegion, udpArray);
                }
                jSONObject.put("udp", udpPing);
            }
            jSONObject.put("region", "cn");
            jSONObject.put("method", "udpping");
            jSONObject.put("type", "decision");
            jSONObject.put("cell_id", Util.getCellId(PharosProxy.getInstance().getmContext()));
            jSONObject.put("ip_local", Util.getLocalIp(PharosProxy.getInstance().getmContext()));
            if (PharosProxy.getInstance().isDebug()) {
                jSONObject.put("testlog", 1);
            } else {
                jSONObject.put("testlog", 0);
            }
        } catch (JSONException e) {
            e.printStackTrace();
            LogUtil.i(TAG, "DeviceInfo JSONException = " + e);
        }
        return jSONObject;
    }

    public void setTestData() {
        setNetwork("mobile1");
        setNetworkIsp("555");
        setIpContinent("1asia1");
        setIpCountry("1china1");
        setAreazoneContinent("australia1");
        setAreazoneCountry("hongkong1");
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
