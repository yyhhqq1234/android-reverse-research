package org.json;

import android.app.Activity;
import java.util.Locale;
import org.json.g2;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
public abstract class j7<Listener extends g2> extends n7<Listener> implements AdapterAdInteractionListener {

    class a extends cq {
        a() {
        }

        @Override // org.json.cq
        public void a() {
            j7.this.P();
        }
    }

    class b extends cq {
        b() {
        }

        @Override // org.json.cq
        public void a() {
            j7.this.S();
        }
    }

    class c extends cq {
        c() {
        }

        @Override // org.json.cq
        public void a() {
            j7.this.Q();
        }
    }

    class d extends cq {
        d() {
        }

        @Override // org.json.cq
        public void a() {
            j7.this.T();
        }
    }

    class e extends cq {
        e() {
        }

        @Override // org.json.cq
        public void a() {
            j7.this.R();
        }
    }

    class f extends cq {
        final /* synthetic */ int a;
        final /* synthetic */ String b;

        f(int i, String str) {
            this.a = i;
            this.b = str;
        }

        @Override // org.json.cq
        public void a() {
            j7.this.b(this.a, this.b);
        }
    }

    public j7(po poVar, j1 j1Var, BaseAdAdapter<?, ?> baseAdAdapter, z2 z2Var, j5 j5Var, Listener listener) {
        super(poVar, j1Var, baseAdAdapter, z2Var, j5Var, listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        String str;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(d());
        synchronized (this.q) {
            if (this.e != n7.h.SHOWING) {
                ironLog.error("unexpected ad closed for " + k() + " - state = " + this.e);
                b2 b2Var = this.d;
                if (b2Var != null) {
                    b2Var.k.j("unexpected ad closed - state = " + this.e);
                }
                return;
            }
            a(n7.h.NONE);
            if (this.d != null) {
                String string = "";
                if (this.a.a() == IronSource.AD_UNIT.REWARDED_VIDEO) {
                    String strD = ((g2) this.b).d();
                    StringBuilder sb = new StringBuilder("otherInstanceAvailable = ");
                    if (strD.length() > 0) {
                        str = "true|" + strD;
                    } else {
                        str = "false";
                    }
                    sb.append(str);
                    string = sb.toString();
                }
                this.d.j.a(j(), string);
            }
            ((g2) this.b).a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        IronLog.INTERNAL.verbose(d());
        b2 b2Var = this.d;
        if (b2Var != null) {
            b2Var.j.d(j());
        }
        ((g2) this.b).c(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        IronLog.INTERNAL.verbose(d());
        b2 b2Var = this.d;
        if (b2Var != null) {
            b2Var.j.l(j());
        }
        ((g2) this.b).b((j7<?>) this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        IronLog.INTERNAL.verbose(d());
        b2 b2Var = this.d;
        if (b2Var != null) {
            b2Var.j.i(j());
        }
        ((g2) this.b).d(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        IronLog.INTERNAL.verbose(d());
        b2 b2Var = this.d;
        if (b2Var != null) {
            b2Var.j.k(j());
        }
    }

    static String a(n7.h hVar, int i, String str) {
        return String.format(Locale.ENGLISH, "unexpected show failed, state - %s, error - %d %s", hVar, Integer.valueOf(i), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(a("error = " + i + ", " + str));
        n7.h hVar = this.e;
        if (hVar == n7.h.SHOWING) {
            a(n7.h.FAILED);
            b2 b2Var = this.d;
            if (b2Var != null) {
                b2Var.j.a(j(), i, str, "");
            }
            ((g2) this.b).a(new IronSourceError(i, str), (j7<?>) this);
            return;
        }
        String strA = a(hVar, i, str);
        ironLog.error(a(strA));
        b2 b2Var2 = this.d;
        if (b2Var2 != null) {
            b2Var2.k.r(strA);
        }
    }

    @Override // org.json.n7
    public boolean B() {
        if (this.k == null || !y()) {
            return false;
        }
        try {
            Object obj = this.c;
            if (obj instanceof AdapterAdFullScreenInterface) {
                return ((AdapterAdFullScreenInterface) obj).isAdAvailable(this.k);
            }
            IronLog.INTERNAL.error(a("isReadyToShow - adapter not instance of AdapterAdFullScreenInterface"));
            b2 b2Var = this.d;
            if (b2Var != null) {
                b2Var.k.f("isReadyToShow - adapter not instance of AdapterAdFullScreenInterface");
            }
            return false;
        } catch (Throwable th) {
            l9.d().a(th);
            String str = "isReadyToShow - exception = " + th.getMessage() + " - state = " + this.e;
            IronLog.INTERNAL.error(a(str));
            b2 b2Var2 = this.d;
            if (b2Var2 != null) {
                b2Var2.k.f(str);
            }
        }
    }

    public void a(Activity activity, Placement placement) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(a("placementName = " + placement.getCom.ironsource.oo.d java.lang.String()));
        try {
            this.g = placement;
            a(n7.h.SHOWING);
            this.d.j.a(activity, j());
            Object obj = this.c;
            if (obj instanceof AdapterAdFullScreenInterface) {
                ((AdapterAdFullScreenInterface) obj).showAd(this.k, this);
            } else {
                ironLog.error(a("showAd - adapter not instance of AdapterAdFullScreenInterface"));
                b2 b2Var = this.d;
                if (b2Var != null) {
                    b2Var.k.f("showAd - adapter not instance of AdapterAdFullScreenInterface");
                }
            }
        } catch (Throwable th) {
            l9.d().a(th);
            a(n7.h.FAILED);
            String str = "showAd - exception = " + th.getMessage() + " - state = " + this.e;
            IronLog.INTERNAL.error(a(str));
            b2 b2Var2 = this.d;
            if (b2Var2 != null) {
                b2Var2.k.f(str);
            }
            onAdShowFailed(x1.h(this.a.a()), str);
        }
    }

    public void b(boolean z) {
        b2 b2Var = this.d;
        if (b2Var != null) {
            b2Var.j.a(z);
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdClosed() {
        if (u().c()) {
            u().a(new a());
        } else {
            P();
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdEnded() {
        if (u().c()) {
            u().a(new c());
        } else {
            Q();
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdShowFailed(int i, String str) {
        if (u().c()) {
            u().a(new f(i, str));
        } else {
            b(i, str);
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdShowSuccess() {
        if (u().c()) {
            u().a(new e());
        } else {
            R();
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdStarted() {
        if (u().c()) {
            u().a(new b());
        } else {
            S();
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdVisible() {
        if (u().c()) {
            u().a(new d());
        } else {
            T();
        }
    }
}
