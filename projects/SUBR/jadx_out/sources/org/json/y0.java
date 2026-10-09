package org.json;

import android.app.Activity;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/ironsource/y0;", "Lcom/ironsource/x0;", "Landroid/app/Activity;", "activity", "Lcom/ironsource/oi;", y8.h.p0, "", "a", "", "Lcom/ironsource/ym;", "Lcom/ironsource/ym;", "networkShowApi", "<init>", "(Lcom/ironsource/ym;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class y0 implements x0 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ym networkShowApi;

    public y0(ym networkShowApi) {
        Intrinsics.checkNotNullParameter(networkShowApi, "networkShowApi");
        this.networkShowApi = networkShowApi;
    }

    @Override // org.json.x0
    public void a(Activity activity, oi adInstance) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        IronLog.ADAPTER_API.verbose("Show: networkInstanceId=" + adInstance.g() + " adInstanceId=" + adInstance.e());
        this.networkShowApi.a(activity, adInstance, new HashMap());
    }

    @Override // org.json.x0
    public boolean a(oi adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        return this.networkShowApi.a(adInstance);
    }
}
