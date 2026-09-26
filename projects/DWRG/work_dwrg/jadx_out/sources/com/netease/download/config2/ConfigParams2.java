package com.netease.download.config2;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ConfigParams2 {
    private static final String TAG = "ConfigParams";
    private static ConfigParams2 configParams2 = null;
    public String[] cdnArray;
    public boolean ipDnsPicker;
    public String[] lvsipArray;
    public String pickerUrl;
    public boolean removable;
    public int removeSlowCDNPercent;
    public int removeSlowCDNSpeed;
    public int removeSlowCDNTime;
    public int removeSlowCDNTopSpeed;
    public boolean report;
    public String[] reportIpArray;
    public String reportUrl;
    public int splitThreshold;
    public int totalWeight;
    public int[] weights;

    public static ConfigParams2 init(String configData) {
        if (configParams2 == null) {
            configParams2 = new ConfigParams2(configData);
        }
        return configParams2;
    }

    public static ConfigParams2 getInstance() {
        return configParams2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ConfigParams2(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.download.config2.ConfigParams2.<init>(java.lang.String):void");
    }

    public String[] getLvsipArray() {
        return this.lvsipArray;
    }

    public String[] getCndArray() {
        return this.cdnArray;
    }

    public String[] getReportIpArray() {
        return this.reportIpArray;
    }

    public int getSplitThreshold() {
        return this.splitThreshold;
    }

    public String getReportUrl() {
        return this.reportUrl;
    }

    public boolean isReport() {
        return this.report;
    }

    public boolean getIpDnsPicker() {
        return this.ipDnsPicker;
    }

    public String getPickerURL() {
        return this.pickerUrl;
    }

    public int getTotalWeight() {
        return this.totalWeight;
    }

    public int[] getWeights() {
        return this.weights;
    }

    public void changeUrlWeightAtIndex(int pIndex, String pUrl, int pWeight) {
        if (!TextUtils.isEmpty(this.cdnArray[pIndex]) && this.cdnArray[pIndex].equals(pUrl)) {
            this.totalWeight -= this.weights[pIndex] - pWeight;
            this.weights[pIndex] = pWeight;
        } else {
            LogUtil.e(TAG, "changeUrlWeightAtIndex invalid");
        }
    }

    public boolean hasCdnList() {
        return this.cdnArray != null && this.cdnArray.length > 0;
    }

    public boolean isValid() {
        return (this.cdnArray == null || this.cdnArray.length == 0) ? false : true;
    }

    public void clean() {
        configParams2 = null;
    }

    public String toString() {
        return "ConfigParams{cdnArray=" + Arrays.toString(this.cdnArray) + "weights=" + Arrays.toString(this.weights) + ", removable=" + this.removable + ", removeSlowCDNTopSpeed=" + this.removeSlowCDNTopSpeed + ", removeSlowCDNPercent=" + this.removeSlowCDNPercent + ", removeSlowCDNSpeed=" + this.removeSlowCDNSpeed + ", removeSlowCDNTime=" + this.removeSlowCDNTime + ", splitThreshold=" + this.splitThreshold + ", report=" + this.report + ", reportUrl='" + this.reportUrl + "', reportIpArray='" + Arrays.toString(this.reportIpArray) + "', ipDnsPicker=" + this.ipDnsPicker + ", pickerURL='" + this.pickerUrl + "', lvsipArray=" + Arrays.toString(this.lvsipArray) + '}';
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
