package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class s extends r {
    public a g;

    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public String b;

        a(Intent intent) {
            this.a = com.netease.mpay.b.a.b(intent, ak.PREPAY_ORDER_ID);
            this.b = com.netease.mpay.b.a.b(intent, ak.PREPAY_PRICE);
        }

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        void a(Bundle bundle) {
            com.netease.mpay.b.a.a(bundle, ak.PREPAY_ORDER_ID, this.a);
            com.netease.mpay.b.a.a(bundle, ak.PREPAY_PRICE, this.b);
        }
    }

    public s(Intent intent) {
        super(intent);
        this.g = new a(intent);
    }

    public s(o oVar) {
        super(new r(new t(oVar, null), null), null);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public s(r rVar, a aVar) {
        super(rVar, rVar.e);
        this.g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.r, com.netease.mpay.b.t, com.netease.mpay.b.o, com.netease.mpay.b.p, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        if (this.g != null) {
            this.g.a(bundle);
        }
    }

    public String q() {
        return this.f ? this.g != null ? this.g.a : "" : k();
    }

    public String r() {
        return this.f ? this.g != null ? this.g.b : "" : i();
    }
}
