package org.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/ironsource/rj;", "Lcom/ironsource/fr;", "Lorg/json/JSONObject;", "b", "", "a", "Lcom/ironsource/fr;", "serverResponse", "<init>", "(Lcom/ironsource/fr;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class rj implements fr<JSONObject> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final fr<String> serverResponse;

    public rj(fr<String> serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        this.serverResponse = serverResponse;
    }

    @Override // org.json.fr
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a() {
        return new JSONObject(this.serverResponse.a());
    }
}
