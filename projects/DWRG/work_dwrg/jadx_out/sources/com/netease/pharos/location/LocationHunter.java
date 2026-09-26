package com.netease.pharos.location;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.config.CheckResult;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.link.LinkCheckListener;
import com.netease.pharos.link.NetmonProxy;
import com.netease.pharos.util.LogUtil;
import java.util.Map;

/* loaded from: classes.dex */
public class LocationHunter {
    private static final String TAG = "LocationHunter";
    private LinkCheckListener mListener = new LinkCheckListener() { // from class: com.netease.pharos.location.LocationHunter.1
        @Override // com.netease.pharos.link.LinkCheckListener
        public void callBack(CheckResult checkResult) {
            LogUtil.i(LocationHunter.TAG, "LocationHunter 回调结果=" + checkResult.toString());
            RecheckResult.getInstance().getList().add(checkResult);
        }
    };

    public DeviceInfo start() {
        LogUtil.i(TAG, "LocationHunter---初步判断---开始");
        DeviceInfo deviceInfo = DeviceInfo.getInstances();
        LogUtil.i(TAG, "deviceInfo=" + deviceInfo.toString());
        String network_isp = deviceInfo.getNetworkIsp();
        String network = deviceInfo.getNetwork();
        LogUtil.i(TAG, "LocationHunter---初步判断---判断网络，network_isp=" + network_isp + ", network=" + network);
        if (!TextUtils.isEmpty(network_isp) && !TextUtils.isEmpty(network) && network_isp.startsWith("460") && BaseConstants.NET_KEY_mobile.equals(network)) {
            deviceInfo.setmRegion("cn");
            deviceInfo.setmMethod("isp");
            LogUtil.i(TAG, "LocationHunter---初步判断---判断网络，结果=" + deviceInfo.getmRegion() + ", 方法=" + deviceInfo.getmMethod());
        } else {
            String continent = deviceInfo.getIpContinent();
            String country = deviceInfo.getIpCountry();
            String region = NetAreaInfo.getInstances().ipHashMapGetValue("continent", continent);
            LogUtil.i(TAG, "LocationHunter---初步判断---判断ip地址 continent=" + continent + ", country=" + country + ", continent=" + region);
            if (!TextUtils.isEmpty(region)) {
                deviceInfo.setmRegion(region);
                deviceInfo.setmMethod("ip-continent");
            }
            String region2 = NetAreaInfo.getInstances().ipHashMapGetValue("country", country);
            LogUtil.i(TAG, "LocationHunter---初步判断---判断ip地址 continent=" + continent + ", country=" + country + ", country=" + region2);
            if (!TextUtils.isEmpty(region2)) {
                deviceInfo.setmRegion(region2);
                deviceInfo.setmMethod("ip-country");
            }
            if (!TextUtils.isEmpty(deviceInfo.getmRegion())) {
                LogUtil.i(TAG, "LocationHunter---初步判断---判断ip地址，结果=" + deviceInfo.getmRegion() + ", 方法=" + deviceInfo.getmMethod());
            } else {
                String zoneContinent = deviceInfo.getAreazoneContinent();
                String zoneCountry = deviceInfo.getAreazoneCountry();
                String zoneRegion = NetAreaInfo.getInstances().timezonehashMapGetValue("continent", zoneContinent);
                LogUtil.i(TAG, "LocationHunter---初步判断---判断时区（地区） zoneContinent=" + zoneContinent + ", zoneCountry=" + zoneCountry + ", continent=" + zoneRegion);
                if (!TextUtils.isEmpty(zoneRegion)) {
                    deviceInfo.setmRegion(zoneRegion);
                    deviceInfo.setmMethod("areazone");
                }
                String zoneRegion2 = NetAreaInfo.getInstances().timezonehashMapGetValue("country", zoneCountry);
                LogUtil.i(TAG, "LocationHunter---初步判断---判断时区（地区） zoneContinent=" + zoneContinent + ", zoneCountry=" + zoneCountry + ", country=" + zoneCountry);
                if (!TextUtils.isEmpty(zoneRegion2)) {
                    deviceInfo.setmRegion(zoneRegion2);
                    deviceInfo.setmMethod("areazone");
                }
                if (!TextUtils.isEmpty(deviceInfo.getmRegion())) {
                    LogUtil.i(TAG, "LocationHunter---初步判断---判断时区（地区），结果=" + deviceInfo.getmRegion() + ", 方法=" + deviceInfo.getmMethod());
                } else {
                    String timezone = deviceInfo.getTimezone();
                    String netTimezone = NetAreaInfo.getInstances().timezonehashMapGetValue("timezone", timezone);
                    LogUtil.i(TAG, "LocationHunter---初步判断---判断时区（地区） timezone=" + timezone + ", netTimezone=" + netTimezone);
                    if (!TextUtils.isEmpty(netTimezone)) {
                        deviceInfo.setmRegion(netTimezone);
                        deviceInfo.setmMethod("timezone");
                    } else {
                        deviceInfo.setmRegion(NetAreaInfo.getInstances().timezonehashMapGetValue("timezone", "default"));
                        deviceInfo.setmMethod("timezone");
                    }
                    if (!TextUtils.isEmpty(deviceInfo.getmRegion())) {
                        LogUtil.i(TAG, "初步判断---判断地区时区，结果=" + deviceInfo.getmRegion() + ", 方法=" + deviceInfo.getmMethod());
                        LogUtil.i(TAG, "初步判断---判断地区时区，结果=" + deviceInfo.toString());
                    } else {
                        deviceInfo.setmRegion("cn");
                        deviceInfo.setmMethod("default");
                        LogUtil.i(TAG, "初步判断---出现异常走默认，结果=" + deviceInfo.getmRegion() + ", 方法=" + deviceInfo.getmMethod());
                    }
                }
            }
        }
        return deviceInfo;
    }

    public DeviceInfo checkRegion(DeviceInfo deviceInfo) {
        LogUtil.i(TAG, "检验地区---开始");
        if (deviceInfo == null) {
            LogUtil.i(TAG, "检验地区---参数为null");
            return null;
        }
        String region = deviceInfo.getmRegion();
        String method = deviceInfo.getmMethod();
        LogUtil.i(TAG, "checkRegion method=" + method);
        if ("isp".equals(method)) {
            return deviceInfo;
        }
        String loaction = NetAreaInfo.getInstances().getmLocation();
        LogUtil.i(TAG, "checkRegion loaction=" + loaction + ", region=" + region);
        boolean cnMatch = "cn".equals(loaction) && region.equals(loaction);
        boolean overseaMatch = "oversea".equals(loaction) && ("us".equals(region) || "au".equals(region) || "jp".equals(region) || "sg".equals(region) || "eu".equals(region));
        LogUtil.i(TAG, "checkRegion cnMatch=" + cnMatch + ", overseaMatch=" + overseaMatch);
        if (cnMatch || overseaMatch) {
            return deviceInfo;
        }
        Map<String, String> ipMap = NetAreaInfo.getInstances().getMudphashMap();
        for (String pRegion : ipMap.keySet()) {
            String ip = ipMap.get(pRegion);
            LogUtil.i(TAG, "ip=" + ip);
            String[] info = ip.split(Const.RESP_CONTENT_SPIT2);
            String pIp = null;
            int pPort = -1;
            if (info != null && info.length > 1) {
                pIp = info[0];
                try {
                    pPort = Integer.parseInt(info[1]);
                } catch (Exception e) {
                    LogUtil.w(TAG, "解析错误 Exception=" + e);
                }
            }
            LogUtil.i(TAG, "pIp=" + pIp + ", pPort=" + pPort);
            if (pIp != null && -1 != pPort) {
                NetmonProxy.getInstance().addNetmonCore(2, pIp, pPort, 4, com.netease.pharos.Const.TIME_OUT, 512, pRegion, this.mListener, 0, null, null, null);
            }
        }
        NetmonProxy.getInstance().start();
        LogUtil.i(TAG, "deviceInfo 结果=" + deviceInfo.toString());
        return deviceInfo;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
