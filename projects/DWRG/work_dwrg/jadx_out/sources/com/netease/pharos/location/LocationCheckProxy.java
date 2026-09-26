package com.netease.pharos.location;

import android.content.Context;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.report.ReportProxy;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class LocationCheckProxy {
    private static LocationCheckProxy sLocationCheckProxy = null;
    private Context mContext = null;
    private boolean mIsStart = false;

    private LocationCheckProxy() {
    }

    public static LocationCheckProxy getInstances() {
        if (sLocationCheckProxy == null) {
            sLocationCheckProxy = new LocationCheckProxy();
        }
        return sLocationCheckProxy;
    }

    public boolean isStart() {
        return this.mIsStart;
    }

    public int start() {
        this.mIsStart = true;
        NetAreaCore.getInstances().start();
        LocationHunter locationHunter = new LocationHunter();
        DeviceInfo deviceInfo = locationHunter.start();
        if (deviceInfo != null) {
            locationHunter.checkRegion(deviceInfo);
        }
        RecheckResult.getInstance().chooseBest();
        String info = DeviceInfo.getInstances().getDeviceInfo(false);
        ReportProxy.getInstance().report(info);
        if (0 != 0) {
            this.mIsStart = false;
        }
        return 0;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
