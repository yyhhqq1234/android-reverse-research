package org.json;

import com.unity3d.ironsourceads.rewarded.RewardedAd;
import com.unity3d.ironsourceads.rewarded.RewardedAdRequest;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.d;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B_\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010$\u001a\u00020!\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00150%\u0012\b\b\u0002\u0010,\u001a\u00020)\u0012\b\b\u0002\u00100\u001a\u00020-¢\u0006\u0004\bA\u0010BJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bH\u0016J\u0017\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0007\u0010\fR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00150%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006C"}, d2 = {"Lcom/ironsource/jp;", "Lcom/ironsource/yk;", "Lcom/ironsource/qc;", "", "start", "Lcom/ironsource/oi;", y8.h.p0, "a", "", "description", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V", "Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;", "Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;", "adRequest", "Lcom/ironsource/zk;", "b", "Lcom/ironsource/zk;", "loadTaskConfig", "Lcom/ironsource/q0;", "Lcom/unity3d/ironsourceads/rewarded/RewardedAd;", "c", "Lcom/ironsource/q0;", "adLoadTaskListener", "Lcom/ironsource/i5;", "d", "Lcom/ironsource/i5;", "auctionResponseFetcher", "Lcom/ironsource/sm;", "e", "Lcom/ironsource/sm;", "networkLoadApi", "Lcom/ironsource/n3;", "f", "Lcom/ironsource/n3;", "analytics", "Lcom/ironsource/z0;", "g", "Lcom/ironsource/z0;", "adObjectFactory", "Lcom/ironsource/rt$c;", "h", "Lcom/ironsource/rt$c;", "timerFactory", "Ljava/util/concurrent/Executor;", "i", "Ljava/util/concurrent/Executor;", "taskFinishedExecutor", "Lcom/ironsource/xa;", "j", "Lcom/ironsource/xa;", "taskStartedTime", "Lcom/ironsource/rt;", "k", "Lcom/ironsource/rt;", "loadTimeoutTimer", "Lcom/ironsource/t4;", "l", "Lcom/ironsource/t4;", "auctionDataReporter", "", "m", "Z", "isTaskFinished", "<init>", "(Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;Lcom/ironsource/zk;Lcom/ironsource/q0;Lcom/ironsource/i5;Lcom/ironsource/sm;Lcom/ironsource/n3;Lcom/ironsource/z0;Lcom/ironsource/rt$c;Ljava/util/concurrent/Executor;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class jp implements yk, qc {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final RewardedAdRequest adRequest;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final zk loadTaskConfig;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final q0<RewardedAd> adLoadTaskListener;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final i5 auctionResponseFetcher;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final sm networkLoadApi;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final n3 analytics;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final z0<RewardedAd> adObjectFactory;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final rt.c timerFactory;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final Executor taskFinishedExecutor;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private xa taskStartedTime;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private rt loadTimeoutTimer;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private t4 auctionDataReporter;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private boolean isTaskFinished;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/ironsource/jp$a", "Lcom/ironsource/rt$a;", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements rt.a {
        a() {
        }

        @Override // com.ironsource.rt.a
        public void a() {
            jp.this.a(lb.a.s());
        }
    }

    public jp(RewardedAdRequest adRequest, zk loadTaskConfig, q0<RewardedAd> adLoadTaskListener, i5 auctionResponseFetcher, sm networkLoadApi, n3 analytics, z0<RewardedAd> adObjectFactory, rt.c timerFactory, Executor taskFinishedExecutor) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(loadTaskConfig, "loadTaskConfig");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(auctionResponseFetcher, "auctionResponseFetcher");
        Intrinsics.checkNotNullParameter(networkLoadApi, "networkLoadApi");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(adObjectFactory, "adObjectFactory");
        Intrinsics.checkNotNullParameter(timerFactory, "timerFactory");
        Intrinsics.checkNotNullParameter(taskFinishedExecutor, "taskFinishedExecutor");
        this.adRequest = adRequest;
        this.loadTaskConfig = loadTaskConfig;
        this.adLoadTaskListener = adLoadTaskListener;
        this.auctionResponseFetcher = auctionResponseFetcher;
        this.networkLoadApi = networkLoadApi;
        this.analytics = analytics;
        this.adObjectFactory = adObjectFactory;
        this.timerFactory = timerFactory;
        this.taskFinishedExecutor = taskFinishedExecutor;
    }

    public /* synthetic */ jp(RewardedAdRequest rewardedAdRequest, zk zkVar, q0 q0Var, i5 i5Var, sm smVar, n3 n3Var, z0 z0Var, rt.c cVar, Executor executor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(rewardedAdRequest, zkVar, q0Var, i5Var, smVar, n3Var, z0Var, (i & 128) != 0 ? new rt.d() : cVar, (i & 256) != 0 ? Cif.a.c() : executor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(jp this$0, IronSourceError error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        if (this$0.isTaskFinished) {
            return;
        }
        this$0.isTaskFinished = true;
        rt rtVar = this$0.loadTimeoutTimer;
        if (rtVar != null) {
            rtVar.cancel();
        }
        g3.c.Companion companion = g3.c.INSTANCE;
        j3.j jVar = new j3.j(error.getErrorCode());
        j3.k kVar = new j3.k(error.getErrorMessage());
        xa xaVar = this$0.taskStartedTime;
        if (xaVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            xaVar = null;
        }
        companion.a(jVar, kVar, new j3.f(xa.a(xaVar))).a(this$0.analytics);
        t4 t4Var = this$0.auctionDataReporter;
        if (t4Var != null) {
            t4Var.a("onAdInstanceLoadFail");
        }
        this$0.adLoadTaskListener.onAdLoadFailed(error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(jp this$0, oi adInstance) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInstance, "$adInstance");
        if (this$0.isTaskFinished) {
            return;
        }
        this$0.isTaskFinished = true;
        rt rtVar = this$0.loadTimeoutTimer;
        if (rtVar != null) {
            rtVar.cancel();
        }
        xa xaVar = this$0.taskStartedTime;
        if (xaVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            xaVar = null;
        }
        g3.c.INSTANCE.a(new j3.f(xa.a(xaVar))).a(this$0.analytics);
        t4 t4Var = this$0.auctionDataReporter;
        if (t4Var != null) {
            t4Var.b("onAdInstanceLoadSuccess");
        }
        z0<RewardedAd> z0Var = this$0.adObjectFactory;
        t4 t4Var2 = this$0.auctionDataReporter;
        Intrinsics.checkNotNull(t4Var2);
        this$0.adLoadTaskListener.a(z0Var.a(adInstance, t4Var2));
    }

    public final void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.taskFinishedExecutor.execute(new Runnable() { // from class: com.ironsource.jp$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                jp.a(this.f$0, error);
            }
        });
    }

    @Override // org.json.qc
    public void a(final oi adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        this.taskFinishedExecutor.execute(new Runnable() { // from class: com.ironsource.jp$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                jp.a(this.f$0, adInstance);
            }
        });
    }

    @Override // org.json.qc
    public void a(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        a(lb.a.c(description));
    }

    @Override // org.json.yk
    public void start() {
        this.taskStartedTime = new xa();
        this.analytics.a(new j3.s(this.loadTaskConfig.f()), new j3.n(this.loadTaskConfig.g().getValue()), new j3.b(this.adRequest.getCom.ironsource.sdk.controller.f.b.c java.lang.String()));
        g3.c.INSTANCE.a().a(this.analytics);
        long jH = this.loadTaskConfig.h();
        rt.c cVar = this.timerFactory;
        rt.b bVar = new rt.b();
        bVar.b(jH);
        Unit unit = Unit.INSTANCE;
        rt rtVarA = cVar.a(bVar);
        this.loadTimeoutTimer = rtVarA;
        if (rtVarA != null) {
            rtVarA.a(new a());
        }
        Object objA = this.auctionResponseFetcher.a();
        Throwable thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objA);
        if (thM604exceptionOrNullimpl != null) {
            Intrinsics.checkNotNull(thM604exceptionOrNullimpl, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.error.ISException");
            a(((rf) thM604exceptionOrNullimpl).getError());
            objA = null;
        }
        f5 f5Var = (f5) objA;
        if (f5Var == null) {
            return;
        }
        n3 n3Var = this.analytics;
        String auctionId = f5Var.getAuctionId();
        if (auctionId != null) {
            n3Var.a(new j3.d(auctionId));
        }
        JSONObject genericParams = f5Var.getGenericParams();
        if (genericParams != null) {
            n3Var.a(new j3.m(genericParams));
        }
        String strA = f5Var.a();
        if (strA != null) {
            n3Var.a(new j3.g(strA));
        }
        th thVarG = this.loadTaskConfig.g();
        pc pcVar = new pc();
        pcVar.a(this);
        oi adInstance = new pi(this.adRequest.getProviderName().value(), pcVar).a(thVarG.b(th.Bidder)).b(this.loadTaskConfig.i()).c().a(this.adRequest.getCom.ironsource.sdk.controller.f.b.c java.lang.String()).a(MapsKt.plus(new lm().a(), fc.a.a(this.adRequest.getExtraParams()))).a();
        n3 n3Var2 = this.analytics;
        String strE = adInstance.e();
        Intrinsics.checkNotNullExpressionValue(strE, "adInstance.id");
        n3Var2.a(new j3.b(strE));
        um umVar = new um(f5Var, this.loadTaskConfig.j());
        this.auctionDataReporter = new t4(new sh(this.adRequest.getInstanceId(), thVarG.getValue(), f5Var.a()), new d(), f5Var.getAuctionReportUrls());
        g3.d.INSTANCE.c().a(this.analytics);
        sm smVar = this.networkLoadApi;
        Intrinsics.checkNotNullExpressionValue(adInstance, "adInstance");
        smVar.a(adInstance, umVar);
    }
}
