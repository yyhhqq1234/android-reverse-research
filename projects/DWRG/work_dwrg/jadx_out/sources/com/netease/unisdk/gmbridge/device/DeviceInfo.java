package com.netease.unisdk.gmbridge.device;

import org.json.JSONObject;

/* loaded from: classes.dex */
public class DeviceInfo {
    public String appName;
    public String appVersion;
    public String batteryLevel;
    public String batteryStatus;
    public String deviceModel;
    public String freePhoneSpace;
    public String freeSDCardSpace;
    public String gmSdkVersion;
    public String language;
    public String networkType;
    public String osVersion;
    public String packageName;
    public String platform;
    public String totalPhoneSpace;
    public String totalSDCardSpace;

    public String toString() {
        return "DeviceInfo{packageName='" + this.packageName + "', appVersion='" + this.appVersion + "', appName='" + this.appName + "', deviceModel='" + this.deviceModel + "', batteryLevel='" + this.batteryLevel + "', batteryStatus='" + this.batteryStatus + "', freeSDCardSpace='" + this.freeSDCardSpace + "', freePhoneSpace='" + this.freePhoneSpace + "', totalSDCardSpace='" + this.totalSDCardSpace + "', totalPhoneSpace='" + this.totalPhoneSpace + "', osVersion='" + this.osVersion + "', platform='" + this.platform + "', networkType='" + this.networkType + "', language='" + this.language + "', gmSdkVersion='" + this.gmSdkVersion + "'}";
    }

    public String toJson() {
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("packageName", this.packageName);
            jsonObject.put("appVersion", this.appVersion);
            jsonObject.put("appName", this.appName);
            jsonObject.put("deviceModel", this.deviceModel);
            jsonObject.put("batteryLevel", this.batteryLevel);
            jsonObject.put("batteryStatus", this.batteryStatus);
            jsonObject.put("freeSDCardSpace", this.freeSDCardSpace);
            jsonObject.put("freePhoneSpace", this.freePhoneSpace);
            jsonObject.put("totalSDCardSpace", this.totalSDCardSpace);
            jsonObject.put("totalPhoneSpace", this.totalPhoneSpace);
            jsonObject.put("osVersion", this.osVersion);
            jsonObject.put("platform", this.platform);
            jsonObject.put("networkType", this.networkType);
            jsonObject.put("language", this.language);
            jsonObject.put("gmSdkVersion", this.gmSdkVersion);
            return jsonObject.toString();
        } catch (Exception e) {
            return "";
        }
    }
}
