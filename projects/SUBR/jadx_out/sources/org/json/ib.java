package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\n\u0010\u000b\u001a\u00060\tj\u0002`\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/ironsource/ib;", "", "", "a", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "Lcom/ironsource/n3;", "Lcom/ironsource/n3;", "analytics", "", "Lcom/unity3d/ironsourceads/internal/load/AdRequestAdId;", "adRequestAdId", "Lcom/ironsource/to;", "adRequestProviderName", "<init>", "(Lcom/ironsource/n3;Ljava/lang/String;Lcom/ironsource/to;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ib {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final n3 analytics;

    public ib(n3 analytics, String adRequestAdId, to adRequestProviderName) {
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(adRequestAdId, "adRequestAdId");
        Intrinsics.checkNotNullParameter(adRequestProviderName, "adRequestProviderName");
        this.analytics = analytics;
        analytics.a(new j3.s(adRequestProviderName.value()), new j3.b(adRequestAdId));
    }

    public final void a() {
        g3.c.INSTANCE.a().a(this.analytics);
    }

    public final void a(IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        g3.c.INSTANCE.a(new j3.j(error.getErrorCode()), new j3.k(error.getErrorMessage()), new j3.f(0L)).a(this.analytics);
    }
}
