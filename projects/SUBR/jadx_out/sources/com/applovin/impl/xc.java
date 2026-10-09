package com.applovin.impl;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.work.WorkRequest;
import androidx.work.impl.Scheduler;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import com.google.common.primitives.Ints;
import com.google.firebase.FirebaseError;
import com.unity3d.services.core.device.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class xc implements j8 {
    public static final n8 b0 = new n8() { // from class: com.applovin.impl.xc$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return xc.g();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private static final byte[] c0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] d0 = xp.c("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] e0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final UUID f0 = new UUID(72057594037932032L, -9223371306706625679L);
    private static final Map g0;
    private long A;
    private long B;
    private qc C;
    private qc D;
    private boolean E;
    private boolean F;
    private int G;
    private long H;
    private long I;
    private int J;
    private int K;
    private int[] L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private int R;
    private int S;
    private int T;
    private boolean U;
    private boolean V;
    private boolean W;
    private int X;
    private byte Y;
    private boolean Z;
    private final o7 a;
    private l8 a0;
    private final zp b;
    private final SparseArray c;
    private final boolean d;
    private final ah e;
    private final ah f;
    private final ah g;
    private final ah h;
    private final ah i;
    private final ah j;
    private final ah k;
    private final ah l;
    private final ah m;
    private final ah n;
    private ByteBuffer o;
    private long p;
    private long q;
    private long r;
    private long s;
    private long t;
    private c u;
    private boolean v;
    private int w;
    private long x;
    private boolean y;
    private long z;

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        g0 = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] g() {
        return new j8[]{new xc()};
    }

    @Override // com.applovin.impl.j8
    public final void a() {
    }

    protected int e(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case FirebaseError.ERROR_WEAK_PASSWORD /* 17026 */:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    protected boolean f(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    public xc() {
        this(0);
    }

    protected void c(int i) throws ch {
        e();
        if (i == 160) {
            if (this.G != 2) {
                return;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.K; i3++) {
                i2 += this.L[i3];
            }
            c cVar = (c) this.c.get(this.M);
            cVar.a();
            for (int i4 = 0; i4 < this.K; i4++) {
                long j = ((long) ((cVar.e * i4) / 1000)) + this.H;
                int i5 = this.O;
                if (i4 == 0 && !this.Q) {
                    i5 |= 1;
                }
                int i6 = this.L[i4];
                i2 -= i6;
                a(cVar, j, i5, i6, i2);
            }
            this.G = 0;
            return;
        }
        if (i == 174) {
            c cVar2 = (c) b1.b(this.u);
            String str = cVar2.b;
            if (str != null) {
                if (a(str)) {
                    cVar2.a(this.a0, cVar2.c);
                    this.c.put(cVar2.c, cVar2);
                }
                this.u = null;
                return;
            }
            throw ch.a("CodecId is missing in TrackEntry element", null);
        }
        if (i == 19899) {
            int i7 = this.w;
            if (i7 != -1) {
                long j2 = this.x;
                if (j2 != -1) {
                    if (i7 == 475249515) {
                        this.z = j2;
                        return;
                    }
                    return;
                }
            }
            throw ch.a("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i == 25152) {
            b(i);
            c cVar3 = this.u;
            if (cVar3.h) {
                if (cVar3.j != null) {
                    cVar3.l = new x6(new x6.b(t2.a, MimeTypes.VIDEO_WEBM, this.u.j.b));
                    return;
                }
                throw ch.a("Encrypted Track found but ContentEncKeyID was not found", null);
            }
            return;
        }
        if (i == 28032) {
            b(i);
            c cVar4 = this.u;
            if (cVar4.h && cVar4.i != null) {
                throw ch.a("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i == 357149030) {
            if (this.r == -9223372036854775807L) {
                this.r = 1000000L;
            }
            long j3 = this.s;
            if (j3 != -9223372036854775807L) {
                this.t = a(j3);
                return;
            }
            return;
        }
        if (i == 374648427) {
            if (this.c.size() != 0) {
                this.a0.c();
                return;
            }
            throw ch.a("No valid tracks were found", null);
        }
        if (i != 475249515) {
            return;
        }
        if (!this.v) {
            this.a0.a(a(this.C, this.D));
            this.v = true;
        }
        this.C = null;
        this.D = null;
    }

    public xc(int i) {
        this(new z5(), i);
    }

    xc(o7 o7Var, int i) {
        this.q = -1L;
        this.r = -9223372036854775807L;
        this.s = -9223372036854775807L;
        this.t = -9223372036854775807L;
        this.z = -1L;
        this.A = -1L;
        this.B = -9223372036854775807L;
        this.a = o7Var;
        o7Var.a(new b());
        this.d = (i & 1) == 0;
        this.b = new zp();
        this.c = new SparseArray();
        this.g = new ah(4);
        this.h = new ah(ByteBuffer.allocate(4).putInt(-1).array());
        this.i = new ah(4);
        this.e = new ah(yf.a);
        this.f = new ah(4);
        this.j = new ah();
        this.k = new ah();
        this.l = new ah(8);
        this.m = new ah();
        this.n = new ah();
        this.L = new int[1];
    }

    private void b(int i) throws ch {
        if (this.u != null) {
            return;
        }
        throw ch.a("Element " + i + " must be in a TrackEntry", null);
    }

    private void a(int i) throws ch {
        if (this.C == null || this.D == null) {
            throw ch.a("Element " + i + " must be in a Cues", null);
        }
    }

    private c d(int i) throws ch {
        b(i);
        return this.u;
    }

    private int f() {
        int i = this.S;
        h();
        return i;
    }

    private void h() {
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = 0;
        this.Y = (byte) 0;
        this.Z = false;
        this.j.d(0);
    }

    private void e() {
        b1.b(this.a0);
    }

    private final class b implements n7 {
        private b() {
        }

        @Override // com.applovin.impl.n7
        public int b(int i) {
            return xc.this.e(i);
        }

        @Override // com.applovin.impl.n7
        public boolean c(int i) {
            return xc.this.f(i);
        }

        @Override // com.applovin.impl.n7
        public void a(int i, int i2, k8 k8Var) throws ch {
            xc.this.a(i, i2, k8Var);
        }

        @Override // com.applovin.impl.n7
        public void a(int i) throws ch {
            xc.this.c(i);
        }

        @Override // com.applovin.impl.n7
        public void a(int i, double d) {
            xc.this.a(i, d);
        }

        @Override // com.applovin.impl.n7
        public void a(int i, long j) throws ch {
            xc.this.a(i, j);
        }

        @Override // com.applovin.impl.n7
        public void a(int i, long j, long j2) throws ch {
            xc.this.a(i, j, j2);
        }

        @Override // com.applovin.impl.n7
        public void a(int i, String str) throws ch {
            xc.this.a(i, str);
        }
    }

    private static final class d {
        private final byte[] a = new byte[10];
        private boolean b;
        private int c;
        private long d;
        private int e;
        private int f;
        private int g;

        public void a(c cVar) {
            if (this.c > 0) {
                cVar.X.a(this.d, this.e, this.f, this.g, cVar.j);
                this.c = 0;
            }
        }

        public void a() {
            this.b = false;
            this.c = 0;
        }

        public void a(c cVar, long j, int i, int i2, int i3) {
            if (this.b) {
                int i4 = this.c;
                int i5 = i4 + 1;
                this.c = i5;
                if (i4 == 0) {
                    this.d = j;
                    this.e = i;
                    this.f = 0;
                }
                this.f += i2;
                this.g = i3;
                if (i5 >= 16) {
                    a(cVar);
                }
            }
        }

        public void a(k8 k8Var) {
            if (this.b) {
                return;
            }
            k8Var.c(this.a, 0, 10);
            k8Var.b();
            if (k.b(this.a) == 0) {
                return;
            }
            this.b = true;
        }
    }

    private static final class c {
        public int A;
        public int B;
        public int C;
        public float D;
        public float E;
        public float F;
        public float G;
        public float H;
        public float I;
        public float J;
        public float K;
        public float L;
        public float M;
        public byte[] N;
        public int O;
        public int P;
        public int Q;
        public long R;
        public long S;
        public d T;
        public boolean U;
        public boolean V;
        private String W;
        public qo X;
        public int Y;
        public String a;
        public String b;
        public int c;
        public int d;
        public int e;
        public int f;
        private int g;
        public boolean h;
        public byte[] i;
        public qo.a j;
        public byte[] k;
        public x6 l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public float s;
        public float t;
        public float u;
        public byte[] v;
        public int w;
        public boolean x;
        public int y;
        public int z;

        private c() {
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = 0;
            this.r = -1;
            this.s = 0.0f;
            this.t = 0.0f;
            this.u = 0.0f;
            this.v = null;
            this.w = -1;
            this.x = false;
            this.y = -1;
            this.z = -1;
            this.A = -1;
            this.B = 1000;
            this.C = Scheduler.MAX_GREEDY_SCHEDULER_LIMIT;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = -1.0f;
            this.L = -1.0f;
            this.M = -1.0f;
            this.O = 1;
            this.P = -1;
            this.Q = ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED;
            this.R = 0L;
            this.S = 0L;
            this.V = true;
            this.W = "eng";
        }

        public void c() {
            d dVar = this.T;
            if (dVar != null) {
                dVar.a(this);
            }
        }

        public void d() {
            d dVar = this.T;
            if (dVar != null) {
                dVar.a();
            }
        }

        private byte[] b() {
            if (this.D == -1.0f || this.E == -1.0f || this.F == -1.0f || this.G == -1.0f || this.H == -1.0f || this.I == -1.0f || this.J == -1.0f || this.K == -1.0f || this.L == -1.0f || this.M == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.D * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.E * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.F * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.G * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.H * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.I * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.J * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.K * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.L + 0.5f));
            byteBufferOrder.putShort((short) (this.M + 0.5f));
            byteBufferOrder.putShort((short) this.B);
            byteBufferOrder.putShort((short) this.C);
            return bArr;
        }

        private static boolean b(ah ahVar) throws ch {
            try {
                int iR = ahVar.r();
                if (iR == 1) {
                    return true;
                }
                if (iR != 65534) {
                    return false;
                }
                ahVar.f(24);
                return ahVar.s() == xc.f0.getMostSignificantBits() && ahVar.s() == xc.f0.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ch.a("Error parsing MS/ACM codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            b1.a(this.X);
        }

        private byte[] a(String str) throws ch {
            byte[] bArr = this.k;
            if (bArr != null) {
                return bArr;
            }
            throw ch.a("Missing CodecPrivate for codec " + str, null);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:197:0x041f  */
        /* JADX WARN: Code duplicated, block: B:202:0x0434  */
        /* JADX WARN: Code duplicated, block: B:203:0x0436  */
        /* JADX WARN: Code duplicated, block: B:206:0x0443  */
        /* JADX WARN: Code duplicated, block: B:207:0x0455  */
        /* JADX WARN: Code duplicated, block: B:209:0x045b  */
        /* JADX WARN: Code duplicated, block: B:211:0x045f  */
        /* JADX WARN: Code duplicated, block: B:213:0x0464  */
        /* JADX WARN: Code duplicated, block: B:216:0x046c  */
        /* JADX WARN: Code duplicated, block: B:218:0x0471  */
        /* JADX WARN: Code duplicated, block: B:221:0x0476  */
        /* JADX WARN: Code duplicated, block: B:224:0x0486  */
        /* JADX WARN: Code duplicated, block: B:227:0x048c  */
        /* JADX WARN: Code duplicated, block: B:230:0x049f  */
        /* JADX WARN: Code duplicated, block: B:235:0x04bf  */
        /* JADX WARN: Code duplicated, block: B:254:0x050b  */
        /* JADX WARN: Code duplicated, block: B:256:0x0531  */
        /* JADX WARN: Code duplicated, block: B:258:0x0537  */
        /* JADX WARN: Code duplicated, block: B:271:0x055d  */
        /* JADX WARN: Code duplicated, block: B:4:0x0018  */
        public void a(l8 l8Var, int i) throws ch {
            byte b;
            List listSingletonList;
            String str;
            String str2;
            String str3;
            int i2;
            List list;
            String str4;
            String str5;
            String str6;
            byte[] bArr;
            int i3;
            e9.b bVar;
            int iIntValue;
            int i4;
            float f;
            int i5;
            int i6;
            int i7;
            w6 w6VarA;
            String str7 = this.b;
            str7.hashCode();
            str7.hashCode();
            int iD = 4;
            int i8 = 3;
            int i9 = 0;
            switch (str7) {
                case "V_MPEG4/ISO/AP":
                    b = 0;
                    break;
                case "V_MPEG4/ISO/SP":
                    b = 1;
                    break;
                case "A_MS/ACM":
                    b = 2;
                    break;
                case "A_TRUEHD":
                    b = 3;
                    break;
                case "A_VORBIS":
                    b = 4;
                    break;
                case "A_MPEG/L2":
                    b = 5;
                    break;
                case "A_MPEG/L3":
                    b = 6;
                    break;
                case "V_MS/VFW/FOURCC":
                    b = 7;
                    break;
                case "S_DVBSUB":
                    b = 8;
                    break;
                case "V_MPEG4/ISO/ASP":
                    b = 9;
                    break;
                case "V_MPEG4/ISO/AVC":
                    b = 10;
                    break;
                case "S_VOBSUB":
                    b = 11;
                    break;
                case "A_DTS/LOSSLESS":
                    b = 12;
                    break;
                case "A_AAC":
                    b = 13;
                    break;
                case "A_AC3":
                    b = 14;
                    break;
                case "A_DTS":
                    b = 15;
                    break;
                case "V_AV1":
                    b = 16;
                    break;
                case "V_VP8":
                    b = 17;
                    break;
                case "V_VP9":
                    b = 18;
                    break;
                case "S_HDMV/PGS":
                    b = 19;
                    break;
                case "V_THEORA":
                    b = 20;
                    break;
                case "A_DTS/EXPRESS":
                    b = 21;
                    break;
                case "A_PCM/FLOAT/IEEE":
                    b = 22;
                    break;
                case "A_PCM/INT/BIG":
                    b = 23;
                    break;
                case "A_PCM/INT/LIT":
                    b = 24;
                    break;
                case "S_TEXT/ASS":
                    b = 25;
                    break;
                case "V_MPEGH/ISO/HEVC":
                    b = 26;
                    break;
                case "S_TEXT/UTF8":
                    b = 27;
                    break;
                case "V_MPEG2":
                    b = 28;
                    break;
                case "A_EAC3":
                    b = 29;
                    break;
                case "A_FLAC":
                    b = 30;
                    break;
                case "A_OPUS":
                    b = 31;
                    break;
                default:
                    b = -1;
                    break;
            }
            String str8 = "text/x-ssa";
            String str9 = "audio/raw";
            switch (b) {
                case 0:
                case 1:
                case 9:
                    str8 = "text/x-ssa";
                    byte[] bArr2 = this.k;
                    listSingletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                    str = "video/mp4v-es";
                    iD = -1;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str10 = str5;
                    str3 = str6;
                    str2 = str10;
                    bArr = this.N;
                    if (bArr != null && (w6VarA = w6.a(new ah(bArr))) != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i10 = (z ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue || (i5 = this.p) == iIntValue) {
                            f = -1.0f;
                        } else {
                            f = (this.n * i4) / (this.m * i5);
                        }
                        r3 r3Var = this.x ? new r3(this.y, this.A, this.z, b()) : null;
                        if (this.a != null && xc.g0.containsKey(this.a)) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0 || Float.compare(this.s, 0.0f) != 0 || Float.compare(this.t, 0.0f) != 0) {
                            i9 = iIntValue;
                        } else if (Float.compare(this.u, 0.0f) != 0) {
                            if (Float.compare(this.t, 90.0f) == 0) {
                                i9 = 90;
                            } else if (Float.compare(this.t, -180.0f) == 0 || Float.compare(this.t, 180.0f) == 0) {
                                i9 = 180;
                            } else if (Float.compare(this.t, -90.0f) == 0) {
                                i9 = 270;
                            } else {
                                i9 = iIntValue;
                            }
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2) && !str8.equals(str2) && !"application/vobsub".equals(str2) && !"application/pgs".equals(str2) && !"application/dvbsubs".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null && !xc.g0.containsKey(this.a)) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA = bVar.h(i).f(str2).i(i2).e(this.W).o(i10).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA = l8Var.a(this.c, i8);
                    this.X = qoVarA;
                    qoVarA.a(e9VarA);
                    return;
                case 2:
                    str8 = "text/x-ssa";
                    if (b(new ah(a(this.b)))) {
                        int iD2 = xp.d(this.P);
                        if (iD2 == 0) {
                            oc.d("MatroskaExtractor", "Unsupported PCM bit depth: " + this.P + ". Setting mimeType to audio/x-unknown");
                        } else {
                            iD = iD2;
                        }
                        listSingletonList = null;
                        str = str9;
                        str5 = str;
                        str6 = null;
                        i2 = -1;
                        String str11 = str5;
                        str3 = str6;
                        str2 = str11;
                        bArr = this.N;
                        if (bArr != null) {
                            str3 = w6VarA.c;
                            str2 = "video/dolby-vision";
                        }
                        boolean z2 = this.V;
                        if (this.U) {
                            i3 = 2;
                        } else {
                            i3 = 0;
                        }
                        int i11 = (z2 ? 1 : 0) | i3;
                        bVar = new e9.b();
                        if (hf.g(str2)) {
                            bVar.c(this.O).n(this.Q).j(iD);
                            i8 = 1;
                        } else if (hf.i(str2)) {
                            if (this.q == 0) {
                                i6 = this.o;
                                iIntValue = -1;
                                if (i6 == -1) {
                                    i6 = this.m;
                                }
                                this.o = i6;
                                i7 = this.p;
                                if (i7 == -1) {
                                    i7 = this.n;
                                }
                                this.p = i7;
                            } else {
                                iIntValue = -1;
                            }
                            i4 = this.o;
                            if (i4 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.x) {
                            }
                            if (this.a != null) {
                                iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                            }
                            if (this.r == 0) {
                                i9 = iIntValue;
                            } else {
                                i9 = iIntValue;
                            }
                            bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                            i8 = 2;
                        } else if (!"application/x-subrip".equals(str2)) {
                            throw ch.a("Unexpected MIME type.", null);
                        }
                        if (this.a != null) {
                            bVar.d(this.a);
                        }
                        e9 e9VarA2 = bVar.h(i).f(str2).i(i2).e(this.W).o(i11).a(listSingletonList).a(str3).a(this.l).a();
                        qo qoVarA2 = l8Var.a(this.c, i8);
                        this.X = qoVarA2;
                        qoVarA2.a(e9VarA2);
                        return;
                    }
                    oc.d("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                    str9 = "audio/x-unknown";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str12 = str5;
                    str3 = str6;
                    str2 = str12;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z3 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i12 = (z3 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA3 = bVar.h(i).f(str2).i(i2).e(this.W).o(i12).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA3 = l8Var.a(this.c, i8);
                    this.X = qoVarA3;
                    qoVarA3.a(e9VarA3);
                    return;
                case 3:
                    str8 = "text/x-ssa";
                    this.T = new d();
                    str9 = "audio/true-hd";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str13 = str5;
                    str3 = str6;
                    str2 = str13;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z4 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i13 = (z4 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA4 = bVar.h(i).f(str2).i(i2).e(this.W).o(i13).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA4 = l8Var.a(this.c, i8);
                    this.X = qoVarA4;
                    qoVarA4.a(e9VarA4);
                    return;
                case 4:
                    str8 = "text/x-ssa";
                    listSingletonList = a(a(this.b));
                    str2 = "audio/vorbis";
                    str3 = null;
                    i2 = 8192;
                    iD = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z5 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i14 = (z5 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA5 = bVar.h(i).f(str2).i(i2).e(this.W).o(i14).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA5 = l8Var.a(this.c, i8);
                    this.X = qoVarA5;
                    qoVarA5.a(e9VarA5);
                    return;
                case 5:
                    str2 = "audio/mpeg-L2";
                    listSingletonList = null;
                    str3 = null;
                    i2 = 4096;
                    iD = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z6 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i15 = (z6 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA6 = bVar.h(i).f(str2).i(i2).e(this.W).o(i15).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA6 = l8Var.a(this.c, i8);
                    this.X = qoVarA6;
                    qoVarA6.a(e9VarA6);
                    return;
                case 6:
                    str2 = "audio/mpeg";
                    listSingletonList = null;
                    str3 = null;
                    i2 = 4096;
                    iD = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z7 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i16 = (z7 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA7 = bVar.h(i).f(str2).i(i2).e(this.W).o(i16).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA7 = l8Var.a(this.c, i8);
                    this.X = qoVarA7;
                    qoVarA7.a(e9VarA7);
                    return;
                case 7:
                    str8 = "text/x-ssa";
                    Pair pairA = a(new ah(a(this.b)));
                    str = (String) pairA.first;
                    listSingletonList = (List) pairA.second;
                    iD = -1;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str14 = str5;
                    str3 = str6;
                    str2 = str14;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z8 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i17 = (z8 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA8 = bVar.h(i).f(str2).i(i2).e(this.W).o(i17).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA8 = l8Var.a(this.c, i8);
                    this.X = qoVarA8;
                    qoVarA8.a(e9VarA8);
                    return;
                case 8:
                    str8 = "text/x-ssa";
                    byte[] bArr3 = new byte[4];
                    System.arraycopy(a(this.b), 0, bArr3, 0, 4);
                    listSingletonList = db.a(bArr3);
                    str = "application/dvbsubs";
                    iD = -1;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str15 = str5;
                    str3 = str6;
                    str2 = str15;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z9 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i18 = (z9 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA9 = bVar.h(i).f(str2).i(i2).e(this.W).o(i18).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA9 = l8Var.a(this.c, i8);
                    this.X = qoVarA9;
                    qoVarA9.a(e9VarA9);
                    return;
                case 10:
                    w1 w1VarB = w1.b(new ah(a(this.b)));
                    list = w1VarB.a;
                    this.Y = w1VarB.b;
                    str4 = w1VarB.f;
                    str5 = MimeTypes.VIDEO_H264;
                    iD = -1;
                    List list2 = list;
                    str6 = str4;
                    listSingletonList = list2;
                    i2 = -1;
                    String str16 = str5;
                    str3 = str6;
                    str2 = str16;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z10 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i19 = (z10 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA10 = bVar.h(i).f(str2).i(i2).e(this.W).o(i19).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA10 = l8Var.a(this.c, i8);
                    this.X = qoVarA10;
                    qoVarA10.a(e9VarA10);
                    return;
                case 11:
                    str8 = "text/x-ssa";
                    listSingletonList = db.a(a(this.b));
                    str = "application/vobsub";
                    iD = -1;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str17 = str5;
                    str3 = str6;
                    str2 = str17;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z11 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i110 = (z11 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA11 = bVar.h(i).f(str2).i(i2).e(this.W).o(i110).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA11 = l8Var.a(this.c, i8);
                    this.X = qoVarA11;
                    qoVarA11.a(e9VarA11);
                    return;
                case 12:
                    str8 = "text/x-ssa";
                    str9 = "audio/vnd.dts.hd";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str18 = str5;
                    str3 = str6;
                    str2 = str18;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z12 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i111 = (z12 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA12 = bVar.h(i).f(str2).i(i2).e(this.W).o(i111).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA12 = l8Var.a(this.c, i8);
                    this.X = qoVarA12;
                    qoVarA12.a(e9VarA12);
                    return;
                case 13:
                    str8 = "text/x-ssa";
                    listSingletonList = Collections.singletonList(a(this.b));
                    com.applovin.impl.a.b bVarA = com.applovin.impl.a.a(this.k);
                    this.Q = bVarA.a;
                    this.O = bVarA.b;
                    str6 = bVarA.c;
                    str5 = "audio/mp4a-latm";
                    iD = -1;
                    i2 = -1;
                    String str19 = str5;
                    str3 = str6;
                    str2 = str19;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z13 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i112 = (z13 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA13 = bVar.h(i).f(str2).i(i2).e(this.W).o(i112).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA13 = l8Var.a(this.c, i8);
                    this.X = qoVarA13;
                    qoVarA13.a(e9VarA13);
                    return;
                case 14:
                    str8 = "text/x-ssa";
                    str9 = "audio/ac3";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str110 = str5;
                    str3 = str6;
                    str2 = str110;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z14 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i113 = (z14 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA14 = bVar.h(i).f(str2).i(i2).e(this.W).o(i113).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA14 = l8Var.a(this.c, i8);
                    this.X = qoVarA14;
                    qoVarA14.a(e9VarA14);
                    return;
                case 15:
                case 21:
                    str8 = "text/x-ssa";
                    str9 = "audio/vnd.dts";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str111 = str5;
                    str3 = str6;
                    str2 = str111;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z15 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i114 = (z15 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA15 = bVar.h(i).f(str2).i(i2).e(this.W).o(i114).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA15 = l8Var.a(this.c, i8);
                    this.X = qoVarA15;
                    qoVarA15.a(e9VarA15);
                    return;
                case 16:
                    str8 = "text/x-ssa";
                    str9 = MimeTypes.VIDEO_AV1;
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str112 = str5;
                    str3 = str6;
                    str2 = str112;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z16 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i115 = (z16 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA16 = bVar.h(i).f(str2).i(i2).e(this.W).o(i115).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA16 = l8Var.a(this.c, i8);
                    this.X = qoVarA16;
                    qoVarA16.a(e9VarA16);
                    return;
                case 17:
                    str8 = "text/x-ssa";
                    str9 = "video/x-vnd.on2.vp8";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str113 = str5;
                    str3 = str6;
                    str2 = str113;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z17 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i116 = (z17 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA17 = bVar.h(i).f(str2).i(i2).e(this.W).o(i116).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA17 = l8Var.a(this.c, i8);
                    this.X = qoVarA17;
                    qoVarA17.a(e9VarA17);
                    return;
                case 18:
                    str8 = "text/x-ssa";
                    str9 = "video/x-vnd.on2.vp9";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str114 = str5;
                    str3 = str6;
                    str2 = str114;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z18 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i117 = (z18 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA18 = bVar.h(i).f(str2).i(i2).e(this.W).o(i117).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA18 = l8Var.a(this.c, i8);
                    this.X = qoVarA18;
                    qoVarA18.a(e9VarA18);
                    return;
                case 19:
                    str8 = "text/x-ssa";
                    str9 = "application/pgs";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str115 = str5;
                    str3 = str6;
                    str2 = str115;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z19 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i118 = (z19 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA19 = bVar.h(i).f(str2).i(i2).e(this.W).o(i118).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA19 = l8Var.a(this.c, i8);
                    this.X = qoVarA19;
                    qoVarA19.a(e9VarA19);
                    return;
                case 20:
                    str8 = "text/x-ssa";
                    str9 = "video/x-unknown";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str116 = str5;
                    str3 = str6;
                    str2 = str116;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z110 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i119 = (z110 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA110 = bVar.h(i).f(str2).i(i2).e(this.W).o(i119).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA110 = l8Var.a(this.c, i8);
                    this.X = qoVarA110;
                    qoVarA110.a(e9VarA110);
                    return;
                case 22:
                    str8 = "text/x-ssa";
                    if (this.P != 32) {
                        oc.d("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + this.P + ". Setting mimeType to audio/x-unknown");
                        str9 = "audio/x-unknown";
                        iD = -1;
                    }
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str117 = str5;
                    str3 = str6;
                    str2 = str117;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z111 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1110 = (z111 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA111 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1110).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA111 = l8Var.a(this.c, i8);
                    this.X = qoVarA111;
                    qoVarA111.a(e9VarA111);
                    return;
                case 23:
                    str8 = "text/x-ssa";
                    int i20 = this.P;
                    if (i20 == 8) {
                        iD = 3;
                    } else if (i20 == 16) {
                        iD = DriveFile.MODE_READ_ONLY;
                    } else {
                        oc.d("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + this.P + ". Setting mimeType to audio/x-unknown");
                        str9 = "audio/x-unknown";
                        iD = -1;
                    }
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str118 = str5;
                    str3 = str6;
                    str2 = str118;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z112 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1111 = (z112 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA112 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1111).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA112 = l8Var.a(this.c, i8);
                    this.X = qoVarA112;
                    qoVarA112.a(e9VarA112);
                    return;
                case 24:
                    str8 = "text/x-ssa";
                    iD = xp.d(this.P);
                    if (iD == 0) {
                        oc.d("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + this.P + ". Setting mimeType to audio/x-unknown");
                        str9 = "audio/x-unknown";
                        iD = -1;
                    }
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str119 = str5;
                    str3 = str6;
                    str2 = str119;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z113 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1112 = (z113 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA113 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1112).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA113 = l8Var.a(this.c, i8);
                    this.X = qoVarA113;
                    qoVarA113.a(e9VarA113);
                    return;
                case 25:
                    str8 = "text/x-ssa";
                    listSingletonList = db.a(xc.d0, a(this.b));
                    str = str8;
                    iD = -1;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str1110 = str5;
                    str3 = str6;
                    str2 = str1110;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z114 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1113 = (z114 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA114 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1113).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA114 = l8Var.a(this.c, i8);
                    this.X = qoVarA114;
                    qoVarA114.a(e9VarA114);
                    return;
                case 26:
                    na naVarA = na.a(new ah(a(this.b)));
                    list = naVarA.a;
                    this.Y = naVarA.b;
                    str4 = naVarA.c;
                    str5 = MimeTypes.VIDEO_H265;
                    iD = -1;
                    List list3 = list;
                    str6 = str4;
                    listSingletonList = list3;
                    i2 = -1;
                    String str1111 = str5;
                    str3 = str6;
                    str2 = str1111;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z115 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1114 = (z115 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA115 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1114).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA115 = l8Var.a(this.c, i8);
                    this.X = qoVarA115;
                    qoVarA115.a(e9VarA115);
                    return;
                case 27:
                    str8 = "text/x-ssa";
                    str9 = "application/x-subrip";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str1112 = str5;
                    str3 = str6;
                    str2 = str1112;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z116 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1115 = (z116 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA116 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1115).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA116 = l8Var.a(this.c, i8);
                    this.X = qoVarA116;
                    qoVarA116.a(e9VarA116);
                    return;
                case 28:
                    str8 = "text/x-ssa";
                    str9 = "video/mpeg2";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str1113 = str5;
                    str3 = str6;
                    str2 = str1113;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z117 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1116 = (z117 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA117 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1116).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA117 = l8Var.a(this.c, i8);
                    this.X = qoVarA117;
                    qoVarA117.a(e9VarA117);
                    return;
                case 29:
                    str8 = "text/x-ssa";
                    str9 = "audio/eac3";
                    iD = -1;
                    listSingletonList = null;
                    str = str9;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str1114 = str5;
                    str3 = str6;
                    str2 = str1114;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z118 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1117 = (z118 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA118 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1117).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA118 = l8Var.a(this.c, i8);
                    this.X = qoVarA118;
                    qoVarA118.a(e9VarA118);
                    return;
                case 30:
                    str8 = "text/x-ssa";
                    listSingletonList = Collections.singletonList(a(this.b));
                    str = "audio/flac";
                    iD = -1;
                    str5 = str;
                    str6 = null;
                    i2 = -1;
                    String str1115 = str5;
                    str3 = str6;
                    str2 = str1115;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z119 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1118 = (z119 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA119 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1118).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA119 = l8Var.a(this.c, i8);
                    this.X = qoVarA119;
                    qoVarA119.a(e9VarA119);
                    return;
                case 31:
                    listSingletonList = new ArrayList(3);
                    listSingletonList.add(a(this.b));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    str8 = "text/x-ssa";
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.R).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.S).array());
                    str2 = "audio/opus";
                    str3 = null;
                    i2 = 5760;
                    iD = -1;
                    bArr = this.N;
                    if (bArr != null) {
                        str3 = w6VarA.c;
                        str2 = "video/dolby-vision";
                    }
                    boolean z1110 = this.V;
                    if (this.U) {
                        i3 = 2;
                    } else {
                        i3 = 0;
                    }
                    int i1119 = (z1110 ? 1 : 0) | i3;
                    bVar = new e9.b();
                    if (hf.g(str2)) {
                        bVar.c(this.O).n(this.Q).j(iD);
                        i8 = 1;
                    } else if (hf.i(str2)) {
                        if (this.q == 0) {
                            i6 = this.o;
                            iIntValue = -1;
                            if (i6 == -1) {
                                i6 = this.m;
                            }
                            this.o = i6;
                            i7 = this.p;
                            if (i7 == -1) {
                                i7 = this.n;
                            }
                            this.p = i7;
                        } else {
                            iIntValue = -1;
                        }
                        i4 = this.o;
                        if (i4 != iIntValue) {
                            f = -1.0f;
                        } else {
                            f = -1.0f;
                        }
                        if (this.x) {
                        }
                        if (this.a != null) {
                            iIntValue = ((Integer) xc.g0.get(this.a)).intValue();
                        }
                        if (this.r == 0) {
                            i9 = iIntValue;
                        } else {
                            i9 = iIntValue;
                        }
                        bVar.q(this.m).g(this.n).b(f).m(i9).a(this.v).p(this.w).a(r3Var);
                        i8 = 2;
                    } else if (!"application/x-subrip".equals(str2)) {
                        throw ch.a("Unexpected MIME type.", null);
                    }
                    if (this.a != null) {
                        bVar.d(this.a);
                    }
                    e9 e9VarA1110 = bVar.h(i).f(str2).i(i2).e(this.W).o(i1119).a(listSingletonList).a(str3).a(this.l).a();
                    qo qoVarA1110 = l8Var.a(this.c, i8);
                    this.X = qoVarA1110;
                    qoVarA1110.a(e9VarA1110);
                    return;
                default:
                    throw ch.a("Unrecognized codec identifier.", null);
            }
        }

        private static Pair a(ah ahVar) throws ch {
            try {
                ahVar.g(16);
                long jP = ahVar.p();
                if (jP == 1482049860) {
                    return new Pair("video/divx", null);
                }
                if (jP == 859189832) {
                    return new Pair("video/3gpp", null);
                }
                if (jP == 826496599) {
                    byte[] bArrC = ahVar.c();
                    for (int iD = ahVar.d() + 20; iD < bArrC.length - 4; iD++) {
                        if (bArrC[iD] == 0 && bArrC[iD + 1] == 0 && bArrC[iD + 2] == 1 && bArrC[iD + 3] == 15) {
                            return new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArrC, iD, bArrC.length)));
                        }
                    }
                    throw ch.a("Failed to find FourCC VC1 initialization data", null);
                }
                oc.d("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair("video/x-unknown", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ch.a("Error parsing FourCC private data", null);
            }
        }

        private static List a(byte[] bArr) throws ch {
            int i;
            int i2;
            try {
                if (bArr[0] == 2) {
                    int i3 = 1;
                    int i4 = 0;
                    while (true) {
                        i = bArr[i3] & 255;
                        if (i != 255) {
                            break;
                        }
                        i4 += 255;
                        i3++;
                    }
                    int i5 = i3 + 1;
                    int i6 = i4 + i;
                    int i7 = 0;
                    while (true) {
                        i2 = bArr[i5] & 255;
                        if (i2 != 255) {
                            break;
                        }
                        i7 += 255;
                        i5++;
                    }
                    int i8 = i5 + 1;
                    int i9 = i7 + i2;
                    if (bArr[i8] == 1) {
                        byte[] bArr2 = new byte[i6];
                        System.arraycopy(bArr, i8, bArr2, 0, i6);
                        int i10 = i8 + i6;
                        if (bArr[i10] == 3) {
                            int i11 = i10 + i9;
                            if (bArr[i11] == 5) {
                                byte[] bArr3 = new byte[bArr.length - i11];
                                System.arraycopy(bArr, i11, bArr3, 0, bArr.length - i11);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw ch.a("Error parsing vorbis codec private", null);
                        }
                        throw ch.a("Error parsing vorbis codec private", null);
                    }
                    throw ch.a("Error parsing vorbis codec private", null);
                }
                throw ch.a("Error parsing vorbis codec private", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ch.a("Error parsing vorbis codec private", null);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:99:0x0277  */
    protected void a(int i, int i2, k8 k8Var) throws ch {
        c cVar;
        c cVar2;
        c cVar3;
        long j;
        int i3;
        int i4;
        int i5;
        int i6;
        Throwable th = null;
        int i7 = 1;
        int i8 = 0;
        if (i != 161 && i != 163) {
            if (i == 165) {
                if (this.G != 2) {
                    return;
                }
                a((c) this.c.get(this.M), this.P, k8Var, i2);
                return;
            }
            if (i == 16877) {
                a(d(i), k8Var, i2);
                return;
            }
            if (i == 16981) {
                b(i);
                byte[] bArr = new byte[i2];
                this.u.i = bArr;
                k8Var.d(bArr, 0, i2);
                return;
            }
            if (i == 18402) {
                byte[] bArr2 = new byte[i2];
                k8Var.d(bArr2, 0, i2);
                d(i).j = new qo.a(1, bArr2, 0, 0);
                return;
            }
            if (i == 21419) {
                Arrays.fill(this.i.c(), (byte) 0);
                k8Var.d(this.i.c(), 4 - i2, i2);
                this.i.f(0);
                this.w = (int) this.i.y();
                return;
            }
            if (i == 25506) {
                b(i);
                byte[] bArr3 = new byte[i2];
                this.u.k = bArr3;
                k8Var.d(bArr3, 0, i2);
                return;
            }
            if (i != 30322) {
                throw ch.a("Unexpected id: " + i, null);
            }
            b(i);
            byte[] bArr4 = new byte[i2];
            this.u.v = bArr4;
            k8Var.d(bArr4, 0, i2);
            return;
        }
        if (this.G == 0) {
            this.M = (int) this.b.a(k8Var, false, true, 8);
            this.N = this.b.a();
            this.I = -9223372036854775807L;
            this.G = 1;
            this.g.d(0);
        }
        c cVar4 = (c) this.c.get(this.M);
        if (cVar4 != null) {
            cVar4.a();
            if (this.G == 1) {
                a(k8Var, 3);
                int i9 = (this.g.c()[2] & 6) >> 1;
                if (i9 == 0) {
                    this.K = 1;
                    int[] iArrA = a(this.L, 1);
                    this.L = iArrA;
                    iArrA[0] = (i2 - this.N) - 3;
                } else {
                    int i10 = 4;
                    a(k8Var, 4);
                    int i11 = (this.g.c()[3] & 255) + 1;
                    this.K = i11;
                    int[] iArrA2 = a(this.L, i11);
                    this.L = iArrA2;
                    if (i9 == 2) {
                        int i12 = (i2 - this.N) - 4;
                        int i13 = this.K;
                        Arrays.fill(iArrA2, 0, i13, i12 / i13);
                    } else {
                        if (i9 == 1) {
                            int i14 = 0;
                            int i15 = 0;
                            while (true) {
                                i3 = this.K - 1;
                                if (i14 >= i3) {
                                    break;
                                }
                                this.L[i14] = 0;
                                while (true) {
                                    i4 = i10 + 1;
                                    a(k8Var, i4);
                                    int i16 = this.g.c()[i10] & 255;
                                    int[] iArr = this.L;
                                    i5 = iArr[i14] + i16;
                                    iArr[i14] = i5;
                                    if (i16 != 255) {
                                        break;
                                    } else {
                                        i10 = i4;
                                    }
                                }
                                i15 += i5;
                                i14++;
                                i10 = i4;
                            }
                            this.L[i3] = ((i2 - this.N) - i10) - i15;
                        } else {
                            if (i9 != 3) {
                                throw ch.a("Unexpected lacing value: " + i9, null);
                            }
                            int i17 = 0;
                            int i18 = 0;
                            while (true) {
                                int i19 = this.K - i7;
                                if (i17 < i19) {
                                    this.L[i17] = i8;
                                    int i20 = i10 + 1;
                                    a(k8Var, i20);
                                    if (this.g.c()[i10] == 0) {
                                        throw ch.a("No valid varint length mask found", th);
                                    }
                                    int i21 = 0;
                                    while (true) {
                                        if (i21 < 8) {
                                            int i22 = i7 << (7 - i21);
                                            if ((this.g.c()[i10] & i22) != 0) {
                                                int i23 = i20 + i21;
                                                a(k8Var, i23);
                                                j = (~i22) & this.g.c()[i10] & 255;
                                                while (i20 < i23) {
                                                    j = (j << 8) | ((long) (this.g.c()[i20] & 255));
                                                    i20++;
                                                    cVar4 = cVar4;
                                                }
                                                cVar3 = cVar4;
                                                if (i17 > 0) {
                                                    j -= (1 << ((i21 * 7) + 6)) - 1;
                                                    i10 = i23;
                                                    break;
                                                }
                                                i20 = i23;
                                            } else {
                                                i21++;
                                                i7 = 1;
                                            }
                                        } else {
                                            cVar3 = cVar4;
                                            j = 0;
                                        }
                                        i10 = i20;
                                        break;
                                    }
                                    if (j >= -2147483648L && j <= 2147483647L) {
                                        int i24 = (int) j;
                                        int[] iArr2 = this.L;
                                        if (i17 != 0) {
                                            i24 += iArr2[i17 - 1];
                                        }
                                        iArr2[i17] = i24;
                                        i18 += i24;
                                        i17++;
                                        cVar4 = cVar3;
                                        th = null;
                                        i7 = 1;
                                        i8 = 0;
                                    } else {
                                        throw ch.a("EBML lacing sample size out of range.", null);
                                    }
                                } else {
                                    cVar2 = cVar4;
                                    this.L[i19] = ((i2 - this.N) - i10) - i18;
                                    break;
                                }
                            }
                        }
                        this.H = this.B + a((this.g.c()[0] << 8) | (this.g.c()[1] & 255));
                        cVar = cVar2;
                        if (cVar.d != 2 || (i == 163 && (this.g.c()[2] & 128) == 128)) {
                            i6 = 1;
                        } else {
                            i6 = 0;
                        }
                        this.O = i6;
                        this.G = 2;
                        this.J = 0;
                    }
                }
                cVar2 = cVar4;
                this.H = this.B + a((this.g.c()[0] << 8) | (this.g.c()[1] & 255));
                cVar = cVar2;
                if (cVar.d != 2) {
                    i6 = 1;
                } else {
                    i6 = 1;
                }
                this.O = i6;
                this.G = 2;
                this.J = 0;
            } else {
                cVar = cVar4;
            }
            if (i == 163) {
                while (true) {
                    int i25 = this.J;
                    if (i25 < this.K) {
                        a(cVar, ((long) ((this.J * cVar.e) / 1000)) + this.H, this.O, a(k8Var, cVar, this.L[i25]), 0);
                        this.J++;
                    } else {
                        this.G = 0;
                        return;
                    }
                }
            } else {
                while (true) {
                    int i26 = this.J;
                    if (i26 >= this.K) {
                        return;
                    }
                    int[] iArr3 = this.L;
                    iArr3[i26] = a(k8Var, cVar, iArr3[i26]);
                    this.J++;
                }
            }
        } else {
            k8Var.a(i2 - this.N);
            this.G = 0;
        }
    }

    private ij a(qc qcVar, qc qcVar2) {
        int i;
        if (this.q != -1 && this.t != -9223372036854775807L && qcVar != null && qcVar.a() != 0 && qcVar2 != null && qcVar2.a() == qcVar.a()) {
            int iA = qcVar.a();
            int[] iArrCopyOf = new int[iA];
            long[] jArrCopyOf = new long[iA];
            long[] jArrCopyOf2 = new long[iA];
            long[] jArrCopyOf3 = new long[iA];
            int i2 = 0;
            for (int i3 = 0; i3 < iA; i3++) {
                jArrCopyOf3[i3] = qcVar.a(i3);
                jArrCopyOf[i3] = this.q + qcVar2.a(i3);
            }
            while (true) {
                i = iA - 1;
                if (i2 >= i) {
                    break;
                }
                int i4 = i2 + 1;
                iArrCopyOf[i2] = (int) (jArrCopyOf[i4] - jArrCopyOf[i2]);
                jArrCopyOf2[i2] = jArrCopyOf3[i4] - jArrCopyOf3[i2];
                i2 = i4;
            }
            iArrCopyOf[i] = (int) ((this.q + this.p) - jArrCopyOf[i]);
            long j = this.t - jArrCopyOf3[i];
            jArrCopyOf2[i] = j;
            if (j <= 0) {
                oc.d("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j);
                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i);
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i);
                jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i);
            }
            return new g3(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
        }
        return new ij.b(this.t);
    }

    private void a(c cVar, long j, int i, int i2, int i3) {
        d dVar = cVar.T;
        if (dVar != null) {
            dVar.a(cVar, j, i, i2, i3);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.b) || "S_TEXT/ASS".equals(cVar.b)) {
                if (this.K > 1) {
                    oc.d("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.I;
                    if (j2 == -9223372036854775807L) {
                        oc.d("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        a(cVar.b, j2, this.k.c());
                        for (int iD = this.k.d(); iD < this.k.e(); iD++) {
                            if (this.k.c()[iD] == 0) {
                                this.k.e(iD);
                                break;
                            }
                        }
                        qo qoVar = cVar.X;
                        ah ahVar = this.k;
                        qoVar.a(ahVar, ahVar.e());
                        i2 += this.k.e();
                    }
                }
            }
            if ((268435456 & i) != 0) {
                if (this.K > 1) {
                    i &= -268435457;
                } else {
                    int iE = this.n.e();
                    cVar.X.a(this.n, iE, 2);
                    i2 += iE;
                }
            }
            cVar.X.a(j, i, i2, i3, cVar.j);
        }
        this.F = true;
    }

    private static int[] a(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    protected void a(int i, double d2) {
        if (i == 181) {
            d(i).Q = (int) d2;
            return;
        }
        if (i != 17545) {
            switch (i) {
                case 21969:
                    d(i).D = (float) d2;
                    break;
                case 21970:
                    d(i).E = (float) d2;
                    break;
                case 21971:
                    d(i).F = (float) d2;
                    break;
                case 21972:
                    d(i).G = (float) d2;
                    break;
                case 21973:
                    d(i).H = (float) d2;
                    break;
                case 21974:
                    d(i).I = (float) d2;
                    break;
                case 21975:
                    d(i).J = (float) d2;
                    break;
                case 21976:
                    d(i).K = (float) d2;
                    break;
                case 21977:
                    d(i).L = (float) d2;
                    break;
                case 21978:
                    d(i).M = (float) d2;
                    break;
                default:
                    switch (i) {
                        case 30323:
                            d(i).s = (float) d2;
                            break;
                        case 30324:
                            d(i).t = (float) d2;
                            break;
                        case 30325:
                            d(i).u = (float) d2;
                            break;
                    }
                    break;
            }
            return;
        }
        this.s = (long) d2;
    }

    private static byte[] a(long j, String str, long j2) {
        b1.a(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - (((long) (i * 3600)) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (((long) (i2 * 60)) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return xp.c(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
    }

    protected void a(c cVar, k8 k8Var, int i) {
        if (cVar.g != 1685485123 && cVar.g != 1685480259) {
            k8Var.a(i);
            return;
        }
        byte[] bArr = new byte[i];
        cVar.N = bArr;
        k8Var.d(bArr, 0, i);
    }

    protected void a(c cVar, int i, k8 k8Var, int i2) {
        if (i == 4 && "V_VP9".equals(cVar.b)) {
            this.n.d(i2);
            k8Var.d(this.n.c(), 0, i2);
        } else {
            k8Var.a(i2);
        }
    }

    @Override // com.applovin.impl.j8
    public final void a(l8 l8Var) {
        this.a0 = l8Var;
    }

    protected void a(int i, long j) throws ch {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            throw ch.a("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            throw ch.a("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                d(i).d = (int) j;
                return;
            case 136:
                d(i).V = j == 1;
                return;
            case 155:
                this.I = a(j);
                return;
            case 159:
                d(i).O = (int) j;
                return;
            case 176:
                d(i).m = (int) j;
                return;
            case 179:
                a(i);
                this.C.a(a(j));
                return;
            case 186:
                d(i).n = (int) j;
                return;
            case 215:
                d(i).c = (int) j;
                return;
            case 231:
                this.B = a(j);
                return;
            case 238:
                this.P = (int) j;
                return;
            case 241:
                if (this.E) {
                    return;
                }
                a(i);
                this.D.a(j);
                this.E = true;
                return;
            case 251:
                this.Q = true;
                return;
            case 16871:
                d(i).g = (int) j;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw ch.a("ContentCompAlgo " + j + " not supported", null);
            case 17029:
                if (j < 1 || j > 2) {
                    throw ch.a("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw ch.a("EBMLReadVersion " + j + " not supported", null);
            case 18401:
                if (j == 5) {
                    return;
                }
                throw ch.a("ContentEncAlgo " + j + " not supported", null);
            case 18408:
                if (j == 1) {
                    return;
                }
                throw ch.a("AESSettingsCipherMode " + j + " not supported", null);
            case 21420:
                this.x = j + this.q;
                return;
            case 21432:
                int i2 = (int) j;
                b(i);
                if (i2 == 0) {
                    this.u.w = 0;
                    return;
                }
                if (i2 == 1) {
                    this.u.w = 2;
                    return;
                } else if (i2 == 3) {
                    this.u.w = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.u.w = 3;
                    return;
                }
            case 21680:
                d(i).o = (int) j;
                return;
            case 21682:
                d(i).q = (int) j;
                return;
            case 21690:
                d(i).p = (int) j;
                return;
            case 21930:
                d(i).U = j == 1;
                return;
            case 21998:
                d(i).f = (int) j;
                return;
            case 22186:
                d(i).R = j;
                return;
            case 22203:
                d(i).S = j;
                return;
            case 25188:
                d(i).P = (int) j;
                return;
            case 30321:
                b(i);
                int i3 = (int) j;
                if (i3 == 0) {
                    this.u.r = 0;
                    return;
                }
                if (i3 == 1) {
                    this.u.r = 1;
                    return;
                } else if (i3 == 2) {
                    this.u.r = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.u.r = 3;
                    return;
                }
            case 2352003:
                d(i).e = (int) j;
                return;
            case 2807729:
                this.r = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        b(i);
                        int i4 = (int) j;
                        if (i4 == 1) {
                            this.u.A = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.u.A = 1;
                            return;
                        }
                    case 21946:
                        b(i);
                        int iB = r3.b((int) j);
                        if (iB != -1) {
                            this.u.z = iB;
                            return;
                        }
                        return;
                    case 21947:
                        b(i);
                        this.u.x = true;
                        int iA = r3.a((int) j);
                        if (iA != -1) {
                            this.u.y = iA;
                            return;
                        }
                        return;
                    case 21948:
                        d(i).B = (int) j;
                        return;
                    case 21949:
                        d(i).C = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    private static boolean a(String str) {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "V_MPEG4/ISO/AP":
            case "V_MPEG4/ISO/SP":
            case "A_MS/ACM":
            case "A_TRUEHD":
            case "A_VORBIS":
            case "A_MPEG/L2":
            case "A_MPEG/L3":
            case "V_MS/VFW/FOURCC":
            case "S_DVBSUB":
            case "V_MPEG4/ISO/ASP":
            case "V_MPEG4/ISO/AVC":
            case "S_VOBSUB":
            case "A_DTS/LOSSLESS":
            case "A_AAC":
            case "A_AC3":
            case "A_DTS":
            case "V_AV1":
            case "V_VP8":
            case "V_VP9":
            case "S_HDMV/PGS":
            case "V_THEORA":
            case "A_DTS/EXPRESS":
            case "A_PCM/FLOAT/IEEE":
            case "A_PCM/INT/BIG":
            case "A_PCM/INT/LIT":
            case "S_TEXT/ASS":
            case "V_MPEGH/ISO/HEVC":
            case "S_TEXT/UTF8":
            case "V_MPEG2":
            case "A_EAC3":
            case "A_FLAC":
            case "A_OPUS":
                return true;
            default:
                return false;
        }
    }

    private boolean a(th thVar, long j) {
        if (this.y) {
            this.A = j;
            thVar.a = this.z;
            this.y = false;
            return true;
        }
        if (this.v) {
            long j2 = this.A;
            if (j2 != -1) {
                thVar.a = j2;
                this.A = -1L;
                return true;
            }
        }
        return false;
    }

    @Override // com.applovin.impl.j8
    public final int a(k8 k8Var, th thVar) {
        this.F = false;
        boolean zA = true;
        while (zA && !this.F) {
            zA = this.a.a(k8Var);
            if (zA && a(thVar, k8Var.f())) {
                return 1;
            }
        }
        if (zA) {
            return 0;
        }
        for (int i = 0; i < this.c.size(); i++) {
            c cVar = (c) this.c.valueAt(i);
            cVar.a();
            cVar.c();
        }
        return -1;
    }

    private void a(k8 k8Var, int i) {
        if (this.g.e() >= i) {
            return;
        }
        if (this.g.b() < i) {
            ah ahVar = this.g;
            ahVar.a(Math.max(ahVar.b() * 2, i));
        }
        k8Var.d(this.g.c(), this.g.e(), i - this.g.e());
        this.g.e(i);
    }

    private long a(long j) throws ch {
        long j2 = this.r;
        if (j2 != -9223372036854775807L) {
            return xp.c(j, j2, 1000L);
        }
        throw ch.a("Can't scale timecode prior to timecodeScale being set.", null);
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        this.B = -9223372036854775807L;
        this.G = 0;
        this.a.reset();
        this.b.b();
        h();
        for (int i = 0; i < this.c.size(); i++) {
            ((c) this.c.valueAt(i)).d();
        }
    }

    private static void a(String str, long j, byte[] bArr) {
        byte[] bArrA;
        int i;
        str.hashCode();
        if (str.equals("S_TEXT/ASS")) {
            bArrA = a(j, "%01d:%02d:%02d:%02d", WorkRequest.MIN_BACKOFF_MILLIS);
            i = 21;
        } else if (str.equals("S_TEXT/UTF8")) {
            bArrA = a(j, "%02d:%02d:%02d,%03d", 1000L);
            i = 19;
        } else {
            throw new IllegalArgumentException();
        }
        System.arraycopy(bArrA, 0, bArr, i, bArrA.length);
    }

    protected void a(int i, long j, long j2) throws ch {
        e();
        if (i == 160) {
            this.Q = false;
            return;
        }
        if (i == 174) {
            this.u = new c();
            return;
        }
        if (i == 187) {
            this.E = false;
            return;
        }
        if (i == 19899) {
            this.w = -1;
            this.x = -1L;
            return;
        }
        if (i == 20533) {
            d(i).h = true;
            return;
        }
        if (i == 21968) {
            d(i).x = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.q;
            if (j3 != -1 && j3 != j) {
                throw ch.a("Multiple Segment elements not supported", null);
            }
            this.q = j;
            this.p = j2;
            return;
        }
        if (i != 475249515) {
            if (i == 524531317 && !this.v) {
                if (this.d && this.z != -1) {
                    this.y = true;
                    return;
                } else {
                    this.a0.a(new ij.b(this.t));
                    this.v = true;
                    return;
                }
            }
            return;
        }
        this.C = new qc();
        this.D = new qc();
    }

    protected void a(int i, String str) throws ch {
        if (i == 134) {
            d(i).b = str;
            return;
        }
        if (i != 17026) {
            if (i == 21358) {
                d(i).a = str;
                return;
            } else {
                if (i != 2274716) {
                    return;
                }
                d(i).W = str;
                return;
            }
        }
        if ("webm".equals(str) || "matroska".equals(str)) {
            return;
        }
        throw ch.a("DocType " + str + " not supported", null);
    }

    private int a(k8 k8Var, c cVar, int i) throws ch {
        int i2;
        if ("S_TEXT/UTF8".equals(cVar.b)) {
            a(k8Var, c0, i);
            return f();
        }
        if ("S_TEXT/ASS".equals(cVar.b)) {
            a(k8Var, e0, i);
            return f();
        }
        qo qoVar = cVar.X;
        if (!this.U) {
            if (cVar.h) {
                this.O &= -1073741825;
                if (!this.V) {
                    k8Var.d(this.g.c(), 0, 1);
                    this.R++;
                    if ((this.g.c()[0] & 128) != 128) {
                        this.Y = this.g.c()[0];
                        this.V = true;
                    } else {
                        throw ch.a("Extension bit is set in signal byte", null);
                    }
                }
                byte b2 = this.Y;
                if ((b2 & 1) == 1) {
                    boolean z = (b2 & 2) == 2;
                    this.O |= Ints.MAX_POWER_OF_TWO;
                    if (!this.Z) {
                        k8Var.d(this.l.c(), 0, 8);
                        this.R += 8;
                        this.Z = true;
                        this.g.c()[0] = (byte) ((z ? 128 : 0) | 8);
                        this.g.f(0);
                        qoVar.a(this.g, 1, 1);
                        this.S++;
                        this.l.f(0);
                        qoVar.a(this.l, 8, 1);
                        this.S += 8;
                    }
                    if (z) {
                        if (!this.W) {
                            k8Var.d(this.g.c(), 0, 1);
                            this.R++;
                            this.g.f(0);
                            this.X = this.g.w();
                            this.W = true;
                        }
                        int i3 = this.X * 4;
                        this.g.d(i3);
                        k8Var.d(this.g.c(), 0, i3);
                        this.R += i3;
                        short s = (short) ((this.X / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.o;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.o = ByteBuffer.allocate(i4);
                        }
                        this.o.position(0);
                        this.o.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.X;
                            if (i5 >= i2) {
                                break;
                            }
                            int iA = this.g.A();
                            if (i5 % 2 == 0) {
                                this.o.putShort((short) (iA - i6));
                            } else {
                                this.o.putInt(iA - i6);
                            }
                            i5++;
                            i6 = iA;
                        }
                        int i7 = (i - this.R) - i6;
                        if (i2 % 2 == 1) {
                            this.o.putInt(i7);
                        } else {
                            this.o.putShort((short) i7);
                            this.o.putInt(0);
                        }
                        this.m.a(this.o.array(), i4);
                        qoVar.a(this.m, i4, 1);
                        this.S += i4;
                    }
                }
            } else {
                byte[] bArr = cVar.i;
                if (bArr != null) {
                    this.j.a(bArr, bArr.length);
                }
            }
            if (cVar.f > 0) {
                this.O |= DriveFile.MODE_READ_ONLY;
                this.n.d(0);
                this.g.d(4);
                this.g.c()[0] = (byte) ((i >> 24) & 255);
                this.g.c()[1] = (byte) ((i >> 16) & 255);
                this.g.c()[2] = (byte) ((i >> 8) & 255);
                this.g.c()[3] = (byte) (i & 255);
                qoVar.a(this.g, 4, 2);
                this.S += 4;
            }
            this.U = true;
        }
        int iE = i + this.j.e();
        if (!"V_MPEG4/ISO/AVC".equals(cVar.b) && !"V_MPEGH/ISO/HEVC".equals(cVar.b)) {
            if (cVar.T != null) {
                b1.b(this.j.e() == 0);
                cVar.T.a(k8Var);
            }
            while (true) {
                int i8 = this.R;
                if (i8 >= iE) {
                    break;
                }
                int iA2 = a(k8Var, qoVar, iE - i8);
                this.R += iA2;
                this.S += iA2;
            }
        } else {
            byte[] bArrC = this.f.c();
            bArrC[0] = 0;
            bArrC[1] = 0;
            bArrC[2] = 0;
            int i9 = cVar.Y;
            int i10 = 4 - i9;
            while (this.R < iE) {
                int i11 = this.T;
                if (i11 == 0) {
                    a(k8Var, bArrC, i10, i9);
                    this.R += i9;
                    this.f.f(0);
                    this.T = this.f.A();
                    this.e.f(0);
                    qoVar.a(this.e, 4);
                    this.S += 4;
                } else {
                    int iA3 = a(k8Var, qoVar, i11);
                    this.R += iA3;
                    this.S += iA3;
                    this.T -= iA3;
                }
            }
        }
        if ("A_VORBIS".equals(cVar.b)) {
            this.h.f(0);
            qoVar.a(this.h, 4);
            this.S += 4;
        }
        return f();
    }

    private void a(k8 k8Var, byte[] bArr, int i) {
        int length = bArr.length + i;
        if (this.k.b() < length) {
            this.k.a(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.k.c(), 0, bArr.length);
        }
        k8Var.d(this.k.c(), bArr.length, i);
        this.k.f(0);
        this.k.e(length);
    }

    private int a(k8 k8Var, qo qoVar, int i) {
        int iA = this.j.a();
        if (iA > 0) {
            int iMin = Math.min(i, iA);
            qoVar.a(this.j, iMin);
            return iMin;
        }
        return qoVar.a((f5) k8Var, i, false);
    }

    private void a(k8 k8Var, byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, this.j.a());
        k8Var.d(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.j.a(bArr, i, iMin);
        }
    }

    @Override // com.applovin.impl.j8
    public final boolean a(k8 k8Var) {
        return new mk().b(k8Var);
    }
}
