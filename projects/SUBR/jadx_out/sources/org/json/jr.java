package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/ironsource/jr;", "", "Lcom/ironsource/ee;", "applicationLifecycleService", "", "a", "Lcom/ironsource/oc;", "Lcom/ironsource/oc;", "calculator", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class jr {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private oc calculator;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"Lcom/ironsource/jr$a;", "Lcom/ironsource/ir;", "", "run", "<init>", "(Lcom/ironsource/jr;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    private final class a extends ir {
        public a() {
        }

        @Override // org.json.ir, java.lang.Runnable
        public void run() {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
            try {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_DURATION, getTimeInForeground());
            } catch (JSONException e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            eo.P.a(new ob(44, mediationAdditionalData));
        }
    }

    public final void a(ee applicationLifecycleService) {
        Intrinsics.checkNotNullParameter(applicationLifecycleService, "applicationLifecycleService");
        this.calculator = new oc(applicationLifecycleService, new a());
    }
}
