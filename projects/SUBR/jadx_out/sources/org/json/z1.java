package org.json;

import androidx.core.app.NotificationCompat;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u001e\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\n\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/ironsource/z1;", "Lcom/ironsource/ub;", "Lcom/ironsource/y1;", NotificationCompat.CATEGORY_EVENT, "", "", "", "a", "Lcom/ironsource/l1;", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/c1;", "b", "Lcom/ironsource/c1;", "adProperties", "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/c1;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class z1 extends ub {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final l1 adTools;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final c1 adProperties;

    public z1(l1 adTools, c1 adProperties) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        this.adTools = adTools;
        this.adProperties = adProperties;
    }

    @Override // org.json.a2
    public Map<String, Object> a(y1 event) {
        Map<String, Object> mapA = a(this.adProperties);
        mapA.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        mapA.put("sessionDepth", Integer.valueOf(this.adTools.f()));
        return mapA;
    }
}
