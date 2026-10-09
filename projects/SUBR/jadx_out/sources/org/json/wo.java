package org.json;

import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R#\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0006\u0010\t\u001a\u0004\b\u0006\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/ironsource/wo;", "", "Lcom/ironsource/wm;", "networkSettings", "", "b", "a", "", "", "Ljava/util/Map;", "()Ljava/util/Map;", "Lorg/json/JSONObject;", oq.b, "<init>", "(Lorg/json/JSONObject;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class wo {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Map<String, wm> networkSettings;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u0016\u0012\f\u0012\n \u0001*\u0004\u0018\u00010\u00000\u0000\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "kotlin.jvm.PlatformType", "networkName", "Lkotlin/Pair;", "Lcom/ironsource/wm;", "a", "(Ljava/lang/String;)Lkotlin/Pair;"}, k = 3, mv = {1, 8, 0})
    static final class a extends Lambda implements Function1<String, Pair<? extends String, ? extends wm>> {
        final /* synthetic */ JSONObject a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(JSONObject jSONObject) {
            super(1);
            this.a = jSONObject;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<String, wm> invoke(String networkName) throws JSONException {
            Intrinsics.checkNotNullExpressionValue(networkName, "networkName");
            JSONObject jSONObject = this.a.getJSONObject(networkName);
            Intrinsics.checkNotNullExpressionValue(jSONObject, "providerSettings.getJSONObject(networkName)");
            return TuplesKt.to(networkName, new wm(networkName, jSONObject));
        }
    }

    public wo(JSONObject providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Iterator<String> itKeys = providerSettings.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "providerSettings\n          .keys()");
        Map<String, wm> map = MapsKt.toMap(SequencesKt.map(SequencesKt.asSequence(itKeys), new a(providerSettings)));
        this.networkSettings = map;
        for (Map.Entry<String, wm> entry : map.entrySet()) {
            entry.getKey();
            wm value = entry.getValue();
            if (b(value)) {
                value.b(a(value));
            }
        }
    }

    private final wm a(wm networkSettings) {
        return this.networkSettings.get(networkSettings.getCom.ironsource.xm.e java.lang.String());
    }

    private final boolean b(wm networkSettings) {
        if (networkSettings.getIsMultipleInstances()) {
            return networkSettings.getProviderTypeForReflection().length() > 0;
        }
        return false;
    }

    public final Map<String, wm> a() {
        return this.networkSettings;
    }
}
