package com.netease.mpay.e;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.c.a.d;
import com.netease.mpay.e.c.a.e;
import com.netease.mpay.e.c.f;
import com.netease.mpay.e.c.g;
import com.netease.mpay.e.c.j;
import com.netease.mpay.e.c.k;
import com.netease.mpay.e.c.l;
import com.netease.mpay.e.c.m;
import com.netease.mpay.e.c.n;
import com.netease.mpay.e.c.o;
import com.netease.mpay.e.c.p;
import com.netease.mpay.e.c.t;
import com.netease.mpay.hi;
import java.util.HashMap;

/* loaded from: classes.dex */
public class b {
    private Context a;
    private String b;
    private HashMap c = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        CONFIG,
        DEVICE,
        EXIT_ADS,
        LOGIN,
        MAILBOX,
        MESSAGE,
        NET_ERROR,
        PAY_RECORD,
        ROLE,
        EXT_IMAGE_CACHE,
        GUEST,
        APPCHANNEL,
        PATCH_LIST;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public b(Context context, String str) {
        this.a = context;
        this.b = str;
        n();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static b a(Context context) {
        return new b(context, "");
    }

    private com.netease.mpay.e.c.a.c a(a aVar) {
        if (!this.c.containsKey(aVar)) {
            this.c.put(aVar, b(aVar));
        }
        return (com.netease.mpay.e.c.a.c) this.c.get(aVar);
    }

    private com.netease.mpay.e.c.a.c b(a aVar) {
        switch (c.a[aVar.ordinal()]) {
            case 1:
                return new com.netease.mpay.e.c.b(this.a, this.b);
            case 2:
                return new com.netease.mpay.e.c.c(this.a, this.b);
            case 3:
                return new f(this.a, this.b);
            case 4:
                return new k(this.a, this.b);
            case 5:
                return new l(this.a, this.b);
            case 6:
                return new m(this.a, this.b);
            case 7:
                return new n(this.a, this.b);
            case 8:
                return new p(this.a, this.b);
            case 9:
                return new t(this.a, this.b);
            case 10:
                return new j(this.a, this.b);
            case 11:
                return new g(this.a, this.b);
            case 12:
                return new com.netease.mpay.e.c.a(this.a, this.b);
            case 13:
                return new o(this.a);
            default:
                return null;
        }
    }

    public static boolean j() {
        return d.d();
    }

    private void n() {
        if (hi.a.booleanValue() || TextUtils.isEmpty(this.b)) {
            return;
        }
        synchronized (hi.a) {
            if (!hi.a.booleanValue() && !TextUtils.isEmpty(this.b)) {
                com.netease.mpay.e.c.a.g.a(this.a, this.b);
                e.a(this.a, this.b);
                hi.a = true;
            }
        }
    }

    public l a() {
        return (l) a(a.MAILBOX);
    }

    public m b() {
        return (m) a(a.MESSAGE);
    }

    public k c() {
        return (k) a(a.LOGIN);
    }

    public com.netease.mpay.e.c.c d() {
        return (com.netease.mpay.e.c.c) a(a.DEVICE);
    }

    public com.netease.mpay.e.c.b e() {
        return (com.netease.mpay.e.c.b) a(a.CONFIG);
    }

    public p f() {
        return (p) a(a.PAY_RECORD);
    }

    public f g() {
        return (f) a(a.EXIT_ADS);
    }

    public n h() {
        return (n) a(a.NET_ERROR);
    }

    public t i() {
        return (t) a(a.ROLE);
    }

    public g k() {
        return (g) a(a.GUEST);
    }

    public com.netease.mpay.e.c.a l() {
        return (com.netease.mpay.e.c.a) a(a.APPCHANNEL);
    }

    public o m() {
        return (o) a(a.PATCH_LIST);
    }
}
