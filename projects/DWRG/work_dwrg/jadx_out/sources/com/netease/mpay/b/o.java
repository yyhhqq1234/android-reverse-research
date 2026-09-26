package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.OrderInit;

/* loaded from: classes.dex */
public class o extends p {
    public a b;

    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public String b;
        public Integer c;

        @Nullable
        public String d;
        public OrderInit.PayChannel e;

        a(Intent intent) {
            this.a = com.netease.mpay.b.a.b(intent, ak.GAME_NAME);
            this.b = com.netease.mpay.b.a.b(intent, ak.PRODUCT_NAME);
            int c = com.netease.mpay.b.a.c(intent, ak.BALANCE);
            this.c = c != -1 ? Integer.valueOf(c) : null;
            this.d = com.netease.mpay.b.a.b(intent, ak.TRACK_PATH);
            this.e = (OrderInit.PayChannel) com.netease.mpay.b.a.f(intent, ak.CHANNEL);
        }

        public a(String str, String str2, Integer num, String str3, OrderInit.PayChannel payChannel) {
            this.a = str;
            this.b = str2;
            this.c = num;
            this.d = str3;
            this.e = payChannel;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public String a() {
            return this.e == null ? "" : TextUtils.isEmpty(this.e.h) ? this.e.g : this.e.h;
        }

        void a(Bundle bundle) {
            com.netease.mpay.b.a.a(bundle, ak.GAME_NAME, this.a);
            com.netease.mpay.b.a.a(bundle, ak.PRODUCT_NAME, this.b);
            if (this.c != null) {
                com.netease.mpay.b.a.a(bundle, ak.BALANCE, this.c.intValue());
            }
            com.netease.mpay.b.a.a(bundle, ak.TRACK_PATH, this.d);
            com.netease.mpay.b.a.a(bundle, ak.CHANNEL, this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o(Intent intent) {
        super(intent);
        this.b = new a(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o(o oVar) {
        super(oVar);
        this.b = oVar.b;
    }

    public o(p pVar, a aVar) {
        super(pVar);
        this.b = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.p, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        if (this.b != null) {
            this.b.a(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String f() {
        return (this.b == null || this.b.e == null) ? "" : this.b.e.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String g() {
        return (this.b == null || this.b.e == null) ? "" : this.b.e.a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String h() {
        if (this.b != null) {
            return this.b.d;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String i() {
        return this.b != null ? this.b.a() : "";
    }

    public int j() {
        return a(i());
    }
}
