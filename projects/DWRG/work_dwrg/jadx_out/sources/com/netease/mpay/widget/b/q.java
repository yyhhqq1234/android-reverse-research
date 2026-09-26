package com.netease.mpay.widget.b;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.RIdentifier;
import com.tencent.connect.common.Constants;

/* loaded from: classes.dex */
public abstract class q {
    public q() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity, int i, String str) {
        if (activity.isFinishing()) {
            return;
        }
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(activity);
        String string = activity.getString(RIdentifier.h.cn);
        if (str.equals("file:///android_asset/netease_mpay/loading.html")) {
            sVar.b(activity.getString(RIdentifier.h.cb), activity.getString(RIdentifier.h.cJ), new r(this));
            return;
        }
        switch (i) {
            case Constants.ERROR_NO_SDCARD /* -12 */:
            case Constants.ERROR_NETWORK_UNAVAILABLE /* -10 */:
            case -4:
            case -3:
                Cdo.a("*** ERROR_BAD_URL ***");
                sVar.b(activity.getString(RIdentifier.h.bU), string, new s(this, activity));
                return;
            case Constants.ERROR_FILE_EXISTED /* -11 */:
            case Constants.ERROR_HTTPSTATUS_ERROR /* -9 */:
            case Constants.ERROR_SOCKETTIMEOUT /* -8 */:
            case Constants.ERROR_CONNECTTIMEOUT /* -7 */:
            case -6:
            default:
                sVar.b(activity.getString(RIdentifier.h.ch), string, new u(this));
                return;
            case -5:
                sVar.b(activity.getString(RIdentifier.h.cf), string, new t(this));
                return;
        }
    }
}
