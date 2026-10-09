package org.json;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.AdapterUtils;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceBannerLayout;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.i;
import org.json.mediationsdk.l;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.n;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class d6 extends k7<h6, AdapterAdViewListener> implements p1, c6 {
    private x6 K;
    private boolean L;
    private IronSourceBannerLayout M;
    private View N;
    private n7<?> O;
    private FrameLayout.LayoutParams P;
    private final AtomicBoolean Q;
    private final AtomicBoolean R;

    class a implements y7 {
        final /* synthetic */ n7 a;

        a(n7 n7Var) {
            this.a = n7Var;
        }

        @Override // org.json.y7
        public void a() {
            ((h6) this.a).Q();
        }
    }

    class b implements y7 {
        final /* synthetic */ n7 a;

        b(n7 n7Var) {
            this.a = n7Var;
        }

        @Override // org.json.y7
        public void a() {
            ((h6) this.a).Q();
            d6 d6Var = d6.this;
            d6Var.s.j.j(d6Var.n());
            d6.this.Q.set(false);
            d6.this.W();
            IronLog.INTERNAL.verbose("start binding timer after impression, expected interval = " + d6.this.o.getLoadingData().b() + ", current timestamp = " + System.currentTimeMillis());
            d6.this.O().h();
        }
    }

    static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[l2.a.values().length];
            a = iArr;
            try {
                iArr[l2.a.MANUAL_WITH_AUTOMATIC_RELOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[l2.a.MANUAL_WITH_LOAD_ON_SHOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public d6(List<NetworkSettings> list, r6 r6Var, String str, nj njVar, IronSourceSegment ironSourceSegment) {
        super(new e6(str, list, r6Var), njVar, ironSourceSegment);
        this.L = false;
        this.Q = new AtomicBoolean(true);
        this.R = new AtomicBoolean(false);
        this.K = N();
    }

    private void M() {
        int i = c.a[this.q.b().a().ordinal()];
        if (i == 1) {
            P().a();
        } else {
            if (i != 2) {
                return;
            }
            P().l();
            P().m();
            O().a();
            O().b();
        }
    }

    private x6 N() {
        return new x6(this.o.getLoadingData(), this.o.getInteractionData(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public x6 O() {
        return this.K;
    }

    private d7 P() {
        return (d7) this.q;
    }

    private ISBannerSize Q() {
        IronSourceBannerLayout ironSourceBannerLayout = this.M;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.getSize() == null) {
            return null;
        }
        if (this.M.getSize().isSmart()) {
            return AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()) ? l.a() : ISBannerSize.BANNER;
        }
        return this.M.getSize();
    }

    private boolean S() {
        IronLog.INTERNAL.verbose(b(this.N + ", " + this.P + ", " + this.O));
        return (this.N == null || this.P == null || this.O == null) ? false : true;
    }

    private void U() {
        int i = c.a[this.q.b().a().ordinal()];
        if (i == 1) {
            P().k();
        } else {
            if (i != 2) {
                return;
            }
            P().r();
        }
    }

    private void V() {
        int i = c.a[this.q.b().a().ordinal()];
        if (i == 1) {
            P().k();
        } else {
            if (i != 2) {
                return;
            }
            P().q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        this.O = null;
        this.N = null;
        this.P = null;
    }

    private void b(n7<?> n7Var, View view, FrameLayout.LayoutParams layoutParams) {
        ((h6) n7Var).R();
        l.a(this.M, view, layoutParams, new a(n7Var));
    }

    private void c(n7<?> n7Var, View view, FrameLayout.LayoutParams layoutParams) {
        if (a(k7.f.READY_TO_SHOW, k7.f.SHOWING)) {
            this.R.set(false);
            O().e();
            ((h6) n7Var).R();
            l.a(this.M, view, layoutParams, new b(n7Var));
            return;
        }
        IronLog.INTERNAL.verbose("wrong state = " + this.p);
    }

    boolean R() {
        IronLog ironLog;
        String str;
        if (!this.M.isShown()) {
            ironLog = IronLog.INTERNAL;
            str = "banner or one of its parents are INVISIBLE or GONE";
        } else {
            if (this.M.hasWindowFocus()) {
                boolean globalVisibleRect = this.M.getGlobalVisibleRect(new Rect());
                IronLog.INTERNAL.verbose("visible = " + globalVisibleRect);
                return globalVisibleRect;
            }
            ironLog = IronLog.INTERNAL;
            str = "banner has no window focus";
        }
        ironLog.verbose(str);
        return false;
    }

    public void T() {
        IronSourceBannerLayout ironSourceBannerLayout = this.M;
        if (ironSourceBannerLayout != null) {
            a(ironSourceBannerLayout);
        }
    }

    @Override // org.json.k7
    protected LoadWhileShowSupportState a(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        return ((AdapterSettingsInterface) adapterBaseInterface).getBannerLoadWhileShowSupportedState(networkSettings);
    }

    @Override // org.json.k7
    protected AdData a(NetworkSettings networkSettings, String str) {
        return AdData.createAdDataForNetworkAdapter(b(networkSettings), this.o.getAdUnit(), str, this.M);
    }

    @Override // org.json.k7
    protected /* bridge */ /* synthetic */ n7 a(NetworkSettings networkSettings, BaseAdAdapter baseAdAdapter, int i, String str, j5 j5Var) {
        return b(networkSettings, (BaseAdAdapter<?, AdapterAdViewListener>) baseAdAdapter, i, str, j5Var);
    }

    @Override // org.json.k7, org.json.a2
    public Map<String, Object> a(y1 y1Var) {
        Map<String, Object> mapA = super.a(y1Var);
        if (b(this.M)) {
            l.a(mapA, this.M.getSize());
        }
        if (this.i != null) {
            mapA.put("placement", n());
        }
        return mapA;
    }

    @Override // org.json.k7, org.json.cl
    public void a() {
        boolean z;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(i());
        try {
            if (this.M == null) {
                ironLog.error("mIronSourceBanner is null");
                this.s.g.b(IronSourceError.ERROR_BN_RELOAD_SKIP_BANNER_LAYOUT_IS_NULL);
                return;
            }
            if (!R()) {
                if (this.o.getLoadingData().a() == l2.a.MANUAL_WITH_AUTOMATIC_RELOAD) {
                    ironLog.verbose("banner is not visible, reload skipped");
                    this.s.g.b(IronSourceError.ERROR_BN_RELOAD_SKIP_INVISIBLE);
                }
                U();
                return;
            }
            synchronized (this.x) {
                if (a(k7.f.SHOWING, k7.f.READY_TO_LOAD)) {
                    ironLog.verbose("start reload");
                    z = true;
                    this.L = true;
                } else {
                    ironLog.error("wrong state = " + this.p);
                    z = false;
                }
            }
            if (z) {
                a(this.M, this.i);
            }
        } catch (Throwable th) {
            l9.d().a(th);
            this.s.k.c(th.getMessage());
        }
    }

    @Override // org.json.k7
    protected void a(int i, String str, boolean z) {
        if (!v()) {
            super.a(i, str, z);
            return;
        }
        if (!z) {
            this.s.g.b(xa.a(this.n), i, str);
            n.a().b(this.o.getAdUnit(), new IronSourceError(i, str));
        }
        if (v()) {
            a(k7.f.SHOWING);
            V();
        }
    }

    @Override // org.json.k7
    protected void a(Context context, i iVar, p4 p4Var) {
        if (this.c == null) {
            IronLog.INTERNAL.error(b("mAuctionHandler is null"));
        } else {
            iVar.a(Q());
            this.c.a(context, iVar, p4Var);
        }
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout) {
        try {
            if (!b(ironSourceBannerLayout)) {
                Object[] objArr = new Object[1];
                objArr[0] = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
                String str = String.format("can't destroy banner - %s", objArr);
                IronLog.API.error("destroy banner failed - errorMessage = " + str);
                return;
            }
            IronLog.INTERNAL.verbose("destroying banner");
            M();
            h6 h6Var = (h6) this.a.d();
            if (h6Var != null) {
                this.s.g.a(h6Var.r() != null ? h6Var.r().intValue() : this.C.a(this.o.getAdUnit()));
                h6Var.P();
                this.a.a(null);
                this.a.b(null);
            }
            l.a(ironSourceBannerLayout);
            this.M = null;
            this.i = null;
            this.L = false;
            if (P().o()) {
                this.Q.set(true);
                this.R.set(false);
                W();
            }
            a(k7.f.READY_TO_LOAD);
        } catch (Throwable th) {
            l9.d().a(th);
            String str2 = "destroyBanner - exception = " + th.getLocalizedMessage() + " state = " + this.p;
            IronLog.INTERNAL.error(b(str2));
            b2 b2Var = this.s;
            if (b2Var != null) {
                b2Var.k.f(str2);
            }
        }
    }

    public void a(IronSourceBannerLayout ironSourceBannerLayout, Placement placement) {
        String str;
        IronLog.INTERNAL.verbose("placement = " + placement);
        int iB = 510;
        if (!b(ironSourceBannerLayout)) {
            Object[] objArr = new Object[1];
            objArr[0] = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
            str = String.format("can't load banner - %s", objArr);
        } else if (placement == null || TextUtils.isEmpty(placement.getCom.ironsource.oo.d java.lang.String())) {
            Object[] objArr2 = new Object[1];
            objArr2[0] = placement == null ? "placement is null" : "placement name is empty";
            str = String.format("can't load banner - %s", objArr2);
            iB = x1.b(this.o.getAdUnit());
        } else if (this.E.b(ContextProvider.getInstance().getApplicationContext(), placement, this.o.getAdUnit())) {
            str = String.format("placement %s is capped", placement.getCom.ironsource.oo.d java.lang.String());
            iB = x1.f(this.o.getAdUnit());
        } else {
            str = null;
        }
        if (!TextUtils.isEmpty(str)) {
            IronLog.API.error(b(str));
            a(iB, str, false);
        } else {
            l.b(ironSourceBannerLayout);
            this.M = ironSourceBannerLayout;
            this.i = placement;
            A();
        }
    }

    @Override // org.json.r2
    public void a(n7<?> n7Var) {
        IronLog.INTERNAL.verbose(b(n7Var.k()));
        this.t.f(n7Var.f());
    }

    @Override // org.json.p1
    public void a(n7<?> n7Var, View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.verbose("mState = " + this.p);
        super.e(n7Var);
        if (this.o.getLoadingData().a() == l2.a.MANUAL_WITH_AUTOMATIC_RELOAD) {
            if (!a(k7.f.READY_TO_SHOW, k7.f.SHOWING)) {
                return;
            }
            this.a.a(n7Var);
            this.a.b(n7Var);
            b(n7Var, view, layoutParams);
            P().k();
        } else {
            if (!P().o()) {
                return;
            }
            this.a.b(n7Var);
            if (this.Q.get()) {
                c(n7Var, view, layoutParams);
            } else {
                this.O = n7Var;
                this.N = view;
                this.P = layoutParams;
            }
        }
        this.t.c(n7Var.f());
    }

    protected h6 b(NetworkSettings networkSettings, BaseAdAdapter<?, AdapterAdViewListener> baseAdAdapter, int i, String str, j5 j5Var) {
        return new h6(this, new j1(IronSource.AD_UNIT.BANNER, this.o.getUserId(), i, this.g, str, this.e, this.f, networkSettings, this.o.getSmashLoadTimeout()), baseAdAdapter, this.M, this.i, v(), j5Var, this);
    }

    @Override // org.json.k7
    protected JSONObject b(NetworkSettings networkSettings) {
        return networkSettings.getBannerSettings();
    }

    @Override // org.json.k7, org.json.o2
    public void b(n7<?> n7Var) {
        super.b(n7Var);
        if (P().o()) {
            if (!this.R.compareAndSet(false, true)) {
                IronLog.INTERNAL.verbose("Impression already recorded as receive, it can occur from network onAdOpened or from impression timeout timer - loading next ad already in progress");
            } else {
                O().b();
                U();
            }
        }
    }

    boolean b(IronSourceBannerLayout ironSourceBannerLayout) {
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }

    @Override // org.json.r2
    public void c(n7<?> n7Var) {
        IronLog.INTERNAL.verbose(b(n7Var.k()));
        this.t.e(n7Var.f());
    }

    @Override // org.json.r2
    public void d(n7<?> n7Var) {
        IronLog.INTERNAL.verbose(b(n7Var.k()));
        this.t.b(n7Var.f());
    }

    @Override // org.json.c6
    public void e() {
        if (!R()) {
            IronLog.INTERNAL.verbose("banner is not visible, binding skipped");
            O().h();
            this.s.g.b(IronSourceError.ERROR_BN_BINDING_SKIP_INVISIBLE);
        } else {
            if (!S()) {
                IronLog.INTERNAL.verbose("Cannot bind banner view after interval, the next ad is not ready yet");
                this.Q.set(true);
                return;
            }
            IronLog.INTERNAL.verbose("done binding timer, binding view now, current timestamp = " + System.currentTimeMillis());
            c(this.O, this.N, this.P);
        }
    }

    @Override // org.json.c6
    public void f() {
        if (!R()) {
            IronLog.INTERNAL.verbose("banner is not visible, starting the impression timeout timer again");
            O().e();
        } else if (this.R.compareAndSet(false, true)) {
            IronLog.INTERNAL.verbose("banner impression timeout reached, reloading banner manually");
            U();
            this.s.k.b("banner impression timeout reached, reloading banner manually");
        }
    }

    @Override // org.json.k7
    protected i2 g() {
        return new y6();
    }

    @Override // org.json.k7
    protected void g(n7<?> n7Var) {
    }

    @Override // org.json.k7
    protected n2 h() {
        return new d7(this.o.getLoadingData(), this);
    }

    @Override // org.json.k7
    protected void h(n7<?> n7Var) {
    }

    @Override // org.json.k7
    protected String l() {
        return "BN";
    }

    @Override // org.json.k7
    protected String o() {
        return IronSourceConstants.OPW_BN_MANAGER_NAME;
    }

    @Override // org.json.k7
    protected boolean v() {
        return this.L;
    }
}
