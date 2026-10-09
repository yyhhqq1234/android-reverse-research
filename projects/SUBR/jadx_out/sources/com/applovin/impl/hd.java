package com.applovin.impl;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
public class hd extends kd implements fd {
    private final Context J0;
    private final q1.a K0;
    private final r1 L0;
    private int M0;
    private boolean N0;
    private e9 O0;
    private long P0;
    private boolean Q0;
    private boolean R0;
    private boolean S0;
    private boolean T0;
    private qi.a U0;

    private static boolean c0() {
        if (xp.a == 23) {
            String str = xp.d;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private static boolean h(String str) {
        if (xp.a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(xp.c)) {
            String str2 = xp.b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    @Override // com.applovin.impl.qi, com.applovin.impl.ri
    public String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.applovin.impl.e2, com.applovin.impl.qi
    public fd l() {
        return this;
    }

    public hd(Context context, gd.b bVar, ld ldVar, boolean z, Handler handler, q1 q1Var, r1 r1Var) {
        super(1, bVar, ldVar, z, 44100.0f);
        this.J0 = context.getApplicationContext();
        this.L0 = r1Var;
        this.K0 = new q1.a(handler, q1Var);
        r1Var.a(new b());
    }

    @Override // com.applovin.impl.kd
    protected void g(String str) {
        this.K0.a(str);
    }

    public hd(Context context, ld ldVar, boolean z, Handler handler, q1 q1Var, r1 r1Var) {
        this(context, gd.b.a, ldVar, z, handler, q1Var, r1Var);
    }

    @Override // com.applovin.impl.kd
    protected p5 a(jd jdVar, e9 e9Var, e9 e9Var2) {
        p5 p5VarA = jdVar.a(e9Var, e9Var2);
        int i = p5VarA.e;
        if (a(jdVar, e9Var2) > this.M0) {
            i |= 64;
        }
        int i2 = i;
        return new p5(jdVar.a, e9Var, e9Var2, i2 != 0 ? 0 : p5VarA.d, i2);
    }

    protected void d0() {
        this.R0 = true;
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void x() {
        super.x();
        this.L0.j();
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void y() {
        e0();
        this.L0.pause();
        super.y();
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void v() {
        this.S0 = true;
        try {
            this.L0.b();
            try {
                super.v();
            } finally {
                this.K0.a(this.E0);
            }
        } catch (Throwable th) {
            try {
                super.v();
                throw th;
            } finally {
                this.K0.a(this.E0);
            }
        }
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void w() {
        try {
            super.w();
        } finally {
            if (this.S0) {
                this.S0 = false;
                this.L0.reset();
            }
        }
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.qi
    public boolean c() {
        return super.c() && this.L0.c();
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.qi
    public boolean d() {
        return this.L0.g() || super.d();
    }

    @Override // com.applovin.impl.fd
    public long p() {
        if (b() == 2) {
            e0();
        }
        return this.P0;
    }

    @Override // com.applovin.impl.kd
    protected void Q() {
        super.Q();
        this.L0.i();
    }

    @Override // com.applovin.impl.kd
    protected void V() throws z7 {
        try {
            this.L0.f();
        } catch (r1.e e) {
            throw a(e, e.c, e.b, IronSourceConstants.errorCode_isReadyException);
        }
    }

    @Override // com.applovin.impl.kd
    protected void b(o5 o5Var) {
        if (!this.Q0 || o5Var.d()) {
            return;
        }
        if (Math.abs(o5Var.f - this.P0) > 500000) {
            this.P0 = o5Var.f;
        }
        this.Q0 = false;
    }

    private void e0() {
        long jA = this.L0.a(c());
        if (jA != Long.MIN_VALUE) {
            if (!this.R0) {
                jA = Math.max(this.P0, jA);
            }
            this.P0 = jA;
            this.R0 = false;
        }
    }

    private final class b implements r1.c {
        private b() {
        }

        @Override // com.applovin.impl.r1.c
        public void b(long j) {
            if (hd.this.U0 != null) {
                hd.this.U0.a(j);
            }
        }

        @Override // com.applovin.impl.r1.c
        public void a(Exception exc) {
            oc.a("MediaCodecAudioRenderer", "Audio sink error", exc);
            hd.this.K0.b(exc);
        }

        @Override // com.applovin.impl.r1.c
        public void b() {
            hd.this.d0();
        }

        @Override // com.applovin.impl.r1.c
        public void a() {
            if (hd.this.U0 != null) {
                hd.this.U0.a();
            }
        }

        @Override // com.applovin.impl.r1.c
        public void a(long j) {
            hd.this.K0.b(j);
        }

        @Override // com.applovin.impl.r1.c
        public void a(boolean z) {
            hd.this.K0.b(z);
        }

        @Override // com.applovin.impl.r1.c
        public void a(int i, long j, long j2) {
            hd.this.K0.b(i, j, j2);
        }
    }

    @Override // com.applovin.impl.kd
    protected boolean c(e9 e9Var) {
        return this.L0.a(e9Var);
    }

    private int a(jd jdVar, e9 e9Var) {
        int i;
        if (!"OMX.google.raw.decoder".equals(jdVar.a) || (i = xp.a) >= 24 || (i == 23 && xp.d(this.J0))) {
            return e9Var.n;
        }
        return -1;
    }

    protected int a(jd jdVar, e9 e9Var, e9[] e9VarArr) {
        int iA = a(jdVar, e9Var);
        if (e9VarArr.length == 1) {
            return iA;
        }
        for (e9 e9Var2 : e9VarArr) {
            if (jdVar.a(e9Var, e9Var2).d != 0) {
                iA = Math.max(iA, a(jdVar, e9Var2));
            }
        }
        return iA;
    }

    @Override // com.applovin.impl.kd
    protected float a(float f, e9 e9Var, e9[] e9VarArr) {
        int iMax = -1;
        for (e9 e9Var2 : e9VarArr) {
            int i = e9Var2.A;
            if (i != -1) {
                iMax = Math.max(iMax, i);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f * iMax;
    }

    @Override // com.applovin.impl.kd
    protected List a(ld ldVar, e9 e9Var, boolean z) {
        jd jdVarA;
        String str = e9Var.m;
        if (str == null) {
            return Collections.emptyList();
        }
        if (this.L0.a(e9Var) && (jdVarA = md.a()) != null) {
            return Collections.singletonList(jdVarA);
        }
        List listA = md.a(ldVar.a(str, z, false), e9Var);
        if ("audio/eac3-joc".equals(str)) {
            ArrayList arrayList = new ArrayList(listA);
            arrayList.addAll(ldVar.a("audio/eac3", z, false));
            listA = arrayList;
        }
        return Collections.unmodifiableList(listA);
    }

    @Override // com.applovin.impl.kd
    protected gd.a a(jd jdVar, e9 e9Var, MediaCrypto mediaCrypto, float f) {
        this.M0 = a(jdVar, e9Var, t());
        this.N0 = h(jdVar.a);
        MediaFormat mediaFormatA = a(e9Var, jdVar.c, this.M0, f);
        this.O0 = (!"audio/raw".equals(jdVar.b) || "audio/raw".equals(e9Var.m)) ? null : e9Var;
        return gd.a.a(jdVar, mediaFormatA, e9Var, mediaCrypto);
    }

    @Override // com.applovin.impl.fd
    public ph a() {
        return this.L0.a();
    }

    @Override // com.applovin.impl.e2, com.applovin.impl.rh.b
    public void a(int i, Object obj) {
        if (i == 2) {
            this.L0.a(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            this.L0.a((l1) obj);
            return;
        }
        if (i != 6) {
            switch (i) {
                case 9:
                    this.L0.b(((Boolean) obj).booleanValue());
                    break;
                case 10:
                    this.L0.a(((Integer) obj).intValue());
                    break;
                case 11:
                    this.U0 = (qi.a) obj;
                    break;
                default:
                    super.a(i, obj);
                    break;
            }
            return;
        }
        this.L0.a((v1) obj);
    }

    @Override // com.applovin.impl.kd
    protected void a(Exception exc) {
        oc.a("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.K0.a(exc);
    }

    @Override // com.applovin.impl.kd
    protected void a(String str, long j, long j2) {
        this.K0.a(str, j, j2);
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void a(boolean z, boolean z2) {
        super.a(z, z2);
        this.K0.b(this.E0);
        if (q().a) {
            this.L0.e();
        } else {
            this.L0.d();
        }
    }

    @Override // com.applovin.impl.kd
    protected p5 a(f9 f9Var) throws z7 {
        p5 p5VarA = super.a(f9Var);
        this.K0.a(f9Var.b, p5VarA);
        return p5VarA;
    }

    @Override // com.applovin.impl.kd
    protected void a(e9 e9Var, MediaFormat mediaFormat) throws z7 {
        int iD;
        int i;
        e9 e9Var2 = this.O0;
        int[] iArr = null;
        if (e9Var2 != null) {
            e9Var = e9Var2;
        } else if (I() != null) {
            if ("audio/raw".equals(e9Var.m)) {
                iD = e9Var.B;
            } else if (xp.a >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                iD = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                iD = xp.d(mediaFormat.getInteger("v-bits-per-sample"));
            } else {
                iD = "audio/raw".equals(e9Var.m) ? e9Var.B : 2;
            }
            e9 e9VarA = new e9.b().f("audio/raw").j(iD).e(e9Var.C).f(e9Var.D).c(mediaFormat.getInteger("channel-count")).n(mediaFormat.getInteger("sample-rate")).a();
            if (this.N0 && e9VarA.z == 6 && (i = e9Var.z) < 6) {
                int[] iArr2 = new int[i];
                for (int i2 = 0; i2 < e9Var.z; i2++) {
                    iArr2[i2] = i2;
                }
                iArr = iArr2;
            }
            e9Var = e9VarA;
        }
        try {
            this.L0.a(e9Var, 0, iArr);
        } catch (r1.a e) {
            throw a(e, e.a, IronSourceConstants.errorCode_biddingDataException);
        }
    }

    @Override // com.applovin.impl.kd, com.applovin.impl.e2
    protected void a(long j, boolean z) throws z7 {
        super.a(j, z);
        if (this.T0) {
            this.L0.h();
        } else {
            this.L0.b();
        }
        this.P0 = j;
        this.Q0 = true;
        this.R0 = true;
    }

    @Override // com.applovin.impl.kd
    protected boolean a(long j, long j2, gd gdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, e9 e9Var) throws z7 {
        b1.a(byteBuffer);
        if (this.O0 != null && (i2 & 2) != 0) {
            ((gd) b1.a(gdVar)).a(i, false);
            return true;
        }
        if (z) {
            if (gdVar != null) {
                gdVar.a(i, false);
            }
            this.E0.f += i3;
            this.L0.i();
            return true;
        }
        try {
            if (!this.L0.a(byteBuffer, j3, i3)) {
                return false;
            }
            if (gdVar != null) {
                gdVar.a(i, false);
            }
            this.E0.e += i3;
            return true;
        } catch (r1.b e) {
            throw a(e, e.c, e.b, IronSourceConstants.errorCode_biddingDataException);
        } catch (r1.e e2) {
            throw a(e2, e9Var, e2.b, IronSourceConstants.errorCode_isReadyException);
        }
    }

    @Override // com.applovin.impl.fd
    public void a(ph phVar) {
        this.L0.a(phVar);
    }

    @Override // com.applovin.impl.kd
    protected int a(ld ldVar, e9 e9Var) {
        if (!hf.g(e9Var.m)) {
            return ri.CC.a(0);
        }
        int i = xp.a >= 21 ? 32 : 0;
        boolean z = e9Var.F != 0;
        boolean zD = kd.d(e9Var);
        int i2 = 8;
        if (zD && this.L0.a(e9Var) && (!z || md.a() != null)) {
            return ri.CC.a(4, 8, i);
        }
        if ("audio/raw".equals(e9Var.m) && !this.L0.a(e9Var)) {
            return ri.CC.a(1);
        }
        if (!this.L0.a(xp.b(2, e9Var.z, e9Var.A))) {
            return ri.CC.a(1);
        }
        List listA = a(ldVar, e9Var, false);
        if (listA.isEmpty()) {
            return ri.CC.a(1);
        }
        if (!zD) {
            return ri.CC.a(2);
        }
        jd jdVar = (jd) listA.get(0);
        boolean zB = jdVar.b(e9Var);
        if (zB && jdVar.c(e9Var)) {
            i2 = 16;
        }
        return ri.CC.a(zB ? 4 : 3, i2, i);
    }

    protected MediaFormat a(e9 e9Var, String str, int i, float f) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", e9Var.z);
        mediaFormat.setInteger("sample-rate", e9Var.A);
        rd.a(mediaFormat, e9Var.o);
        rd.a(mediaFormat, "max-input-size", i);
        int i2 = xp.a;
        if (i2 >= 23) {
            mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
            if (f != -1.0f && !c0()) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (i2 <= 28 && "audio/ac4".equals(e9Var.m)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i2 >= 24 && this.L0.b(xp.b(4, e9Var.z, e9Var.A)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        return mediaFormat;
    }
}
