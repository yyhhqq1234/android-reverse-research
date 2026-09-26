package com.netease.mpay;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class hk {
    private static hk a;
    private HashMap b = new HashMap();

    private hk() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static hk a() {
        hk hkVar;
        synchronized (hk.class) {
            if (a == null) {
                a = new hk();
            }
            hkVar = a;
        }
        return hkVar;
    }

    public MpayConfig a(String str) {
        return (MpayConfig) this.b.get(str);
    }

    public void a(String str, MpayConfig mpayConfig) {
        synchronized (this.b) {
            this.b.put(str, mpayConfig);
        }
    }
}
