package org.json;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.sdk.controller.f;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000e¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0016J\u0010\u0010\u0006\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\u0006\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000fR \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/ironsource/o0;", "Lcom/ironsource/m0;", "Lcom/ironsource/m0$a;", "", f.b.AD_ID, "Lcom/ironsource/l0;", "a", "", "adInfo", "", "Lorg/json/JSONObject;", "json", "Lcom/ironsource/k1;", "adStatus", "Ljava/util/concurrent/locks/ReadWriteLock;", "Ljava/util/concurrent/locks/ReadWriteLock;", "readWriteLock", "", "b", "Ljava/util/Map;", "adInternalInfoMap", "<init>", "(Ljava/util/concurrent/locks/ReadWriteLock;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class o0 implements m0, m0.a {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ReadWriteLock readWriteLock;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Map<String, l0> adInternalInfoMap;

    /* JADX WARN: Multi-variable type inference failed */
    public o0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public o0(ReadWriteLock readWriteLock) {
        Intrinsics.checkNotNullParameter(readWriteLock, "readWriteLock");
        this.readWriteLock = readWriteLock;
        this.adInternalInfoMap = new LinkedHashMap();
    }

    public /* synthetic */ o0(ReadWriteLock readWriteLock, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ReentrantReadWriteLock() : readWriteLock);
    }

    @Override // org.json.m0
    public l0 a(String adId) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        this.readWriteLock.readLock().lock();
        try {
            return this.adInternalInfoMap.get(adId);
        } finally {
            this.readWriteLock.readLock().unlock();
        }
    }

    @Override // org.json.m0
    public List<l0> a() {
        this.readWriteLock.readLock().lock();
        List<l0> list = CollectionsKt.toList(this.adInternalInfoMap.values());
        this.readWriteLock.readLock().unlock();
        return list;
    }

    @Override // com.ironsource.m0.a
    public void a(k1 adStatus, String adId) {
        Intrinsics.checkNotNullParameter(adStatus, "adStatus");
        Intrinsics.checkNotNullParameter(adId, "adId");
        this.readWriteLock.writeLock().lock();
        try {
            l0 l0Var = this.adInternalInfoMap.get(adId);
            if (l0Var != null) {
                l0Var.a(adStatus);
                l0Var.a(System.currentTimeMillis() / 1000.0d);
            }
        } finally {
            this.readWriteLock.writeLock().unlock();
        }
    }

    @Override // com.ironsource.m0.a
    public void a(l0 adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.readWriteLock.writeLock().lock();
        try {
            if (this.adInternalInfoMap.get(adInfo.c()) == null) {
                this.adInternalInfoMap.put(adInfo.c(), adInfo);
            }
        } finally {
            this.readWriteLock.writeLock().unlock();
        }
    }

    @Override // com.ironsource.m0.a
    public void a(JSONObject json, k1 adStatus, String adId) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(adStatus, "adStatus");
        Intrinsics.checkNotNullParameter(adId, "adId");
        this.readWriteLock.writeLock().lock();
        try {
            l0 l0Var = this.adInternalInfoMap.get(adId);
            if (l0Var != null) {
                String bundleId = json.optString("bundleId");
                Intrinsics.checkNotNullExpressionValue(bundleId, "bundleId");
                boolean z = true;
                if (bundleId.length() > 0) {
                    l0Var.a(bundleId);
                }
                String dynamicDemandSourceId = json.optString("dynamicDemandSource");
                Intrinsics.checkNotNullExpressionValue(dynamicDemandSourceId, "dynamicDemandSourceId");
                if (dynamicDemandSourceId.length() <= 0) {
                    z = false;
                }
                if (z) {
                    l0Var.a(jf.INSTANCE.a(dynamicDemandSourceId));
                }
                l0Var.a(adStatus);
            }
        } finally {
            this.readWriteLock.writeLock().unlock();
        }
    }
}
