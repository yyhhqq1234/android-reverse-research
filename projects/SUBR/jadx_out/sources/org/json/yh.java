package org.json;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.ironsourceads.interstitial.InterstitialAdInfo;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001Be\b\u0000\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\"\u001a\u00020\u001f\u0012\u0006\u0010%\u001a\u00020#\u0012\b\b\u0002\u0010)\u001a\u00020&\u0012\b\b\u0002\u0010-\u001a\u00020*\u0012\b\b\u0002\u00101\u001a\u00020.\u0012\b\b\u0002\u00105\u001a\u000202\u0012\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000006¢\u0006\u0004\bF\u0010GJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000f\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0005\u0010\u000bJ\b\u0010\f\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u000f\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0005\u0010\u0010J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016J\u001a\u0010\u0016\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0004R\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R \u00109\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0000068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\"\u0010?\u001a\u00020:8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b\u001c\u0010=\"\u0004\b\u0005\u0010>R$\u0010E\u001a\u0004\u0018\u00010@8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\b \u0010C\"\u0004\b\u0005\u0010D¨\u0006H"}, d2 = {"Lcom/ironsource/yh;", "Lcom/ironsource/rc;", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "", "a", "", "d", "()Z", "Landroid/app/Activity;", "activity", "(Landroid/app/Activity;)V", "onAdInstanceDidShow", "", "description", "onAdInstanceDidBecomeVisible", "()V", "onAdInstanceDidClick", "onAdInstanceDidDismiss", "demandSourceId", "", "amount", "onAdInstanceDidReward", "finalize", "Lcom/ironsource/oi;", "Lcom/ironsource/oi;", y8.h.p0, "Lcom/ironsource/x0;", "b", "Lcom/ironsource/x0;", "adNetworkShow", "Lcom/ironsource/u4;", "c", "Lcom/ironsource/u4;", "auctionDataReporter", "Lcom/ironsource/n3;", "Lcom/ironsource/n3;", "analytics", "Lcom/ironsource/jm;", "e", "Lcom/ironsource/jm;", "networkDestroyAPI", "Lcom/ironsource/ot;", "f", "Lcom/ironsource/ot;", "threadManager", "Lcom/ironsource/zg;", "g", "Lcom/ironsource/zg;", "sessionDepthService", "Lcom/ironsource/zg$a;", "h", "Lcom/ironsource/zg$a;", "sessionDepthServiceEditor", "", "i", "Ljava/util/Map;", "retainer", "Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;", "j", "Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;", "()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;", "(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;)V", "adInfo", "Lcom/ironsource/zh;", "k", "Lcom/ironsource/zh;", "()Lcom/ironsource/zh;", "(Lcom/ironsource/zh;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Lcom/ironsource/oi;Lcom/ironsource/x0;Lcom/ironsource/u4;Lcom/ironsource/n3;Lcom/ironsource/jm;Lcom/ironsource/ot;Lcom/ironsource/zg;Lcom/ironsource/zg$a;Ljava/util/Map;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class yh implements rc {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private oi adInstance;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private x0 adNetworkShow;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private u4 auctionDataReporter;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private n3 analytics;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private jm networkDestroyAPI;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private ot threadManager;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private zg sessionDepthService;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private zg.a sessionDepthServiceEditor;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final Map<String, yh> retainer;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private InterstitialAdInfo adInfo;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private zh listener;

    public yh(oi adInstance, x0 adNetworkShow, u4 auctionDataReporter, n3 analytics, jm networkDestroyAPI, ot threadManager, zg sessionDepthService, zg.a sessionDepthServiceEditor, Map<String, yh> retainer) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(adNetworkShow, "adNetworkShow");
        Intrinsics.checkNotNullParameter(auctionDataReporter, "auctionDataReporter");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(networkDestroyAPI, "networkDestroyAPI");
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(sessionDepthService, "sessionDepthService");
        Intrinsics.checkNotNullParameter(sessionDepthServiceEditor, "sessionDepthServiceEditor");
        Intrinsics.checkNotNullParameter(retainer, "retainer");
        this.adInstance = adInstance;
        this.adNetworkShow = adNetworkShow;
        this.auctionDataReporter = auctionDataReporter;
        this.analytics = analytics;
        this.networkDestroyAPI = networkDestroyAPI;
        this.threadManager = threadManager;
        this.sessionDepthService = sessionDepthService;
        this.sessionDepthServiceEditor = sessionDepthServiceEditor;
        this.retainer = retainer;
        String strF = adInstance.f();
        Intrinsics.checkNotNullExpressionValue(strF, "adInstance.instanceId");
        String strE = this.adInstance.e();
        Intrinsics.checkNotNullExpressionValue(strE, "adInstance.id");
        this.adInfo = new InterstitialAdInfo(strF, strE);
        pc pcVar = new pc();
        this.adInstance.a(pcVar);
        pcVar.a(this);
    }

    public /* synthetic */ yh(oi oiVar, x0 x0Var, u4 u4Var, n3 n3Var, jm jmVar, ot otVar, zg zgVar, zg.a aVar, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(oiVar, x0Var, u4Var, n3Var, (i & 16) != 0 ? new km() : jmVar, (i & 32) != 0 ? Cif.a : otVar, (i & 64) != 0 ? jl.INSTANCE.d().k() : zgVar, (i & 128) != 0 ? jl.INSTANCE.a().e() : aVar, map);
    }

    private final void a(final IronSourceError error) {
        this.retainer.remove(this.adInfo.getCom.ironsource.sdk.controller.f.b.c java.lang.String());
        g3.a.INSTANCE.a(new j3.j(error.getErrorCode()), new j3.k(error.getErrorMessage())).a(this.analytics);
        this.threadManager.a(new Runnable() { // from class: com.ironsource.yh$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                yh.a(this.f$0, error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(yh this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        g3.d.INSTANCE.b().a(this$0.analytics);
        this$0.networkDestroyAPI.a(this$0.adInstance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(yh this$0, IronSourceError error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        zh zhVar = this$0.listener;
        if (zhVar != null) {
            zhVar.onAdInstanceDidFailedToShow(error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(yh this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        zh zhVar = this$0.listener;
        if (zhVar != null) {
            zhVar.onAdInstanceDidClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(yh this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        zh zhVar = this$0.listener;
        if (zhVar != null) {
            zhVar.onAdInstanceDidDismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(yh this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        zh zhVar = this$0.listener;
        if (zhVar != null) {
            zhVar.onAdInstanceDidShow();
        }
    }

    public final void a() {
        ot.CC.a(this.threadManager, new Runnable() { // from class: com.ironsource.yh$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                yh.a(this.f$0);
            }
        }, 0L, 2, null);
    }

    public final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.retainer.put(this.adInfo.getCom.ironsource.sdk.controller.f.b.c java.lang.String(), this);
        if (!this.adNetworkShow.a(this.adInstance)) {
            a(lb.a.t());
        } else {
            g3.a.INSTANCE.d(new k3[0]).a(this.analytics);
            this.adNetworkShow.a(activity, this.adInstance);
        }
    }

    public final void a(zh zhVar) {
        this.listener = zhVar;
    }

    public final void a(InterstitialAdInfo interstitialAdInfo) {
        Intrinsics.checkNotNullParameter(interstitialAdInfo, "<set-?>");
        this.adInfo = interstitialAdInfo;
    }

    @Override // org.json.rc
    public void a(String description) {
        a(lb.a.c(new IronSourceError(0, description)));
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final InterstitialAdInfo getAdInfo() {
        return this.adInfo;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final zh getListener() {
        return this.listener;
    }

    public final boolean d() {
        boolean zA = this.adNetworkShow.a(this.adInstance);
        g3.a.INSTANCE.a(zA).a(this.analytics);
        return zA;
    }

    protected final void finalize() {
        a();
    }

    @Override // org.json.rc
    public void onAdInstanceDidBecomeVisible() {
        g3.a.INSTANCE.f(new k3[0]).a(this.analytics);
    }

    @Override // org.json.rc
    public void onAdInstanceDidClick() {
        g3.a.INSTANCE.a().a(this.analytics);
        this.threadManager.a(new Runnable() { // from class: com.ironsource.yh$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                yh.b(this.f$0);
            }
        });
    }

    @Override // org.json.rc
    public void onAdInstanceDidDismiss() {
        this.retainer.remove(this.adInfo.getCom.ironsource.sdk.controller.f.b.c java.lang.String());
        g3.a.INSTANCE.a(new k3[0]).a(this.analytics);
        this.threadManager.a(new Runnable() { // from class: com.ironsource.yh$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                yh.c(this.f$0);
            }
        });
    }

    @Override // org.json.rc
    public void onAdInstanceDidReward(String demandSourceId, int amount) {
    }

    @Override // org.json.rc
    public void onAdInstanceDidShow() {
        zg zgVar = this.sessionDepthService;
        IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
        g3.a.INSTANCE.b(new j3.w(zgVar.a(ad_unit))).a(this.analytics);
        this.sessionDepthServiceEditor.b(ad_unit);
        this.auctionDataReporter.c("onAdInstanceDidShow");
        this.threadManager.a(new Runnable() { // from class: com.ironsource.yh$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                yh.d(this.f$0);
            }
        });
    }
}
