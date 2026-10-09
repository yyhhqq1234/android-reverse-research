package org.json;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0003B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J$\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006H\u0016R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/ironsource/w0;", "Lcom/ironsource/v0;", "", "a", "Lcom/ironsource/oi;", y8.h.p0, "", "loadParams", "", "Lcom/ironsource/sm;", "Lcom/ironsource/sm;", "networkLoadApi", "<init>", "(Lcom/ironsource/sm;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class w0 implements v0 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final sm networkLoadApi;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/ironsource/w0$a;", "", "", "b", "I", "LOAD_EXCEPTION", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a {
        public static final a a = new a();

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        public static final int LOAD_EXCEPTION = 1000;

        private a() {
        }
    }

    public w0(sm networkLoadApi) {
        Intrinsics.checkNotNullParameter(networkLoadApi, "networkLoadApi");
        this.networkLoadApi = networkLoadApi;
    }

    @Override // org.json.v0
    public String a() {
        return this.networkLoadApi.a();
    }

    @Override // org.json.v0
    public void a(oi adInstance, Map<String, String> loadParams) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(loadParams, "loadParams");
        try {
            this.networkLoadApi.a(adInstance, new um(null, false, 3, null));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.ADAPTER_API.verbose("load ad with identifier: " + adInstance.e() + " failed. error: " + e.getMessage());
            StringBuilder sb = new StringBuilder("1000: loadAd failed: ");
            sb.append(e.getMessage());
            String string = sb.toString();
            fn fnVarB = adInstance.b();
            if (fnVarB instanceof pc) {
                fn fnVarB2 = adInstance.b();
                Intrinsics.checkNotNull(fnVarB2, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.FullScreenAdInstanceListenerWrapper");
                ((pc) fnVarB2).onInterstitialLoadFailed(string);
            } else if (fnVarB instanceof hn) {
                fn fnVarB3 = adInstance.b();
                Intrinsics.checkNotNull(fnVarB3, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.OnBannerListenerWrapper");
                ((hn) fnVarB3).onBannerLoadFail(string);
            }
        }
    }
}
