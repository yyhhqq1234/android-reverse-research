package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class x extends com.netease.mpay.b.a {
    public c a;

    /* loaded from: classes.dex */
    public static class a extends c {
        public String a;
        public com.netease.mpay.server.response.ab b;

        public a(String str, com.netease.mpay.server.response.ab abVar) {
            this.a = str;
            this.b = abVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.x.c
        public String a() {
            return this.a;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends c {
        public com.netease.mpay.server.response.aa a;

        public b(com.netease.mpay.server.response.aa aaVar) {
            this.a = aaVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.x.c
        public String a() {
            if (this.a == null || this.a.d == null) {
                return null;
            }
            return this.a.d.a;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {
        public c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public abstract String a();

        public boolean b() {
            if (this instanceof b) {
                return (((b) this).a == null || ((b) this).a.d == null) ? false : true;
            }
            if (this instanceof a) {
                return TextUtils.isEmpty(((a) this).a) ? false : true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public enum d {
        ORDER_PAY,
        ORDER_INDEX_PAY;

        d() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        static d a(int i) {
            try {
                return values()[i];
            } catch (ArrayIndexOutOfBoundsException e) {
                Cdo.a((Throwable) e);
                return null;
            }
        }
    }

    public x(Intent intent) {
        super(intent);
        d a2 = d.a(c(intent, ak.QR_CODE_PAY_ACTION));
        if (a2 == null) {
            this.a = null;
            return;
        }
        switch (a2) {
            case ORDER_PAY:
                this.a = new b(com.netease.mpay.server.response.aa.a(intent));
                return;
            case ORDER_INDEX_PAY:
                this.a = new a(b(intent, ak.QR_CODE_USER_UID), (com.netease.mpay.server.response.ab) e(intent, ak.QR_CODE_INIT_PAY));
                return;
            default:
                this.a = null;
                return;
        }
    }

    public x(a.C0035a c0035a, c cVar) {
        super(c0035a);
        this.a = cVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.b.a
    protected void a(@NonNull Bundle bundle) {
        if (this.a == null) {
            return;
        }
        if (this.a instanceof b) {
            a(bundle, ak.QR_CODE_PAY_ACTION, d.ORDER_PAY.ordinal());
            ((b) this.a).a.a(bundle);
        } else if (this.a instanceof a) {
            a(bundle, ak.QR_CODE_PAY_ACTION, d.ORDER_INDEX_PAY.ordinal());
            a(bundle, ak.QR_CODE_USER_UID, ((a) this.a).a);
            a(bundle, ak.QR_CODE_INIT_PAY, ((a) this.a).b);
        }
    }
}
