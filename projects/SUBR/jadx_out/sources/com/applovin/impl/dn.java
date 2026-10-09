package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class dn extends yl implements d4.e {
    private final com.applovin.impl.sdk.network.a h;
    private final d4.e i;
    private tm.b j;
    private sj k;
    private sj l;
    protected d4.b m;

    @Override // com.applovin.impl.d4.e
    public abstract void a(String str, int i, String str2, Object obj);

    @Override // com.applovin.impl.d4.e
    public abstract void a(String str, Object obj, int i);

    public dn(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar) {
        this(aVar, jVar, false);
    }

    class a implements d4.e {
        final /* synthetic */ com.applovin.impl.sdk.j a;

        a(com.applovin.impl.sdk.j jVar) {
            this.a = jVar;
        }

        @Override // com.applovin.impl.d4.e
        public void a(String str, int i, String str2, Object obj) {
            long millis;
            boolean z = false;
            boolean z2 = i < 200 || i >= 500;
            boolean z3 = i == 429;
            boolean z4 = i != -1009 || dn.this.h.q();
            boolean z5 = (i == -900 || i == -1000) ? false : true;
            if (z4 && z5 && (z2 || z3 || dn.this.h.p())) {
                String strA = dn.this.h.a();
                if (dn.this.h.j() <= 0) {
                    if (strA != null && strA.equals(dn.this.h.f())) {
                        dn dnVar = dn.this;
                        dnVar.a(dnVar.l);
                    } else {
                        dn dnVar2 = dn.this;
                        dnVar2.a(dnVar2.k);
                    }
                    dn dnVar3 = dn.this;
                    dnVar3.a(dnVar3.h.f(), i, str2, obj);
                    return;
                }
                com.applovin.impl.sdk.n nVar = dn.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    dn dnVar4 = dn.this;
                    dnVar4.c.k(dnVar4.b, "Unable to send request due to server failure (code " + i + "). " + dn.this.h.j() + " attempts left, retrying in " + TimeUnit.MILLISECONDS.toSeconds(dn.this.h.k()) + " seconds...");
                }
                int iJ = dn.this.h.j() - 1;
                dn.this.h.a(iJ);
                if (iJ == 0) {
                    dn dnVar5 = dn.this;
                    dnVar5.a(dnVar5.k);
                    if (StringUtils.isValidString(strA) && strA.length() >= 4) {
                        com.applovin.impl.sdk.n nVar2 = dn.this.c;
                        if (com.applovin.impl.sdk.n.a()) {
                            dn dnVar6 = dn.this;
                            dnVar6.c.d(dnVar6.b, "Switching to backup endpoint " + strA);
                        }
                        dn.this.h.a(strA);
                        z = true;
                    }
                }
                if (((Boolean) this.a.a(sj.i3)).booleanValue() && z) {
                    millis = 0;
                } else {
                    millis = dn.this.h.n() ? TimeUnit.SECONDS.toMillis((long) Math.pow(2.0d, dn.this.h.c())) : dn.this.h.k();
                }
                tm tmVarI0 = this.a.i0();
                dn dnVar7 = dn.this;
                tmVarI0.a(dnVar7, dnVar7.j, millis);
                return;
            }
            dn dnVar8 = dn.this;
            dnVar8.a(dnVar8.h.f(), i, str2, obj);
        }

        @Override // com.applovin.impl.d4.e
        public void a(String str, Object obj, int i) {
            dn.this.h.a(0);
            dn.this.a(str, obj, i);
        }
    }

    public dn(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar, boolean z) {
        super("TaskRepeatRequest", jVar, z);
        this.j = tm.b.OTHER;
        this.k = null;
        this.l = null;
        if (aVar != null) {
            a(aVar.f());
            this.h = aVar;
            this.m = new d4.b();
            this.i = new a(jVar);
            return;
        }
        throw new IllegalArgumentException("No request specified");
    }

    @Override // java.lang.Runnable
    public void run() {
        d4 d4VarT = b().t();
        if (!b().v0() && !b().s0()) {
            com.applovin.impl.sdk.n.h("AppLovinSdk", "AppLovin SDK is disabled");
            a(this.h.f(), -22, null, null);
        } else if (StringUtils.isValidString(this.h.f()) && this.h.f().length() >= 4) {
            if (TextUtils.isEmpty(this.h.h())) {
                this.h.b(this.h.b() != null ? "POST" : "GET");
            }
            d4VarT.a(this.h, this.m, this.i);
        } else {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Task has an invalid or null request endpoint.");
            }
            a(this.h.f(), AppLovinErrorCodes.INVALID_URL, null, null);
        }
    }

    public void c(sj sjVar) {
        this.k = sjVar;
    }

    public void b(sj sjVar) {
        this.l = sjVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(sj sjVar) {
        if (sjVar != null) {
            b().g0().a(sjVar, sjVar.a());
        }
    }

    public void a(tm.b bVar) {
        this.j = bVar;
    }
}
