package com.applovin.impl;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public interface p1 {
    public static final ByteBuffer a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    a a(a aVar);

    void a(ByteBuffer byteBuffer);

    void b();

    boolean c();

    ByteBuffer d();

    void e();

    boolean f();

    void reset();

    public static final class a {
        public static final a e = new a(-1, -1, -1);
        public final int a;
        public final int b;
        public final int c;
        public final int d;

        public String toString() {
            return "AudioFormat[sampleRate=" + this.a + ", channelCount=" + this.b + ", encoding=" + this.c + ']';
        }

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = xp.g(i3) ? xp.b(i3, i2) : -1;
        }
    }

    public static final class b extends Exception {
        public b(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }
}
