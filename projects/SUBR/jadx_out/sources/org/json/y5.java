package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/ironsource/y5;", "Lcom/ironsource/g0;", "Lcom/ironsource/u5;", "bannerAdInstance", "", "a", "Lcom/ironsource/iu;", "Lcom/ironsource/iu;", "viewBinder", "<init>", "(Lcom/ironsource/iu;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class y5 implements g0 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final iu viewBinder;

    public y5(iu viewBinder) {
        Intrinsics.checkNotNullParameter(viewBinder, "viewBinder");
        this.viewBinder = viewBinder;
    }

    @Override // org.json.g0
    public void a(u5 bannerAdInstance) {
        Intrinsics.checkNotNullParameter(bannerAdInstance, "bannerAdInstance");
        bannerAdInstance.a(this.viewBinder);
    }

    @Override // org.json.g0
    public /* synthetic */ void a(ul ulVar) {
        Intrinsics.checkNotNullParameter(ulVar, "nativeAdInstance");
    }

    @Override // org.json.g0
    public /* synthetic */ void a(xc xcVar) {
        Intrinsics.checkNotNullParameter(xcVar, "fullscreenAdInstance");
    }
}
