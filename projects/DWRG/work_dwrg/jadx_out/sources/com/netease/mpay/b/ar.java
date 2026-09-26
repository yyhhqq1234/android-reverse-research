package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class ar extends al {
    protected int b;
    protected int c;

    /* loaded from: classes.dex */
    public static class a extends ar {
        public String d;
        public String e;
        public String f;

        private a(Intent intent) {
            super(intent);
            this.d = com.netease.mpay.b.a.b(intent, ak.RESULT_PAY_PREPAY_ORDER_ID);
            this.e = com.netease.mpay.b.a.b(intent, ak.RESULT_PAY_PREPAY_ECARD_TICKET);
            this.f = com.netease.mpay.b.a.b(intent, ak.RESULT_PAY_TRACK_PATH);
        }

        public a(String str, String str2, String str3) {
            super(4, 1);
            this.d = str;
            this.e = str2;
            this.f = str3;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.ar, com.netease.mpay.b.al
        void a(Bundle bundle) {
            super.a(bundle);
            com.netease.mpay.b.a.a(bundle, ak.RESULT_PAY_PREPAY_ORDER_ID, this.d);
            com.netease.mpay.b.a.a(bundle, ak.RESULT_PAY_PREPAY_ECARD_TICKET, this.e);
            com.netease.mpay.b.a.a(bundle, ak.RESULT_PAY_TRACK_PATH, this.f);
        }
    }

    /* loaded from: classes.dex */
    public static class b extends ar {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public b() {
            /*
                r2 = this;
                r1 = 1
                r0 = 0
                r2.<init>(r1, r1)
                java.lang.Boolean r0 = java.lang.Boolean.FALSE
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto L14
                java.io.PrintStream r0 = java.lang.System.out
                java.lang.Class<com.dodola.rocoo.Hack> r1 = com.dodola.rocoo.Hack.class
                r0.println(r1)
            L14:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.b.ar.b.<init>():void");
        }

        private b(Intent intent) {
            super(intent);
        }
    }

    /* loaded from: classes.dex */
    public static class c extends ar {
        public c() {
            super(5, 1);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private c(Intent intent) {
            super(intent);
        }
    }

    /* loaded from: classes.dex */
    public static class d extends ar {
        public String d;

        private d(Intent intent) {
            super(intent);
            this.d = com.netease.mpay.b.a.b(intent, ak.RESULT_PAY_REDIRECT_DESTINATION);
        }

        public d(String str) {
            super(6, 1);
            this.d = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.ar, com.netease.mpay.b.al
        void a(Bundle bundle) {
            super.a(bundle);
            com.netease.mpay.b.a.a(bundle, ak.RESULT_PAY_REDIRECT_DESTINATION, this.d);
        }
    }

    /* loaded from: classes.dex */
    public static class e extends ar {
        public e() {
            super(0, 1);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private e(Intent intent) {
            super(intent);
        }
    }

    /* loaded from: classes.dex */
    public static class f extends ar {
        public f() {
            super(2, 1);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private f(Intent intent) {
            super(intent);
        }
    }

    /* loaded from: classes.dex */
    public static class g extends ar {
        public g() {
            super(9, 1);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private g(Intent intent) {
            super(intent);
        }
    }

    /* loaded from: classes.dex */
    public static class h extends ar {
        public String d;

        private h(Intent intent) {
            super(intent);
            this.d = com.netease.mpay.b.a.b(intent, ak.RESULT_MESSAGE);
        }

        public h(String str) {
            super(7, 1);
            this.d = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.ar, com.netease.mpay.b.al
        void a(Bundle bundle) {
            super.a(bundle);
            com.netease.mpay.b.a.a(bundle, ak.RESULT_MESSAGE, this.d);
        }
    }

    /* loaded from: classes.dex */
    public static class i extends ar {
        public i() {
            super(8, 1);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private i(Intent intent) {
            super(intent);
        }
    }

    private ar(int i2, int i3) {
        super(1009);
        this.b = i2;
        this.c = i3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ar(Intent intent) {
        this(com.netease.mpay.b.a.c(intent, ak.RESULT_PAY_INTERNAL_RESULT), com.netease.mpay.b.a.c(intent, ak.RESULT_PAY_NEXT_STAGE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ar a(Intent intent) {
        return this.b == 0 ? new e(intent) : 1 == this.b ? new b(intent) : 2 == this.b ? new f(intent) : 5 == this.b ? new c(intent) : 6 == this.b ? new d(intent) : 4 == this.b ? new a(intent) : 9 == this.b ? new g(intent) : 7 == this.b ? new h(intent) : 8 == this.b ? new i(intent) : this;
    }

    @Override // com.netease.mpay.b.al
    void a(Bundle bundle) {
        com.netease.mpay.b.a.a(bundle, ak.RESULT_PAY_INTERNAL_RESULT, this.b);
        com.netease.mpay.b.a.a(bundle, ak.RESULT_PAY_NEXT_STAGE, this.c);
    }

    public boolean a() {
        return 1 == this.c;
    }
}
