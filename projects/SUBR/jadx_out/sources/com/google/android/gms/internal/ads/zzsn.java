package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.Trace;
import com.google.android.gms.ads.AdError;
import com.unity3d.ads.core.data.model.exception.GatewayException;
import com.unity3d.services.core.device.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzsn extends zzhr {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private int zzA;
    private boolean zzB;
    private boolean zzC;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private long zzH;
    private long zzI;
    private int zzJ;
    private int zzK;
    private ByteBuffer zzL;
    private boolean zzM;
    private boolean zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private boolean zzR;
    private int zzS;
    private int zzT;
    private int zzU;
    private boolean zzV;
    private boolean zzW;
    private boolean zzX;
    private long zzY;
    private long zzZ;
    protected zzhs zza;
    private boolean zzaa;
    private boolean zzab;
    private boolean zzac;
    private zzsl zzad;
    private long zzae;
    private boolean zzaf;
    private zzrg zzag;
    private zzrg zzah;
    private final zzsb zzc;
    private final zzsp zzd;
    private final float zze;
    private final zzhh zzf;
    private final zzhh zzg;
    private final zzhh zzh;
    private final zzru zzi;
    private final MediaCodec.BufferInfo zzj;
    private final ArrayDeque zzk;
    private final zzqt zzl;
    private zzab zzm;
    private zzab zzn;
    private zzli zzo;
    private MediaCrypto zzp;
    private float zzq;
    private float zzr;
    private zzsd zzs;
    private zzab zzt;
    private MediaFormat zzu;
    private boolean zzv;
    private float zzw;
    private ArrayDeque zzx;
    private zzsj zzy;
    private zzsg zzz;

    public zzsn(int i, zzsb zzsbVar, zzsp zzspVar, boolean z, float f) {
        super(i);
        this.zzc = zzsbVar;
        this.zzd = zzspVar;
        this.zze = f;
        this.zzf = new zzhh(0, 0);
        this.zzg = new zzhh(0, 0);
        this.zzh = new zzhh(2, 0);
        zzru zzruVar = new zzru();
        this.zzi = zzruVar;
        this.zzj = new MediaCodec.BufferInfo();
        this.zzq = 1.0f;
        this.zzr = 1.0f;
        this.zzk = new ArrayDeque();
        this.zzad = zzsl.zza;
        zzruVar.zzj(0);
        zzruVar.zzc.order(ByteOrder.nativeOrder());
        this.zzl = new zzqt();
        this.zzw = -1.0f;
        this.zzA = 0;
        this.zzS = 0;
        this.zzJ = -1;
        this.zzK = -1;
        this.zzI = -9223372036854775807L;
        this.zzY = -9223372036854775807L;
        this.zzZ = -9223372036854775807L;
        this.zzae = -9223372036854775807L;
        this.zzH = -9223372036854775807L;
        this.zzT = 0;
        this.zzU = 0;
        this.zza = new zzhs();
    }

    protected static boolean zzaP(zzab zzabVar) {
        return zzabVar.zzK == 0;
    }

    private final void zzaQ() {
        this.zzK = -1;
        this.zzL = null;
    }

    private final void zzaR(zzsl zzslVar) {
        this.zzad = zzslVar;
        if (zzslVar.zzd != -9223372036854775807L) {
            this.zzaf = true;
        }
    }

    private final boolean zzaT() throws zzib {
        if (this.zzV) {
            this.zzT = 1;
            if (this.zzC) {
                this.zzU = 3;
                return false;
            }
            this.zzU = 2;
        } else {
            zzaS();
        }
        return true;
    }

    private final boolean zzaU() {
        return this.zzK >= 0;
    }

    private final boolean zzaV(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        zzab zzabVar = this.zzn;
        return (zzabVar != null && Objects.equals(zzabVar.zzo, "audio/opus") && zzadi.zzf(j, j2)) ? false : true;
    }

    private final boolean zzaW(int i) throws zzib {
        zzhh zzhhVar = this.zzf;
        zzke zzkeVarZzk = zzk();
        zzhhVar.zzb();
        int iZzcU = zzcU(zzkeVarZzk, this.zzf, i | 4);
        if (iZzcU == -5) {
            zzac(zzkeVarZzk);
            return true;
        }
        if (iZzcU != -4 || !this.zzf.zzf()) {
            return false;
        }
        this.zzaa = true;
        zzai();
        return false;
    }

    private final boolean zzaX(zzab zzabVar) throws zzib {
        if (zzei.zza >= 23 && this.zzs != null && this.zzU != 3 && zzcT() != 0) {
            float f = this.zzr;
            zzabVar.getClass();
            float fZzZ = zzZ(f, zzabVar, zzT());
            float f2 = this.zzw;
            if (f2 != fZzZ) {
                if (fZzZ == -1.0f) {
                    zzae();
                    return false;
                }
                if (f2 != -1.0f || fZzZ > this.zze) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", fZzZ);
                    zzsd zzsdVar = this.zzs;
                    zzsdVar.getClass();
                    zzsdVar.zzq(bundle);
                    this.zzw = fZzZ;
                }
            }
        }
        return true;
    }

    private final void zzad() {
        this.zzQ = false;
        this.zzi.zzb();
        this.zzh.zzb();
        this.zzP = false;
        this.zzO = false;
        this.zzl.zzb();
    }

    private final void zzae() throws zzib {
        if (this.zzV) {
            this.zzT = 1;
            this.zzU = 3;
        } else {
            zzaG();
            zzaC();
        }
    }

    private final void zzah() {
        try {
            zzsd zzsdVar = this.zzs;
            zzcw.zzb(zzsdVar);
            zzsdVar.zzj();
        } finally {
            zzaH();
        }
    }

    private final void zzao() {
        this.zzJ = -1;
        this.zzg.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected void zzC() {
        try {
            zzad();
            zzaG();
        } finally {
            this.zzah = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
    
        if (r5 >= r1) goto L14;
     */
    @Override // com.google.android.gms.internal.ads.zzhr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void zzF(com.google.android.gms.internal.ads.zzab[] r16, long r17, long r19, com.google.android.gms.internal.ads.zzug r21) throws com.google.android.gms.internal.ads.zzib {
        /*
            r15 = this;
            r0 = r15
            com.google.android.gms.internal.ads.zzsl r1 = r0.zzad
            long r1 = r1.zzd
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L21
            com.google.android.gms.internal.ads.zzsl r1 = new com.google.android.gms.internal.ads.zzsl
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = r1
            r9 = r17
            r11 = r19
            r6.<init>(r7, r9, r11)
            r15.zzaR(r1)
            return
        L21:
            java.util.ArrayDeque r1 = r0.zzk
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L57
            long r1 = r0.zzY
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L39
            long r5 = r0.zzae
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 == 0) goto L57
            int r7 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r7 < 0) goto L57
        L39:
            com.google.android.gms.internal.ads.zzsl r1 = new com.google.android.gms.internal.ads.zzsl
            r9 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = r1
            r11 = r17
            r13 = r19
            r8.<init>(r9, r11, r13)
            r15.zzaR(r1)
            com.google.android.gms.internal.ads.zzsl r1 = r0.zzad
            long r1 = r1.zzd
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L56
            r15.zzap()
        L56:
            return
        L57:
            java.util.ArrayDeque r1 = r0.zzk
            com.google.android.gms.internal.ads.zzsl r9 = new com.google.android.gms.internal.ads.zzsl
            long r3 = r0.zzY
            r2 = r9
            r5 = r17
            r7 = r19
            r2.<init>(r3, r5, r7)
            r1.add(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsn.zzF(com.google.android.gms.internal.ads.zzab[], long, long, com.google.android.gms.internal.ads.zzug):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlj
    public void zzM(float f, float f2) throws zzib {
        this.zzq = f;
        this.zzr = f2;
        zzaX(this.zzt);
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 17001. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:99)
        */
    @Override // com.google.android.gms.internal.ads.zzlj
    public void zzV(long r23, long r25) throws com.google.android.gms.internal.ads.zzib {
        /*
            Method dump skipped, instruction units count: 1700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsn.zzV(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public boolean zzW() {
        return this.zzab;
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public boolean zzX() {
        if (this.zzm == null) {
            return false;
        }
        if (zzS() || zzaU()) {
            return true;
        }
        return this.zzI != -9223372036854775807L && zzi().zzb() < this.zzI;
    }

    @Override // com.google.android.gms.internal.ads.zzlm
    public final int zzY(zzab zzabVar) throws zzib {
        try {
            return zzaa(this.zzd, zzabVar);
        } catch (zzsu e) {
            throw zzcW(e, zzabVar, false, IronSourceConstants.NT_INSTANCE_LOAD);
        }
    }

    protected float zzZ(float f, zzab zzabVar, zzab[] zzabVarArr) {
        throw null;
    }

    protected zzsf zzaA(Throwable th, zzsg zzsgVar) {
        return new zzsf(th, zzsgVar);
    }

    protected final zzsg zzaB() {
        return this.zzz;
    }

    /* JADX WARN: Code duplicated, block: B:266:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:314:0x0562 A[Catch: zzsj -> 0x0592, TryCatch #9 {zzsj -> 0x0592, blocks: (B:312:0x0545, B:314:0x0562, B:316:0x056b, B:320:0x057b, B:321:0x057d, B:315:0x0565, B:322:0x057e, B:324:0x0584, B:325:0x0591), top: B:350:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:315:0x0565 A[Catch: zzsj -> 0x0592, TryCatch #9 {zzsj -> 0x0592, blocks: (B:312:0x0545, B:314:0x0562, B:316:0x056b, B:320:0x057b, B:321:0x057d, B:315:0x0565, B:322:0x057e, B:324:0x0584, B:325:0x0591), top: B:350:0x0098 }] */
    /* JADX WARN: Code duplicated, block: B:318:0x0571  */
    /* JADX WARN: Code duplicated, block: B:358:0x057b A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2, types: [com.google.android.gms.internal.ads.zzsg] */
    /* JADX WARN: Type inference failed for: r13v29 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v30 */
    /* JADX WARN: Type inference failed for: r13v31 */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v33 */
    /* JADX WARN: Type inference failed for: r13v34 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [android.media.MediaCrypto, com.google.android.gms.internal.ads.zzsm] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.ArrayDeque] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v10 */
    /* JADX WARN: Type inference failed for: r22v11 */
    /* JADX WARN: Type inference failed for: r22v12 */
    /* JADX WARN: Type inference failed for: r22v13 */
    /* JADX WARN: Type inference failed for: r22v14 */
    /* JADX WARN: Type inference failed for: r22v15 */
    /* JADX WARN: Type inference failed for: r22v16 */
    /* JADX WARN: Type inference failed for: r22v17 */
    /* JADX WARN: Type inference failed for: r22v18 */
    /* JADX WARN: Type inference failed for: r22v19 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v20 */
    /* JADX WARN: Type inference failed for: r22v21 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r24v0, types: [com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzsn] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.google.android.gms.internal.ads.zzab] */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.ads.zzsg, java.lang.Object] */
    protected final void zzaC() throws zzib {
        zzab zzabVar;
        zzab zzabVar2;
        ?? r22;
        zzsj zzsjVar;
        ?? r2;
        zzsj zzsjVar2;
        ?? r13;
        ?? r14;
        ?? r23;
        ?? r24;
        int i;
        boolean z;
        if (this.zzs != null || this.zzO || (zzabVar = this.zzm) == null) {
            return;
        }
        if (zzaM(zzabVar)) {
            zzad();
            String str = zzabVar.zzo;
            if ("audio/mp4a-latm".equals(str) || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                this.zzi.zzo(32);
            } else {
                this.zzi.zzo(1);
            }
            this.zzO = true;
            return;
        }
        zzrg zzrgVar = this.zzah;
        this.zzag = zzrgVar;
        if (zzrgVar != null) {
            zzcw.zzf(true);
            zzrg zzrgVar2 = this.zzag;
            boolean z2 = zzrh.zza;
            zzrgVar2.zza();
        }
        try {
            zzab zzabVar3 = this.zzm;
            zzabVar3.getClass();
            ?? r15 = 0;
            if (this.zzx == null) {
                try {
                    List listZzag = zzag(this.zzd, zzabVar3, false);
                    listZzag.isEmpty();
                    this.zzx = new ArrayDeque();
                    if (!listZzag.isEmpty()) {
                        this.zzx.add((zzsg) listZzag.get(0));
                    }
                    this.zzy = null;
                } catch (zzsu e) {
                    throw new zzsj(zzabVar3, (Throwable) e, false, -49998);
                }
            }
            try {
                if (this.zzx.isEmpty()) {
                    throw new zzsj(zzabVar3, (Throwable) null, false, -49999);
                }
                ArrayDeque arrayDeque = this.zzx;
                arrayDeque.getClass();
                ?? r16 = zzabVar3;
                while (this.zzs == null) {
                    r16 = (zzsg) arrayDeque.peekFirst();
                    r16.getClass();
                    if (!zzaN(r16)) {
                        return;
                    }
                    try {
                        zzab zzabVar4 = this.zzm;
                        zzabVar4.getClass();
                        String str2 = r16.zza;
                        float fZzZ = zzei.zza < 23 ? -1.0f : zzZ(this.zzr, zzabVar4, zzT());
                        if (fZzZ <= this.zze) {
                            fZzZ = -1.0f;
                        }
                        zzaF(zzabVar4);
                        long jZzb = zzi().zzb();
                        zzsa zzsaVarZzaf = zzaf(r16, zzabVar4, r15, fZzZ);
                        if (zzei.zza >= 31) {
                            LogSessionId logSessionIdZza = zzo().zza();
                            if (!logSessionIdZza.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                                zzsaVarZzaf.zzb.setString("log-session-id", logSessionIdZza.getStringId());
                            }
                        }
                        try {
                            Trace.beginSection("createCodec:" + str2);
                            zzsd zzsdVarZzd = this.zzc.zzd(zzsaVarZzaf);
                            this.zzs = zzsdVarZzd;
                            zzsdVarZzd.zzs(new zzsk(this, r15));
                            Trace.endSection();
                            long jZzb2 = zzi().zzb();
                            try {
                                try {
                                    if (r16.zze(zzabVar4)) {
                                        zzabVar2 = zzabVar;
                                        r22 = r16;
                                        arrayDeque = arrayDeque;
                                    } else {
                                        try {
                                            Object[] objArr = new Object[2];
                                            StringBuilder sb = new StringBuilder();
                                            sb.append("id=");
                                            sb.append(zzabVar4.zza);
                                            sb.append(", mimeType=");
                                            sb.append(zzabVar4.zzo);
                                            if (zzabVar4.zzn != null) {
                                                sb.append(", container=");
                                                sb.append(zzabVar4.zzn);
                                            }
                                            if (zzabVar4.zzj != -1) {
                                                sb.append(", bitrate=");
                                                sb.append(zzabVar4.zzj);
                                            }
                                            if (zzabVar4.zzk != null) {
                                                sb.append(", codecs=");
                                                sb.append(zzabVar4.zzk);
                                            }
                                            if (zzabVar4.zzs != null) {
                                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                                zzabVar2 = zzabVar;
                                                int i2 = 0;
                                                while (true) {
                                                    try {
                                                        zzu zzuVar = zzabVar4.zzs;
                                                        r23 = r16;
                                                        try {
                                                            if (i2 >= zzuVar.zzb) {
                                                                break;
                                                            }
                                                            UUID uuid = zzuVar.zza(i2).zza;
                                                            try {
                                                                if (uuid.equals(zzh.zzb)) {
                                                                    try {
                                                                        linkedHashSet.add("cenc");
                                                                    } catch (Exception e2) {
                                                                        e = e2;
                                                                        arrayDeque = arrayDeque;
                                                                        r22 = r23;
                                                                    }
                                                                } else if (uuid.equals(zzh.zzc)) {
                                                                    linkedHashSet.add("clearkey");
                                                                } else if (uuid.equals(zzh.zze)) {
                                                                    linkedHashSet.add("playready");
                                                                } else if (uuid.equals(zzh.zzd)) {
                                                                    linkedHashSet.add("widevine");
                                                                } else {
                                                                    if (uuid.equals(zzh.zza)) {
                                                                        linkedHashSet.add(GatewayException.GATEWAY_RESPONSE_DEPTH_UNIVERSAL);
                                                                    } else {
                                                                        String string = uuid.toString();
                                                                        StringBuilder sb2 = new StringBuilder();
                                                                        sb2.append("unknown (");
                                                                        sb2.append(string);
                                                                        sb2.append(")");
                                                                        linkedHashSet.add(sb2.toString());
                                                                    }
                                                                    i2++;
                                                                    r16 = r23;
                                                                    arrayDeque = arrayDeque;
                                                                }
                                                                i2++;
                                                                r16 = r23;
                                                                arrayDeque = arrayDeque;
                                                            } catch (Exception e3) {
                                                                e = e3;
                                                            }
                                                        } catch (Exception e4) {
                                                            e = e4;
                                                            r23 = r23;
                                                            arrayDeque = arrayDeque;
                                                        }
                                                    } catch (Exception e5) {
                                                        e = e5;
                                                        r14 = r16;
                                                        r23 = r14;
                                                        arrayDeque = arrayDeque;
                                                        r22 = r23;
                                                        zzdo.zzg("MediaCodecRenderer", "Failed to initialize decoder: ".concat(r16.zza), e);
                                                        arrayDeque.removeFirst();
                                                        r2 = r22;
                                                        zzsjVar = new zzsj((zzab) r2, (Throwable) e, false, (zzsg) r16);
                                                        zzak(zzsjVar);
                                                        zzsjVar2 = this.zzy;
                                                        if (zzsjVar2 == null) {
                                                            this.zzy = zzsjVar;
                                                        } else {
                                                            this.zzy = zzsj.zza(zzsjVar2, zzsjVar);
                                                        }
                                                        if (!arrayDeque.isEmpty()) {
                                                            throw this.zzy;
                                                        }
                                                        r13 = r2;
                                                        zzabVar = zzabVar2;
                                                        arrayDeque = arrayDeque;
                                                        r15 = 0;
                                                        r16 = r13;
                                                    }
                                                    r22 = r23;
                                                    zzdo.zzg("MediaCodecRenderer", "Failed to initialize decoder: ".concat(r16.zza), e);
                                                    arrayDeque.removeFirst();
                                                    r2 = r22;
                                                    zzsjVar = new zzsj((zzab) r2, (Throwable) e, false, (zzsg) r16);
                                                    zzak(zzsjVar);
                                                    zzsjVar2 = this.zzy;
                                                    if (zzsjVar2 == null) {
                                                        this.zzy = zzsjVar;
                                                    } else {
                                                        this.zzy = zzsj.zza(zzsjVar2, zzsjVar);
                                                    }
                                                    if (!arrayDeque.isEmpty()) {
                                                        throw this.zzy;
                                                    }
                                                    r13 = r2;
                                                    zzabVar = zzabVar2;
                                                    arrayDeque = arrayDeque;
                                                    r15 = 0;
                                                    r16 = r13;
                                                }
                                                arrayDeque = arrayDeque;
                                                sb.append(", drm=[");
                                                zzfuf.zzb(sb, linkedHashSet, ",");
                                                sb.append(']');
                                                r24 = r23;
                                            } else {
                                                zzabVar2 = zzabVar;
                                                r24 = r16;
                                                arrayDeque = arrayDeque;
                                            }
                                            if (zzabVar4.zzv != -1 && zzabVar4.zzw != -1) {
                                                sb.append(", res=");
                                                sb.append(zzabVar4.zzv);
                                                sb.append("x");
                                                sb.append(zzabVar4.zzw);
                                            }
                                            zzk zzkVar = zzabVar4.zzC;
                                            if (zzkVar != null && (zzkVar.zze() || zzkVar.zzf())) {
                                                sb.append(", color=");
                                                sb.append(zzabVar4.zzC.zzd());
                                            }
                                            if (zzabVar4.zzx != -1.0f) {
                                                sb.append(", fps=");
                                                sb.append(zzabVar4.zzx);
                                            }
                                            if (zzabVar4.zzD != -1) {
                                                sb.append(", channels=");
                                                sb.append(zzabVar4.zzD);
                                            }
                                            if (zzabVar4.zzE != -1) {
                                                sb.append(", sample_rate=");
                                                sb.append(zzabVar4.zzE);
                                            }
                                            if (zzabVar4.zzd != null) {
                                                sb.append(", language=");
                                                sb.append(zzabVar4.zzd);
                                            }
                                            if (!zzabVar4.zzc.isEmpty()) {
                                                sb.append(", labels=[");
                                                zzfuf.zzb(sb, zzfyd.zzb(zzabVar4.zzc, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzy
                                                    @Override // com.google.android.gms.internal.ads.zzfuc
                                                    public final Object apply(Object obj) {
                                                        zzad zzadVar = (zzad) obj;
                                                        int i3 = zzab.zzL;
                                                        return zzadVar.zza + ": " + zzadVar.zzb;
                                                    }
                                                }), ",");
                                                sb.append(y8.i.e);
                                            }
                                            if (zzabVar4.zze != 0) {
                                                sb.append(", selectionFlags=[");
                                                int i3 = zzabVar4.zze;
                                                ArrayList arrayList = new ArrayList();
                                                if ((i3 & 1) != 0) {
                                                    arrayList.add("default");
                                                }
                                                if ((i3 & 2) != 0) {
                                                    arrayList.add("forced");
                                                }
                                                zzfuf.zzb(sb, arrayList, ",");
                                                sb.append(y8.i.e);
                                            }
                                            if (zzabVar4.zzf != 0) {
                                                sb.append(", roleFlags=[");
                                                int i4 = zzabVar4.zzf;
                                                ArrayList arrayList2 = new ArrayList();
                                                if ((i4 & 1) != 0) {
                                                    arrayList2.add(y8.h.Z);
                                                }
                                                if ((i4 & 2) != 0) {
                                                    arrayList2.add("alt");
                                                }
                                                if ((i4 & 4) != 0) {
                                                    arrayList2.add("supplementary");
                                                }
                                                if ((i4 & 8) != 0) {
                                                    arrayList2.add("commentary");
                                                }
                                                if ((i4 & 16) != 0) {
                                                    arrayList2.add("dub");
                                                }
                                                if ((i4 & 32) != 0) {
                                                    arrayList2.add("emergency");
                                                }
                                                if ((i4 & 64) != 0) {
                                                    arrayList2.add("caption");
                                                }
                                                if ((i4 & 128) != 0) {
                                                    arrayList2.add("subtitle");
                                                }
                                                if ((i4 & 256) != 0) {
                                                    arrayList2.add("sign");
                                                }
                                                if ((i4 & 512) != 0) {
                                                    arrayList2.add("describes-video");
                                                }
                                                if ((i4 & 1024) != 0) {
                                                    arrayList2.add("describes-music");
                                                }
                                                if ((i4 & 2048) != 0) {
                                                    arrayList2.add("enhanced-intelligibility");
                                                }
                                                if ((i4 & 4096) != 0) {
                                                    arrayList2.add("transcribes-dialog");
                                                }
                                                if ((i4 & 8192) != 0) {
                                                    arrayList2.add("easy-read");
                                                }
                                                if ((i4 & 16384) != 0) {
                                                    arrayList2.add("trick-play");
                                                }
                                                if ((i4 & 32768) != 0) {
                                                    arrayList2.add("auxiliary");
                                                }
                                                zzfuf.zzb(sb, arrayList2, ",");
                                                sb.append(y8.i.e);
                                            }
                                            if ((zzabVar4.zzf & 32768) != 0) {
                                                sb.append(", auxiliaryTrackType=");
                                                sb.append(AdError.UNDEFINED_DOMAIN);
                                            }
                                            objArr[0] = sb.toString();
                                            objArr[1] = str2;
                                            zzdo.zzf("MediaCodecRenderer", String.format(Locale.US, "Format exceeds selected codec's capabilities [%s, %s]", objArr));
                                            r22 = r24;
                                        } catch (Exception e6) {
                                            e = e6;
                                            zzabVar2 = zzabVar;
                                            r14 = r16;
                                        }
                                    }
                                    zzal(str2, zzsaVarZzaf, jZzb2, jZzb2 - jZzb);
                                    zzabVar = zzabVar2;
                                    r13 = r22;
                                } catch (Exception e7) {
                                    e = e7;
                                    zzdo.zzg("MediaCodecRenderer", "Failed to initialize decoder: ".concat(r16.zza), e);
                                    arrayDeque.removeFirst();
                                    r2 = r22;
                                    zzsjVar = new zzsj((zzab) r2, (Throwable) e, false, (zzsg) r16);
                                    zzak(zzsjVar);
                                    zzsjVar2 = this.zzy;
                                    if (zzsjVar2 == null) {
                                        this.zzy = zzsjVar;
                                    } else {
                                        this.zzy = zzsj.zza(zzsjVar2, zzsjVar);
                                    }
                                    if (!arrayDeque.isEmpty()) {
                                        throw this.zzy;
                                    }
                                    r13 = r2;
                                    zzabVar = zzabVar2;
                                }
                                this.zza.zza++;
                                r16 = r16;
                            } catch (Exception e8) {
                                e = e8;
                                r22 = r22;
                                r16 = r16;
                                zzdo.zzg("MediaCodecRenderer", "Failed to initialize decoder: ".concat(r16.zza), e);
                                arrayDeque.removeFirst();
                                r2 = r22;
                                zzsjVar = new zzsj((zzab) r2, (Throwable) e, false, (zzsg) r16);
                                zzak(zzsjVar);
                                zzsjVar2 = this.zzy;
                                if (zzsjVar2 == null) {
                                    this.zzy = zzsjVar;
                                } else {
                                    this.zzy = zzsj.zza(zzsjVar2, zzsjVar);
                                }
                                if (!arrayDeque.isEmpty()) {
                                    throw this.zzy;
                                }
                                r13 = r2;
                                zzabVar = zzabVar2;
                            }
                            this.zzz = r16;
                            this.zzw = fZzZ;
                            this.zzt = zzabVar4;
                            if (zzei.zza <= 25 && "OMX.Exynos.avc.dec.secure".equals(str2) && (zzei.zzd.startsWith("SM-T585") || zzei.zzd.startsWith("SM-A510") || zzei.zzd.startsWith("SM-A520") || zzei.zzd.startsWith("SM-J700"))) {
                                i = 2;
                            } else {
                                i = (zzei.zza >= 24 || !(("OMX.Nvidia.h264.decode".equals(str2) || "OMX.Nvidia.h264.decode.secure".equals(str2)) && ("flounder".equals(zzei.zzb) || "flounder_lte".equals(zzei.zzb) || "grouper".equals(zzei.zzb) || "tilapia".equals(zzei.zzb)))) ? 0 : 1;
                            }
                            this.zzA = i;
                            this.zzB = zzei.zza == 29 && "c2.android.aac.decoder".equals(str2);
                            this.zzC = zzei.zza <= 23 && "OMX.google.vorbis.decoder".equals(str2);
                            this.zzD = zzei.zza == 21 && "OMX.google.aac.decoder".equals(str2);
                            String str3 = r16.zza;
                            if (zzei.zza <= 25 && "OMX.rk.video_decoder.avc".equals(str3)) {
                                z = true;
                            } else if ((zzei.zza > 29 || !("OMX.broadcom.video_decoder.tunnel".equals(str3) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str3) || "OMX.bcm.vdec.avc.tunnel".equals(str3) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str3) || "OMX.bcm.vdec.hevc.tunnel".equals(str3) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str3))) && !("Amazon".equals(zzei.zzc) && "AFTS".equals(zzei.zzd) && r16.zzf)) {
                                z = false;
                            } else {
                                z = true;
                            }
                            this.zzG = z;
                            zzsd zzsdVar = this.zzs;
                            zzsdVar.getClass();
                            if (zzcT() == 2) {
                                this.zzI = zzi().zzb() + 1000;
                            }
                            arrayDeque = arrayDeque;
                            r15 = 0;
                            r16 = r13;
                        } catch (Throwable th) {
                            zzabVar2 = zzabVar;
                            r22 = r16;
                            arrayDeque = arrayDeque;
                            r16 = r16;
                            Trace.endSection();
                            throw th;
                        }
                    } catch (Exception e9) {
                        e = e9;
                        zzabVar2 = zzabVar;
                        r22 = r16;
                        arrayDeque = arrayDeque;
                    }
                }
                this.zzx = r15;
            } catch (zzsj e10) {
                e = e10;
                throw zzcW(e, zzabVar, false, IronSourceConstants.NT_LOAD);
            }
        } catch (zzsj e11) {
            e = e11;
        }
    }

    protected void zzaD(long j) {
        this.zzae = j;
        while (!this.zzk.isEmpty() && j >= ((zzsl) this.zzk.peek()).zzb) {
            zzsl zzslVar = (zzsl) this.zzk.poll();
            zzslVar.getClass();
            zzaR(zzslVar);
            zzap();
        }
    }

    protected void zzaE(zzhh zzhhVar) throws zzib {
    }

    protected void zzaF(zzab zzabVar) throws zzib {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected final void zzaG() {
        try {
            zzsd zzsdVar = this.zzs;
            if (zzsdVar != null) {
                zzsdVar.zzm();
                this.zza.zzb++;
                zzsg zzsgVar = this.zzz;
                zzsgVar.getClass();
                zzam(zzsgVar.zza);
            }
        } finally {
            this.zzs = null;
            this.zzp = null;
            this.zzag = null;
            zzaI();
        }
    }

    protected void zzaH() {
        zzao();
        zzaQ();
        this.zzI = -9223372036854775807L;
        this.zzW = false;
        this.zzH = -9223372036854775807L;
        this.zzV = false;
        this.zzE = false;
        this.zzF = false;
        this.zzM = false;
        this.zzN = false;
        this.zzY = -9223372036854775807L;
        this.zzZ = -9223372036854775807L;
        this.zzae = -9223372036854775807L;
        this.zzT = 0;
        this.zzU = 0;
        this.zzS = this.zzR ? 1 : 0;
    }

    protected final void zzaI() {
        zzaH();
        this.zzx = null;
        this.zzz = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = false;
        this.zzX = false;
        this.zzw = -1.0f;
        this.zzA = 0;
        this.zzB = false;
        this.zzC = false;
        this.zzD = false;
        this.zzG = false;
        this.zzR = false;
        this.zzS = 0;
    }

    protected final boolean zzaJ() throws zzib {
        boolean zZzaK = zzaK();
        if (zZzaK) {
            zzaC();
        }
        return zZzaK;
    }

    protected final boolean zzaK() {
        if (this.zzs == null) {
            return false;
        }
        int i = this.zzU;
        if (i == 3 || ((this.zzB && !this.zzX) || (this.zzC && this.zzW))) {
            zzaG();
            return true;
        }
        if (i == 2) {
            zzcw.zzf(zzei.zza >= 23);
            if (zzei.zza >= 23) {
                try {
                    zzaS();
                } catch (zzib e) {
                    zzdo.zzg("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
                    zzaG();
                    return true;
                }
            }
        }
        zzah();
        return false;
    }

    protected final boolean zzaL() {
        return this.zzO;
    }

    protected final boolean zzaM(zzab zzabVar) {
        return this.zzah == null && zzas(zzabVar);
    }

    protected boolean zzaN(zzsg zzsgVar) {
        return true;
    }

    protected boolean zzaO(zzhh zzhhVar) {
        return false;
    }

    protected abstract int zzaa(zzsp zzspVar, zzab zzabVar) throws zzsu;

    protected zzht zzab(zzsg zzsgVar, zzab zzabVar, zzab zzabVar2) {
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00c0  */
    protected zzht zzac(zzke zzkeVar) throws zzib {
        int i;
        boolean z = true;
        this.zzac = true;
        zzab zzabVarZzag = zzkeVar.zza;
        zzabVarZzag.getClass();
        String str = zzabVarZzag.zzo;
        if (str == null) {
            throw zzcW(new IllegalArgumentException("Sample MIME type is null."), zzabVarZzag, false, IronSourceConstants.NT_INSTANCE_LOAD_SUCCESS);
        }
        if (Objects.equals(str, MimeTypes.VIDEO_AV1) && !zzabVarZzag.zzr.isEmpty()) {
            zzz zzzVarZzb = zzabVarZzag.zzb();
            zzzVarZzb.zzN(null);
            zzabVarZzag = zzzVarZzb.zzag();
        }
        zzab zzabVar = zzabVarZzag;
        zzrg zzrgVar = zzkeVar.zzb;
        this.zzah = zzrgVar;
        this.zzm = zzabVar;
        if (this.zzO) {
            this.zzQ = true;
            return null;
        }
        zzsd zzsdVar = this.zzs;
        if (zzsdVar == null) {
            this.zzx = null;
            zzaC();
            return null;
        }
        zzsg zzsgVar = this.zzz;
        zzsgVar.getClass();
        zzab zzabVar2 = this.zzt;
        zzabVar2.getClass();
        zzrg zzrgVar2 = this.zzag;
        if (zzrgVar2 != zzrgVar) {
            zzae();
            return new zzht(zzsgVar.zza, zzabVar2, zzabVar, 0, 128);
        }
        boolean z2 = zzrgVar != zzrgVar2;
        zzcw.zzf(!z2 || zzei.zza >= 23);
        zzht zzhtVarZzab = zzab(zzsgVar, zzabVar2, zzabVar);
        int i2 = zzhtVarZzab.zzd;
        if (i2 != 0) {
            i = 2;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (zzaX(zzabVar)) {
                        this.zzt = zzabVar;
                        if (!z2 || zzaT()) {
                        }
                    } else {
                        i = 16;
                    }
                } else if (zzaX(zzabVar)) {
                    this.zzR = true;
                    this.zzS = 1;
                    int i3 = this.zzA;
                    if (i3 != 2 && (i3 != 1 || zzabVar.zzv != zzabVar2.zzv || zzabVar.zzw != zzabVar2.zzw)) {
                        z = false;
                    }
                    this.zzE = z;
                    this.zzt = zzabVar;
                    if (!z2 || zzaT()) {
                    }
                } else {
                    i = 16;
                }
            } else if (zzaX(zzabVar)) {
                this.zzt = zzabVar;
                if (z2) {
                    if (zzaT()) {
                    }
                } else if (this.zzV) {
                    this.zzT = 1;
                    if (this.zzC) {
                        this.zzU = 3;
                    } else {
                        this.zzU = 1;
                    }
                }
            } else {
                i = 16;
            }
            return (zzhtVarZzab.zzd != 0 || (this.zzs == zzsdVar && this.zzU != 3)) ? zzhtVarZzab : new zzht(zzsgVar.zza, zzabVar2, zzabVar, 0, i);
        }
        zzae();
        i = 0;
        if (zzhtVarZzab.zzd != 0) {
        }
    }

    protected abstract zzsa zzaf(zzsg zzsgVar, zzab zzabVar, MediaCrypto mediaCrypto, float f);

    protected abstract List zzag(zzsp zzspVar, zzab zzabVar, boolean z) throws zzsu;

    protected void zzaj(zzhh zzhhVar) throws zzib {
        throw null;
    }

    protected void zzak(Exception exc) {
        throw null;
    }

    protected void zzal(String str, zzsa zzsaVar, long j, long j2) {
        throw null;
    }

    protected void zzam(String str) {
        throw null;
    }

    protected void zzan(zzab zzabVar, MediaFormat mediaFormat) throws zzib {
        throw null;
    }

    protected void zzap() {
    }

    protected void zzaq() throws zzib {
    }

    protected abstract boolean zzar(long j, long j2, zzsd zzsdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar) throws zzib;

    protected boolean zzas(zzab zzabVar) {
        return false;
    }

    protected final float zzat() {
        return this.zzq;
    }

    protected int zzau(zzhh zzhhVar) {
        return 0;
    }

    protected final long zzav() {
        return this.zzad.zzd;
    }

    protected final long zzaw() {
        return this.zzad.zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzli zzay() {
        return this.zzo;
    }

    protected final zzsd zzaz() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlm
    public final int zze() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzle
    public void zzu(int i, Object obj) throws zzib {
        if (i == 11) {
            this.zzo = (zzli) obj;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected void zzx() {
        this.zzm = null;
        zzaR(zzsl.zza);
        this.zzk.clear();
        zzaK();
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected void zzy(boolean z, boolean z2) throws zzib {
        this.zza = new zzhs();
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected void zzz(long j, boolean z) throws zzib {
        this.zzaa = false;
        this.zzab = false;
        if (this.zzO) {
            this.zzi.zzb();
            this.zzh.zzb();
            this.zzP = false;
            this.zzl.zzb();
        } else {
            zzaJ();
        }
        zzee zzeeVar = this.zzad.zze;
        if (zzeeVar.zza() > 0) {
            this.zzac = true;
        }
        zzeeVar.zze();
        this.zzk.clear();
    }

    private final void zzaS() throws zzib {
        zzrg zzrgVar = this.zzah;
        zzrgVar.getClass();
        this.zzag = zzrgVar;
        this.zzT = 0;
        this.zzU = 0;
    }

    private final void zzai() throws zzib {
        int i = this.zzU;
        if (i == 1) {
            zzah();
            return;
        }
        if (i == 2) {
            zzah();
            zzaS();
        } else if (i != 3) {
            this.zzab = true;
            zzaq();
        } else {
            zzaG();
            zzaC();
        }
    }
}
