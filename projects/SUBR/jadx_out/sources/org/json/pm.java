package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u000b¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0005\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00030\u0002R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0014\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0012\u001a\u0004\b\f\u0010\u0013R\u0017\u0010\u0015\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\b\u0010\r\u001a\u0004\b\u0005\u0010\u000f¨\u0006\u0018"}, d2 = {"Lcom/ironsource/pm;", "", "Lcom/ironsource/il;", "Lcom/ironsource/d3;", "mapper", "a", "Lcom/ironsource/xr;", "Lcom/ironsource/xr;", "d", "()Lcom/ironsource/xr;", "recordType", "", "b", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "advertiserBundleId", "Lcom/ironsource/jf;", "Lcom/ironsource/jf;", "()Lcom/ironsource/jf;", "adProvider", "adInstanceId", "<init>", "(Lcom/ironsource/xr;Ljava/lang/String;Lcom/ironsource/jf;Ljava/lang/String;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class pm {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final xr recordType;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String advertiserBundleId;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final jf adProvider;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final String adInstanceId;

    public pm(xr recordType, String advertiserBundleId, jf adProvider, String adInstanceId) {
        Intrinsics.checkNotNullParameter(recordType, "recordType");
        Intrinsics.checkNotNullParameter(advertiserBundleId, "advertiserBundleId");
        Intrinsics.checkNotNullParameter(adProvider, "adProvider");
        Intrinsics.checkNotNullParameter(adInstanceId, "adInstanceId");
        this.recordType = recordType;
        this.advertiserBundleId = advertiserBundleId;
        this.adProvider = adProvider;
        this.adInstanceId = adInstanceId;
    }

    public final d3 a(il<pm, d3> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return mapper.a(this);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getAdInstanceId() {
        return this.adInstanceId;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final jf getAdProvider() {
        return this.adProvider;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getAdvertiserBundleId() {
        return this.advertiserBundleId;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final xr getRecordType() {
        return this.recordType;
    }
}
