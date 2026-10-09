package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0012\u001a\u00020\u000e8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0016\u001a\u00020\u00138\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0003\u0010\u0015R\u001a\u0010\u001a\u001a\u00020\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0018\u001a\u0004\b\t\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/ironsource/nq;", "", "Lcom/ironsource/gr;", "a", "Lcom/ironsource/gr;", "c", "()Lcom/ironsource/gr;", "fullResponse", "Lcom/ironsource/uo;", "b", "Lcom/ironsource/uo;", "d", "()Lcom/ironsource/uo;", oq.a, "Lcom/ironsource/wo;", "Lcom/ironsource/wo;", "e", "()Lcom/ironsource/wo;", oq.b, "Lcom/ironsource/q8;", "Lcom/ironsource/q8;", "()Lcom/ironsource/q8;", "configurations", "Lcom/ironsource/bc;", "Lcom/ironsource/bc;", "()Lcom/ironsource/bc;", oq.d, "<init>", "(Lcom/ironsource/gr;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class nq {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final gr fullResponse;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final uo providerOrder;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final wo providerSettings;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final q8 configurations;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final bc experiments;

    public nq(gr fullResponse) {
        Intrinsics.checkNotNullParameter(fullResponse, "fullResponse");
        this.fullResponse = fullResponse;
        JSONObject jSONObjectOptJSONObject = fullResponse.i().optJSONObject(oq.a);
        this.providerOrder = new uo(jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject);
        JSONObject jSONObjectOptJSONObject2 = fullResponse.i().optJSONObject(oq.b);
        this.providerSettings = new wo(jSONObjectOptJSONObject2 == null ? new JSONObject() : jSONObjectOptJSONObject2);
        JSONObject jSONObjectOptJSONObject3 = fullResponse.i().optJSONObject("configurations");
        this.configurations = new q8(jSONObjectOptJSONObject3 == null ? new JSONObject() : jSONObjectOptJSONObject3);
        JSONObject jSONObjectOptJSONObject4 = fullResponse.i().optJSONObject(oq.d);
        this.experiments = new bc(jSONObjectOptJSONObject4 == null ? new JSONObject() : jSONObjectOptJSONObject4);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final q8 getConfigurations() {
        return this.configurations;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final bc getExperiments() {
        return this.experiments;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final gr getFullResponse() {
        return this.fullResponse;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final uo getProviderOrder() {
        return this.providerOrder;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final wo getProviderSettings() {
        return this.providerSettings;
    }
}
