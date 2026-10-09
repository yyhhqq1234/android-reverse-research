package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\u000b\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\nR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/ironsource/j4;", "Lcom/ironsource/ee;", "Lcom/ironsource/h4;", "settings", "", "a", "Lcom/ironsource/kj;", "observer", "b", "Lcom/ironsource/ve;", "Lcom/ironsource/ve;", "featureAvailabilityService", "Lcom/ironsource/k4;", "Lcom/ironsource/k4;", "handler", "<init>", "(Lcom/ironsource/ve;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class j4 implements ee {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ve featureAvailabilityService;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private k4 handler;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Lcom/ironsource/j4$a;", "", "Lcom/ironsource/h4;", "settings", "Lcom/ironsource/ve;", "featureAvailabilityService", "Lcom/ironsource/k4;", "a", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a {
        public final k4 a(h4 settings, ve featureAvailabilityService) {
            Intrinsics.checkNotNullParameter(featureAvailabilityService, "featureAvailabilityService");
            IronLog ironLog = IronLog.INTERNAL;
            ironLog.verbose("isAndroidxApplicationLifecycleAvailable: " + featureAvailabilityService.a());
            StringBuilder sb = new StringBuilder("isAndroidxApplicationLifecycleEnabled: ");
            sb.append(settings != null ? Boolean.valueOf(settings.getIsAndroidxApplicationLifecycleEnabled()) : null);
            ironLog.verbose(sb.toString());
            boolean z = false;
            if (featureAvailabilityService.a()) {
                vp.i().a(new ob(IronSourceConstants.TROUBLESHOOTING_ANDROIDX_PROCESS_LIFECYCLE_OWNER_AVAILABLE, IronSourceUtils.getMediationAdditionalData(false)));
            }
            if ((settings != null ? settings.getIsAndroidxApplicationLifecycleEnabled() : false) && featureAvailabilityService.a()) {
                z = true;
            }
            ironLog.verbose("isAndroidxEnabled: " + z);
            return z ? new s3() : new kf();
        }
    }

    public j4(ve featureAvailabilityService) {
        Intrinsics.checkNotNullParameter(featureAvailabilityService, "featureAvailabilityService");
        this.featureAvailabilityService = featureAvailabilityService;
    }

    @Override // org.json.ee
    public void a(h4 settings) {
        if (this.handler == null) {
            this.handler = new a().a(settings, this.featureAvailabilityService);
        }
    }

    @Override // org.json.k4
    public void a(kj observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        k4 k4Var = this.handler;
        if (k4Var != null) {
            k4Var.a(observer);
        }
    }

    @Override // org.json.k4
    public void b(kj observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        k4 k4Var = this.handler;
        if (k4Var != null) {
            k4Var.b(observer);
        }
    }
}
