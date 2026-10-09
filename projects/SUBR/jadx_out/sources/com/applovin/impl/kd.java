package com.applovin.impl;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
public abstract class kd extends e2 {
    private static final byte[] I0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final long[] A;
    private boolean A0;
    private e9 B;
    private boolean B0;
    private e9 C;
    private boolean C0;
    private y6 D;
    private z7 D0;
    private y6 E;
    protected m5 E0;
    private MediaCrypto F;
    private long F0;
    private boolean G;
    private long G0;
    private long H;
    private int H0;
    private float I;
    private float J;
    private gd K;
    private e9 L;
    private MediaFormat M;
    private boolean N;
    private float O;
    private ArrayDeque P;
    private a Q;
    private jd R;
    private int S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;
    private boolean a0;
    private boolean b0;
    private boolean c0;
    private s2 d0;
    private long e0;
    private int f0;
    private int g0;
    private ByteBuffer h0;
    private boolean i0;
    private boolean j0;
    private boolean k0;
    private boolean l0;
    private boolean m0;
    private final gd.b n;
    private boolean n0;
    private final ld o;
    private int o0;
    private final boolean p;
    private int p0;
    private final float q;
    private int q0;
    private final o5 r;
    private boolean r0;
    private final o5 s;
    private boolean s0;
    private final o5 t;
    private boolean t0;
    private final g2 u;
    private long u0;
    private final eo v;
    private long v0;
    private final ArrayList w;
    private boolean w0;
    private final MediaCodec.BufferInfo x;
    private boolean x0;
    private final long[] y;
    private boolean y0;
    private final long[] z;
    private boolean z0;

    protected boolean K() {
        return false;
    }

    protected void Q() {
    }

    protected void V() {
    }

    protected abstract float a(float f, e9 e9Var, e9[] e9VarArr);

    protected abstract int a(ld ldVar, e9 e9Var);

    protected abstract gd.a a(jd jdVar, e9 e9Var, MediaCrypto mediaCrypto, float f);

    protected abstract p5 a(jd jdVar, e9 e9Var, e9 e9Var2);

    protected abstract List a(ld ldVar, e9 e9Var, boolean z);

    protected abstract void a(e9 e9Var, MediaFormat mediaFormat);

    protected void a(o5 o5Var) {
    }

    protected abstract void a(Exception exc);

    protected abstract void a(String str, long j, long j2);

    protected abstract boolean a(long j, long j2, gd gdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, e9 e9Var);

    protected abstract void b(o5 o5Var);

    protected boolean b(jd jdVar) {
        return true;
    }

    protected boolean c(e9 e9Var) {
        return false;
    }

    protected abstract void g(String str);

    @Override // com.applovin.impl.e2, com.applovin.impl.ri
    public final int m() {
        return 8;
    }

    @Override // com.applovin.impl.e2
    protected void x() {
    }

    @Override // com.applovin.impl.e2
    protected void y() {
    }

    public static class a extends Exception {
        public final String a;
        public final boolean b;
        public final jd c;
        public final String d;
        public final a f;

        public a(e9 e9Var, Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + e9Var, th, e9Var.m, z, null, a(i), null);
        }

        public a(e9 e9Var, Throwable th, boolean z, jd jdVar) {
            this("Decoder init failed: " + jdVar.a + ", " + e9Var, th, e9Var.m, z, jdVar, xp.a >= 21 ? a(th) : null, null);
        }

        private static String a(int i) {
            return "com.applovin.exoplayer2.mediacodec.MediaCodecRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }

        private a(String str, Throwable th, String str2, boolean z, jd jdVar, String str3, a aVar) {
            super(str, th);
            this.a = str2;
            this.b = z;
            this.c = jdVar;
            this.d = str3;
            this.f = aVar;
        }

        private static String a(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a a(a aVar) {
            return new a(getMessage(), getCause(), this.a, this.b, this.c, this.d, aVar);
        }
    }

    public kd(int i, gd.b bVar, ld ldVar, boolean z, float f) {
        super(i);
        this.n = bVar;
        this.o = (ld) b1.a(ldVar);
        this.p = z;
        this.q = f;
        this.r = o5.i();
        this.s = new o5(0);
        this.t = new o5(2);
        g2 g2Var = new g2();
        this.u = g2Var;
        this.v = new eo();
        this.w = new ArrayList();
        this.x = new MediaCodec.BufferInfo();
        this.I = 1.0f;
        this.J = 1.0f;
        this.H = -9223372036854775807L;
        this.y = new long[10];
        this.z = new long[10];
        this.A = new long[10];
        this.F0 = -9223372036854775807L;
        this.G0 = -9223372036854775807L;
        g2Var.g(0);
        g2Var.c.order(ByteOrder.nativeOrder());
        this.O = -1.0f;
        this.S = 0;
        this.o0 = 0;
        this.f0 = -1;
        this.g0 = -1;
        this.e0 = -9223372036854775807L;
        this.u0 = -9223372036854775807L;
        this.v0 = -9223372036854775807L;
        this.p0 = 0;
        this.q0 = 0;
    }

    protected final void P() throws z7 {
        e9 e9Var;
        if (this.K != null || this.k0 || (e9Var = this.B) == null) {
            return;
        }
        if (this.E == null && c(e9Var)) {
            b(this.B);
            return;
        }
        b(this.E);
        String str = this.B.m;
        y6 y6Var = this.D;
        if (y6Var != null) {
            if (this.F == null) {
                k9 k9VarA = a(y6Var);
                if (k9VarA == null) {
                    if (this.D.getError() == null) {
                        return;
                    }
                } else {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(k9VarA.a, k9VarA.b);
                        this.F = mediaCrypto;
                        this.G = !k9VarA.c && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e) {
                        throw a(e, this.B, 6006);
                    }
                }
            }
            if (k9.d) {
                int iB = this.D.b();
                if (iB == 1) {
                    y6.a aVar = (y6.a) b1.a(this.D.getError());
                    throw a(aVar, this.B, aVar.a);
                }
                if (iB != 4) {
                    return;
                }
            }
        }
        try {
            a(this.F, this.G);
        } catch (a e2) {
            throw a(e2, this.B, IronSourceConstants.NT_LOAD);
        }
    }

    protected final void f(long j) {
        e9 e9Var = (e9) this.v.c(j);
        if (e9Var == null && this.N) {
            e9Var = (e9) this.v.c();
        }
        if (e9Var != null) {
            this.C = e9Var;
        } else if (!this.N || this.C == null) {
            return;
        }
        a(this.C, this.M);
        this.N = false;
    }

    private static boolean f(String str) {
        return xp.a == 29 && "c2.android.aac.decoder".equals(str);
    }

    protected final gd I() {
        return this.K;
    }

    protected final MediaFormat L() {
        return this.M;
    }

    protected final jd J() {
        return this.R;
    }

    @Override // com.applovin.impl.e2
    protected void v() {
        this.B = null;
        this.F0 = -9223372036854775807L;
        this.G0 = -9223372036854775807L;
        this.H0 = 0;
        H();
    }

    @Override // com.applovin.impl.e2
    protected void w() {
        try {
            A();
            U();
        } finally {
            c((y6) null);
        }
    }

    private void A() {
        this.m0 = false;
        this.u.b();
        this.t.b();
        this.l0 = false;
        this.k0 = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void U() {
        try {
            gd gdVar = this.K;
            if (gdVar != null) {
                gdVar.a();
                this.E0.b++;
                g(this.R.a);
            }
            this.K = null;
            try {
                MediaCrypto mediaCrypto = this.F;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.F = null;
                b((y6) null);
                X();
            }
        } catch (Throwable th) {
            this.K = null;
            try {
                MediaCrypto mediaCrypto2 = this.F;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.F = null;
                b((y6) null);
                X();
            }
        }
    }

    protected final boolean G() throws z7 {
        boolean zH = H();
        if (zH) {
            P();
        }
        return zH;
    }

    protected boolean H() {
        if (this.K == null) {
            return false;
        }
        if (this.q0 != 3 && !this.U && ((!this.V || this.t0) && (!this.W || !this.s0))) {
            F();
            return false;
        }
        U();
        return true;
    }

    private void F() {
        try {
            this.K.b();
        } finally {
            W();
        }
    }

    protected void W() {
        Y();
        Z();
        this.e0 = -9223372036854775807L;
        this.s0 = false;
        this.r0 = false;
        this.a0 = false;
        this.b0 = false;
        this.i0 = false;
        this.j0 = false;
        this.w.clear();
        this.u0 = -9223372036854775807L;
        this.v0 = -9223372036854775807L;
        s2 s2Var = this.d0;
        if (s2Var != null) {
            s2Var.a();
        }
        this.p0 = 0;
        this.q0 = 0;
        this.o0 = this.n0 ? 1 : 0;
    }

    protected void X() {
        W();
        this.D0 = null;
        this.d0 = null;
        this.P = null;
        this.R = null;
        this.L = null;
        this.M = null;
        this.N = false;
        this.t0 = false;
        this.O = -1.0f;
        this.S = 0;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        this.Z = false;
        this.c0 = false;
        this.n0 = false;
        this.o0 = 0;
        this.G = false;
    }

    private boolean e(int i) throws z7 {
        f9 f9VarR = r();
        this.r.b();
        int iA = a(f9VarR, this.r, i | 4);
        if (iA == -5) {
            a(f9VarR);
            return true;
        }
        if (iA != -4 || !this.r.e()) {
            return false;
        }
        this.w0 = true;
        R();
        return false;
    }

    private List d(boolean z) {
        List listA = a(this.o, this.B, z);
        if (listA.isEmpty() && z) {
            listA = a(this.o, this.B, false);
            if (!listA.isEmpty()) {
                oc.d("MediaCodecRenderer", "Drm session requires secure decoder for " + this.B.m + ", but no secure decoder available. Trying to proceed with " + listA + ".");
            }
        }
        return listA;
    }

    private boolean O() {
        return this.g0 >= 0;
    }

    private void Y() {
        this.f0 = -1;
        this.s.c = null;
    }

    private void Z() {
        this.g0 = -1;
        this.h0 = null;
    }

    private boolean E() throws z7 {
        gd gdVar = this.K;
        if (gdVar == null || this.p0 == 2 || this.w0) {
            return false;
        }
        if (this.f0 < 0) {
            int iD = gdVar.d();
            this.f0 = iD;
            if (iD < 0) {
                return false;
            }
            this.s.c = this.K.a(iD);
            this.s.b();
        }
        if (this.p0 == 1) {
            if (!this.c0) {
                this.s0 = true;
                this.K.a(this.f0, 0, 0, 0L, 4);
                Y();
            }
            this.p0 = 2;
            return false;
        }
        if (this.a0) {
            this.a0 = false;
            ByteBuffer byteBuffer = this.s.c;
            byte[] bArr = I0;
            byteBuffer.put(bArr);
            this.K.a(this.f0, 0, bArr.length, 0L, 0);
            Y();
            this.r0 = true;
            return true;
        }
        if (this.o0 == 1) {
            for (int i = 0; i < this.L.o.size(); i++) {
                this.s.c.put((byte[]) this.L.o.get(i));
            }
            this.o0 = 2;
        }
        int iPosition = this.s.c.position();
        f9 f9VarR = r();
        try {
            int iA = a(f9VarR, this.s, 0);
            if (j()) {
                this.v0 = this.u0;
            }
            if (iA == -3) {
                return false;
            }
            if (iA == -5) {
                if (this.o0 == 2) {
                    this.s.b();
                    this.o0 = 1;
                }
                a(f9VarR);
                return true;
            }
            if (this.s.e()) {
                if (this.o0 == 2) {
                    this.s.b();
                    this.o0 = 1;
                }
                this.w0 = true;
                if (!this.r0) {
                    R();
                    return false;
                }
                try {
                    if (!this.c0) {
                        this.s0 = true;
                        this.K.a(this.f0, 0, 0, 0L, 4);
                        Y();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw a(e, this.B, t2.a(e.getErrorCode()));
                }
            }
            if (!this.r0 && !this.s.f()) {
                this.s.b();
                if (this.o0 == 2) {
                    this.o0 = 1;
                }
                return true;
            }
            boolean zH = this.s.h();
            if (zH) {
                this.s.b.a(iPosition);
            }
            if (this.T && !zH) {
                yf.a(this.s.c);
                if (this.s.c.position() == 0) {
                    return true;
                }
                this.T = false;
            }
            o5 o5Var = this.s;
            long jA = o5Var.f;
            s2 s2Var = this.d0;
            if (s2Var != null) {
                jA = s2Var.a(this.B, o5Var);
                this.u0 = Math.max(this.u0, this.d0.a(this.B));
            }
            long j = jA;
            if (this.s.d()) {
                this.w.add(Long.valueOf(j));
            }
            if (this.y0) {
                this.v.a(j, this.B);
                this.y0 = false;
            }
            this.u0 = Math.max(this.u0, j);
            this.s.g();
            if (this.s.c()) {
                a(this.s);
            }
            b(this.s);
            try {
                if (zH) {
                    this.K.a(this.f0, 0, this.s.b, j, 0);
                } else {
                    this.K.a(this.f0, 0, this.s.c.limit(), j, 0);
                }
                Y();
                this.r0 = true;
                this.o0 = 0;
                this.E0.c++;
                return true;
            } catch (MediaCodec.CryptoException e2) {
                throw a(e2, this.B, t2.a(e2.getErrorCode()));
            }
        } catch (o5.a e3) {
            a(e3);
            e(0);
            F();
            return true;
        }
    }

    protected float N() {
        return this.I;
    }

    private boolean B() {
        if (this.r0) {
            this.p0 = 1;
            if (!this.U && !this.W) {
                this.q0 = 1;
            } else {
                this.q0 = 3;
                return false;
            }
        }
        return true;
    }

    private boolean D() throws z7 {
        if (this.r0) {
            this.p0 = 1;
            if (!this.U && !this.W) {
                this.q0 = 2;
            } else {
                this.q0 = 3;
                return false;
            }
        } else {
            b0();
        }
        return true;
    }

    private void C() throws z7 {
        if (this.r0) {
            this.p0 = 1;
            this.q0 = 3;
        } else {
            T();
        }
    }

    private boolean c(long j, long j2) throws z7 {
        boolean z;
        boolean zA;
        int iA;
        if (!O()) {
            if (this.X && this.s0) {
                try {
                    iA = this.K.a(this.x);
                } catch (IllegalStateException unused) {
                    R();
                    if (this.x0) {
                        U();
                    }
                    return false;
                }
            } else {
                iA = this.K.a(this.x);
            }
            if (iA < 0) {
                if (iA == -2) {
                    S();
                    return true;
                }
                if (this.c0 && (this.w0 || this.p0 == 2)) {
                    R();
                }
                return false;
            }
            if (this.b0) {
                this.b0 = false;
                this.K.a(iA, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo = this.x;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                R();
                return false;
            }
            this.g0 = iA;
            ByteBuffer byteBufferB = this.K.b(iA);
            this.h0 = byteBufferB;
            if (byteBufferB != null) {
                byteBufferB.position(this.x.offset);
                ByteBuffer byteBuffer = this.h0;
                MediaCodec.BufferInfo bufferInfo2 = this.x;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.Y) {
                MediaCodec.BufferInfo bufferInfo3 = this.x;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j3 = this.u0;
                    if (j3 != -9223372036854775807L) {
                        bufferInfo3.presentationTimeUs = j3;
                    }
                }
            }
            this.i0 = c(this.x.presentationTimeUs);
            long j4 = this.v0;
            long j5 = this.x.presentationTimeUs;
            this.j0 = j4 == j5;
            f(j5);
        }
        if (this.X && this.s0) {
            try {
                gd gdVar = this.K;
                ByteBuffer byteBuffer2 = this.h0;
                int i = this.g0;
                MediaCodec.BufferInfo bufferInfo4 = this.x;
                z = false;
                try {
                    zA = a(j, j2, gdVar, byteBuffer2, i, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.i0, this.j0, this.C);
                } catch (IllegalStateException unused2) {
                    R();
                    if (this.x0) {
                        U();
                    }
                    return z;
                }
            } catch (IllegalStateException unused3) {
                z = false;
            }
        } else {
            z = false;
            gd gdVar2 = this.K;
            ByteBuffer byteBuffer3 = this.h0;
            int i2 = this.g0;
            MediaCodec.BufferInfo bufferInfo5 = this.x;
            zA = a(j, j2, gdVar2, byteBuffer3, i2, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.i0, this.j0, this.C);
        }
        if (zA) {
            d(this.x.presentationTimeUs);
            boolean z2 = (this.x.flags & 4) != 0;
            Z();
            if (!z2) {
                return true;
            }
            R();
        }
        return z;
    }

    private void S() {
        this.t0 = true;
        MediaFormat mediaFormatE = this.K.e();
        if (this.S != 0 && mediaFormatE.getInteger("width") == 32 && mediaFormatE.getInteger("height") == 32) {
            this.b0 = true;
            return;
        }
        if (this.Z) {
            mediaFormatE.setInteger("channel-count", 1);
        }
        this.M = mediaFormatE;
        this.N = true;
    }

    private void R() throws z7 {
        int i = this.q0;
        if (i == 1) {
            F();
            return;
        }
        if (i == 2) {
            F();
            b0();
        } else if (i != 3) {
            this.x0 = true;
            V();
        } else {
            T();
        }
    }

    protected final void a0() {
        this.z0 = true;
    }

    protected final long M() {
        return this.G0;
    }

    private void T() throws z7 {
        U();
        P();
    }

    private void b0() throws z7 {
        try {
            this.F.setMediaDrmSession(a(this.E).b);
            b(this.E);
            this.p0 = 0;
            this.q0 = 0;
        } catch (MediaCryptoException e) {
            throw a(e, this.B, 6006);
        }
    }

    private boolean e(long j) {
        return this.H == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.H;
    }

    private boolean e(e9 e9Var) throws z7 {
        if (xp.a >= 23 && this.K != null && this.q0 != 3 && b() != 0) {
            float fA = a(this.J, e9Var, t());
            float f = this.O;
            if (f == fA) {
                return true;
            }
            if (fA == -1.0f) {
                C();
                return false;
            }
            if (f == -1.0f && fA <= this.q) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fA);
            this.K.a(bundle);
            this.O = fA;
        }
        return true;
    }

    private static boolean e(String str) {
        int i = xp.a;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i == 19 && xp.d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private boolean b(long j, long j2) throws z7 {
        b1.b(!this.x0);
        if (this.u.m()) {
            g2 g2Var = this.u;
            if (!a(j, j2, null, g2Var.c, this.g0, 0, g2Var.l(), this.u.j(), this.u.d(), this.u.e(), this.C)) {
                return false;
            }
            d(this.u.k());
            this.u.b();
        }
        if (this.w0) {
            this.x0 = true;
            return false;
        }
        if (this.l0) {
            b1.b(this.u.a(this.t));
            this.l0 = false;
        }
        if (this.m0) {
            if (this.u.m()) {
                return true;
            }
            A();
            this.m0 = false;
            P();
            if (!this.k0) {
                return false;
            }
        }
        z();
        if (this.u.m()) {
            this.u.g();
        }
        return this.u.m() || this.w0 || this.m0;
    }

    private void z() throws z7 {
        b1.b(!this.w0);
        f9 f9VarR = r();
        this.t.b();
        do {
            this.t.b();
            int iA = a(f9VarR, this.t, 0);
            if (iA == -5) {
                a(f9VarR);
                return;
            }
            if (iA != -4) {
                if (iA != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else {
                if (this.t.e()) {
                    this.w0 = true;
                    return;
                }
                if (this.y0) {
                    e9 e9Var = (e9) b1.a(this.B);
                    this.C = e9Var;
                    a(e9Var, (MediaFormat) null);
                    this.y0 = false;
                }
                this.t.g();
            }
        } while (this.u.a(this.t));
        this.l0 = true;
    }

    public void c(boolean z) {
        this.C0 = z;
    }

    private static boolean a(jd jdVar) {
        String str = jdVar.a;
        int i = xp.a;
        return (i <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(xp.c) && "AFTS".equals(xp.d) && jdVar.g));
    }

    public void b(boolean z) {
        this.B0 = z;
    }

    @Override // com.applovin.impl.qi
    public boolean d() {
        return this.B != null && (u() || O() || (this.e0 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.e0));
    }

    private void b(e9 e9Var) {
        A();
        String str = e9Var.m;
        if (!"audio/mp4a-latm".equals(str) && !"audio/mpeg".equals(str) && !"audio/opus".equals(str)) {
            this.u.i(1);
        } else {
            this.u.i(32);
        }
        this.k0 = true;
    }

    protected void d(long j) {
        while (true) {
            int i = this.H0;
            if (i == 0 || j < this.A[0]) {
                return;
            }
            long[] jArr = this.y;
            this.F0 = jArr[0];
            this.G0 = this.z[0];
            int i2 = i - 1;
            this.H0 = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.z;
            System.arraycopy(jArr2, 1, jArr2, 0, this.H0);
            long[] jArr3 = this.A;
            System.arraycopy(jArr3, 1, jArr3, 0, this.H0);
            Q();
        }
    }

    private boolean a(jd jdVar, e9 e9Var, y6 y6Var, y6 y6Var2) {
        k9 k9VarA;
        if (y6Var == y6Var2) {
            return false;
        }
        if (y6Var2 == null || y6Var == null || xp.a < 23) {
            return true;
        }
        UUID uuid = t2.e;
        if (uuid.equals(y6Var.e()) || uuid.equals(y6Var2.e()) || (k9VarA = a(y6Var2)) == null) {
            return true;
        }
        return !jdVar.g && (k9VarA.c ? false : y6Var2.a(e9Var.m));
    }

    private boolean c(long j) {
        int size = this.w.size();
        for (int i = 0; i < size; i++) {
            if (((Long) this.w.get(i)).longValue() == j) {
                this.w.remove(i);
                return true;
            }
        }
        return false;
    }

    public void a(boolean z) {
        this.A0 = z;
    }

    private static boolean b(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    @Override // com.applovin.impl.qi
    public boolean c() {
        return this.x0;
    }

    protected static boolean d(e9 e9Var) {
        int i = e9Var.F;
        return i == 0 || i == 2;
    }

    private static boolean d(String str) {
        return xp.a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private k9 a(y6 y6Var) throws z7 {
        y4 y4VarF = y6Var.f();
        if (y4VarF != null && !(y4VarF instanceof k9)) {
            throw a(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + y4VarF), this.B, 6001);
        }
        return (k9) y4VarF;
    }

    private void b(y6 y6Var) {
        y6.CC.a(this.D, y6Var);
        this.D = y6Var;
    }

    private static boolean b(String str) {
        if (xp.a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(xp.c)) {
            String str2 = xp.b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(String str, e9 e9Var) {
        return xp.a <= 18 && e9Var.z == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private void a(jd jdVar, MediaCrypto mediaCrypto) throws Exception {
        gd gdVarA;
        String str = jdVar.a;
        int i = xp.a;
        float fA = i < 23 ? -1.0f : a(this.J, this.B, t());
        float f = fA > this.q ? fA : -1.0f;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ko.a("createCodec:" + str);
        gd.a aVarA = a(jdVar, this.B, mediaCrypto, f);
        if (this.A0 && i >= 23) {
            gdVarA = new g1.b(e(), this.B0, this.C0).a(aVarA);
        } else {
            gdVarA = this.n.a(aVarA);
        }
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        this.K = gdVarA;
        this.R = jdVar;
        this.O = f;
        this.L = this.B;
        this.S = a(str);
        this.T = a(str, this.L);
        this.U = e(str);
        this.V = f(str);
        this.W = c(str);
        this.X = d(str);
        this.Y = b(str);
        this.Z = b(str, this.L);
        this.c0 = a(jdVar) || K();
        if (gdVarA.c()) {
            this.n0 = true;
            this.o0 = 1;
            this.a0 = this.S != 0;
        }
        if ("c2.android.mp3.decoder".equals(jdVar.a)) {
            this.d0 = new s2();
        }
        if (b() == 2) {
            this.e0 = SystemClock.elapsedRealtime() + 1000;
        }
        this.E0.a++;
        a(str, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
    }

    private static boolean c(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    private void a(MediaCrypto mediaCrypto, boolean z) throws a {
        if (this.P == null) {
            try {
                List listD = d(z);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.P = arrayDeque;
                if (this.p) {
                    arrayDeque.addAll(listD);
                } else if (!listD.isEmpty()) {
                    this.P.add((jd) listD.get(0));
                }
                this.Q = null;
            } catch (md.c e) {
                throw new a(this.B, e, z, -49998);
            }
        }
        if (!this.P.isEmpty()) {
            while (this.K == null) {
                jd jdVar = (jd) this.P.peekFirst();
                if (!b(jdVar)) {
                    return;
                }
                try {
                    a(jdVar, mediaCrypto);
                } catch (Exception e2) {
                    oc.c("MediaCodecRenderer", "Failed to initialize decoder: " + jdVar, e2);
                    this.P.removeFirst();
                    a aVar = new a(this.B, e2, z, jdVar);
                    a(aVar);
                    if (this.Q != null) {
                        this.Q = this.Q.a(aVar);
                    } else {
                        this.Q = aVar;
                    }
                    if (this.P.isEmpty()) {
                        throw this.Q;
                    }
                }
            }
            this.P = null;
            return;
        }
        throw new a(this.B, (Throwable) null, z, -49999);
    }

    private void c(y6 y6Var) {
        y6.CC.a(this.E, y6Var);
        this.E = y6Var;
    }

    private static boolean c(String str) {
        int i = xp.a;
        if (i > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i <= 19) {
                String str2 = xp.b;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.applovin.impl.e2
    protected void a(boolean z, boolean z2) {
        this.E0 = new m5();
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00cf  */
    protected p5 a(f9 f9Var) throws z7 {
        int i;
        boolean z = true;
        this.y0 = true;
        e9 e9Var = (e9) b1.a(f9Var.b);
        if (e9Var.m != null) {
            c(f9Var.a);
            this.B = e9Var;
            if (this.k0) {
                this.m0 = true;
                return null;
            }
            gd gdVar = this.K;
            if (gdVar == null) {
                this.P = null;
                P();
                return null;
            }
            jd jdVar = this.R;
            e9 e9Var2 = this.L;
            if (a(jdVar, e9Var, this.D, this.E)) {
                C();
                return new p5(jdVar.a, e9Var2, e9Var, 0, 128);
            }
            boolean z2 = this.E != this.D;
            b1.b(!z2 || xp.a >= 23);
            p5 p5VarA = a(jdVar, e9Var2, e9Var);
            int i2 = p5VarA.d;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            throw new IllegalStateException();
                        }
                        if (e(e9Var)) {
                            this.L = e9Var;
                            if (z2 && !D()) {
                                i = 2;
                            }
                        } else {
                            i = 16;
                        }
                    } else if (e(e9Var)) {
                        this.n0 = true;
                        this.o0 = 1;
                        int i3 = this.S;
                        if (i3 != 2 && (i3 != 1 || e9Var.r != e9Var2.r || e9Var.s != e9Var2.s)) {
                            z = false;
                        }
                        this.a0 = z;
                        this.L = e9Var;
                        if (z2 && !D()) {
                            i = 2;
                        }
                    } else {
                        i = 16;
                    }
                } else if (e(e9Var)) {
                    this.L = e9Var;
                    if (!z2 ? !B() : !D()) {
                        i = 2;
                    }
                } else {
                    i = 16;
                }
                return (p5VarA.d != 0 || (this.K == gdVar && this.q0 != 3)) ? p5VarA : new p5(jdVar.a, e9Var2, e9Var, 0, i);
            }
            C();
            i = 0;
            if (p5VarA.d != 0) {
            }
        }
        throw a(new IllegalArgumentException(), e9Var, IronSourceConstants.NT_INSTANCE_LOAD_SUCCESS);
    }

    @Override // com.applovin.impl.e2
    protected void a(long j, boolean z) throws z7 {
        this.w0 = false;
        this.x0 = false;
        this.z0 = false;
        if (this.k0) {
            this.u.b();
            this.t.b();
            this.l0 = false;
        } else {
            G();
        }
        if (this.v.e() > 0) {
            this.y0 = true;
        }
        this.v.a();
        int i = this.H0;
        if (i != 0) {
            int i2 = i - 1;
            this.G0 = this.z[i2];
            this.F0 = this.y[i2];
            this.H0 = 0;
        }
    }

    @Override // com.applovin.impl.e2
    protected void a(e9[] e9VarArr, long j, long j2) {
        if (this.G0 == -9223372036854775807L) {
            b1.b(this.F0 == -9223372036854775807L);
            this.F0 = j;
            this.G0 = j2;
            return;
        }
        int i = this.H0;
        if (i == this.z.length) {
            oc.d("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.z[this.H0 - 1]);
        } else {
            this.H0 = i + 1;
        }
        long[] jArr = this.y;
        int i2 = this.H0 - 1;
        jArr[i2] = j;
        this.z[i2] = j2;
        this.A[i2] = this.u0;
    }

    @Override // com.applovin.impl.qi
    public void a(long j, long j2) throws z7 {
        boolean z = false;
        if (this.z0) {
            this.z0 = false;
            R();
        }
        z7 z7Var = this.D0;
        if (z7Var == null) {
            try {
                if (this.x0) {
                    V();
                    return;
                }
                if (this.B != null || e(2)) {
                    P();
                    if (this.k0) {
                        ko.a("bypassRender");
                        while (b(j, j2)) {
                        }
                        ko.a();
                    } else if (this.K != null) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        ko.a("drainAndFeed");
                        while (c(j, j2) && e(jElapsedRealtime)) {
                        }
                        while (E() && e(jElapsedRealtime)) {
                        }
                        ko.a();
                    } else {
                        this.E0.d += b(j);
                        e(1);
                    }
                    this.E0.a();
                    return;
                }
                return;
            } catch (IllegalStateException e) {
                if (a(e)) {
                    a((Exception) e);
                    if (xp.a >= 21 && c(e)) {
                        z = true;
                    }
                    if (z) {
                        U();
                    }
                    throw a(a(e, J()), this.B, z, 4003);
                }
                throw e;
            }
        }
        this.D0 = null;
        throw z7Var;
    }

    protected final void a(z7 z7Var) {
        this.D0 = z7Var;
    }

    @Override // com.applovin.impl.e2, com.applovin.impl.qi
    public void a(float f, float f2) throws z7 {
        this.I = f;
        this.J = f2;
        e(this.L);
    }

    @Override // com.applovin.impl.ri
    public final int a(e9 e9Var) throws z7 {
        try {
            return a(this.o, e9Var);
        } catch (md.c e) {
            throw a(e, e9Var, IronSourceConstants.NT_INSTANCE_LOAD);
        }
    }

    protected id a(Throwable th, jd jdVar) {
        return new id(th, jdVar);
    }

    private static boolean a(IllegalStateException illegalStateException) {
        if (xp.a >= 21 && b(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    private int a(String str) {
        int i = xp.a;
        if (i <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = xp.d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = xp.b;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private static boolean a(String str, e9 e9Var) {
        return xp.a < 21 && e9Var.o.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }
}
