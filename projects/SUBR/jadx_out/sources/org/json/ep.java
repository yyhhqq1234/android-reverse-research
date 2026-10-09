package org.json;

import com.unity3d.ironsourceads.rewarded.RewardedAd;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/ironsource/ep;", "Lcom/ironsource/z0;", "Lcom/unity3d/ironsourceads/rewarded/RewardedAd;", "Lcom/ironsource/oi;", y8.h.p0, "Lcom/ironsource/t4;", "auctionDataReporter", "b", "Lcom/ironsource/n3;", "a", "Lcom/ironsource/n3;", "analytics", "Ljava/util/concurrent/Executor;", "Ljava/util/concurrent/Executor;", "callbackExecutor", "<init>", "(Lcom/ironsource/n3;Ljava/util/concurrent/Executor;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ep implements z0<RewardedAd> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final n3 analytics;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Executor callbackExecutor;

    public ep(n3 analytics, Executor callbackExecutor) {
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(callbackExecutor, "callbackExecutor");
        this.analytics = analytics;
        this.callbackExecutor = callbackExecutor;
    }

    @Override // org.json.z0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public RewardedAd a(oi adInstance, t4 auctionDataReporter) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(auctionDataReporter, "auctionDataReporter");
        return new RewardedAd(new hp(adInstance, new y0(new zm()), auctionDataReporter, this.analytics, null, null, null, null, fp.a, 240, null));
    }
}
