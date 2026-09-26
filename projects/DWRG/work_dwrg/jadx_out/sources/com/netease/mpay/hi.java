package com.netease.mpay;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.a;
import com.netease.mpay.b.m;
import com.netease.mpay.f.an;
import com.netease.mpay.widget.RIdentifier;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes.dex */
public class hi {
    public static Boolean a = false;
    public static com.netease.mpay.widget.al i = new com.netease.mpay.widget.al();
    private static hi p;
    private static WeakReference q;
    public String m;
    public String n;
    public com.netease.mpay.widget.al b = new com.netease.mpay.widget.al();
    public com.netease.mpay.widget.al c = new com.netease.mpay.widget.al();
    public com.netease.mpay.widget.al d = new com.netease.mpay.widget.al();
    public com.netease.mpay.widget.al e = new com.netease.mpay.widget.al();
    public com.netease.mpay.widget.al f = new com.netease.mpay.widget.al();
    public com.netease.mpay.widget.al g = new com.netease.mpay.widget.al();
    public com.netease.mpay.widget.al h = new com.netease.mpay.widget.al();
    public com.netease.mpay.widget.al j = new com.netease.mpay.widget.al();
    public com.netease.mpay.widget.al k = new com.netease.mpay.widget.al();
    public boolean l = false;
    private final HashMap o = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {
        AuthenticationCallback a;

        a(AuthenticationCallback authenticationCallback) {
            this.a = authenticationCallback;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends a {
        boolean c;
        boolean d;

        b(boolean z, boolean z2, AuthenticationCallback authenticationCallback) {
            super(authenticationCallback);
            this.c = z;
            this.d = z2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends a {
        boolean c;

        c(boolean z, AuthenticationCallback authenticationCallback) {
            super(authenticationCallback);
            this.c = z;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends e {
        int a;

        d(int i, AuthenticationCallback authenticationCallback) {
            super(authenticationCallback);
            this.a = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e {
        AuthenticationCallback c;

        e(AuthenticationCallback authenticationCallback) {
            this.c = authenticationCallback;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f extends e {
        boolean a;
        String b;
        String e;

        f(boolean z, String str, String str2, AuthenticationCallback authenticationCallback) {
            super(authenticationCallback);
            this.a = z;
            this.b = str;
            this.e = str2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    private hi() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static hi a() {
        if (p != null) {
            return p;
        }
        synchronized (hi.class) {
            p = p == null ? new hi() : p;
        }
        return p;
    }

    private void a(Activity activity, a.C0035a c0035a, int i2, AuthenticationCallback authenticationCallback, b.C0036b c0036b, Integer num) {
        com.netease.mpay.server.response.u a2 = com.netease.mpay.server.response.u.a(activity, c0035a.a);
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(activity, c0035a.a);
        com.netease.mpay.e.b.o b2 = bVar.c().b(c0035a.b);
        com.netease.mpay.e.b.f a3 = bVar.d().a();
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(activity);
        if (a3 == null || a3.j == null || a3.i == null || b2 == null || !b2.l || !b2.m || com.netease.mpay.e.a.a.a(b2.f)) {
            sVar.a(activity.getString(RIdentifier.h.v));
            a(authenticationCallback);
            return;
        }
        if (b2.f != 2) {
            sVar.a(activity.getString(RIdentifier.h.ao));
            a(authenticationCallback);
            return;
        }
        if (!com.netease.mpay.server.response.u.a(activity, c0035a.a).b(2).g) {
            sVar.a(activity.getString(RIdentifier.h.L));
            a(authenticationCallback);
            return;
        }
        boolean c2 = bj.c(activity);
        boolean a4 = a2.a(activity, 7);
        boolean a5 = a2.a(activity, 1);
        boolean a6 = a2.a(activity);
        if (!a4 && !a5 && !a6) {
            new com.netease.mpay.widget.s(activity).a(activity.getString(RIdentifier.h.L), activity.getString(RIdentifier.h.j), new hj(this, authenticationCallback));
            return;
        }
        if (a4 && c2) {
            c(activity, c0035a, i2, authenticationCallback, c0036b, num);
        } else if (a5 && c2) {
            a(activity, c0035a, new d(i2, authenticationCallback), c0036b, num);
        } else {
            b(activity, c0035a, i2, authenticationCallback, c0036b, num);
        }
    }

    private void a(@NonNull Activity activity, @NonNull a.C0035a c0035a, @Nullable com.netease.mpay.e.b.o oVar, @NonNull boolean z, @Nullable Integer num) {
        if (!z) {
            if (a(activity, c0035a, 4, oVar != null ? oVar.c : null, num)) {
                return;
            }
        }
        com.netease.mpay.b.a(activity, b.a.FacebookLoginActivity, new com.netease.mpay.b.g(c0035a, oVar != null ? oVar.a : null, z, null), null, num);
    }

    private void a(Activity activity, a.C0035a c0035a, a aVar, b.C0036b c0036b, Integer num) {
        com.netease.mpay.e.b.q a2 = new com.netease.mpay.e.b(activity, c0035a.a).c().a();
        if (com.netease.mpay.server.response.u.a(activity, c0035a.a).a(activity, c0035a.a, 1) && (a2 == null || a2.a.size() < 1)) {
            if (c0036b != null) {
                a(activity, c0035a, (String) null, c0036b.a, aVar.a, num);
                return;
            } else {
                a(activity, c0035a, true, null, null, null, aVar.a, num);
                return;
            }
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        if (aVar instanceof b) {
            z = ((b) aVar).d;
            z2 = ((b) aVar).c;
        } else if (aVar instanceof c) {
            z3 = ((c) aVar).c;
        }
        com.netease.mpay.b.a(activity, b.a.LoginActivity, new com.netease.mpay.b.i(c0035a, z, z3, z2, aVar.a), c0036b, num);
    }

    private void a(Activity activity, a.C0035a c0035a, d dVar, b.C0036b c0036b, Integer num) {
        com.netease.mpay.b.a(activity, b.a.BindUrsActivity, new com.netease.mpay.b.d(c0035a, dVar != null ? dVar.a : 1, (dVar == null || dVar.c == null) ? null : dVar.c), c0036b, num);
    }

    private void a(@NonNull Activity activity, @NonNull a.C0035a c0035a, @NonNull f fVar, @Nullable String str, @Nullable b.C0036b c0036b, @Nullable Integer num) {
        if (a(activity, c0035a, 1, str, num)) {
            return;
        }
        com.netease.mpay.b.a(activity, b.a.UrsLoginActivity, new com.netease.mpay.b.ad(c0035a, fVar != null ? fVar.b : null, fVar != null ? fVar.e : null, fVar != null && fVar.a, fVar != null ? fVar.c : null), c0036b, num);
    }

    private void a(Activity activity, a.C0035a c0035a, String str, boolean z, AuthenticationCallback authenticationCallback, Integer num) {
        a(activity, c0035a, new f(true, null, null, authenticationCallback), str, new b.C0036b(z), num);
    }

    private void a(@NonNull Activity activity, @NonNull a.C0035a c0035a, @NonNull boolean z, @NonNull boolean z2, @NonNull boolean z3, @Nullable String str, @Nullable Integer num) {
        if (z3 || !a(activity, c0035a, 5, str, num)) {
            com.netease.mpay.b.a(activity, b.a.GoogleLoginActivity, new com.netease.mpay.b.h(c0035a, z3, z2, z, null), null, num);
        }
    }

    private void a(@NonNull Activity activity, @NonNull com.netease.mpay.b.m mVar, @Nullable String str, @NonNull boolean z, @Nullable b.C0036b c0036b, @Nullable Integer num) {
        if (z || !a(activity, mVar.d(), 7, str, num)) {
            com.netease.mpay.b.a(activity, b.a.MobileLoginActivity, mVar, c0036b, num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AuthenticationCallback authenticationCallback) {
        if (authenticationCallback != null) {
            authenticationCallback.onDialogFinish();
        }
    }

    private void a(com.netease.mpay.widget.al alVar) {
        if (alVar != null) {
            alVar.a();
        }
    }

    private void b(Activity activity, a.C0035a c0035a, int i2, AuthenticationCallback authenticationCallback, b.C0036b c0036b, Integer num) {
        com.netease.mpay.b.a(activity, b.a.BindLoginActivity, new com.netease.mpay.b.c(c0035a, i2, authenticationCallback), c0036b, num);
    }

    private void c(Activity activity, a.C0035a c0035a, int i2, AuthenticationCallback authenticationCallback, b.C0036b c0036b, Integer num) {
        a(activity, (com.netease.mpay.b.m) new m.c(c0035a, i2, authenticationCallback), (String) null, true, c0036b, num);
    }

    public void a(Activity activity) {
        cz.a(activity).a();
        com.netease.mpay.widget.ay.a(activity, bk.k).a(activity);
        a(this.b);
        a(this.c);
    }

    public void a(Activity activity, a.C0035a c0035a, int i2, AuthenticationCallback authenticationCallback, Integer num) {
        b(activity, c0035a, i2, authenticationCallback, null, num);
    }

    public void a(Activity activity, a.C0035a c0035a, AuthenticationCallback authenticationCallback, boolean z, Integer num) {
        a(activity, c0035a, 1, authenticationCallback, new b.C0036b(z), num);
    }

    public void a(Activity activity, a.C0035a c0035a, Integer num) {
        a(activity, c0035a, (com.netease.mpay.e.b.o) null, true, num);
    }

    public void a(@NonNull Activity activity, @NonNull a.C0035a c0035a, @Nullable String str, @Nullable Integer num) {
        if (a(activity, c0035a, 9, str, num)) {
            return;
        }
        if (com.netease.mpay.auth.b.a(activity) && m.a(activity)) {
            com.netease.mpay.b.a(activity, b.a.WeixinLoginActivity, new com.netease.mpay.b.k(c0035a, null), null, num);
        } else {
            new com.netease.mpay.widget.s(activity).a(activity.getString(RIdentifier.h.au));
        }
    }

    public void a(@NonNull Activity activity, @NonNull a.C0035a c0035a, @Nullable String str, @NonNull boolean z, @NonNull boolean z2, @Nullable Integer num) {
        if (z2 || !a(activity, c0035a, 3, str, num)) {
            if (z2 || !this.l || this.m == null || this.n == null) {
                com.netease.mpay.b.a(activity, b.a.WeiboLoginActivity, new com.netease.mpay.b.ai(c0035a, z), null, num);
            } else {
                com.netease.mpay.b.a(activity, b.a.WeiboSSOLoginActivity, new com.netease.mpay.b.aj(c0035a, this.m, this.n, null), null, num);
            }
        }
    }

    public void a(Activity activity, a.C0035a c0035a, boolean z, AuthenticationCallback authenticationCallback, Integer num) {
        a(activity, c0035a, new c(z, authenticationCallback), (b.C0036b) null, num);
    }

    public void a(Activity activity, a.C0035a c0035a, boolean z, String str, String str2, String str3, AuthenticationCallback authenticationCallback, Integer num) {
        a(activity, c0035a, new f(z, str, str2, authenticationCallback), str3, (b.C0036b) null, num);
    }

    public void a(Activity activity, a.C0035a c0035a, boolean z, boolean z2, String str, Integer num) {
        a(activity, c0035a, z, z2, false, str, num);
    }

    public void a(Activity activity, a.C0035a c0035a, boolean z, boolean z2, boolean z3, AuthenticationCallback authenticationCallback, Integer num) {
        a(activity, c0035a, new b(z2, z3, authenticationCallback), new b.C0036b(z), num);
    }

    public void a(Activity activity, com.netease.mpay.b.m mVar, Integer num) {
        a(activity, mVar, (String) null, true, (b.C0036b) null, num);
    }

    public void a(Activity activity, com.netease.mpay.b.m mVar, String str, Integer num) {
        a(activity, mVar, str, false, (b.C0036b) null, num);
    }

    public void a(Activity activity, com.netease.mpay.b.m mVar, boolean z, Integer num) {
        a(activity, mVar, (String) null, true, new b.C0036b(z), num);
    }

    public boolean a(@NonNull Activity activity, @NonNull a.C0035a c0035a, @NonNull int i2, @Nullable String str, @Nullable Integer num) {
        com.netease.mpay.server.response.s a2 = com.netease.mpay.server.response.u.a(activity, c0035a.a).a(i2);
        if (!a2.b) {
            new com.netease.mpay.widget.s(activity).a(activity.getString(RIdentifier.h.ah));
            return true;
        }
        if (TextUtils.isEmpty(a2.f)) {
            return false;
        }
        com.netease.mpay.b.a(activity, b.a.WebLinksActivity, new com.netease.mpay.b.ah(c0035a, an.a.WEB_LOGIN).a(a2.f, str), null, num);
        return true;
    }

    public boolean a(Activity activity, a.C0035a c0035a, com.netease.mpay.e.b.o oVar, Integer num) {
        if (oVar == null || TextUtils.isEmpty(oVar.c)) {
            return false;
        }
        String str = oVar != null ? oVar.c : null;
        switch (oVar.f) {
            case 3:
                a(activity, c0035a, str, false, false, num);
                return true;
            case 4:
                b(activity, c0035a, oVar, num);
                return true;
            case 5:
                a(activity, c0035a, false, false, str, num);
                return true;
            case 6:
            case 7:
            case 8:
            default:
                return false;
            case 9:
                a(activity, c0035a, str, num);
                return true;
            case 10:
                b(activity, c0035a, str, num);
                return true;
        }
    }

    public boolean a(String str) {
        if (str == null) {
            return true;
        }
        Long l = (Long) this.o.get(str);
        if (l == null || SystemClock.elapsedRealtime() - l.longValue() >= 2000) {
            this.o.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
            return n.a().h();
        }
        Cdo.c("Enter " + str + " too frequent");
        return false;
    }

    public Activity b() {
        if (q == null) {
            return null;
        }
        Activity activity = (Activity) q.get();
        if (activity == null || activity.isFinishing()) {
            activity = null;
        }
        return activity;
    }

    public void b(Activity activity) {
        q = new WeakReference(activity);
    }

    public void b(Activity activity, a.C0035a c0035a, int i2, AuthenticationCallback authenticationCallback, Integer num) {
        a(activity, c0035a, new d(i2, authenticationCallback), (b.C0036b) null, num);
    }

    public void b(Activity activity, a.C0035a c0035a, com.netease.mpay.e.b.o oVar, Integer num) {
        a(activity, c0035a, oVar, false, num);
    }

    public void b(Activity activity, a.C0035a c0035a, Integer num) {
        a(activity, c0035a, false, false, true, (String) null, num);
    }

    public void b(@NonNull Activity activity, @NonNull a.C0035a c0035a, @Nullable String str, @Nullable Integer num) {
        if (a(activity, c0035a, 10, str, num)) {
            return;
        }
        if (com.netease.mpay.auth.a.a((Context) activity) && m.b(activity)) {
            com.netease.mpay.b.a(activity, b.a.QQLoginActivity, new com.netease.mpay.b.k(c0035a, null), null, num);
        } else {
            new com.netease.mpay.widget.s(activity).a(activity.getString(RIdentifier.h.at));
        }
    }

    public void c(Activity activity, a.C0035a c0035a, int i2, AuthenticationCallback authenticationCallback, Integer num) {
        a(activity, (com.netease.mpay.b.m) new m.c(c0035a, i2, authenticationCallback), (String) null, true, (b.C0036b) null, num);
    }
}
