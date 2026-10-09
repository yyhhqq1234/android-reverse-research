package com.applovin.impl;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public interface ae {

    /* JADX INFO: renamed from: com.applovin.impl.ae$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static boolean $default$c(ae _this) {
            return true;
        }

        public static fo $default$d(ae _this) {
            return null;
        }
    }

    public interface b {
        void a(ae aeVar, fo foVar);
    }

    sd a();

    vd a(a aVar, n0 n0Var, long j);

    void a(Handler handler, be beVar);

    void a(Handler handler, z6 z6Var);

    void a(b bVar);

    void a(b bVar, xo xoVar);

    void a(be beVar);

    void a(vd vdVar);

    void a(z6 z6Var);

    void b();

    void b(b bVar);

    void c(b bVar);

    boolean c();

    fo d();

    public static final class a extends xd {
        public a b(Object obj) {
            return new a(super.a(obj));
        }

        public a(xd xdVar) {
            super(xdVar);
        }

        public a(Object obj) {
            super(obj);
        }

        public a(Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public a(Object obj, long j, int i) {
            super(obj, j, i);
        }
    }
}
