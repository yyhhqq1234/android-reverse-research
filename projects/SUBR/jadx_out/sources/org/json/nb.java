package org.json;

import com.unity3d.ironsourceads.rewarded.RewardedAdRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/ironsource/nb;", "Lcom/ironsource/yk;", "", "start", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "a", "Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;", "Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;", "adRequest", "Lcom/ironsource/lp;", "b", "Lcom/ironsource/lp;", "adLoadTaskListener", "Lcom/ironsource/n3;", "c", "Lcom/ironsource/n3;", "analytics", "d", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "<init>", "(Lcom/unity3d/ironsourceads/rewarded/RewardedAdRequest;Lcom/ironsource/lp;Lcom/ironsource/n3;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class nb implements yk {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final RewardedAdRequest adRequest;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final lp adLoadTaskListener;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final n3 analytics;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final IronSourceError error;

    public nb(RewardedAdRequest adRequest, lp adLoadTaskListener, n3 analytics, IronSourceError error) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(error, "error");
        this.adRequest = adRequest;
        this.adLoadTaskListener = adLoadTaskListener;
        this.analytics = analytics;
        this.error = error;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final IronSourceError getError() {
        return this.error;
    }

    @Override // org.json.yk
    public void start() {
        ib ibVar = new ib(this.analytics, this.adRequest.getCom.ironsource.sdk.controller.f.b.c java.lang.String(), this.adRequest.getProviderName());
        ibVar.a();
        ibVar.a(this.error);
        this.adLoadTaskListener.onAdLoadFailed(this.error);
    }
}
