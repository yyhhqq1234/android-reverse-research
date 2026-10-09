package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.i;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/ironsource/o1;", "Lcom/ironsource/d5;", "Lcom/ironsource/mediationsdk/i;", "auctionRequestParams", "", "a", "Lcom/ironsource/c1;", "Lcom/ironsource/c1;", "adProperties", "<init>", "(Lcom/ironsource/c1;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class o1 implements d5 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final c1 adProperties;

    public o1(c1 adProperties) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        this.adProperties = adProperties;
    }

    @Override // org.json.d5
    public void a(i auctionRequestParams) {
        Intrinsics.checkNotNullParameter(auctionRequestParams, "auctionRequestParams");
        auctionRequestParams.b(this.adProperties.getAdUnitId());
        auctionRequestParams.a(this.adProperties.getAdFormat().toString());
        auctionRequestParams.a(Boolean.TRUE);
    }
}
