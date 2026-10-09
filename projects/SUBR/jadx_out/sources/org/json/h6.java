package org.json;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import java.util.Map;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceBannerLayout;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBindAdViewInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener;
import org.json.mediationsdk.adunit.adapter.listener.BannerAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.l;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
public class h6 extends n7<p1> implements BannerAdListener, a2 {
    public static final String t = "bannerLayout";
    public static final String u = "bannerSize";
    private final IronSourceBannerLayout r;
    private final boolean s;

    class a extends cq {
        final /* synthetic */ View a;
        final /* synthetic */ FrameLayout.LayoutParams b;

        a(View view, FrameLayout.LayoutParams layoutParams) {
            this.a = view;
            this.b = layoutParams;
        }

        @Override // org.json.cq
        public void a() {
            h6.this.a(this.a, this.b);
        }
    }

    class b extends cq {
        b() {
        }

        @Override // org.json.cq
        public void a() {
            h6.this.J();
        }
    }

    public h6(po poVar, j1 j1Var, BaseAdAdapter<?, AdapterAdViewListener> baseAdAdapter, IronSourceBannerLayout ironSourceBannerLayout, Placement placement, boolean z, j5 j5Var, p1 p1Var) {
        super(poVar, j1Var, baseAdAdapter, new z2(j1Var.g(), j1Var.g().getBannerSettings(), IronSource.AD_UNIT.BANNER), j5Var, p1Var);
        this.r = ironSourceBannerLayout;
        this.g = placement;
        this.s = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(d());
        if (y()) {
            super.onAdOpened();
        } else {
            if (this.e == n7.h.FAILED) {
                return;
            }
            ironLog.error(String.format("unexpected onAdOpened for %s, state - %s", k(), this.e));
            if (this.d != null) {
                this.d.k.o(String.format("unexpected onAdOpened, state - %s", this.e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, FrameLayout.LayoutParams layoutParams) {
        Listener listener;
        super.onAdLoadSuccess();
        if (!y() || (listener = this.b) == 0) {
            return;
        }
        ((p1) listener).a(this, view, layoutParams);
    }

    @Override // org.json.n7
    protected void G() {
        Object obj = this.c;
        if (obj instanceof AdapterBannerInterface) {
            ((AdapterBannerInterface) obj).loadAd(this.k, ContextProvider.getInstance().getCurrentActiveActivity(), this.r.getSize(), this);
        } else {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterBannerInterface"));
        }
    }

    @Override // org.json.n7
    protected boolean O() {
        return false;
    }

    public void P() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(k());
        a(n7.h.NONE);
        Object obj = this.c;
        if (obj == null) {
            ironLog.warning("mAdapter == null");
            return;
        }
        try {
            if (obj instanceof AdapterBannerInterface) {
                ((AdapterBannerInterface) obj).destroyAd(this.k);
            } else {
                ironLog.error(a("adapter not instance of AdapterBannerInterface"));
            }
        } catch (Throwable th) {
            l9.d().a(th);
            String str = "destroyBanner - exception = " + th.getLocalizedMessage() + " state = " + this.e;
            IronLog.INTERNAL.error(a(str));
            b2 b2Var = this.d;
            if (b2Var != null) {
                b2Var.k.f(str);
            }
        }
        b2 b2Var2 = this.d;
        if (b2Var2 != null) {
            b2Var2.g.a(r().intValue());
        }
    }

    public void Q() {
        Object obj = this.c;
        if (obj instanceof AdapterBindAdViewInterface) {
            ((AdapterBindAdViewInterface) obj).onAdViewBound(this.k);
        }
    }

    public void R() {
        Object obj = this.c;
        if (obj instanceof AdapterBindAdViewInterface) {
            ((AdapterBindAdViewInterface) obj).onAdViewWillBind(this.k);
        }
    }

    @Override // org.json.n7
    protected AdData a(String str, Map<String, Object> map) {
        return new AdData(str, q(), a(map));
    }

    @Override // org.json.n7, org.json.a2
    public Map<String, Object> a(y1 y1Var) {
        Map<String, Object> mapA = super.a(y1Var);
        IronSourceBannerLayout ironSourceBannerLayout = this.r;
        if (ironSourceBannerLayout != null && !ironSourceBannerLayout.isDestroyed()) {
            l.a(mapA, this.r.getSize());
        }
        if (this.g != null) {
            mapA.put("placement", j());
        }
        return mapA;
    }

    @Override // org.json.n7
    protected Map<String, Object> a(Map<String, Object> map) {
        Map<String, Object> mapA = super.a(map);
        j1 j1Var = this.a;
        if (j1Var != null && this.r != null && TextUtils.isEmpty(j1Var.g().getCustomNetwork())) {
            mapA.put("bannerLayout", this.r);
        }
        return mapA;
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLeftApplication() {
        b2 b2Var;
        Placement placement = this.g;
        if (placement != null && (b2Var = this.d) != null) {
            b2Var.j.f(placement.getCom.ironsource.oo.d java.lang.String());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((p1) listener).d(this);
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.listener.BannerAdListener, org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdLoadSuccess(View view, FrameLayout.LayoutParams layoutParams) {
        if (u().c()) {
            u().a(new a(view, layoutParams));
        } else {
            a(view, layoutParams);
        }
    }

    @Override // org.json.n7, org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened() {
        if (u().c()) {
            u().a(new b());
        } else {
            J();
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdScreenDismissed() {
        b2 b2Var;
        Placement placement = this.g;
        if (placement != null && (b2Var = this.d) != null) {
            b2Var.j.c(placement.getCom.ironsource.oo.d java.lang.String());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((p1) listener).c(this);
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    public void onAdScreenPresented() {
        b2 b2Var;
        Placement placement = this.g;
        if (placement != null && (b2Var = this.d) != null) {
            b2Var.j.h(placement.getCom.ironsource.oo.d java.lang.String());
        }
        Listener listener = this.b;
        if (listener != 0) {
            ((p1) listener).a(this);
        }
    }

    @Override // org.json.n7
    protected boolean v() {
        return this.s;
    }
}
