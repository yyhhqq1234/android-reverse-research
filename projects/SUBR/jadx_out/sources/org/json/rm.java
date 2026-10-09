package org.json;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00040\u0003B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016R \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/ironsource/rm;", "Lcom/ironsource/as;", "Lorg/json/JSONObject;", "Lcom/ironsource/yr;", "Lcom/ironsource/pm;", "record", "", "a", "Lcom/ironsource/zr;", y8.a.s, "b", "", "", "Lcom/ironsource/e3;", "Ljava/util/Map;", "advertiserBundlesHistory", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class rm implements as<JSONObject>, yr<pm> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Map<String, e3> advertiserBundlesHistory = new LinkedHashMap();

    @Override // org.json.yr
    public void a(pm record) {
        Intrinsics.checkNotNullParameter(record, "record");
        String advertiserBundleId = record.getAdvertiserBundleId();
        Map<String, e3> map = this.advertiserBundlesHistory;
        e3 e3Var = map.get(advertiserBundleId);
        if (e3Var == null) {
            e3Var = new e3();
            map.put(advertiserBundleId, e3Var);
        }
        e3Var.a(record.a(new qm()));
    }

    @Override // org.json.ae
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a(zr mode) throws JSONException {
        Intrinsics.checkNotNullParameter(mode, "mode");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, e3> entry : this.advertiserBundlesHistory.entrySet()) {
            String key = entry.getKey();
            JSONArray jSONArrayB = entry.getValue().a(mode);
            if (jSONArrayB.length() > 0) {
                jSONObject.put(key, jSONArrayB);
            }
        }
        return jSONObject;
    }
}
