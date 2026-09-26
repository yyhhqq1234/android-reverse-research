package com.netease.mobsecurity.interfacejni;

import android.content.Context;
import com.netease.mobsecurity.a.a.b;
import com.netease.mobsecurity.a.c;

/* loaded from: classes.dex */
public class SecruityInfo {
    c a;
    b b;

    public SecruityInfo(Context context) {
        this.a = null;
        this.b = null;
        this.a = c.a(context);
        if (this.a != null) {
            this.b = this.a.b();
        }
    }

    public String getSecInfo() {
        String a;
        synchronized (SecruityInfo.class) {
            a = this.b.a(0.0d, 0.0d);
        }
        return a;
    }

    public String getSecInfo(double d, double d2) {
        String a;
        synchronized (SecruityInfo.class) {
            a = this.b.a(d, d2);
        }
        return a;
    }

    public String getSigHash() {
        String a;
        synchronized (SecruityInfo.class) {
            a = this.b.a();
        }
        return a;
    }

    public String getUUID(int i) {
        String a;
        synchronized (SecruityInfo.class) {
            a = this.b.a(i);
        }
        return a;
    }
}
