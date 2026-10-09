package org.json;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\b\u0010\u0003\u001a\u00020\u0002H\u0014¨\u0006\f"}, d2 = {"Lcom/ironsource/cm;", "Lcom/ironsource/m1;", "Lcom/ironsource/b0;", "a", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/dm;", "adUnitData", "Lcom/ironsource/em;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Lcom/ironsource/l1;Lcom/ironsource/dm;Lcom/ironsource/em;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class cm extends m1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cm(l1 adTools, dm adUnitData, em listener) {
        String str;
        int iB;
        super(adTools, adUnitData, listener);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Placement placementH = h();
        IronLog.INTERNAL.verbose("placement = " + placementH);
        if (placementH == null || TextUtils.isEmpty(placementH.getCom.ironsource.oo.d java.lang.String())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Object[] objArr = new Object[1];
            objArr[0] = placementH == null ? "placement is null" : "placement name is empty";
            str = String.format("can't load native ad - %s", Arrays.copyOf(objArr, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            iB = x1.b(adUnitData.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String());
        } else {
            str = null;
            iB = 510;
        }
        if (str != null) {
            IronLog.API.error(a(str));
            a(iB, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final y a(cm this$0, z adInstanceData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInstanceData, "adInstanceData");
        return new ul(new t2(this$0.getAdUnitTools(), b2.b.PROVIDER), adInstanceData, new m1.a());
    }

    @Override // org.json.m1
    protected b0 a() {
        return new b0() { // from class: com.ironsource.cm$$ExternalSyntheticLambda0
            @Override // org.json.b0
            public final y a(z zVar) {
                return cm.a(this.f$0, zVar);
            }
        };
    }
}
