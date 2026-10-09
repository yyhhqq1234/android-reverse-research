package org.json;

import com.unity3d.ironsourceads.banner.BannerAdView;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/ironsource/b6;", "Lcom/ironsource/a6;", "Lcom/ironsource/oi;", y8.h.p0, "Lcom/ironsource/wf;", "adContainer", "Lcom/ironsource/t4;", "auctionDataReporter", "Lcom/unity3d/ironsourceads/banner/BannerAdView;", "a", "Lcom/ironsource/n3;", "Lcom/ironsource/n3;", "analytics", "Ljava/util/concurrent/Executor;", "b", "Ljava/util/concurrent/Executor;", "callbackExecutor", "<init>", "(Lcom/ironsource/n3;Ljava/util/concurrent/Executor;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class b6 implements a6 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final n3 analytics;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Executor callbackExecutor;

    public b6(n3 analytics, Executor callbackExecutor) {
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(callbackExecutor, "callbackExecutor");
        this.analytics = analytics;
        this.callbackExecutor = callbackExecutor;
    }

    @Override // org.json.a6
    public BannerAdView a(oi adInstance, wf adContainer, t4 auctionDataReporter) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(auctionDataReporter, "auctionDataReporter");
        return new BannerAdView(new m6(adInstance, adContainer, auctionDataReporter, this.analytics, null, null, null, null, 240, null));
    }
}
