package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.model.BasePlacement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\r"}, d2 = {"Lcom/ironsource/e7;", "Lcom/ironsource/mediationsdk/model/BasePlacement;", "", "toString", "", y8.j, oo.d, "", "isDefault", "Lcom/ironsource/ho;", "placementAvailabilitySettings", "<init>", "(ILjava/lang/String;ZLcom/ironsource/ho;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class e7 extends BasePlacement {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e7(int i, String placementName, boolean z, ho hoVar) {
        super(i, placementName, z, hoVar);
        Intrinsics.checkNotNullParameter(placementName, "placementName");
    }

    @Override // org.json.mediationsdk.model.BasePlacement
    public String toString() {
        return super.toString() + ", placementId: " + getCom.ironsource.y8.j java.lang.String();
    }
}
