package com.applovin.impl;

import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public interface a7 {
    public static final a7 a;
    public static final a7 b;

    /* JADX INFO: renamed from: com.applovin.impl.a7$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$a(a7 _this) {
        }

        public static void $default$b(a7 _this) {
        }

        public static b $default$b(a7 _this, Looper looper, z6.a aVar, e9 e9Var) {
            return b.a;
        }
    }

    public interface b {
        public static final b a = new b() { // from class: com.applovin.impl.a7$b$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.a7.b
            public final void a() {
                a7.b.CC.b();
            }
        };

        /* JADX INFO: renamed from: com.applovin.impl.a7$b$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                b bVar = b.a;
            }

            public static /* synthetic */ void b() {
            }
        }

        void a();
    }

    static {
        a aVar = new a();
        a = aVar;
        b = aVar;
    }

    int a(e9 e9Var);

    y6 a(Looper looper, z6.a aVar, e9 e9Var);

    void a();

    b b(Looper looper, z6.a aVar, e9 e9Var);

    void b();

    class a implements a7 {
        a() {
        }

        @Override // com.applovin.impl.a7
        public /* synthetic */ void a() {
            CC.$default$a(this);
        }

        @Override // com.applovin.impl.a7
        public /* synthetic */ b b(Looper looper, z6.a aVar, e9 e9Var) {
            return CC.$default$b(this, looper, aVar, e9Var);
        }

        @Override // com.applovin.impl.a7
        public /* synthetic */ void b() {
            CC.$default$b(this);
        }

        @Override // com.applovin.impl.a7
        public y6 a(Looper looper, z6.a aVar, e9 e9Var) {
            if (e9Var.p == null) {
                return null;
            }
            return new t7(new y6.a(new sp(1), 6001));
        }

        @Override // com.applovin.impl.a7
        public int a(e9 e9Var) {
            return e9Var.p != null ? 1 : 0;
        }
    }
}
