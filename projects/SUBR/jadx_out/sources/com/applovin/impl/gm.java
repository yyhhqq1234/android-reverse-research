package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class gm extends yl {
    private final com.applovin.impl.sdk.network.e h;
    private final AppLovinPostbackListener i;
    private final tm.b j;

    public gm(com.applovin.impl.sdk.network.e eVar, tm.b bVar, com.applovin.impl.sdk.j jVar, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", jVar);
        if (eVar != null) {
            this.h = eVar;
            this.i = appLovinPostbackListener;
            this.j = bVar;
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!StringUtils.isValidString(this.h.f())) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.d(this.b, "Requested URL is not valid; nothing to do...");
            }
            AppLovinPostbackListener appLovinPostbackListener = this.i;
            if (appLovinPostbackListener != null) {
                appLovinPostbackListener.onPostbackFailure(this.h.f(), AppLovinErrorCodes.INVALID_URL);
                return;
            }
            return;
        }
        if (this.h.u()) {
            b().p0().a(this.h, new a());
        } else {
            e();
        }
    }

    class a implements AppLovinPostbackListener {
        a() {
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackSuccess(String str) {
            if (gm.this.i != null) {
                gm.this.i.onPostbackSuccess(gm.this.h.f());
            }
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackFailure(String str, int i) {
            gm.this.e();
        }
    }

    class b extends dn {
        final String n;

        b(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar) {
            super(aVar, jVar);
            this.n = gm.this.h.f();
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, Object obj, int i) {
            if (obj instanceof String) {
                for (String str2 : this.a.c(sj.o0)) {
                    if (str2.startsWith(str2)) {
                        String str3 = (String) obj;
                        if (TextUtils.isEmpty(str3)) {
                            continue;
                        } else {
                            try {
                                JSONObject jSONObject = new JSONObject(str3);
                                e4.c(jSONObject, this.a);
                                e4.b(jSONObject, this.a);
                                e4.a(jSONObject, this.a);
                                break;
                            } catch (JSONException unused) {
                            }
                        }
                    }
                }
            }
            if (gm.this.i != null) {
                gm.this.i.onPostbackSuccess(this.n);
            }
            if (gm.this.h.t()) {
                this.a.q().a(gm.this.h.s(), this.n, i, obj, null, true);
            }
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, Object obj) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Failed to dispatch postback. Error code: " + i + " URL: " + this.n);
            }
            if (gm.this.i != null) {
                gm.this.i.onPostbackFailure(this.n, i);
            }
            if (gm.this.h.t()) {
                this.a.q().a(gm.this.h.s(), this.n, i, obj, str2, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        b bVar = new b(this.h, b());
        bVar.a(this.j);
        b().i0().a(bVar);
    }
}
