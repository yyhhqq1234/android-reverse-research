package org.json;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\nB7\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u00107\u001a\u000206\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u0012\u0006\u0010!\u001a\u00020\u001f¢\u0006\u0004\b:\u0010;J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J#\u0010\n\u001a\u00020\u00042\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007\"\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016J\u0012\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010#R\u0014\u0010'\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001c\u00103\u001a\b\u0018\u000100R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u001a\u00105\u001a\u000600R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00102¨\u0006<"}, d2 = {"Lcom/ironsource/pt;", "Lcom/ironsource/f7;", "Lcom/ironsource/j2;", "Lcom/ironsource/v1;", "", "i", "h", "", "Lcom/ironsource/co;", "triggers", "a", "([Lcom/ironsource/co;)V", "Lcom/ironsource/q1;", "adUnitCallback", "b", "e", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "c", "f", "g", "Lcom/ironsource/l1;", "d", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/t6;", "Lcom/ironsource/t6;", "bannerContainer", "Lcom/ironsource/g7;", "Lcom/ironsource/g7;", "bannerStrategyListener", "Lcom/ironsource/k6;", "Lcom/ironsource/k6;", "bannerAdUnitFactory", "Lcom/ironsource/yt;", "Lcom/ironsource/yt;", "loadScheduler", "Lcom/ironsource/t3;", "Lcom/ironsource/t3;", "appLifecycleTrigger", "Lcom/ironsource/lu;", "j", "Lcom/ironsource/lu;", "viewVisibilityTrigger", "Lcom/ironsource/hl;", "k", "Lcom/ironsource/hl;", "manualTrigger", "Lcom/ironsource/pt$a;", "l", "Lcom/ironsource/pt$a;", "currentBanner", "m", "nextBanner", "Lcom/ironsource/f7$b;", "config", "Lcom/ironsource/g6;", "bannerAdProperties", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/t6;Lcom/ironsource/f7$b;Lcom/ironsource/g6;Lcom/ironsource/g7;Lcom/ironsource/k6;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class pt extends f7 implements j2, v1 {

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final l1 adTools;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final t6 bannerContainer;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final g7 bannerStrategyListener;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final k6 bannerAdUnitFactory;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private yt loadScheduler;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final t3 appLifecycleTrigger;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private final lu viewVisibilityTrigger;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private final hl manualTrigger;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private a currentBanner;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private a nextBanner;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005R\u0017\u0010\u000b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0004\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\u0011\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f\"\u0004\b\u0004\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/ironsource/pt$a;", "", "", "e", "a", "Lcom/ironsource/g1;", "d", "Lcom/ironsource/i6;", "Lcom/ironsource/i6;", "c", "()Lcom/ironsource/i6;", "bannerAdUnit", "Lcom/ironsource/q1;", "b", "Lcom/ironsource/q1;", "()Lcom/ironsource/q1;", "(Lcom/ironsource/q1;)V", "adUnitCallback", "Lcom/ironsource/k6;", "bannerAdUnitFactory", "", "isPublisherLoad", "<init>", "(Lcom/ironsource/pt;Lcom/ironsource/k6;Z)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    private final class a {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final i6 bannerAdUnit;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        public q1 adUnitCallback;
        final /* synthetic */ pt c;

        public a(pt ptVar, k6 bannerAdUnitFactory, boolean z) {
            Intrinsics.checkNotNullParameter(bannerAdUnitFactory, "bannerAdUnitFactory");
            this.c = ptVar;
            this.bannerAdUnit = bannerAdUnitFactory.a(z);
        }

        public final void a() {
            this.bannerAdUnit.d();
        }

        public final void a(q1 q1Var) {
            Intrinsics.checkNotNullParameter(q1Var, "<set-?>");
            this.adUnitCallback = q1Var;
        }

        public final q1 b() {
            q1 q1Var = this.adUnitCallback;
            if (q1Var != null) {
                return q1Var;
            }
            Intrinsics.throwUninitializedPropertyAccessException("adUnitCallback");
            return null;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final i6 getBannerAdUnit() {
            return this.bannerAdUnit;
        }

        public final g1 d() {
            return this.bannerAdUnit.e();
        }

        public final void e() {
            this.bannerAdUnit.a(this.c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pt(l1 adTools, t6 bannerContainer, f7.b config, g6 bannerAdProperties, g7 bannerStrategyListener, k6 bannerAdUnitFactory) {
        super(config, bannerAdProperties);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(bannerContainer, "bannerContainer");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(bannerAdProperties, "bannerAdProperties");
        Intrinsics.checkNotNullParameter(bannerStrategyListener, "bannerStrategyListener");
        Intrinsics.checkNotNullParameter(bannerAdUnitFactory, "bannerAdUnitFactory");
        this.adTools = adTools;
        this.bannerContainer = bannerContainer;
        this.bannerStrategyListener = bannerStrategyListener;
        this.bannerAdUnitFactory = bannerAdUnitFactory;
        IronLog.INTERNAL.verbose(l1.a(adTools, "refresh interval: " + c() + ", auto refresh: " + d(), (String) null, 2, (Object) null));
        this.appLifecycleTrigger = new t3(adTools.b());
        this.viewVisibilityTrigger = new lu(bannerContainer);
        this.manualTrigger = new hl(d() ^ true);
        this.nextBanner = new a(this, bannerAdUnitFactory, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(pt this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(final pt this$0, co[] triggers) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(triggers, "$triggers");
        this$0.loadScheduler = new yt(this$0.adTools, new Runnable() { // from class: com.ironsource.pt$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                pt.b(this.f$0);
            }
        }, this$0.c(), ArraysKt.toList(triggers));
    }

    private final void a(final co... triggers) {
        this.adTools.c(new Runnable() { // from class: com.ironsource.pt$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                pt.a(this.f$0, triggers);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(pt this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.i();
    }

    private final void b(q1 adUnitCallback) {
        this.nextBanner.a(adUnitCallback);
        this.nextBanner.getBannerAdUnit().a(this.bannerContainer.getViewBinder(), this);
        this.bannerStrategyListener.b(this.nextBanner.b());
        a aVar = this.currentBanner;
        if (aVar != null) {
            aVar.a();
        }
        this.currentBanner = null;
    }

    private final void h() {
        this.currentBanner = this.nextBanner;
        a aVar = new a(this, this.bannerAdUnitFactory, false);
        this.nextBanner = aVar;
        aVar.e();
    }

    private final void i() {
        this.adTools.a(new Runnable() { // from class: com.ironsource.pt$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                pt.a(this.f$0);
            }
        });
    }

    @Override // org.json.j2
    public /* bridge */ /* synthetic */ Unit a(IronSourceError ironSourceError) {
        c(ironSourceError);
        return Unit.INSTANCE;
    }

    @Override // org.json.v1
    public void a() {
        this.bannerStrategyListener.e();
    }

    public void a(q1 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        b(adUnitCallback);
        a(this.viewVisibilityTrigger, this.appLifecycleTrigger, this.manualTrigger);
    }

    @Override // org.json.f7
    public void b() {
        this.appLifecycleTrigger.e();
        this.viewVisibilityTrigger.e();
        yt ytVar = this.loadScheduler;
        if (ytVar != null) {
            ytVar.c();
        }
        this.loadScheduler = null;
        a aVar = this.currentBanner;
        if (aVar != null) {
            aVar.a();
        }
        this.currentBanner = null;
        this.nextBanner.a();
    }

    @Override // org.json.v1
    public void b(IronSourceError error) {
        this.bannerStrategyListener.d(error);
    }

    public void c(IronSourceError error) {
        this.bannerStrategyListener.c(error);
        a(this.appLifecycleTrigger, this.manualTrigger);
    }

    @Override // org.json.j2
    public /* synthetic */ void c(q1 q1Var) {
        Intrinsics.checkNotNullParameter(q1Var, "adUnitCallback");
    }

    @Override // org.json.j2
    public /* bridge */ /* synthetic */ Unit e(q1 q1Var) {
        a(q1Var);
        return Unit.INSTANCE;
    }

    @Override // org.json.f7
    public void e() {
        this.nextBanner.e();
    }

    @Override // org.json.f7
    public void f() {
        if (d()) {
            this.manualTrigger.e();
        }
    }

    @Override // org.json.f7
    public void g() {
        if (d()) {
            this.manualTrigger.f();
        }
    }
}
