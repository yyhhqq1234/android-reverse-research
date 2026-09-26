package com.netease.mpay;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.aw;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class hy {
    private static final String[] b = {"com.netease.mpay.MpayLoginActivity", "com.netease.mpay.MpayLoginActionBarActivity", "com.netease.mpay.MpayActivity", "com.unionpay.uppay.PayActivity", "com.alipay.android.mini.window.sdk.MiniPayActivity", "com.alipay.android.mini.window.sdk.MiniWebActivity"};
    private static hy c;
    private final int a;
    private Context d;
    private com.netease.mpay.e.b e;
    private a g;
    private ArrayList h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private Handler n;
    private int f = 0;
    private Runnable p = new hz(this);
    private Runnable q = new ia(this);
    private Runnable r = new ib(this);
    private Application.ActivityLifecycleCallbacks s = new ic(this);
    private Handler o = new Handler();

    /* loaded from: classes.dex */
    public interface a {
        void a(long j);

        void a(long j, long j2);
    }

    @SuppressLint({"NewApi"})
    private hy(Application application, String str, String str2, int i) {
        this.i = str;
        this.j = str2;
        this.a = i * 1000;
        this.d = application.getApplicationContext();
        this.e = new com.netease.mpay.e.b(this.d, this.i);
        application.registerActivityLifecycleCallbacks(this.s);
        this.h = new ArrayList();
        HandlerThread handlerThread = new HandlerThread("track-online-thread", 19);
        handlerThread.start();
        this.n = new Handler(handlerThread.getLooper());
        this.n.post(new id(this));
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a() {
        if (c == null || Build.VERSION.SDK_INT < 14) {
            return;
        }
        c.d();
    }

    public static void a(Application application, String str, String str2, int i) {
        a(application, str, str2, i, (a) null);
    }

    public static void a(Application application, String str, String str2, int i, a aVar) {
        if (c == null) {
            c = new hy(application, str, str2, i);
        }
        c.a(aVar);
    }

    private void a(a aVar) {
        this.g = aVar;
    }

    public static void a(String str) {
        if (c != null) {
            c.c(str);
        }
    }

    public static void a(String str, String str2) {
        if (c != null) {
            c.b(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, long j, long j2) {
        if (j >= j2) {
            return;
        }
        if (this.j == null) {
            com.netease.mpay.e.b.f a2 = this.e.d().a();
            if (a2 == null) {
                return;
            } else {
                this.j = a2.j;
            }
        }
        long[][] jArr = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 1, 2);
        jArr[0][0] = j;
        jArr[0][1] = j2;
        com.netease.mpay.widget.ay.a(this.d, bk.k).a(this.d, this.i, this.j, str, str2, str3, jArr, "a2.14.1");
        com.netease.mpay.widget.ay.a(this.d, bk.k).b(this.d);
    }

    private void b(String str, String str2) {
        if ((this.f & 4) != 4) {
            d();
            this.f |= 4;
            this.f &= -2;
            c();
        } else {
            if (!c(str, str2)) {
                return;
            }
            if ((this.f & 1) == 1) {
                d();
                c();
            }
        }
        this.k = str;
        this.l = str2;
    }

    private boolean b(String str) {
        return !com.netease.mpay.widget.bd.b(str, this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.m == null) {
            return;
        }
        this.f |= 1;
        long f = f();
        if (this.g != null) {
            this.g.a(f);
        }
        this.n.post(new ie(this, this.m, this.k, this.l, f));
    }

    private void c(String str) {
        if ((this.f & 2) == 2) {
            if (str == null) {
                this.f &= -3;
            }
            if (!b(str)) {
                return;
            }
            if ((this.f & 1) == 1) {
                d();
                this.m = str;
                c();
            }
        } else {
            if (str == null) {
                return;
            }
            this.f |= 2;
            this.m = str;
            c();
        }
        this.m = str;
    }

    private boolean c(String str, String str2) {
        return !new StringBuilder().append(this.k).append("_").append(this.l).toString().equals(new StringBuilder().append(str).append("_").append(str2).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        if ((this.f & 1) != 1) {
            return false;
        }
        com.netease.mpay.e.b.y a2 = this.e.i().a();
        this.e.i().b();
        if (!a2.b()) {
            return false;
        }
        String str = a2.a;
        String str2 = a2.b;
        String str3 = a2.c;
        long j = a2.d;
        long f = f();
        if (this.g != null) {
            this.g.a(a2.d, f);
        }
        this.n.post(new Cif(this, str, str2, str3, j, f));
        this.f &= -2;
        this.o.removeCallbacks(this.q);
        this.o.removeCallbacks(this.r);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        if ((this.f & 1) != 1) {
            return false;
        }
        com.netease.mpay.e.b.y a2 = this.e.i().a();
        long f = f();
        if (a2.b()) {
            return this.e.i().b(a2.a, a2.b, a2.c, f);
        }
        return false;
    }

    private long f() {
        return aw.b.b();
    }
}
