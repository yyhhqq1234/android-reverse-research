package org.json;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class nd {
    private final oe a;
    private final ConcurrentHashMap<String, Object> b;
    private final AtomicBoolean c;
    private final AtomicBoolean d;

    class a implements Runnable {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                nd.this.e(this.a);
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            nd.this.c.set(false);
        }
    }

    private static class b {
        static volatile nd a = new nd(null);

        private b() {
        }
    }

    private nd() {
        this.c = new AtomicBoolean(false);
        this.d = new AtomicBoolean(false);
        this.a = jl.P().f();
        this.b = new ConcurrentHashMap<>();
    }

    /* synthetic */ nd(a aVar) {
        this();
    }

    static nd a() {
        return b.a;
    }

    private void a(Context context) {
        if (this.c.get()) {
            return;
        }
        try {
            this.c.set(true);
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(context));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            this.c.set(false);
        }
    }

    private void a(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        try {
            if (obj instanceof Boolean) {
                obj = Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
            }
            this.b.put(str, obj);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private boolean a(String str) {
        if (str == null) {
            return false;
        }
        try {
            return this.b.containsKey(str);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return false;
        }
    }

    private void d(Context context) {
        if (context == null || this.d.getAndSet(true)) {
            return;
        }
        a("auid", this.a.s(context));
        a(md.v, this.a.e());
        a(md.r, this.a.g());
        a(md.y, this.a.l());
        String strO = this.a.o();
        if (strO != null) {
            a(md.z, strO.replaceAll("[^0-9/.]", ""));
            a(md.C, strO);
        }
        a(md.a, String.valueOf(this.a.k()));
        String strJ = this.a.j(context);
        if (!TextUtils.isEmpty(strJ)) {
            a(md.y0, strJ);
        }
        String strE = z3.e(context);
        if (!TextUtils.isEmpty(strE)) {
            a(md.o, strE);
        }
        String strI = this.a.i(context);
        if (!TextUtils.isEmpty(strI)) {
            a(md.l0, strI);
        }
        a(md.f, context.getPackageName());
        a(md.t, String.valueOf(this.a.h(context)));
        a(md.S, md.Z);
        a(md.T, Long.valueOf(z3.f(context)));
        a(md.R, Long.valueOf(z3.d(context)));
        a(md.d, z3.b(context));
        a(md.F, Integer.valueOf(u8.f(context)));
        a(md.P, u8.g(context));
        a("stid", zn.c(context));
        a(md.A, "android");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context) {
        if (context == null) {
            return;
        }
        try {
            String strP = this.a.p(context);
            if (!TextUtils.isEmpty(strP)) {
                a(md.D0, strP);
            }
            String strA = this.a.a(context);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            a(md.q, Boolean.valueOf(Boolean.parseBoolean(strA)));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private void f(Context context) {
        if (context == null) {
            return;
        }
        a(context);
        String strD = this.a.D(context);
        if (!TextUtils.isEmpty(strD)) {
            a(md.u0, strD);
        } else if (a(md.u0)) {
            b(md.u0);
        }
        String strB = this.a.b(context);
        if (!TextUtils.isEmpty(strB)) {
            a(md.p, strB.toUpperCase(Locale.getDefault()));
        }
        String strB2 = this.a.b();
        if (!TextUtils.isEmpty(strB2)) {
            a("tz", strB2);
        }
        String strB3 = v8.b(context);
        if (!TextUtils.isEmpty(strB3) && !strB3.equals("none")) {
            a(md.j, strB3);
        }
        String strD2 = v8.d(context);
        if (!TextUtils.isEmpty(strD2)) {
            a(md.k, strD2);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            a("vpn", Boolean.valueOf(v8.e(context)));
        }
        String strN = this.a.n(context);
        if (!TextUtils.isEmpty(strN)) {
            a("icc", strN);
        }
        int iY = this.a.y(context);
        if (iY >= 0) {
            a(md.S0, Integer.valueOf(iY));
        }
        a(md.T0, this.a.A(context));
        a(md.U0, this.a.H(context));
        a(md.X, Float.valueOf(this.a.m(context)));
        a(md.m, String.valueOf(this.a.n()));
        a(md.I, Integer.valueOf(this.a.d()));
        a(md.H, Integer.valueOf(this.a.j()));
        a(md.G0, String.valueOf(this.a.i()));
        a(md.P0, String.valueOf(this.a.p()));
        a("mcc", Integer.valueOf(u8.b(context)));
        a("mnc", Integer.valueOf(u8.c(context)));
        a(md.K, Boolean.valueOf(this.a.c()));
        a(md.g, Boolean.valueOf(this.a.G(context)));
        a(md.h, Integer.valueOf(this.a.l(context)));
        a(md.b, Boolean.valueOf(this.a.c(context)));
        a(md.D, Boolean.valueOf(this.a.d(context)));
        a("rt", Boolean.valueOf(this.a.f()));
        a(md.Q, String.valueOf(this.a.h()));
        a(md.e, Integer.valueOf(this.a.w(context)));
        a(md.H0, Boolean.valueOf(this.a.q(context)));
        a(md.c, this.a.f(context));
        a(md.U, this.a.s());
    }

    protected void a(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Object obj = this.b.get(str);
            if (!(obj instanceof JSONObject)) {
                a(str, (Object) jSONObject);
                return;
            }
            JSONObject jSONObject2 = (JSONObject) obj;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject2.putOpt(next, jSONObject.opt(next));
            }
            a(str, (Object) jSONObject2);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    protected void a(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        try {
            for (String str : map.keySet()) {
                if (map.containsKey(str)) {
                    a(str, map.get(str));
                }
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    protected JSONObject b(Context context) throws JSONException {
        f(context);
        return new JSONObject(pd.a(this.b));
    }

    protected void b(String str) {
        if (str == null) {
            return;
        }
        try {
            this.b.remove(str);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    protected void b(String str, Object obj) {
        a(str, obj);
    }

    protected void c(Context context) {
        try {
            d(context);
            f(context);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }
}
