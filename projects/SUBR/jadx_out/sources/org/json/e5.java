package org.json;

import java.net.URL;
import org.json.mediationsdk.e;

/* JADX INFO: loaded from: classes3.dex */
public class e5 extends e.a {
    public e5(p4 p4Var, URL url, JSONObject jSONObject, boolean z, int i, long j, boolean z2, boolean z3, int i2) {
        super(p4Var, url, jSONObject, z, i, j, z2, z3, i2);
    }

    @Override // com.ironsource.mediationsdk.e.a
    protected void a(boolean z, p4 p4Var, long j) {
        try {
            if (z) {
                ((x4) p4Var).a(this.b, this.f + 1, j, this.j, this.i);
            } else {
                p4Var.a(this.c, this.d, this.f + 1, this.g, j);
            }
        } catch (Exception e) {
            l9.d().a(e);
            p4Var.a(1009, e.getMessage(), this.f + 1, this.g, j);
        }
    }
}
