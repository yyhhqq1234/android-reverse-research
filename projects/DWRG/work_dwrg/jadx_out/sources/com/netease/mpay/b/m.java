package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.b.a;

/* loaded from: classes.dex */
public class m extends k {
    public a a;

    /* loaded from: classes.dex */
    public enum a {
        DEFAULT,
        FORCE_VERIFY_SMS,
        SET_PASSWORD,
        GUIDE_SET_SECURITY,
        MOBILE_LOGIN,
        MOBILE_BIND;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        LOGIN,
        PREPAY,
        USER_CENTER;

        b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c extends m {
        public int b;

        public c(Intent intent) {
            super(intent);
            this.b = c(intent, ak.MOBILE_BIND_FROM);
        }

        public c(a.C0035a c0035a, int i, AuthenticationCallback authenticationCallback) {
            super(c0035a, a.MOBILE_BIND, authenticationCallback);
            this.b = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.m, com.netease.mpay.b.k, com.netease.mpay.b.a
        protected void a(@NonNull Bundle bundle) {
            super.a(bundle);
            a(bundle, ak.MOBILE_BIND_FROM, this.b);
        }
    }

    /* loaded from: classes.dex */
    public static class d extends m {
        public String b;

        public d(Intent intent) {
            super(intent);
            this.b = b(intent, ak.UID);
        }

        public d(a.C0035a c0035a, String str, AuthenticationCallback authenticationCallback) {
            super(c0035a, a.FORCE_VERIFY_SMS, authenticationCallback);
            this.b = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.m, com.netease.mpay.b.k, com.netease.mpay.b.a
        protected void a(@NonNull Bundle bundle) {
            super.a(bundle);
            a(bundle, ak.UID, this.b);
        }
    }

    /* loaded from: classes.dex */
    public static class e extends m {
        public String b;
        public com.netease.mpay.server.response.ai c;

        public e(Intent intent) {
            super(intent);
            this.b = b(intent, ak.UID);
            this.c = com.netease.mpay.server.response.ai.a(b(intent, ak.MOBILE_LOGIN_VERIFY_STATUS));
        }

        public e(a.C0035a c0035a, String str, com.netease.mpay.server.response.ai aiVar, AuthenticationCallback authenticationCallback) {
            super(c0035a, a.GUIDE_SET_SECURITY, authenticationCallback);
            this.b = str;
            this.c = aiVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.m, com.netease.mpay.b.k, com.netease.mpay.b.a
        protected void a(@NonNull Bundle bundle) {
            super.a(bundle);
            a(bundle, ak.UID, this.b);
            a(bundle, ak.MOBILE_LOGIN_VERIFY_STATUS, this.c.c().toString());
        }
    }

    /* loaded from: classes.dex */
    public static class f extends m {

        @Nullable
        public String b;
        public String c;

        public f(Intent intent) {
            super(intent);
            this.b = b(intent, ak.PREFER_ACCOUNT);
            this.c = b(intent, ak.REASON);
        }

        public f(a.C0035a c0035a, String str, String str2, AuthenticationCallback authenticationCallback) {
            super(c0035a, a.MOBILE_LOGIN, authenticationCallback);
            this.b = str;
            this.c = str2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.m, com.netease.mpay.b.k, com.netease.mpay.b.a
        protected void a(@NonNull Bundle bundle) {
            super.a(bundle);
            a(bundle, ak.PREFER_ACCOUNT, this.b);
            a(bundle, ak.REASON, this.c);
        }
    }

    /* loaded from: classes.dex */
    public static class g extends m {
        public String b;
        public b c;

        public g(Intent intent) {
            super(intent);
            this.b = b(intent, ak.UID);
            int c = c(intent, ak.MOBILE_LOGIN_FROM);
            this.c = c != -1 ? b.values()[c] : b.LOGIN;
        }

        public g(a.C0035a c0035a, String str, b bVar, AuthenticationCallback authenticationCallback) {
            super(c0035a, a.SET_PASSWORD, authenticationCallback);
            this.b = str;
            this.c = bVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.m, com.netease.mpay.b.k, com.netease.mpay.b.a
        protected void a(@NonNull Bundle bundle) {
            super.a(bundle);
            a(bundle, ak.UID, this.b);
            a(bundle, ak.MOBILE_LOGIN_FROM, this.c.ordinal());
        }
    }

    private m(Intent intent) {
        super(intent);
        int c2 = c(intent, ak.MOBILE_LOGIN_ACTION);
        this.a = c2 != -1 ? a.values()[c2] : a.DEFAULT;
    }

    private m(a.C0035a c0035a, a aVar, AuthenticationCallback authenticationCallback) {
        super(c0035a, authenticationCallback);
        this.a = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static m a(Intent intent) {
        switch (c(intent, ak.MOBILE_LOGIN_ACTION) != -1 ? a.values()[r0] : a.DEFAULT) {
            case FORCE_VERIFY_SMS:
                return new d(intent);
            case SET_PASSWORD:
                return new g(intent);
            case GUIDE_SET_SECURITY:
                return new e(intent);
            case MOBILE_LOGIN:
                return new f(intent);
            case MOBILE_BIND:
                return new c(intent);
            default:
                return new m(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.b.k, com.netease.mpay.b.a
    public void a(@NonNull Bundle bundle) {
        super.a(bundle);
        a(bundle, ak.MOBILE_LOGIN_ACTION, this.a.ordinal());
    }
}
