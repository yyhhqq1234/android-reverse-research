package org.json;

import android.app.Activity;
import java.util.Iterator;
import java.util.List;
import org.json.environment.ContextProvider;
import org.json.j7;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import org.json.mediationsdk.h;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
public abstract class i7<Smash extends j7<?>, Listener extends AdapterAdInteractionListener> extends k7<Smash, Listener> implements g2 {

    class a extends cq {
        final /* synthetic */ Activity a;
        final /* synthetic */ Placement b;

        a(Activity activity, Placement placement) {
            this.a = activity;
            this.b = placement;
        }

        @Override // org.json.cq
        public void a() {
            i7.this.b(this.a, this.b);
        }
    }

    protected i7(r0 r0Var, nj njVar, IronSourceSegment ironSourceSegment) {
        super(r0Var, njVar, ironSourceSegment);
    }

    i7(ye yeVar, xe xeVar, r0 r0Var, nj njVar, IronSourceSegment ironSourceSegment) {
        super(yeVar, xeVar, r0Var, njVar, ironSourceSegment);
    }

    private String a(List<Smash> list) {
        StringBuilder sb = new StringBuilder();
        for (Smash smash : list) {
            if (smash.e() != null) {
                sb.append(smash.c());
                sb.append(":");
                sb.append(smash.e());
                sb.append(",");
            }
        }
        return sb.toString();
    }

    private void a(Activity activity, j7<?> j7Var, Placement placement) {
        if (this.o.getLoadingData().e()) {
            this.r.a();
        }
        j7Var.a(activity, placement);
    }

    private void a(Smash smash, List<Smash> list) {
        for (Smash smash2 : list) {
            if (smash != null && smash2 == smash) {
                smash.b(true);
                return;
            }
            smash2.b(false);
            IronLog.INTERNAL.verbose(b(smash2.k() + " - not ready to show"));
        }
    }

    private void a(IronSourceError ironSourceError, j7<?> j7Var, String str) {
        this.s.j.a(n(), ironSourceError.getErrorCode(), ironSourceError.getErrorMessage(), str);
        this.q.g();
        this.t.a(ironSourceError, j7Var != null ? j7Var.f() : null);
        if (this.o.getLoadingData().e()) {
            b(false);
        }
    }

    private void a(IronSourceError ironSourceError, String str) {
        a(ironSourceError, (j7<?>) null, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void b(Activity activity, Placement placement) {
        j7 j7Var;
        IronSourceError ironSourceError;
        String strA;
        IronLog.INTERNAL.verbose(b("state = " + this.p));
        synchronized (this.x) {
            this.i = placement;
            this.s.j.a(activity, n());
            k7.f fVar = this.p;
            k7.f fVar2 = k7.f.SHOWING;
            j7Var = null;
            if (fVar == fVar2) {
                ironSourceError = new IronSourceError(x1.g(this.o.getAdUnit()), "can't show ad while an ad is already showing");
            } else if (fVar != k7.f.READY_TO_SHOW) {
                ironSourceError = new IronSourceError(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, "show called while no ads are available");
            } else if (placement == null) {
                ironSourceError = new IronSourceError(x1.b(this.o.getAdUnit()), "empty default placement");
            } else if (this.E.b(ContextProvider.getInstance().getApplicationContext(), placement, this.o.getAdUnit())) {
                ironSourceError = new IronSourceError(x1.f(this.o.getAdUnit()), "placement " + placement.getCom.ironsource.oo.d java.lang.String() + " is capped");
            } else {
                ironSourceError = null;
            }
            if (ironSourceError != null) {
                IronLog.API.error(b(ironSourceError.getErrorMessage()));
                strA = "";
            } else {
                List listB = this.a.b();
                yu yuVar = new yu(this.o);
                j7Var = (j7) yuVar.c(listB);
                a(j7Var, (List<j7>) yuVar.b(listB));
                if (j7Var != null) {
                    a(fVar2);
                    i(j7Var);
                } else {
                    ironSourceError = ErrorBuilder.buildNoAdsToShowError(this.o.getAdUnit().toString());
                    strA = a(listB);
                }
            }
            a(ironSourceError, strA);
        }
        if (j7Var != null) {
            a(activity, (j7<?>) j7Var, this.i);
        }
    }

    public void a(Activity activity, Placement placement) {
        if (c()) {
            a(new a(activity, placement));
        } else {
            b(activity, placement);
        }
    }

    @Override // org.json.g2
    public void a(j7<?> j7Var) {
        IronLog.INTERNAL.verbose(b(j7Var.k()));
        if (this.p == k7.f.SHOWING) {
            a(k7.f.READY_TO_LOAD);
        }
        this.q.f();
        this.t.a(j7Var.f());
    }

    @Override // org.json.g2
    public void a(IronSourceError ironSourceError, j7<?> j7Var) {
        IronLog.INTERNAL.verbose(b(j7Var.k() + " - error = " + ironSourceError));
        this.b.put(j7Var.c(), h.a.ISAuctionPerformanceFailedToShow);
        a(k7.f.READY_TO_LOAD);
        a(ironSourceError, j7Var, "");
    }

    @Override // org.json.g2
    public void b(j7<?> j7Var) {
        IronLog.INTERNAL.verbose(b(j7Var.k()));
        this.t.g(j7Var.f());
    }

    @Override // org.json.g2
    public void c(j7<?> j7Var) {
        IronLog.INTERNAL.verbose(b(j7Var.k()));
        this.t.a();
    }

    @Override // org.json.g2
    public String d() {
        StringBuilder sb = new StringBuilder();
        if (this.p == k7.f.READY_TO_SHOW) {
            for (j7 j7Var : this.a.b()) {
                if (j7Var.y()) {
                    sb.append(j7Var.c());
                    sb.append(";");
                }
            }
        }
        return sb.toString();
    }

    @Override // org.json.g2
    public void d(j7<?> j7Var) {
        IronLog.INTERNAL.verbose(b(j7Var.k()));
        this.t.b();
    }

    @Override // org.json.k7
    public boolean u() {
        if (!x()) {
            return false;
        }
        if (this.j && !IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) {
            return false;
        }
        Iterator it = this.a.b().iterator();
        while (it.hasNext()) {
            if (((j7) it.next()).B()) {
                return true;
            }
        }
        return false;
    }

    @Override // org.json.k7
    protected boolean v() {
        return false;
    }
}
