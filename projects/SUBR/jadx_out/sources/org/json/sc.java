package org.json;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004Bo\u0012\u0006\u0010\u001e\u001a\u00020\u001a\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010\u0018\u001a\u00020\u0016\u0012\b\b\u0002\u0010%\u001a\u00020$\u0012\u0006\u0010'\u001a\u00020&\u0012<\b\u0002\u0010/\u001a6\u0012\u0013\u0012\u00110)¢\u0006\f\b*\u0012\b\b+\u0012\u0004\b\b(,\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b*\u0012\b\b+\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020-0(j\u0002`.¢\u0006\u0004\b0\u00101J\u0006\u0010\u0006\u001a\u00020\u0005J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0016J\u0012\u0010\u000b\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0016J\u0012\u0010\u0011\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\b\u0010\u0013\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0017R\"\u0010\u001e\u001a\u0010\u0012\f\u0012\n \u001b*\u0004\u0018\u00010\u001a0\u001a0\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010 ¨\u00062"}, d2 = {"Lcom/ironsource/sc;", "Lcom/ironsource/n;", "Lcom/ironsource/gd;", "Lcom/ironsource/k2;", "Lcom/ironsource/w1;", "", "h", "Landroid/app/Activity;", "activity", "Lcom/ironsource/mediationsdk/model/Placement;", "placement", "a", "Lcom/ironsource/q1;", "adUnitCallback", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "d", "b", "i", "j", "Lcom/unity3d/mediation/rewarded/LevelPlayReward;", s.i, "Lcom/ironsource/c1;", "Lcom/ironsource/c1;", "adProperties", "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/vc;", "kotlin.jvm.PlatformType", "c", "Ljava/lang/ref/WeakReference;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/hd;", "Lcom/ironsource/hd;", "adUnitStrategy", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/hd$b;", "adUnitStrategyFactory", "Lcom/ironsource/u1;", "adUnitDataFactory", "Lkotlin/Function2;", "Lcom/ironsource/t1;", "Lkotlin/ParameterName;", "name", "adUnitData", "Lcom/ironsource/ed;", "Lcom/unity3d/mediation/internal/ads/controllers/CreateFullscreenAdUnitFn;", "createFullscreenAdUnit", "<init>", "(Lcom/ironsource/vc;Lcom/ironsource/l1;Lcom/ironsource/c1;Lcom/ironsource/hd$b;Lcom/ironsource/u1;Lkotlin/jvm/functions/Function2;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class sc extends n implements gd, k2, w1 {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final c1 adProperties;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final WeakReference<vc> listener;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final hd adUnitStrategy;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/ironsource/t1;", "adUnitData", "Lcom/ironsource/gd;", "fullscreenAdUnitListener", "Lcom/ironsource/ed;", "a", "(Lcom/ironsource/t1;Lcom/ironsource/gd;)Lcom/ironsource/ed;"}, k = 3, mv = {1, 8, 0})
    static final class a extends Lambda implements Function2<t1, gd, ed> {
        final /* synthetic */ l1 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l1 l1Var) {
            super(2);
            this.a = l1Var;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ed invoke(t1 adUnitData, gd fullscreenAdUnitListener) {
            Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
            Intrinsics.checkNotNullParameter(fullscreenAdUnitListener, "fullscreenAdUnitListener");
            return new ed(this.a, adUnitData, fullscreenAdUnitListener);
        }
    }

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/ironsource/sc$b", "Lcom/ironsource/fd;", "", "isPublisherLoad", "Lcom/ironsource/ed;", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements fd {
        final /* synthetic */ u1 a;
        final /* synthetic */ sc b;
        final /* synthetic */ Function2<t1, gd, ed> c;

        /* JADX WARN: Multi-variable type inference failed */
        b(u1 u1Var, sc scVar, Function2<? super t1, ? super gd, ed> function2) {
            this.a = u1Var;
            this.b = scVar;
            this.c = function2;
        }

        @Override // org.json.fd
        public ed a(boolean isPublisherLoad) {
            return this.c.invoke(this.a.a(isPublisherLoad, this.b.adProperties), this.b);
        }
    }

    public sc(vc listener, l1 adTools, c1 adProperties, hd.b adUnitStrategyFactory, u1 adUnitDataFactory, Function2<? super t1, ? super gd, ed> createFullscreenAdUnit) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitStrategyFactory, "adUnitStrategyFactory");
        Intrinsics.checkNotNullParameter(adUnitDataFactory, "adUnitDataFactory");
        Intrinsics.checkNotNullParameter(createFullscreenAdUnit, "createFullscreenAdUnit");
        this.adProperties = adProperties;
        this.listener = new WeakReference<>(listener);
        this.adUnitStrategy = adUnitStrategyFactory.a(adTools, new hd.a(hd.c.MANUAL_LOAD), new b(adUnitDataFactory, this, createFullscreenAdUnit));
    }

    public /* synthetic */ sc(vc vcVar, l1 l1Var, c1 c1Var, hd.b bVar, u1 u1Var, Function2 function2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(vcVar, l1Var, c1Var, (i & 8) != 0 ? new hd.b() : bVar, u1Var, (i & 32) != 0 ? new a(l1Var) : function2);
    }

    @Override // org.json.gd
    public /* bridge */ /* synthetic */ Unit a(LevelPlayReward levelPlayReward) {
        b(levelPlayReward);
        return Unit.INSTANCE;
    }

    @Override // org.json.w1
    public void a() {
        vc vcVar = this.listener.get();
        if (vcVar != null) {
            vcVar.a();
        }
    }

    public final void a(Activity activity, Placement placement) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.adProperties.a(placement);
        this.adUnitStrategy.a(activity, this);
    }

    @Override // org.json.k2
    public void a(IronSourceError error) {
        vc vcVar = this.listener.get();
        if (vcVar != null) {
            vcVar.onAdLoadFailed(new LevelPlayAdError(error, this.adProperties.getAdUnitId()));
        }
    }

    @Override // org.json.k2
    public void a(q1 adUnitCallback) {
        vc vcVar;
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC == null || (vcVar = this.listener.get()) == null) {
            return;
        }
        vcVar.onAdLoaded(levelPlayAdInfoC);
    }

    @Override // org.json.h2
    public /* bridge */ /* synthetic */ Unit b() {
        i();
        return Unit.INSTANCE;
    }

    @Override // org.json.w1
    public void b(IronSourceError error) {
        vc vcVar = this.listener.get();
        if (vcVar != null) {
            vcVar.a(new LevelPlayAdError(error, this.adProperties.getAdUnitId()));
        }
    }

    public void b(LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(reward, "reward");
        vc vcVar = this.listener.get();
        if (vcVar != null) {
            vcVar.a(reward);
        }
    }

    @Override // org.json.k2
    public void d(q1 adUnitCallback) {
        vc vcVar;
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC == null || (vcVar = this.listener.get()) == null) {
            return;
        }
        vcVar.onAdInfoChanged(levelPlayAdInfoC);
    }

    public final void h() {
        this.adUnitStrategy.a((k2) this);
    }

    public void i() {
        vc vcVar = this.listener.get();
        if (vcVar != null) {
            vcVar.onAdClicked();
        }
    }

    public void j() {
        vc vcVar = this.listener.get();
        if (vcVar != null) {
            vcVar.onAdClosed();
        }
    }

    @Override // org.json.gd
    public /* bridge */ /* synthetic */ Unit onClosed() {
        j();
        return Unit.INSTANCE;
    }
}
