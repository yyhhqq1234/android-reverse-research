package com.applovin.impl;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.work.WorkRequest;
import com.google.android.gms.common.Scopes;
import com.onesignal.core.internal.config.InfluenceConfigModel;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.services.core.device.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class od extends kd {
    private static final int[] s1 = {1920, 1600, InfluenceConfigModel.DEFAULT_INDIRECT_ATTRIBUTION_WINDOW, 1280, 960, 854, 640, 540, 480};
    private static boolean t1;
    private static boolean u1;
    private final Context J0;
    private final vq K0;
    private final wq.a L0;
    private final long M0;
    private final int N0;
    private final boolean O0;
    private a P0;
    private boolean Q0;
    private boolean R0;
    private Surface S0;
    private g7 T0;
    private boolean U0;
    private int V0;
    private boolean W0;
    private boolean X0;
    private boolean Y0;
    private long Z0;
    private long a1;
    private long b1;
    private int c1;
    private int d1;
    private int e1;
    private long f1;
    private long g1;
    private long h1;
    private int i1;
    private int j1;
    private int k1;
    private int l1;
    private float m1;
    private xq n1;
    private boolean o1;
    private int p1;
    b q1;
    private uq r1;

    private static boolean e0() {
        return "NVIDIA".equals(xp.c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:47:0x0092  */
    /* JADX WARN: Code duplicated, block: B:610:0x0832  */
    /* JADX WARN: Code duplicated, block: B:6:0x001d  */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private static boolean f0() {
        /*
            Method dump skipped, instruction units count: 3054
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.od.f0():boolean");
    }

    private static boolean g(long j) {
        return j < -30000;
    }

    private static boolean h(long j) {
        return j < -500000;
    }

    @Override // com.applovin.impl.qi, com.applovin.impl.ri
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    public od(Context context, gd.b bVar, ld ldVar, long j, boolean z, Handler handler, wq wqVar, int i) {
        super(2, bVar, ldVar, z, 30.0f);
        this.M0 = j;
        this.N0 = i;
        Context applicationContext = context.getApplicationContext();
        this.J0 = applicationContext;
        this.K0 = new vq(applicationContext);
        this.L0 = new wq.a(handler, wqVar);
        this.O0 = e0();
        this.a1 = -9223372036854775807L;
        this.j1 = -1;
        this.k1 = -1;
        this.m1 = -1.0f;
        this.V0 = 1;
        this.p1 = 0;
        d0();
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.qi
    public boolean d() {
        g7 g7Var;
        if (super.d() && (this.W0 || (((g7Var = this.T0) != null && this.S0 == g7Var) || I() == null || this.o1))) {
            this.a1 = -9223372036854775807L;
            return true;
        }
        if (this.a1 == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.a1) {
            return true;
        }
        this.a1 = -9223372036854775807L;
        return false;
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void x() {
        super.x();
        this.c1 = 0;
        this.b1 = SystemClock.elapsedRealtime();
        this.g1 = SystemClock.elapsedRealtime() * 1000;
        this.h1 = 0L;
        this.i1 = 0;
        this.K0.e();
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void y() {
        this.a1 = -9223372036854775807L;
        g0();
        i0();
        this.K0.f();
        super.y();
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void v() {
        d0();
        c0();
        this.U0 = false;
        this.K0.b();
        this.q1 = null;
        try {
            super.v();
        } finally {
            this.L0.a(this.E0);
        }
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void w() {
        g7 g7Var;
        try {
            super.w();
            g7Var = this.T0;
            if (g7Var != null) {
                if (this.S0 == g7Var) {
                    this.S0 = null;
                }
            }
        } finally {
            if (this.T0 != null) {
                Surface surface = this.S0;
                g7Var = this.T0;
                if (surface == g7Var) {
                    this.S0 = null;
                }
                g7Var.release();
                this.T0 = null;
            }
        }
    }

    public od(Context context, ld ldVar, long j, boolean z, Handler handler, wq wqVar, int i) {
        this(context, gd.b.a, ldVar, j, z, handler, wqVar, i);
    }

    @Override // com.applovin.impl.kd
    protected boolean K() {
        return this.o1 && xp.a < 23;
    }

    @Override // com.applovin.impl.kd
    protected void W() {
        super.W();
        this.e1 = 0;
    }

    @Override // com.applovin.impl.kd
    protected void g(String str) {
        this.L0.a(str);
    }

    @Override // com.applovin.impl.kd
    protected p5 a(jd jdVar, e9 e9Var, e9 e9Var2) {
        p5 p5VarA = jdVar.a(e9Var, e9Var2);
        int i = p5VarA.e;
        int i2 = e9Var2.r;
        a aVar = this.P0;
        if (i2 > aVar.a || e9Var2.s > aVar.b) {
            i |= 256;
        }
        if (c(jdVar, e9Var2) > this.P0.c) {
            i |= 64;
        }
        int i3 = i;
        return new p5(jdVar.a, e9Var, e9Var2, i3 != 0 ? 0 : p5VarA.d, i3);
    }

    protected void i(long j) {
        f(j);
        j0();
        this.E0.e++;
        h0();
        d(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        a0();
    }

    @Override // com.applovin.impl.kd
    protected void Q() {
        super.Q();
        c0();
    }

    protected void f(int i) {
        m5 m5Var = this.E0;
        m5Var.g += i;
        this.c1 += i;
        int i2 = this.d1 + i;
        this.d1 = i2;
        m5Var.h = Math.max(i2, m5Var.h);
        int i3 = this.N0;
        if (i3 <= 0 || this.c1 < i3) {
            return;
        }
        g0();
    }

    protected void j(long j) {
        this.E0.a(j);
        this.h1 += j;
        this.i1++;
    }

    private void n0() {
        this.a1 = this.M0 > 0 ? SystemClock.elapsedRealtime() + this.M0 : -9223372036854775807L;
    }

    private void c0() {
        gd gdVarI;
        this.W0 = false;
        if (xp.a < 23 || !this.o1 || (gdVarI = I()) == null) {
            return;
        }
        this.q1 = new b(gdVarI);
    }

    void h0() {
        this.Y0 = true;
        if (this.W0) {
            return;
        }
        this.W0 = true;
        this.L0.a(this.S0);
        this.U0 = true;
    }

    private void k0() {
        if (this.U0) {
            this.L0.a(this.S0);
        }
    }

    private void d0() {
        this.n1 = null;
    }

    private void j0() {
        int i = this.j1;
        if (i == -1 && this.k1 == -1) {
            return;
        }
        xq xqVar = this.n1;
        if (xqVar != null && xqVar.a == i && xqVar.b == this.k1 && xqVar.c == this.l1 && xqVar.d == this.m1) {
            return;
        }
        xq xqVar2 = new xq(this.j1, this.k1, this.l1, this.m1);
        this.n1 = xqVar2;
        this.L0.b(xqVar2);
    }

    private void l0() {
        xq xqVar = this.n1;
        if (xqVar != null) {
            this.L0.b(xqVar);
        }
    }

    private void g0() {
        if (this.c1 > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.L0.a(this.c1, jElapsedRealtime - this.b1);
            this.c1 = 0;
            this.b1 = jElapsedRealtime;
        }
    }

    private void i0() {
        int i = this.i1;
        if (i != 0) {
            this.L0.b(this.h1, i);
            this.h1 = 0L;
            this.i1 = 0;
        }
    }

    private static Point b(jd jdVar, e9 e9Var) {
        int i = e9Var.s;
        int i2 = e9Var.r;
        boolean z = i > i2;
        int i3 = z ? i : i2;
        if (z) {
            i = i2;
        }
        float f = i / i3;
        for (int i4 : s1) {
            int i5 = (int) (i4 * f);
            if (i4 <= i3 || i5 <= i) {
                break;
            }
            if (xp.a >= 21) {
                int i6 = z ? i5 : i4;
                if (!z) {
                    i4 = i5;
                }
                Point pointA = jdVar.a(i6, i4);
                if (jdVar.a(pointA.x, pointA.y, e9Var.t)) {
                    return pointA;
                }
            } else {
                try {
                    int iA = xp.a(i4, 16) * 16;
                    int iA2 = xp.a(i5, 16) * 16;
                    if (iA * iA2 <= md.b()) {
                        int i7 = z ? iA2 : iA;
                        if (!z) {
                            iA = iA2;
                        }
                        return new Point(i7, iA);
                    }
                } catch (md.c unused) {
                }
            }
        }
        return null;
    }

    @Override // com.applovin.impl.kd
    protected void d(long j) {
        super.d(j);
        if (this.o1) {
            return;
        }
        this.e1--;
    }

    protected static int c(jd jdVar, e9 e9Var) {
        if (e9Var.n != -1) {
            int size = e9Var.o.size();
            int length = 0;
            for (int i = 0; i < size; i++) {
                length += ((byte[]) e9Var.o.get(i)).length;
            }
            return e9Var.n + length;
        }
        return a(jdVar, e9Var);
    }

    protected boolean h(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (od.class) {
            if (!t1) {
                u1 = f0();
                t1 = true;
            }
        }
        return u1;
    }

    protected static final class a {
        public final int a;
        public final int b;
        public final int c;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    private final class b implements gd.c, Handler.Callback {
        private final Handler a;

        public b(gd gdVar) {
            Handler handlerA = xp.a((Handler.Callback) this);
            this.a = handlerA;
            gdVar.a(this, handlerA);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            a(xp.c(message.arg1, message.arg2));
            return true;
        }

        private void a(long j) {
            od odVar = od.this;
            if (this != odVar.q1) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                odVar.m0();
                return;
            }
            try {
                odVar.i(j);
            } catch (z7 e) {
                od.this.a(e);
            }
        }

        @Override // com.applovin.impl.gd.c
        public void a(gd gdVar, long j, long j2) {
            if (xp.a < 30) {
                this.a.sendMessageAtFrontOfQueue(Message.obtain(this.a, 0, (int) (j >> 32), (int) j));
            } else {
                a(j);
            }
        }
    }

    private static void a(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    protected boolean d(long j, long j2) {
        return g(j) && j2 > 100000;
    }

    protected void c(gd gdVar, int i, long j) {
        ko.a("skipVideoBuffer");
        gdVar.a(i, false);
        ko.a();
        this.E0.f++;
    }

    protected boolean b(long j, boolean z) throws z7 {
        int iB = b(j);
        if (iB == 0) {
            return false;
        }
        m5 m5Var = this.E0;
        m5Var.i++;
        int i = this.e1 + iB;
        if (z) {
            m5Var.f += i;
        } else {
            f(i);
        }
        G();
        return true;
    }

    private boolean c(jd jdVar) {
        return xp.a >= 23 && !this.o1 && !h(jdVar.a) && (!jdVar.g || g7.b(this.J0));
    }

    protected void a(gd gdVar, int i, long j) {
        ko.a("dropVideoBuffer");
        gdVar.a(i, false);
        ko.a();
        f(1);
    }

    @Override // com.applovin.impl.kd
    protected void b(o5 o5Var) {
        boolean z = this.o1;
        if (!z) {
            this.e1++;
        }
        if (xp.a >= 23 || !z) {
            return;
        }
        i(o5Var.f);
    }

    protected void b(gd gdVar, int i, long j) {
        j0();
        ko.a("releaseOutputBuffer");
        gdVar.a(i, true);
        ko.a();
        this.g1 = SystemClock.elapsedRealtime() * 1000;
        this.E0.e++;
        this.d1 = 0;
        h0();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:18:0x0043  */
    private static int a(jd jdVar, e9 e9Var) {
        int iA;
        int iIntValue;
        int i = e9Var.r;
        int i2 = e9Var.s;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        String str = e9Var.m;
        if ("video/dolby-vision".equals(str)) {
            Pair pairA = md.a(e9Var);
            str = (pairA == null || !((iIntValue = ((Integer) pairA.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? MimeTypes.VIDEO_H265 : MimeTypes.VIDEO_H264;
        }
        str.hashCode();
        str.hashCode();
        int i3 = 4;
        switch (str) {
            case "video/3gpp":
            case "video/mp4v-es":
            case "video/x-vnd.on2.vp8":
                iA = i * i2;
                i3 = 2;
                return (iA * 3) / (i3 * 2);
            case "video/hevc":
            case "video/x-vnd.on2.vp9":
                iA = i * i2;
                return (iA * 3) / (i3 * 2);
            case "video/avc":
                String str2 = xp.d;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(xp.c) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && jdVar.g)))) {
                    return -1;
                }
                iA = xp.a(i, 16) * xp.a(i2, 16) * 256;
                i3 = 2;
                return (iA * 3) / (i3 * 2);
            default:
                return -1;
        }
    }

    protected boolean b(long j, long j2, boolean z) {
        return g(j) && !z;
    }

    @Override // com.applovin.impl.kd
    protected boolean b(jd jdVar) {
        return this.S0 != null || c(jdVar);
    }

    protected a a(jd jdVar, e9 e9Var, e9[] e9VarArr) {
        int iA;
        int iMax = e9Var.r;
        int iMax2 = e9Var.s;
        int iC = c(jdVar, e9Var);
        if (e9VarArr.length == 1) {
            if (iC != -1 && (iA = a(jdVar, e9Var)) != -1) {
                iC = Math.min((int) (iC * 1.5f), iA);
            }
            return new a(iMax, iMax2, iC);
        }
        int length = e9VarArr.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            e9 e9VarA = e9VarArr[i];
            if (e9Var.y != null && e9VarA.y == null) {
                e9VarA = e9VarA.a().a(e9Var.y).a();
            }
            if (jdVar.a(e9Var, e9VarA).d != 0) {
                int i2 = e9VarA.r;
                z |= i2 == -1 || e9VarA.s == -1;
                iMax = Math.max(iMax, i2);
                iMax2 = Math.max(iMax2, e9VarA.s);
                iC = Math.max(iC, c(jdVar, e9VarA));
            }
        }
        if (z) {
            oc.d("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointB = b(jdVar, e9Var);
            if (pointB != null) {
                iMax = Math.max(iMax, pointB.x);
                iMax2 = Math.max(iMax2, pointB.y);
                iC = Math.max(iC, a(jdVar, e9Var.a().q(iMax).g(iMax2).a()));
                oc.d("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new a(iMax, iMax2, iC);
    }

    @Override // com.applovin.impl.kd
    protected float a(float f, e9 e9Var, e9[] e9VarArr) {
        float fMax = -1.0f;
        for (e9 e9Var2 : e9VarArr) {
            float f2 = e9Var2.t;
            if (f2 != -1.0f) {
                fMax = Math.max(fMax, f2);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f;
    }

    @Override // com.applovin.impl.kd
    protected List a(ld ldVar, e9 e9Var, boolean z) {
        return a(ldVar, e9Var, z, this.o1);
    }

    private static List a(ld ldVar, e9 e9Var, boolean z, boolean z2) {
        Pair pairA;
        String str = e9Var.m;
        if (str == null) {
            return Collections.emptyList();
        }
        List listA = md.a(ldVar.a(str, z, z2), e9Var);
        if ("video/dolby-vision".equals(str) && (pairA = md.a(e9Var)) != null) {
            int iIntValue = ((Integer) pairA.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                listA.addAll(ldVar.a(MimeTypes.VIDEO_H265, z, z2));
            } else if (iIntValue == 512) {
                listA.addAll(ldVar.a(MimeTypes.VIDEO_H264, z, z2));
            }
        }
        return Collections.unmodifiableList(listA);
    }

    @Override // com.applovin.impl.kd
    protected gd.a a(jd jdVar, e9 e9Var, MediaCrypto mediaCrypto, float f) {
        g7 g7Var = this.T0;
        if (g7Var != null && g7Var.a != jdVar.g) {
            g7Var.release();
            this.T0 = null;
        }
        String str = jdVar.c;
        a aVarA = a(jdVar, e9Var, t());
        this.P0 = aVarA;
        MediaFormat mediaFormatA = a(e9Var, str, aVarA, f, this.O0, this.o1 ? this.p1 : 0);
        if (this.S0 == null) {
            if (c(jdVar)) {
                if (this.T0 == null) {
                    this.T0 = g7.a(this.J0, jdVar.g);
                }
                this.S0 = this.T0;
            } else {
                throw new IllegalStateException();
            }
        }
        return gd.a.a(jdVar, mediaFormatA, e9Var, this.S0, mediaCrypto);
    }

    protected MediaFormat a(e9 e9Var, String str, a aVar, float f, boolean z, int i) {
        Pair pairA;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", e9Var.r);
        mediaFormat.setInteger("height", e9Var.s);
        rd.a(mediaFormat, e9Var.o);
        rd.a(mediaFormat, "frame-rate", e9Var.t);
        rd.a(mediaFormat, "rotation-degrees", e9Var.u);
        rd.a(mediaFormat, e9Var.y);
        if ("video/dolby-vision".equals(e9Var.m) && (pairA = md.a(e9Var)) != null) {
            rd.a(mediaFormat, Scopes.PROFILE, ((Integer) pairA.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.a);
        mediaFormat.setInteger("max-height", aVar.b);
        rd.a(mediaFormat, "max-input-size", aVar.c);
        if (xp.a >= 23) {
            mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            a(mediaFormat, i);
        }
        return mediaFormat;
    }

    @Override // com.applovin.impl.kd
    protected void a(o5 o5Var) {
        if (this.R0) {
            ByteBuffer byteBuffer = (ByteBuffer) b1.a(o5Var.g);
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4 && b4 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    a(I(), bArr);
                }
            }
        }
    }

    @Override // com.applovin.impl.e2, com.applovin.impl.rh.b
    public void a(int i, Object obj) throws z7 {
        if (i == 1) {
            a(obj);
            return;
        }
        if (i == 7) {
            this.r1 = (uq) obj;
            return;
        }
        if (i == 10) {
            int iIntValue = ((Integer) obj).intValue();
            if (this.p1 != iIntValue) {
                this.p1 = iIntValue;
                if (this.o1) {
                    U();
                    return;
                }
                return;
            }
            return;
        }
        if (i != 4) {
            if (i != 5) {
                super.a(i, obj);
                return;
            } else {
                this.K0.a(((Integer) obj).intValue());
                return;
            }
        }
        this.V0 = ((Integer) obj).intValue();
        gd gdVarI = I();
        if (gdVarI != null) {
            gdVarI.c(this.V0);
        }
    }

    private void a(long j, long j2, e9 e9Var) {
        uq uqVar = this.r1;
        if (uqVar != null) {
            uqVar.a(j, j2, e9Var, L());
        }
    }

    @Override // com.applovin.impl.kd
    protected void a(Exception exc) {
        oc.a("MediaCodecVideoRenderer", "Video codec error", exc);
        this.L0.b(exc);
    }

    @Override // com.applovin.impl.kd
    protected void a(String str, long j, long j2) {
        this.L0.a(str, j, j2);
        this.Q0 = h(str);
        this.R0 = ((jd) b1.a(J())).b();
        if (xp.a < 23 || !this.o1) {
            return;
        }
        this.q1 = new b((gd) b1.a(I()));
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void a(boolean z, boolean z2) {
        super.a(z, z2);
        boolean z3 = q().a;
        b1.b((z3 && this.p1 == 0) ? false : true);
        if (this.o1 != z3) {
            this.o1 = z3;
            U();
        }
        this.L0.b(this.E0);
        this.K0.c();
        this.X0 = z2;
        this.Y0 = false;
    }

    @Override // com.applovin.impl.kd
    protected p5 a(f9 f9Var) throws z7 {
        p5 p5VarA = super.a(f9Var);
        this.L0.a(f9Var.b, p5VarA);
        return p5VarA;
    }

    @Override // com.applovin.impl.kd
    protected void a(e9 e9Var, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        gd gdVarI = I();
        if (gdVarI != null) {
            gdVarI.c(this.V0);
        }
        if (this.o1) {
            this.j1 = e9Var.r;
            this.k1 = e9Var.s;
        } else {
            b1.a(mediaFormat);
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            if (z) {
                integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
            } else {
                integer = mediaFormat.getInteger("width");
            }
            this.j1 = integer;
            if (z) {
                integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            this.k1 = integer2;
        }
        float f = e9Var.v;
        this.m1 = f;
        if (xp.a >= 21) {
            int i = e9Var.u;
            if (i == 90 || i == 270) {
                int i2 = this.j1;
                this.j1 = this.k1;
                this.k1 = i2;
                this.m1 = 1.0f / f;
            }
        } else {
            this.l1 = e9Var.u;
        }
        this.K0.a(e9Var.t);
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void a(long j, boolean z) throws z7 {
        super.a(j, z);
        c0();
        this.K0.d();
        this.f1 = -9223372036854775807L;
        this.Z0 = -9223372036854775807L;
        this.d1 = 0;
        if (z) {
            n0();
        } else {
            this.a1 = -9223372036854775807L;
        }
    }

    @Override // com.applovin.impl.kd
    protected boolean a(long j, long j2, gd gdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, e9 e9Var) {
        b1.a(gdVar);
        if (this.Z0 == -9223372036854775807L) {
            this.Z0 = j;
        }
        if (j3 != this.f1) {
            this.K0.b(j3);
            this.f1 = j3;
        }
        long jM = M();
        long j4 = j3 - jM;
        if (z && !z2) {
            c(gdVar, i, j4);
            return true;
        }
        double dN = N();
        boolean z3 = b() == 2;
        long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j5 = (long) ((j3 - j) / dN);
        if (z3) {
            j5 -= jElapsedRealtime - j2;
        }
        if (this.S0 == this.T0) {
            if (!g(j5)) {
                return false;
            }
            c(gdVar, i, j4);
            j(j5);
            return true;
        }
        long j6 = jElapsedRealtime - this.g1;
        boolean z4 = this.Y0 ? !this.W0 : z3 || this.X0;
        if (this.a1 == -9223372036854775807L && j >= jM && (z4 || (z3 && d(j5, j6)))) {
            long jNanoTime = System.nanoTime();
            a(j4, jNanoTime, e9Var);
            if (xp.a >= 21) {
                a(gdVar, i, j4, jNanoTime);
            } else {
                b(gdVar, i, j4);
            }
            j(j5);
            return true;
        }
        if (z3 && j != this.Z0) {
            long jNanoTime2 = System.nanoTime();
            long jA = this.K0.a((j5 * 1000) + jNanoTime2);
            long j7 = (jA - jNanoTime2) / 1000;
            boolean z5 = this.a1 != -9223372036854775807L;
            if (a(j7, j2, z2) && b(j, z5)) {
                return false;
            }
            if (b(j7, j2, z2)) {
                if (z5) {
                    c(gdVar, i, j4);
                } else {
                    a(gdVar, i, j4);
                }
                j(j7);
                return true;
            }
            if (xp.a >= 21) {
                if (j7 < 50000) {
                    a(j4, jA, e9Var);
                    a(gdVar, i, j4, jA);
                    j(j7);
                    return true;
                }
            } else if (j7 < WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                if (j7 > 11000) {
                    try {
                        Thread.sleep((j7 - WorkRequest.MIN_BACKOFF_MILLIS) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                a(j4, jA, e9Var);
                b(gdVar, i, j4);
                j(j7);
                return true;
            }
        }
        return false;
    }

    protected void a(gd gdVar, int i, long j, long j2) {
        j0();
        ko.a("releaseOutputBuffer");
        gdVar.a(i, j2);
        ko.a();
        this.g1 = SystemClock.elapsedRealtime() * 1000;
        this.E0.e++;
        this.d1 = 0;
        h0();
    }

    private static void a(gd gdVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        gdVar.a(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.applovin.impl.vq] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.applovin.impl.e2, com.applovin.impl.kd, com.applovin.impl.od] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.applovin.impl.g7] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void a(Object obj) throws z7 {
        ?? A;
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            A = 0;
        }
        if (A == 0) {
            g7 g7Var = this.T0;
            if (g7Var != null) {
                A = surface;
                A = g7Var;
            } else {
                jd jdVarJ = J();
                if (jdVarJ != null && c(jdVarJ)) {
                    A = surface;
                    A = g7.a(this.J0, jdVarJ.g);
                    this.T0 = A;
                }
            }
        }
        A = surface;
        A = surface;
        A = surface;
        if (this.S0 != A) {
            this.S0 = A;
            this.K0.a(A);
            this.U0 = false;
            int iB = b();
            gd gdVarI = I();
            if (gdVarI != null) {
                if (xp.a >= 23 && A != 0 && !this.Q0) {
                    a(gdVarI, A);
                } else {
                    U();
                    P();
                }
            }
            if (A != 0 && A != this.T0) {
                l0();
                c0();
                if (iB == 2) {
                    n0();
                    return;
                }
                return;
            }
            d0();
            c0();
            return;
        }
        if (A == 0 || A == this.T0) {
            return;
        }
        l0();
        k0();
    }

    protected void a(gd gdVar, Surface surface) {
        gdVar.a(surface);
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2, com.applovin.impl.qi
    public void a(float f, float f2) throws z7 {
        super.a(f, f2);
        this.K0.b(f);
    }

    protected boolean a(long j, long j2, boolean z) {
        return h(j) && !z;
    }

    @Override // com.applovin.impl.kd
    protected int a(ld ldVar, e9 e9Var) {
        int i = 0;
        if (!hf.i(e9Var.m)) {
            return ri.CC.a(0);
        }
        boolean z = e9Var.p != null;
        List listA = a(ldVar, e9Var, z, false);
        if (z && listA.isEmpty()) {
            listA = a(ldVar, e9Var, false, false);
        }
        if (listA.isEmpty()) {
            return ri.CC.a(1);
        }
        if (!kd.d(e9Var)) {
            return ri.CC.a(2);
        }
        jd jdVar = (jd) listA.get(0);
        boolean zB = jdVar.b(e9Var);
        int i2 = jdVar.c(e9Var) ? 16 : 8;
        if (zB) {
            List listA2 = a(ldVar, e9Var, z, true);
            if (!listA2.isEmpty()) {
                jd jdVar2 = (jd) listA2.get(0);
                if (jdVar2.b(e9Var) && jdVar2.c(e9Var)) {
                    i = 32;
                }
            }
        }
        return ri.CC.a(zB ? 4 : 3, i2, i);
    }

    @Override // com.applovin.impl.kd
    protected id a(Throwable th, jd jdVar) {
        return new nd(th, jdVar, this.S0);
    }
}
