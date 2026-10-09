package org.json;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0016\u001a\u00020\u0012¢\u0006\u0004\b\u001f\u0010 J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u001c\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eJ\b\u0010\t\u001a\u00020\u0010H\u0014R\"\u0010\u0016\u001a\u0010\u0012\f\u0012\n \u0013*\u0004\u0018\u00010\u00120\u00120\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u00060\u0017R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006!"}, d2 = {"Lcom/ironsource/ed;", "Lcom/ironsource/m1;", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, "", NotificationBundleProcessor.PUSH_MINIFIED_BUTTONS_LIST, "m", "n", "error", "a", "Lcom/ironsource/xc;", j5.p, "Landroid/app/Activity;", "activity", "Lcom/ironsource/v1;", "displayListener", "Lcom/ironsource/b0;", "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/gd;", "kotlin.jvm.PlatformType", "i", "Ljava/lang/ref/WeakReference;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/ed$a;", "j", "Lcom/ironsource/ed$a;", "adInstanceListener", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/t1;", "adUnitData", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/t1;Lcom/ironsource/gd;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ed extends m1 {

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final WeakReference<gd> listener;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private final a adInstanceListener;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¨\u0006\u000f"}, d2 = {"Lcom/ironsource/ed$a;", "Lcom/ironsource/m1$a;", "Lcom/ironsource/m1;", "Lcom/ironsource/yc;", "Lcom/ironsource/xc;", "fullscreenInstance", "", "a", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "b", "Lcom/unity3d/mediation/rewarded/LevelPlayReward;", s.i, "<init>", "(Lcom/ironsource/ed;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    private final class a extends m1.a implements yc {
        public a() {
            super();
        }

        @Override // org.json.yc
        public void a(xc fullscreenInstance) {
            Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
            IronLog.INTERNAL.verbose(ed.this.a(fullscreenInstance.getInstanceSignature()));
            ed.this.getAdUnitTools().getEventSender().getAdInteraction().l(ed.this.i());
            ed.this.o();
            ed.this.n();
            ed.this.m();
            v1 v1Var = ed.this.j().get();
            if (v1Var != null) {
                v1Var.a();
            }
        }

        @Override // org.json.yc
        public void a(xc fullscreenInstance, IronSourceError error) {
            Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
            Intrinsics.checkNotNullParameter(error, "error");
            IronLog.INTERNAL.verbose(ed.this.a(fullscreenInstance.getInstanceSignature() + " - error = " + error));
            ed.this.a(error, fullscreenInstance);
        }

        @Override // org.json.yc
        public void a(xc fullscreenInstance, LevelPlayReward reward) {
            Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
            Intrinsics.checkNotNullParameter(reward, "reward");
            IronLog.INTERNAL.verbose(ed.this.a(fullscreenInstance.getInstanceSignature()));
            gd gdVar = (gd) ed.this.listener.get();
            if (gdVar != null) {
                gdVar.a(reward);
            }
        }

        @Override // org.json.yc
        public void b(xc fullscreenInstance) {
            Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
            IronLog.INTERNAL.verbose(ed.this.a(fullscreenInstance.getInstanceSignature()));
            ed.this.getAdUnitTools().getEventSender().getAdInteraction().b(ed.this.i());
            gd gdVar = (gd) ed.this.listener.get();
            if (gdVar != null) {
                gdVar.onClosed();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ed(l1 adTools, t1 adUnitData, gd listener) {
        super(adTools, adUnitData, listener);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = new WeakReference<>(listener);
        this.adInstanceListener = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final y a(ed this$0, z instanceData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        return new xc(new t2(this$0.getAdUnitTools(), b2.b.PROVIDER), instanceData, this$0.adInstanceListener);
    }

    static /* synthetic */ void a(ed edVar, IronSourceError ironSourceError, xc xcVar, int i, Object obj) {
        if ((i & 2) != 0) {
            xcVar = null;
        }
        edVar.a(ironSourceError, xcVar);
    }

    private final void a(IronSourceError error) {
        getAdUnitTools().getEventSender().getAdInteraction().a(i(), error.getErrorCode(), error.getErrorMessage(), "");
        v1 v1Var = j().get();
        if (v1Var != null) {
            v1Var.b(error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(IronSourceError error, xc instance) {
        getAdUnitTools().getEventSender().getAdInteraction().a(i(), error.getErrorCode(), error.getErrorMessage(), "");
        v1 v1Var = j().get();
        if (v1Var != null) {
            v1Var.b(error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        if (i().length() == 0) {
            return;
        }
        i8 i8VarA = jl.INSTANCE.d().x().a(i(), getAdUnitData().getAdProperties().c());
        if (i8VarA.d()) {
            getAdUnitTools().getEventSender().getAdInteraction().b(i(), i8VarA.e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        jl.INSTANCE.a().v().b(getAdUnitData().getAdProperties().getAdUnitId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        if (i().length() > 0) {
            jl.INSTANCE.a().a().b(i(), getAdUnitData().getAdProperties().c());
        }
    }

    private final IronSourceError p() {
        IronSourceError ironSourceError;
        if (!super.e().getIsReady()) {
            return new IronSourceError(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, "show called while ad unit is not ready to show");
        }
        if ((i().length() > 0) && jl.INSTANCE.d().x().a(i(), getAdUnitData().getAdProperties().c()).d()) {
            ironSourceError = new IronSourceError(IronSourceError.ERROR_PLACEMENT_CAPPED, "placement " + i() + " is capped");
        } else {
            if (!jl.INSTANCE.d().t().a(getAdUnitData().getAdProperties().getAdUnitId()).d()) {
                return null;
            }
            ironSourceError = new IronSourceError(IronSourceError.ERROR_AD_UNIT_CAPPED, "adUnitId " + getAdUnitData().getAdProperties().getAdUnitId() + " is capped");
        }
        return ironSourceError;
    }

    @Override // org.json.m1
    protected b0 a() {
        return new b0() { // from class: com.ironsource.ed$$ExternalSyntheticLambda0
            @Override // org.json.b0
            public final y a(z zVar) {
                return ed.a(this.f$0, zVar);
            }
        };
    }

    public final void a(Activity activity, v1 displayListener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(displayListener, "displayListener");
        a(new WeakReference<>(displayListener));
        IronLog.INTERNAL.verbose(a("showAd called"));
        getAdUnitTools().getEventSender().getAdInteraction().a(activity, i());
        IronSourceError ironSourceErrorP = p();
        if (ironSourceErrorP == null) {
            a(new zc(activity), displayListener);
        } else {
            IronLog.API.error(a(ironSourceErrorP.getErrorMessage()));
            a(ironSourceErrorP);
        }
    }
}
