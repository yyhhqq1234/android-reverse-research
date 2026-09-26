package com.netease.mpay.server.response;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.ar;
import com.tencent.tauth.Tencent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class t {
    static HashMap h;
    static ArrayList i;
    int a;
    boolean b;
    boolean c;
    int d;
    int e;
    int f;
    int g;

    private t(int i2) {
        this(i2, true, true, 0, 0, 0, 0);
    }

    private t(int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6) {
        this.a = i2;
        this.b = z;
        this.c = z2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = i6;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @NonNull
    public static t a(Context context, int i2) {
        t tVar;
        if (h == null) {
            h = new HashMap();
        }
        if (h.get(Integer.valueOf(i2)) != null) {
            return (t) h.get(Integer.valueOf(i2));
        }
        switch (i2) {
            case 1:
                tVar = new t(i2, false, !b(1), RIdentifier.h.V, RIdentifier.e.x, RIdentifier.e.av, RIdentifier.e.aE);
                break;
            case 2:
                tVar = new t(i2, false, !b(2), RIdentifier.h.R, RIdentifier.e.t, RIdentifier.e.as, RIdentifier.e.aB);
                break;
            case 3:
                tVar = new t(i2, false, !b(3), RIdentifier.h.dJ, RIdentifier.e.y, RIdentifier.e.aw, RIdentifier.e.aF);
                break;
            case 4:
                tVar = new t(i2, false, c(context), RIdentifier.h.P, RIdentifier.e.r, RIdentifier.e.aq, RIdentifier.e.az);
                break;
            case 5:
                tVar = new t(i2, false, b(context), RIdentifier.h.Q, RIdentifier.e.s, RIdentifier.e.ar, RIdentifier.e.aA);
                break;
            case 7:
                tVar = new t(i2, false, !b(7), RIdentifier.h.S, RIdentifier.e.u, RIdentifier.e.at, RIdentifier.e.aC);
                break;
            case 9:
                tVar = new t(i2, false, com.netease.mpay.auth.b.a(context) && !b(9), RIdentifier.h.W, RIdentifier.e.z, RIdentifier.e.ax, RIdentifier.e.aG);
                break;
            case 10:
                tVar = new t(i2, false, com.netease.mpay.auth.a.a(context) && !b(10), RIdentifier.h.U, RIdentifier.e.w, RIdentifier.e.au, RIdentifier.e.aD);
                break;
            case Tencent.REQUEST_LOGIN /* 10001 */:
                tVar = new t(i2, true, true, RIdentifier.h.T, RIdentifier.e.v, 0, 0);
                break;
            default:
                tVar = new t(i2);
                break;
        }
        h.put(Integer.valueOf(i2), tVar);
        return tVar;
    }

    public static String a(Context context) {
        return new ar(context).a(ar.a.GOOGLE_SERVICE_CLIENT_ID);
    }

    public static void a(int i2) {
        if (i == null) {
            i = new ArrayList();
        }
        i.add(Integer.valueOf(i2));
        if (h != null) {
            t tVar = (t) h.get(Integer.valueOf(i2));
            if (tVar != null && tVar.c) {
                tVar.c = false;
            }
            h.put(Integer.valueOf(i2), tVar);
        }
    }

    private static boolean b(int i2) {
        if (i == null) {
            return false;
        }
        Iterator it = i.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num != null && num.intValue() == i2) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(Context context) {
        ar arVar = new ar(context);
        if (!b(5) && arVar.b(ar.a.GOOGLE_SERVICE_CLIENT_ID) && arVar.b(ar.a.GOOGLE_GMS_VERSION) && Build.VERSION.SDK_INT >= 9) {
            try {
                Class.forName("com.google.android.gms.common.api.GoogleApiClient");
                return true;
            } catch (Throwable th) {
                Cdo.a(th);
            }
        }
        return false;
    }

    private static boolean c(Context context) {
        ar arVar = new ar(context);
        if (!b(4) && arVar.b(ar.a.FACEBOOK_APP_ID) && Build.VERSION.SDK_INT > 14) {
            try {
                Class.forName("com.facebook.FacebookSdkVersion");
                return true;
            } catch (Throwable th) {
                Cdo.a(th);
            }
        }
        return false;
    }
}
