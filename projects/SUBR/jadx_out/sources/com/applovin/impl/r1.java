package com.applovin.impl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface r1 {

    public interface c {
        void a();

        void a(int i, long j, long j2);

        void a(long j);

        void a(Exception exc);

        void a(boolean z);

        void b();

        void b(long j);
    }

    long a(boolean z);

    ph a();

    void a(float f);

    void a(int i);

    void a(e9 e9Var, int i, int[] iArr);

    void a(l1 l1Var);

    void a(ph phVar);

    void a(c cVar);

    void a(v1 v1Var);

    boolean a(e9 e9Var);

    boolean a(ByteBuffer byteBuffer, long j, int i);

    int b(e9 e9Var);

    void b();

    void b(boolean z);

    boolean c();

    void d();

    void e();

    void f();

    boolean g();

    void h();

    void i();

    void j();

    void pause();

    void reset();

    public static final class a extends Exception {
        public final e9 a;

        public a(String str, e9 e9Var) {
            super(str);
            this.a = e9Var;
        }

        public a(Throwable th, e9 e9Var) {
            super(th);
            this.a = e9Var;
        }
    }

    public static final class b extends Exception {
        public final int a;
        public final boolean b;
        public final e9 c;

        public b(int i, int i2, int i3, int i4, e9 e9Var, boolean z, Exception exc) {
            StringBuilder sb = new StringBuilder("AudioTrack init failed ");
            sb.append(i);
            sb.append(" Config(");
            sb.append(i2);
            sb.append(", ");
            sb.append(i3);
            sb.append(", ");
            sb.append(i4);
            sb.append(")");
            sb.append(z ? " (recoverable)" : "");
            super(sb.toString(), exc);
            this.a = i;
            this.b = z;
            this.c = e9Var;
        }
    }

    public static final class e extends Exception {
        public final int a;
        public final boolean b;
        public final e9 c;

        public e(int i, e9 e9Var, boolean z) {
            super("AudioTrack write failed: " + i);
            this.b = z;
            this.a = i;
            this.c = e9Var;
        }
    }

    public static final class d extends Exception {
        public final long a;
        public final long b;

        public d(long j, long j2) {
            super("Unexpected audio track timestamp discontinuity: expected " + j2 + ", got " + j);
            this.a = j;
            this.b = j2;
        }
    }
}
