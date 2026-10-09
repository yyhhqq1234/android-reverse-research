package com.applovin.impl;

import java.io.IOException;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public interface y6 {
    void a(z6.a aVar);

    boolean a(String str);

    int b();

    void b(z6.a aVar);

    boolean c();

    Map d();

    UUID e();

    y4 f();

    a getError();

    /* JADX INFO: renamed from: com.applovin.impl.y6$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void a(y6 y6Var, y6 y6Var2) {
            if (y6Var == y6Var2) {
                return;
            }
            if (y6Var2 != null) {
                y6Var2.b(null);
            }
            if (y6Var != null) {
                y6Var.a((z6.a) null);
            }
        }
    }

    public static class a extends IOException {
        public final int a;

        public a(Throwable th, int i) {
            super(th);
            this.a = i;
        }
    }
}
