package com.netease.pharos.deviceinfo;

import android.content.Context;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class DevicesInfoProxy {
    private static DevicesInfoProxy sDevicesInfoProxy = null;
    private Context mContext = null;
    private boolean mIsStart = false;

    private DevicesInfoProxy() {
    }

    public static DevicesInfoProxy getInstances() {
        if (sDevicesInfoProxy == null) {
            sDevicesInfoProxy = new DevicesInfoProxy();
        }
        return sDevicesInfoProxy;
    }

    public boolean isStart() {
        return this.mIsStart;
    }

    public void init(Context context) {
        this.mContext = context;
    }

    public int start() {
        this.mIsStart = true;
        IpInfoCore.getInstances().start();
        int result = NetDnsCore.getInstances().start();
        NetDevices.getInstances().init(this.mContext);
        NetDevices.getInstances().start();
        if (result != 0) {
            this.mIsStart = false;
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
