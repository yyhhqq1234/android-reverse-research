package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\t\b\u0010¢\u0006\u0004\b\u0006\u0010\b¨\u0006\t"}, d2 = {"Lcom/ironsource/am;", "Lcom/ironsource/c1;", "", "adUnitId", "Lcom/ironsource/mediationsdk/model/Placement;", "placement", "<init>", "(Ljava/lang/String;Lcom/ironsource/mediationsdk/model/Placement;)V", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class am extends c1 {
    /* JADX WARN: Multi-variable type inference failed */
    public am() {
        this("", null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public am(String adUnitId, Placement placement) {
        super(IronSource.AD_UNIT.NATIVE_AD, adUnitId, placement, null, 8, null);
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
    }

    public /* synthetic */ am(String str, Placement placement, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : placement);
    }
}
