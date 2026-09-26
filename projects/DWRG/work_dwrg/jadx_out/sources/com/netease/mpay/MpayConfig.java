package com.netease.mpay;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MpayConfig implements Serializable {
    public int mScreenOrientation = -1;
    public Class mCustomActivityClass = null;

    public MpayConfig() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void removePermission(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (bk.n == null) {
            bk.n = new ArrayList();
        }
        bk.n.add(str);
    }

    public void setActivityClass(Class cls) {
        Cdo.c("Enter setActivityClass");
        this.mCustomActivityClass = cls;
    }

    public void setDebugMode(boolean z) {
        Cdo.b("setDebugMode ? " + z);
        Cdo.a(z);
    }

    public void setScreenOrientation(int i) {
        Cdo.c("Enter setScreenOrientation : " + i);
        this.mScreenOrientation = i;
    }

    public void setSkin(String str) {
        Cdo.c("Enter setSkin");
        bk.l = str;
    }

    public void setTVMode(boolean z) {
        Cdo.c("Enter setTVMode");
        bk.d = Boolean.valueOf(z);
    }

    public void setWelcomeWindow(int i) {
        bk.e = i;
    }
}
