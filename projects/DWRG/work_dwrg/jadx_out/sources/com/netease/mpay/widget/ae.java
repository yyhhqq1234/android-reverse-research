package com.netease.mpay.widget;

import com.dodola.rocoo.Hack;
import com.netease.mpay.ew;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ae {
    private HashMap a = new HashMap();

    /* loaded from: classes.dex */
    public enum a {
        SET_PASSWORD,
        ENTER_MOBILE,
        MOBILE_LOGIN,
        MOBILE_REGISTER,
        MOBILE_FROZEN,
        GUIDE_VERIFY_SMS,
        RELATED_LOGIN;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public String a() {
            return name();
        }
    }

    public ae() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public ew a(a aVar) {
        if (this.a == null || aVar == null) {
            return null;
        }
        return (ew) this.a.get(aVar);
    }

    public void a() {
        this.a = null;
    }

    public boolean a(a aVar, ew ewVar) {
        if (aVar == null || ewVar == null) {
            return false;
        }
        this.a.put(aVar, ewVar);
        return true;
    }
}
