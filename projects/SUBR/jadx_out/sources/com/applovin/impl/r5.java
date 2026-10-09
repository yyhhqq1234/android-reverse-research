package com.applovin.impl;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class r5 implements r1 {
    public static boolean a0 = false;
    private long A;
    private long B;
    private long C;
    private int D;
    private boolean E;
    private boolean F;
    private long G;
    private float H;
    private p1[] I;
    private ByteBuffer[] J;
    private ByteBuffer K;
    private int L;
    private ByteBuffer M;
    private byte[] N;
    private int O;
    private int P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private int U;
    private v1 V;
    private boolean W;
    private long X;
    private boolean Y;
    private boolean Z;
    private final n1 a;
    private final b b;
    private final boolean c;
    private final d3 d;
    private final zo e;
    private final p1[] f;
    private final p1[] g;
    private final ConditionVariable h;
    private final u1 i;
    private final ArrayDeque j;
    private final boolean k;
    private final int l;
    private i m;
    private final g n;
    private final g o;
    private r1.c p;
    private c q;
    private c r;
    private AudioTrack s;
    private l1 t;
    private f u;
    private f v;
    private ph w;
    private ByteBuffer x;
    private int y;
    private long z;

    public interface b {
        long a(long j);

        ph a(ph phVar);

        boolean a(boolean z);

        p1[] a();

        long b();
    }

    @Override // com.applovin.impl.r1
    public void h() {
        if (xp.a < 25) {
            b();
            return;
        }
        this.o.a();
        this.n.a();
        if (t()) {
            w();
            if (this.i.d()) {
                this.s.pause();
            }
            this.s.flush();
            this.i.g();
            u1 u1Var = this.i;
            AudioTrack audioTrack = this.s;
            c cVar = this.r;
            u1Var.a(audioTrack, cVar.c == 2, cVar.g, cVar.d, cVar.h);
            this.F = true;
        }
    }

    private final class h implements u1.a {
        @Override // com.applovin.impl.u1.a
        public void b(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + r5.this.q() + ", " + r5.this.r();
            if (r5.a0) {
                throw new e(str, null);
            }
            oc.d("DefaultAudioSink", str);
        }

        @Override // com.applovin.impl.u1.a
        public void b(long j) {
            oc.d("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
        }

        private h() {
        }

        @Override // com.applovin.impl.u1.a
        public void a(long j) {
            if (r5.this.p != null) {
                r5.this.p.a(j);
            }
        }

        /* synthetic */ h(r5 r5Var, a aVar) {
            this();
        }

        @Override // com.applovin.impl.u1.a
        public void a(int i, long j) {
            if (r5.this.p != null) {
                r5.this.p.a(i, j, SystemClock.elapsedRealtime() - r5.this.X);
            }
        }

        @Override // com.applovin.impl.u1.a
        public void a(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + r5.this.q() + ", " + r5.this.r();
            if (!r5.a0) {
                oc.d("DefaultAudioSink", str);
                return;
            }
            throw new e(str, null);
        }
    }

    private static boolean e(int i2) {
        return (xp.a >= 24 && i2 == -6) || i2 == -32;
    }

    @Override // com.applovin.impl.r1
    public void e() {
        b1.b(xp.a >= 21);
        b1.b(this.T);
        if (this.W) {
            return;
        }
        this.W = true;
        b();
    }

    public static final class e extends RuntimeException {
        private e(String str) {
            super(str);
        }

        /* synthetic */ e(String str, a aVar) {
            this(str);
        }
    }

    public static class d implements b {
        private final p1[] a;
        private final ak b;
        private final ok c;

        public d(p1... p1VarArr) {
            this(p1VarArr, new ak(), new ok());
        }

        @Override // com.applovin.impl.r5.b
        public ph a(ph phVar) {
            this.c.b(phVar.a);
            this.c.a(phVar.b);
            return phVar;
        }

        @Override // com.applovin.impl.r5.b
        public long b() {
            return this.b.j();
        }

        public d(p1[] p1VarArr, ak akVar, ok okVar) {
            p1[] p1VarArr2 = new p1[p1VarArr.length + 2];
            this.a = p1VarArr2;
            System.arraycopy(p1VarArr, 0, p1VarArr2, 0, p1VarArr.length);
            this.b = akVar;
            this.c = okVar;
            p1VarArr2[p1VarArr.length] = akVar;
            p1VarArr2[p1VarArr.length + 1] = okVar;
        }

        @Override // com.applovin.impl.r5.b
        public boolean a(boolean z) {
            this.b.a(z);
            return z;
        }

        @Override // com.applovin.impl.r5.b
        public p1[] a() {
            return this.a;
        }

        @Override // com.applovin.impl.r5.b
        public long a(long j) {
            return this.c.a(j);
        }
    }

    public r5(n1 n1Var, b bVar, boolean z, boolean z2, int i2) {
        this.a = n1Var;
        this.b = (b) b1.a(bVar);
        int i3 = xp.a;
        this.c = i3 >= 21 && z;
        this.k = i3 >= 23 && z2;
        this.l = i3 >= 29 ? i2 : 0;
        this.h = new ConditionVariable(true);
        this.i = new u1(new h(this, null));
        d3 d3Var = new d3();
        this.d = d3Var;
        zo zoVar = new zo();
        this.e = zoVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new wi(), d3Var, zoVar);
        Collections.addAll(arrayList, bVar.a());
        this.f = (p1[]) arrayList.toArray(new p1[0]);
        this.g = new p1[]{new b9()};
        this.H = 1.0f;
        this.t = l1.g;
        this.U = 0;
        this.V = new v1(0, 0.0f);
        ph phVar = ph.d;
        this.v = new f(phVar, false, 0L, 0L, null);
        this.w = phVar;
        this.P = -1;
        this.I = new p1[0];
        this.J = new ByteBuffer[0];
        this.j = new ArrayDeque();
        this.n = new g(100L);
        this.o = new g(100L);
    }

    private void y() {
        p1[] p1VarArr = this.r.i;
        ArrayList arrayList = new ArrayList();
        for (p1 p1Var : p1VarArr) {
            if (p1Var.f()) {
                arrayList.add(p1Var);
            } else {
                p1Var.b();
            }
        }
        int size = arrayList.size();
        this.I = (p1[]) arrayList.toArray(new p1[size]);
        this.J = new ByteBuffer[size];
        m();
    }

    private void m() {
        int i2 = 0;
        while (true) {
            p1[] p1VarArr = this.I;
            if (i2 >= p1VarArr.length) {
                return;
            }
            p1 p1Var = p1VarArr[i2];
            p1Var.b();
            this.J[i2] = p1Var.d();
            i2++;
        }
    }

    private void s() throws r1.b {
        this.h.block();
        AudioTrack audioTrackK = k();
        this.s = audioTrackK;
        if (a(audioTrackK)) {
            b(this.s);
            if (this.l != 3) {
                AudioTrack audioTrack = this.s;
                e9 e9Var = this.r.a;
                audioTrack.setOffloadDelayPadding(e9Var.C, e9Var.D);
            }
        }
        this.U = this.s.getAudioSessionId();
        u1 u1Var = this.i;
        AudioTrack audioTrack2 = this.s;
        c cVar = this.r;
        u1Var.a(audioTrack2, cVar.c == 2, cVar.g, cVar.d, cVar.h);
        x();
        int i2 = this.V.a;
        if (i2 != 0) {
            this.s.attachAuxEffect(i2);
            this.s.setAuxEffectSendLevel(this.V.b);
        }
        this.F = true;
    }

    @Override // com.applovin.impl.r1
    public void j() {
        this.S = true;
        if (t()) {
            this.i.i();
            this.s.play();
        }
    }

    @Override // com.applovin.impl.r1
    public void i() {
        this.E = true;
    }

    private AudioTrack k() throws r1.b {
        try {
            return ((c) b1.a(this.r)).a(this.W, this.t, this.U);
        } catch (r1.b e2) {
            u();
            r1.c cVar = this.p;
            if (cVar != null) {
                cVar.a(e2);
            }
            throw e2;
        }
    }

    private void u() {
        if (this.r.b()) {
            this.Y = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private boolean l() {
        /*
            r9 = this;
            int r0 = r9.P
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.P = r2
        L9:
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            int r4 = r9.P
            com.applovin.impl.p1[] r5 = r9.I
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.e()
        L1f:
            r9.d(r7)
            boolean r0 = r4.c()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.P
            int r0 = r0 + r1
            r9.P = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.M
            if (r0 == 0) goto L3b
            r9.a(r0, r7)
            java.nio.ByteBuffer r0 = r9.M
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.P = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.r5.l():boolean");
    }

    @Override // com.applovin.impl.r1
    public void f() {
        if (!this.Q && t() && l()) {
            v();
            this.Q = true;
        }
    }

    public boolean p() {
        return o().b;
    }

    @Override // com.applovin.impl.r1
    public boolean g() {
        return t() && this.i.e(r());
    }

    private void x() {
        if (t()) {
            if (xp.a >= 21) {
                a(this.s, this.H);
            } else {
                b(this.s, this.H);
            }
        }
    }

    @Override // com.applovin.impl.r1
    public void pause() {
        this.S = false;
        if (t() && this.i.f()) {
            this.s.pause();
        }
    }

    class a extends Thread {
        final /* synthetic */ AudioTrack a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, AudioTrack audioTrack) {
            super(str);
            this.a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.a.flush();
                this.a.release();
            } finally {
                r5.this.h.open();
            }
        }
    }

    @Override // com.applovin.impl.r1
    public void d() {
        if (this.W) {
            this.W = false;
            b();
        }
    }

    @Override // com.applovin.impl.r1
    public void reset() {
        b();
        for (p1 p1Var : this.f) {
            p1Var.reset();
        }
        for (p1 p1Var2 : this.g) {
            p1Var2.reset();
        }
        this.S = false;
        this.Y = false;
    }

    private void w() {
        this.z = 0L;
        this.A = 0L;
        this.B = 0L;
        this.C = 0L;
        this.Z = false;
        this.D = 0;
        this.v = new f(n(), p(), 0L, 0L, null);
        this.G = 0L;
        this.u = null;
        this.j.clear();
        this.K = null;
        this.L = 0;
        this.M = null;
        this.R = false;
        this.Q = false;
        this.P = -1;
        this.x = null;
        this.y = 0;
        this.e.k();
        m();
    }

    private ph n() {
        return o().a;
    }

    private f o() {
        f fVar = this.u;
        if (fVar != null) {
            return fVar;
        }
        if (!this.j.isEmpty()) {
            return (f) this.j.getLast();
        }
        return this.v;
    }

    private boolean z() {
        return (this.W || !"audio/raw".equals(this.r.a.m) || f(this.r.a.B)) ? false : true;
    }

    private boolean t() {
        return this.s != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long q() {
        c cVar = this.r;
        if (cVar.c == 0) {
            return this.z / ((long) cVar.b);
        }
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long r() {
        c cVar = this.r;
        if (cVar.c == 0) {
            return this.B / ((long) cVar.d);
        }
        return this.C;
    }

    private void a(long j) {
        ph phVarA;
        if (z()) {
            phVarA = this.b.a(n());
        } else {
            phVarA = ph.d;
        }
        ph phVar = phVarA;
        boolean zA = z() ? this.b.a(p()) : false;
        this.j.add(new f(phVar, zA, Math.max(0L, j), this.r.b(r()), null));
        y();
        r1.c cVar = this.p;
        if (cVar != null) {
            cVar.a(zA);
        }
    }

    private long c(long j) {
        return j + this.r.b(this.b.b());
    }

    private long b(long j) {
        while (!this.j.isEmpty() && j >= ((f) this.j.getFirst()).d) {
            this.v = (f) this.j.remove();
        }
        f fVar = this.v;
        long j2 = j - fVar.d;
        if (fVar.a.equals(ph.d)) {
            return this.v.c + j2;
        }
        if (this.j.isEmpty()) {
            return this.v.c + this.b.a(j2);
        }
        f fVar2 = (f) this.j.getFirst();
        return fVar2.c - xp.a(fVar2.d - j, this.v.a.a);
    }

    private void v() {
        if (this.R) {
            return;
        }
        this.R = true;
        this.i.d(r());
        this.s.stop();
        this.y = 0;
    }

    private final class i {
        private final Handler a = new Handler();
        private final AudioTrack.StreamEventCallback b;

        public i() {
            this.b = new a(r5.this);
        }

        class a extends AudioTrack.StreamEventCallback {
            final /* synthetic */ r5 a;

            a(r5 r5Var) {
                this.a = r5Var;
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public void onDataRequest(AudioTrack audioTrack, int i) {
                b1.b(audioTrack == r5.this.s);
                if (r5.this.p == null || !r5.this.S) {
                    return;
                }
                r5.this.p.a();
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public void onTearDown(AudioTrack audioTrack) {
                b1.b(audioTrack == r5.this.s);
                if (r5.this.p == null || !r5.this.S) {
                    return;
                }
                r5.this.p.a();
            }
        }

        public void a(AudioTrack audioTrack) {
            final Handler handler = this.a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new Executor() { // from class: com.applovin.impl.r5$i$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.b);
            this.a.removeCallbacksAndMessages(null);
        }
    }

    private static final class f {
        public final ph a;
        public final boolean b;
        public final long c;
        public final long d;

        private f(ph phVar, boolean z, long j, long j2) {
            this.a = phVar;
            this.b = z;
            this.c = j;
            this.d = j2;
        }

        /* synthetic */ f(ph phVar, boolean z, long j, long j2, a aVar) {
            this(phVar, z, j, j2);
        }
    }

    private static final class c {
        public final e9 a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final p1[] i;

        public c(e9 e9Var, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, p1[] p1VarArr) {
            this.a = e9Var;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.i = p1VarArr;
            this.h = a(i7, z);
        }

        public long b(long j) {
            return (j * 1000000) / ((long) this.e);
        }

        public AudioTrack a(boolean z, l1 l1Var, int i) throws r1.b {
            try {
                AudioTrack audioTrackB = b(z, l1Var, i);
                int state = audioTrackB.getState();
                if (state == 1) {
                    return audioTrackB;
                }
                try {
                    audioTrackB.release();
                } catch (Exception unused) {
                }
                throw new r1.b(state, this.e, this.f, this.h, this.a, b(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e) {
                throw new r1.b(0, this.e, this.f, this.h, this.a, b(), e);
            }
        }

        private AudioTrack d(boolean z, l1 l1Var, int i) {
            return new AudioTrack.Builder().setAudioAttributes(a(l1Var, z)).setAudioFormat(r5.b(this.e, this.f, this.g)).setTransferMode(1).setBufferSizeInBytes(this.h).setSessionId(i).setOffloadedPlayback(this.c == 1).build();
        }

        private int c(long j) {
            int iD = r5.d(this.g);
            if (this.g == 5) {
                iD *= 2;
            }
            return (int) ((j * ((long) iD)) / 1000000);
        }

        private AudioTrack c(boolean z, l1 l1Var, int i) {
            return new AudioTrack(a(l1Var, z), r5.b(this.e, this.f, this.g), this.h, 1, i);
        }

        public boolean a(c cVar) {
            return cVar.c == this.c && cVar.g == this.g && cVar.e == this.e && cVar.f == this.f && cVar.d == this.d;
        }

        public long d(long j) {
            return (j * 1000000) / ((long) this.a.A);
        }

        public boolean b() {
            return this.c == 1;
        }

        private AudioTrack b(boolean z, l1 l1Var, int i) {
            int i2 = xp.a;
            if (i2 >= 29) {
                return d(z, l1Var, i);
            }
            if (i2 >= 21) {
                return c(z, l1Var, i);
            }
            return a(l1Var, i);
        }

        private int a(int i, boolean z) {
            if (i != 0) {
                return i;
            }
            int i2 = this.c;
            if (i2 == 0) {
                return a(z ? 8.0f : 1.0f);
            }
            if (i2 == 1) {
                return c(50000000L);
            }
            if (i2 == 2) {
                return c(250000L);
            }
            throw new IllegalStateException();
        }

        private AudioTrack a(l1 l1Var, int i) {
            int iE = xp.e(l1Var.c);
            if (i == 0) {
                return new AudioTrack(iE, this.e, this.f, this.g, this.h, 1);
            }
            return new AudioTrack(iE, this.e, this.f, this.g, this.h, 1, i);
        }

        public long a(long j) {
            return (j * ((long) this.e)) / 1000000;
        }

        private static AudioAttributes a(l1 l1Var, boolean z) {
            if (z) {
                return a();
            }
            return l1Var.a();
        }

        private int a(float f) {
            int minBufferSize = AudioTrack.getMinBufferSize(this.e, this.f, this.g);
            b1.b(minBufferSize != -2);
            int iA = xp.a(minBufferSize * 4, ((int) a(250000L)) * this.d, Math.max(minBufferSize, ((int) a(750000L)) * this.d));
            return f != 1.0f ? Math.round(iA * f) : iA;
        }

        private static AudioAttributes a() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }
    }

    @Override // com.applovin.impl.r1
    public void a(e9 e9Var, int i2, int[] iArr) throws r1.a {
        p1[] p1VarArr;
        int iB;
        int iIntValue;
        int iB2;
        int i3;
        int i4;
        int i5;
        p1[] p1VarArr2;
        int[] iArr2;
        if ("audio/raw".equals(e9Var.m)) {
            b1.a(xp.g(e9Var.B));
            int iB3 = xp.b(e9Var.B, e9Var.z);
            if (f(e9Var.B)) {
                p1VarArr2 = this.g;
            } else {
                p1VarArr2 = this.f;
            }
            this.e.a(e9Var.C, e9Var.D);
            if (xp.a < 21 && e9Var.z == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i6 = 0; i6 < 6; i6++) {
                    iArr2[i6] = i6;
                }
            } else {
                iArr2 = iArr;
            }
            this.d.a(iArr2);
            p1.a aVar = new p1.a(e9Var.A, e9Var.z, e9Var.B);
            for (p1 p1Var : p1VarArr2) {
                try {
                    p1.a aVarA = p1Var.a(aVar);
                    if (p1Var.f()) {
                        aVar = aVarA;
                    }
                } catch (p1.b e2) {
                    throw new r1.a(e2, e9Var);
                }
            }
            int i7 = aVar.c;
            i4 = aVar.a;
            iIntValue = xp.a(aVar.b);
            p1VarArr = p1VarArr2;
            iB2 = i7;
            i5 = iB3;
            iB = xp.b(i7, aVar.b);
            i3 = 0;
        } else {
            p1VarArr = new p1[0];
            int i8 = e9Var.A;
            iB = -1;
            if (a(e9Var, this.t)) {
                iB2 = hf.b((String) b1.a((Object) e9Var.m), e9Var.j);
                iIntValue = xp.a(e9Var.z);
                i3 = 1;
            } else {
                Pair pairA = a(e9Var, this.a);
                if (pairA != null) {
                    int iIntValue2 = ((Integer) pairA.first).intValue();
                    iIntValue = ((Integer) pairA.second).intValue();
                    iB2 = iIntValue2;
                    i3 = 2;
                } else {
                    throw new r1.a("Unable to configure passthrough for: " + e9Var, e9Var);
                }
            }
            i4 = i8;
            i5 = -1;
        }
        if (iB2 == 0) {
            throw new r1.a("Invalid output encoding (mode=" + i3 + ") for: " + e9Var, e9Var);
        }
        if (iIntValue != 0) {
            this.Y = false;
            c cVar = new c(e9Var, i5, i3, iB, i4, iIntValue, iB2, i2, this.k, p1VarArr);
            if (t()) {
                this.q = cVar;
                return;
            } else {
                this.r = cVar;
                return;
            }
        }
        throw new r1.a("Invalid output channel config (mode=" + i3 + ") for: " + e9Var, e9Var);
    }

    private static final class g {
        private final long a;
        private Exception b;
        private long c;

        public g(long j) {
            this.a = j;
        }

        public void a() {
            this.b = null;
        }

        public void a(Exception exc) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.b == null) {
                this.b = exc;
                this.c = this.a + jElapsedRealtime;
            }
            if (jElapsedRealtime >= this.c) {
                Exception exc2 = this.b;
                if (exc2 != exc) {
                    exc2.addSuppressed(exc);
                }
                Exception exc3 = this.b;
                a();
                throw exc3;
            }
        }
    }

    private boolean f(int i2) {
        return this.c && xp.f(i2);
    }

    @Override // com.applovin.impl.r1
    public boolean c() {
        return !t() || (this.Q && !g());
    }

    private static int c(int i2) {
        int i3 = xp.a;
        if (i3 <= 28) {
            if (i2 == 7) {
                i2 = 8;
            } else if (i2 == 3 || i2 == 4 || i2 == 5) {
                i2 = 6;
            }
        }
        if (i3 <= 26 && "fugu".equals(xp.b) && i2 == 1) {
            i2 = 2;
        }
        return xp.a(i2);
    }

    @Override // com.applovin.impl.r1
    public long a(boolean z) {
        if (!t() || this.F) {
            return Long.MIN_VALUE;
        }
        return c(b(Math.min(this.i.a(z), this.r.b(r()))));
    }

    @Override // com.applovin.impl.r1
    public void b() {
        if (t()) {
            w();
            if (this.i.d()) {
                this.s.pause();
            }
            if (a(this.s)) {
                ((i) b1.a(this.m)).b(this.s);
            }
            AudioTrack audioTrack = this.s;
            this.s = null;
            if (xp.a < 21 && !this.T) {
                this.U = 0;
            }
            c cVar = this.q;
            if (cVar != null) {
                this.r = cVar;
                this.q = null;
            }
            this.i.g();
            this.h.close();
            new a("ExoPlayer:AudioTrackReleaseThread", audioTrack).start();
        }
        this.o.a();
        this.n.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(int i2) {
        switch (i2) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED;
            case 16:
                return 256000;
            case 17:
                return 336000;
        }
    }

    @Override // com.applovin.impl.r1
    public int b(e9 e9Var) {
        if (!"audio/raw".equals(e9Var.m)) {
            return ((this.Y || !a(e9Var, this.t)) && !b(e9Var, this.a)) ? 0 : 2;
        }
        if (!xp.g(e9Var.B)) {
            oc.d("DefaultAudioSink", "Invalid PCM encoding: " + e9Var.B);
            return 0;
        }
        int i2 = e9Var.B;
        return (i2 == 2 || (this.c && i2 == 4)) ? 2 : 1;
    }

    private void d(long j) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.I.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.J[i2 - 1];
            } else {
                byteBuffer = this.K;
                if (byteBuffer == null) {
                    byteBuffer = p1.a;
                }
            }
            if (i2 == length) {
                a(byteBuffer, j);
            } else {
                p1 p1Var = this.I[i2];
                if (i2 > this.P) {
                    p1Var.a(byteBuffer);
                }
                ByteBuffer byteBufferD = p1Var.d();
                this.J[i2] = byteBufferD;
                if (byteBufferD.hasRemaining()) {
                    i2++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i2--;
            }
        }
    }

    private static Pair a(e9 e9Var, n1 n1Var) {
        if (n1Var == null) {
            return null;
        }
        int iB = hf.b((String) b1.a((Object) e9Var.m), e9Var.j);
        int iA = 6;
        if (iB != 5 && iB != 6 && iB != 18 && iB != 17 && iB != 7 && iB != 8 && iB != 14) {
            return null;
        }
        if (iB == 18 && !n1Var.a(18)) {
            iB = 6;
        } else if (iB == 8 && !n1Var.a(8)) {
            iB = 7;
        }
        if (!n1Var.a(iB)) {
            return null;
        }
        if (iB == 18) {
            if (xp.a >= 29 && (iA = a(18, e9Var.A)) == 0) {
                oc.d("DefaultAudioSink", "E-AC3 JOC encoding supported but no channel count supported");
                return null;
            }
        } else {
            iA = e9Var.z;
            if (iA > n1Var.c()) {
                return null;
            }
        }
        int iC = c(iA);
        if (iC == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iB), Integer.valueOf(iC));
    }

    private static boolean b(e9 e9Var, n1 n1Var) {
        return a(e9Var, n1Var) != null;
    }

    private void b(AudioTrack audioTrack) {
        if (this.m == null) {
            this.m = new i();
        }
        this.m.a(audioTrack);
    }

    private static int a(int i2, ByteBuffer byteBuffer) {
        switch (i2) {
            case 5:
            case 6:
            case 18:
                return k.b(byteBuffer);
            case 7:
            case 8:
                return e7.a(byteBuffer);
            case 9:
                int iD = sf.d(xp.a(byteBuffer, byteBuffer.position()));
                if (iD != -1) {
                    return iD;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i2);
            case 14:
                int iA = k.a(byteBuffer);
                if (iA == -1) {
                    return 0;
                }
                return k.a(byteBuffer, iA) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return n.a(byteBuffer);
        }
    }

    private void b(ph phVar) {
        if (t()) {
            try {
                this.s.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(phVar.a).setPitch(phVar.b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e2) {
                oc.c("DefaultAudioSink", "Failed to set playback params", e2);
            }
            phVar = new ph(this.s.getPlaybackParams().getSpeed(), this.s.getPlaybackParams().getPitch());
            this.i.a(phVar.a);
        }
        this.w = phVar;
    }

    @Override // com.applovin.impl.r1
    public ph a() {
        if (this.k) {
            return this.w;
        }
        return n();
    }

    @Override // com.applovin.impl.r1
    public boolean a(ByteBuffer byteBuffer, long j, int i2) throws Exception {
        ByteBuffer byteBuffer2 = this.K;
        b1.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.q != null) {
            if (!l()) {
                return false;
            }
            if (!this.q.a(this.r)) {
                v();
                if (g()) {
                    return false;
                }
                b();
            } else {
                this.r = this.q;
                this.q = null;
                if (a(this.s) && this.l != 3) {
                    this.s.setOffloadEndOfStream();
                    AudioTrack audioTrack = this.s;
                    e9 e9Var = this.r.a;
                    audioTrack.setOffloadDelayPadding(e9Var.C, e9Var.D);
                    this.Z = true;
                }
            }
            a(j);
        }
        if (!t()) {
            try {
                s();
            } catch (r1.b e2) {
                if (!e2.b) {
                    this.n.a(e2);
                    return false;
                }
                throw e2;
            }
        }
        this.n.a();
        if (this.F) {
            this.G = Math.max(0L, j);
            this.E = false;
            this.F = false;
            if (this.k && xp.a >= 23) {
                b(this.w);
            }
            a(j);
            if (this.S) {
                j();
            }
        }
        if (!this.i.g(r())) {
            return false;
        }
        if (this.K == null) {
            b1.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            c cVar = this.r;
            if (cVar.c != 0 && this.D == 0) {
                int iA = a(cVar.g, byteBuffer);
                this.D = iA;
                if (iA == 0) {
                    return true;
                }
            }
            if (this.u != null) {
                if (!l()) {
                    return false;
                }
                a(j);
                this.u = null;
            }
            long jD = this.G + this.r.d(q() - this.e.j());
            if (!this.E && Math.abs(jD - j) > 200000) {
                this.p.a(new r1.d(j, jD));
                this.E = true;
            }
            if (this.E) {
                if (!l()) {
                    return false;
                }
                long j2 = j - jD;
                this.G += j2;
                this.E = false;
                a(j);
                r1.c cVar2 = this.p;
                if (cVar2 != null && j2 != 0) {
                    cVar2.b();
                }
            }
            if (this.r.c == 0) {
                this.z += (long) byteBuffer.remaining();
            } else {
                this.A += (long) (this.D * i2);
            }
            this.K = byteBuffer;
            this.L = i2;
        }
        d(j);
        if (!this.K.hasRemaining()) {
            this.K = null;
            this.L = 0;
            return true;
        }
        if (!this.i.f(r())) {
            return false;
        }
        oc.d("DefaultAudioSink", "Resetting stalled audio track");
        b();
        return true;
    }

    @Override // com.applovin.impl.r1
    public void b(boolean z) {
        a(n(), z);
    }

    @Override // com.applovin.impl.r1
    public void a(l1 l1Var) {
        if (this.t.equals(l1Var)) {
            return;
        }
        this.t = l1Var;
        if (this.W) {
            return;
        }
        b();
    }

    private static void b(AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AudioFormat b(int i2, int i3, int i4) {
        return new AudioFormat.Builder().setSampleRate(i2).setChannelMask(i3).setEncoding(i4).build();
    }

    private void a(ph phVar, boolean z) {
        f fVarO = o();
        if (phVar.equals(fVarO.a) && z == fVarO.b) {
            return;
        }
        f fVar = new f(phVar, z, -9223372036854775807L, -9223372036854775807L, null);
        if (t()) {
            this.u = fVar;
        } else {
            this.v = fVar;
        }
    }

    @Override // com.applovin.impl.r1
    public void a(int i2) {
        if (this.U != i2) {
            this.U = i2;
            this.T = i2 != 0;
            b();
        }
    }

    @Override // com.applovin.impl.r1
    public void a(v1 v1Var) {
        if (this.V.equals(v1Var)) {
            return;
        }
        int i2 = v1Var.a;
        float f2 = v1Var.b;
        AudioTrack audioTrack = this.s;
        if (audioTrack != null) {
            if (this.V.a != i2) {
                audioTrack.attachAuxEffect(i2);
            }
            if (i2 != 0) {
                this.s.setAuxEffectSendLevel(f2);
            }
        }
        this.V = v1Var;
    }

    @Override // com.applovin.impl.r1
    public void a(r1.c cVar) {
        this.p = cVar;
    }

    @Override // com.applovin.impl.r1
    public void a(ph phVar) {
        ph phVar2 = new ph(xp.a(phVar.a, 0.1f, 8.0f), xp.a(phVar.b, 0.1f, 8.0f));
        if (this.k && xp.a >= 23) {
            b(phVar2);
        } else {
            a(phVar2, p());
        }
    }

    @Override // com.applovin.impl.r1
    public void a(float f2) {
        if (this.H != f2) {
            this.H = f2;
            x();
        }
    }

    private static void a(AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }

    @Override // com.applovin.impl.r1
    public boolean a(e9 e9Var) {
        return b(e9Var) != 0;
    }

    private void a(ByteBuffer byteBuffer, long j) throws Exception {
        int iA;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.M;
            if (byteBuffer2 != null) {
                b1.a(byteBuffer2 == byteBuffer);
            } else {
                this.M = byteBuffer;
                if (xp.a < 21) {
                    int iRemaining = byteBuffer.remaining();
                    byte[] bArr = this.N;
                    if (bArr == null || bArr.length < iRemaining) {
                        this.N = new byte[iRemaining];
                    }
                    int iPosition = byteBuffer.position();
                    byteBuffer.get(this.N, 0, iRemaining);
                    byteBuffer.position(iPosition);
                    this.O = 0;
                }
            }
            int iRemaining2 = byteBuffer.remaining();
            if (xp.a < 21) {
                int iB = this.i.b(this.B);
                if (iB > 0) {
                    iA = this.s.write(this.N, this.O, Math.min(iRemaining2, iB));
                    if (iA > 0) {
                        this.O += iA;
                        byteBuffer.position(byteBuffer.position() + iA);
                    }
                } else {
                    iA = 0;
                }
            } else if (this.W) {
                b1.b(j != -9223372036854775807L);
                iA = a(this.s, byteBuffer, iRemaining2, j);
            } else {
                iA = a(this.s, byteBuffer, iRemaining2);
            }
            this.X = SystemClock.elapsedRealtime();
            if (iA < 0) {
                boolean zE = e(iA);
                if (zE) {
                    u();
                }
                r1.e eVar = new r1.e(iA, this.r.a, zE);
                r1.c cVar = this.p;
                if (cVar != null) {
                    cVar.a(eVar);
                }
                if (!eVar.b) {
                    this.o.a(eVar);
                    return;
                }
                throw eVar;
            }
            this.o.a();
            if (a(this.s)) {
                long j2 = this.C;
                if (j2 > 0) {
                    this.Z = false;
                }
                if (this.S && this.p != null && iA < iRemaining2 && !this.Z) {
                    this.p.b(this.i.c(j2));
                }
            }
            int i2 = this.r.c;
            if (i2 == 0) {
                this.B += (long) iA;
            }
            if (iA == iRemaining2) {
                if (i2 != 0) {
                    b1.b(byteBuffer == this.K);
                    this.C += (long) (this.D * this.L);
                }
                this.M = null;
            }
        }
    }

    private static int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i2) {
        return audioTrack.write(byteBuffer, i2, 1);
    }

    private static int a(int i2, int i3) {
        AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        for (int i4 = 8; i4 > 0; i4--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i2).setSampleRate(i3).setChannelMask(xp.a(i4)).build(), audioAttributesBuild)) {
                return i4;
            }
        }
        return 0;
    }

    private boolean a(e9 e9Var, l1 l1Var) {
        int iB;
        int iA;
        int iA2;
        if (xp.a < 29 || this.l == 0 || (iB = hf.b((String) b1.a((Object) e9Var.m), e9Var.j)) == 0 || (iA = xp.a(e9Var.z)) == 0 || (iA2 = a(b(e9Var.A, iA, iB), l1Var.a())) == 0) {
            return false;
        }
        if (iA2 == 1) {
            return ((e9Var.C != 0 || e9Var.D != 0) && (this.l == 1)) ? false : true;
        }
        if (iA2 == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    private int a(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        int i2 = xp.a;
        if (i2 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i2 == 30 && xp.d.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    private static boolean a(AudioTrack audioTrack) {
        return xp.a >= 29 && audioTrack.isOffloadedPlayback();
    }

    private int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i2, long j) {
        if (xp.a >= 26) {
            return audioTrack.write(byteBuffer, i2, 1, j * 1000);
        }
        if (this.x == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.x = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.x.putInt(1431633921);
        }
        if (this.y == 0) {
            this.x.putInt(4, i2);
            this.x.putLong(8, j * 1000);
            this.x.position(0);
            this.y = i2;
        }
        int iRemaining = this.x.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.x, iRemaining, 1);
            if (iWrite < 0) {
                this.y = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iA = a(audioTrack, byteBuffer, i2);
        if (iA < 0) {
            this.y = 0;
            return iA;
        }
        this.y -= iA;
        return iA;
    }
}
