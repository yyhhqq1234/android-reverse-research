package com.applovin.impl;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class v3 extends yl {
    private final String h;
    private final com.applovin.impl.sdk.network.a i;

    public v3(String str, com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar) {
        super("CommunicatorRequestTask", jVar, str);
        this.h = str;
        this.i = aVar;
    }

    class a extends dn {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar, boolean z) {
            super(aVar, jVar, z);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            this.a.q().a(v3.this.h, v3.this.i.f(), i, jSONObject, str2, false);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, JSONObject jSONObject, int i) {
            this.a.q().a(v3.this.h, v3.this.i.f(), i, jSONObject, null, true);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.i0().a(new a(this.i, this.a, d()));
    }
}
