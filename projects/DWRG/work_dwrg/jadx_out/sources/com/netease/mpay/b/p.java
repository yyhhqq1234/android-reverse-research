package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.PaymentCallback;
import com.netease.mpay.b.a;
import com.netease.mpay.hi;

/* loaded from: classes.dex */
public class p extends com.netease.mpay.b.a {
    public a c;
    public b d;

    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public String b;
        public String c;
        public String d;
        public int e;
        public String f;

        public a(Intent intent) {
            this.a = com.netease.mpay.b.a.b(intent, ak.DEV_ID);
            this.b = com.netease.mpay.b.a.b(intent, ak.UID);
            this.c = com.netease.mpay.b.a.b(intent, ak.BIND_UID);
            this.d = com.netease.mpay.b.a.b(intent, ak.TOKEN);
            this.e = com.netease.mpay.b.a.c(intent, ak.LOGIN_TYPE);
            this.f = com.netease.mpay.b.a.b(intent, ak.CLIENT_USERNAME);
        }

        public a(String str, String str2, String str3, String str4, int i, String str5) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = i;
            this.f = str5;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        void a(Bundle bundle) {
            com.netease.mpay.b.a.a(bundle, ak.DEV_ID, this.a);
            com.netease.mpay.b.a.a(bundle, ak.UID, this.b);
            com.netease.mpay.b.a.a(bundle, ak.BIND_UID, this.c);
            com.netease.mpay.b.a.a(bundle, ak.TOKEN, this.d);
            com.netease.mpay.b.a.a(bundle, ak.LOGIN_TYPE, this.e);
            com.netease.mpay.b.a.a(bundle, ak.CLIENT_USERNAME, this.f);
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        public String a;
        public long b;

        @Nullable
        public PaymentCallback c;

        b(Intent intent) {
            this.a = com.netease.mpay.b.a.b(intent, ak.ORDER_ID);
            this.b = com.netease.mpay.b.a.d(intent, ak.PAY_CALLBACK_ID);
            this.c = this.b != -1 ? (PaymentCallback) hi.a().g.b(this.b) : null;
        }

        public b(String str, PaymentCallback paymentCallback) {
            this.a = str;
            this.b = paymentCallback != null ? hi.a().g.a(paymentCallback) : -1L;
            this.c = paymentCallback;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        void a(Bundle bundle) {
            com.netease.mpay.b.a.a(bundle, ak.ORDER_ID, this.a);
            if (this.c != null) {
                com.netease.mpay.b.a.a(bundle, ak.PAY_CALLBACK_ID, this.b);
            }
        }
    }

    public p(Intent intent) {
        super(intent);
        this.c = new a(intent);
        this.d = new b(intent);
    }

    public p(a.C0035a c0035a, a aVar, b bVar) {
        super(c0035a);
        this.c = aVar != null ? new a(aVar.a, aVar.b, aVar.c, aVar.d, aVar.e, aVar.f) : null;
        this.d = bVar != null ? new b(bVar.a, bVar.c) : null;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public p(p pVar) {
        super(pVar.d());
        this.c = pVar.c;
        this.d = pVar.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return (int) Math.ceil(Float.valueOf(str).floatValue() * 10.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        if (this.c != null) {
            this.c.a(bundle);
        }
        if (this.d != null) {
            this.d.a(bundle);
        }
    }

    @Nullable
    public String k() {
        if (this.d != null) {
            return this.d.a;
        }
        return null;
    }

    public PaymentCallback l() {
        if (this.d != null) {
            return this.d.c;
        }
        return null;
    }

    public void m() {
        if (this.d == null || this.d.c == null) {
            return;
        }
        hi.a().g.a(this.d.b);
    }
}
