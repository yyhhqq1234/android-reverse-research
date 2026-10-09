package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Objects;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqs extends zzsn implements zzkk {
    private final Context zzb;
    private final zzpe zzc;
    private final zzpm zzd;
    private final zzrz zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private zzab zzi;
    private zzab zzj;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private int zzo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzqs(Context context, zzsb zzsbVar, zzsp zzspVar, boolean z, Handler handler, zzpf zzpfVar, zzpm zzpmVar) {
        super(1, zzsbVar, zzspVar, false, 44100.0f);
        zzqr zzqrVar = null;
        zzrz zzrzVar = zzei.zza >= 35 ? new zzrz(zzry.zza) : null;
        this.zzb = context.getApplicationContext();
        this.zzd = zzpmVar;
        this.zze = zzrzVar;
        this.zzo = -1000;
        this.zzc = new zzpe(handler, zzpfVar);
        zzpmVar.zzq(new zzqq(this, zzqrVar));
    }

    private final int zzaQ(zzsg zzsgVar, zzab zzabVar) {
        if (!"OMX.google.raw.decoder".equals(zzsgVar.zza) || zzei.zza >= 24 || (zzei.zza == 23 && zzei.zzM(this.zzb))) {
            return zzabVar.zzp;
        }
        return -1;
    }

    private static List zzaR(zzsp zzspVar, zzab zzabVar, boolean z, zzpm zzpmVar) throws zzsu {
        zzsg zzsgVarZza;
        if (zzabVar.zzo == null) {
            return zzfxn.zzn();
        }
        return (!zzpmVar.zzA(zzabVar) || (zzsgVarZza = zzta.zza()) == null) ? zzta.zze(zzspVar, zzabVar, false, false) : zzfxn.zzo(zzsgVarZza);
    }

    private final void zzaS() {
        long jZzb = this.zzd.zzb(zzW());
        if (jZzb != Long.MIN_VALUE) {
            if (!this.zzl) {
                jZzb = Math.max(this.zzk, jZzb);
            }
            this.zzk = jZzb;
            this.zzl = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzA() {
        zzrz zzrzVar;
        this.zzd.zzk();
        if (zzei.zza < 35 || (zzrzVar = this.zze) == null) {
            return;
        }
        zzrzVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzC() {
        this.zzn = false;
        try {
            super.zzC();
            if (this.zzm) {
            }
        } finally {
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzl();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzD() {
        this.zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzhr
    protected final void zzE() {
        zzaS();
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzlj, com.google.android.gms.internal.ads.zzlm
    public final String zzU() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final boolean zzW() {
        return super.zzW() && this.zzd.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzlj
    public final boolean zzX() {
        return this.zzd.zzy() || super.zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final float zzZ(float f, zzab zzabVar, zzab[] zzabVarArr) {
        int iMax = -1;
        for (zzab zzabVar2 : zzabVarArr) {
            int i = zzabVar2.zzE;
            if (i != -1) {
                iMax = Math.max(iMax, i);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f;
    }

    @Override // com.google.android.gms.internal.ads.zzkk
    public final long zza() {
        if (zzcT() == 2) {
            zzaS();
        }
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final int zzaa(zzsp zzspVar, zzab zzabVar) throws zzsu {
        int i;
        boolean z;
        if (!zzbb.zzg(zzabVar.zzo)) {
            return 128;
        }
        int i2 = zzabVar.zzK;
        boolean zZzaP = zzaP(zzabVar);
        int i3 = 1;
        if (!zZzaP || (i2 != 0 && zzta.zza() == null)) {
            i = 0;
        } else {
            zzor zzorVarZzd = this.zzd.zzd(zzabVar);
            if (zzorVarZzd.zzb) {
                i = true != zzorVarZzd.zzc ? 512 : 1536;
                if (zzorVarZzd.zzd) {
                    i |= 2048;
                }
            } else {
                i = 0;
            }
            if (this.zzd.zzA(zzabVar)) {
                return i | 172;
            }
        }
        if ((!"audio/raw".equals(zzabVar.zzo) || this.zzd.zzA(zzabVar)) && this.zzd.zzA(zzei.zzA(2, zzabVar.zzD, zzabVar.zzE))) {
            List listZzaR = zzaR(zzspVar, zzabVar, false, this.zzd);
            if (!listZzaR.isEmpty()) {
                if (zZzaP) {
                    zzsg zzsgVar = (zzsg) listZzaR.get(0);
                    boolean zZze = zzsgVar.zze(zzabVar);
                    if (!zZze) {
                        int i4 = 1;
                        while (true) {
                            if (i4 >= listZzaR.size()) {
                                z = true;
                                break;
                            }
                            zzsg zzsgVar2 = (zzsg) listZzaR.get(i4);
                            if (zzsgVar2.zze(zzabVar)) {
                                zzsgVar = zzsgVar2;
                                z = false;
                                zZze = true;
                                break;
                            }
                            i4++;
                        }
                    } else {
                        z = true;
                        break;
                    }
                    int i5 = true != zZze ? 3 : 4;
                    int i6 = 8;
                    if (zZze && zzsgVar.zzf(zzabVar)) {
                        i6 = 16;
                    }
                    return i5 | i6 | 32 | (true != zzsgVar.zzg ? 0 : 64) | (true != z ? 0 : 128) | i;
                }
                i3 = 2;
            }
        }
        return i3 | 128;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final zzht zzab(zzsg zzsgVar, zzab zzabVar, zzab zzabVar2) {
        int i;
        int i2;
        zzht zzhtVarZzb = zzsgVar.zzb(zzabVar, zzabVar2);
        int i3 = zzhtVarZzb.zze;
        if (zzaM(zzabVar2)) {
            i3 |= 32768;
        }
        if (zzaQ(zzsgVar, zzabVar2) > this.zzf) {
            i3 |= 64;
        }
        String str = zzsgVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzhtVarZzb.zzd;
            i2 = 0;
        }
        return new zzht(str, zzabVar, zzabVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final zzsa zzaf(zzsg zzsgVar, zzab zzabVar, MediaCrypto mediaCrypto, float f) {
        zzab[] zzabVarArrZzT = zzT();
        int length = zzabVarArrZzT.length;
        int iZzaQ = zzaQ(zzsgVar, zzabVar);
        if (length != 1) {
            for (zzab zzabVar2 : zzabVarArrZzT) {
                if (zzsgVar.zzb(zzabVar, zzabVar2).zzd != 0) {
                    iZzaQ = Math.max(iZzaQ, zzaQ(zzsgVar, zzabVar2));
                }
            }
        }
        this.zzf = iZzaQ;
        this.zzg = zzei.zza < 24 && "OMX.SEC.aac.dec".equals(zzsgVar.zza) && "samsung".equals(zzei.zzc) && (zzei.zzb.startsWith("zeroflte") || zzei.zzb.startsWith("herolte") || zzei.zzb.startsWith("heroqlte"));
        String str = zzsgVar.zza;
        this.zzh = str.equals("OMX.google.opus.decoder") || str.equals("c2.android.opus.decoder") || str.equals("OMX.google.vorbis.decoder") || str.equals("c2.android.vorbis.decoder");
        String str2 = zzsgVar.zzc;
        int i = this.zzf;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str2);
        mediaFormat.setInteger("channel-count", zzabVar.zzD);
        mediaFormat.setInteger("sample-rate", zzabVar.zzE);
        zzdr.zzb(mediaFormat, zzabVar.zzr);
        zzdr.zza(mediaFormat, "max-input-size", i);
        if (zzei.zza >= 23) {
            mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
            if (f != -1.0f && (zzei.zza != 23 || (!"ZTE B2017G".equals(zzei.zzd) && !"AXON 7 mini".equals(zzei.zzd)))) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (zzei.zza <= 28 && "audio/ac4".equals(zzabVar.zzo)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (zzei.zza >= 24 && this.zzd.zza(zzei.zzA(4, zzabVar.zzD, zzabVar.zzE)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (zzei.zza >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (zzei.zza >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.zzo));
        }
        this.zzj = (!"audio/raw".equals(zzsgVar.zzb) || "audio/raw".equals(zzabVar.zzo)) ? null : zzabVar;
        return zzsa.zza(zzsgVar, mediaFormat, zzabVar, null, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final List zzag(zzsp zzspVar, zzab zzabVar, boolean z) throws zzsu {
        return zzta.zzf(zzaR(zzspVar, zzabVar, false, this.zzd), zzabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzaj(zzhh zzhhVar) {
        zzab zzabVar;
        if (zzei.zza < 29 || (zzabVar = zzhhVar.zza) == null || !Objects.equals(zzabVar.zzo, "audio/opus") || !zzaL()) {
            return;
        }
        ByteBuffer byteBuffer = zzhhVar.zzf;
        byteBuffer.getClass();
        zzab zzabVar2 = zzhhVar.zza;
        zzabVar2.getClass();
        int i = zzabVar2.zzG;
        if (byteBuffer.remaining() == 8) {
            this.zzd.zzr(i, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzak(Exception exc) {
        zzdo.zzd("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zza(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzal(String str, zzsa zzsaVar, long j, long j2) {
        this.zzc.zze(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzam(String str) {
        this.zzc.zzf(str);
    }

    protected final void zzao() {
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzap() {
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzaq() throws zzib {
        try {
            this.zzd.zzj();
        } catch (zzpl e) {
            throw zzcW(e, e.zzc, e.zzb, true != zzaL() ? IronSourceConstants.errorCode_isReadyException : IronSourceConstants.errorCode_loadInProgress);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final boolean zzas(zzab zzabVar) {
        zzn();
        return this.zzd.zzA(zzabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkk
    public final zzbe zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzkk
    public final void zzg(zzbe zzbeVar) {
        this.zzd.zzs(zzbeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkk
    public final boolean zzj() {
        boolean z = this.zzn;
        this.zzn = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzlj
    public final zzkk zzl() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzx() {
        this.zzm = true;
        this.zzi = null;
        try {
            this.zzd.zzf();
            super.zzx();
        } catch (Throwable th) {
            super.zzx();
            throw th;
        } finally {
            this.zzc.zzg(this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzy(boolean z, boolean z2) throws zzib {
        super.zzy(z, z2);
        this.zzc.zzh(this.zza);
        zzn();
        this.zzd.zzt(zzo());
        this.zzd.zzp(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr
    protected final void zzz(long j, boolean z) throws zzib {
        super.zzz(j, z);
        this.zzd.zzf();
        this.zzk = j;
        this.zzn = false;
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final zzht zzac(zzke zzkeVar) throws zzib {
        zzab zzabVar = zzkeVar.zza;
        zzabVar.getClass();
        this.zzi = zzabVar;
        zzht zzhtVarZzac = super.zzac(zzkeVar);
        this.zzc.zzi(zzabVar, zzhtVarZzac);
        return zzhtVarZzac;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final boolean zzar(long j, long j2, zzsd zzsdVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar) throws zzib {
        byteBuffer.getClass();
        if (this.zzj != null && (i2 & 2) != 0) {
            zzsdVar.getClass();
            zzsdVar.zzo(i, false);
            return true;
        }
        if (z) {
            if (zzsdVar != null) {
                zzsdVar.zzo(i, false);
            }
            this.zza.zzf += i3;
            this.zzd.zzg();
            return true;
        }
        try {
            if (!this.zzd.zzx(byteBuffer, j3, i3)) {
                return false;
            }
            if (zzsdVar != null) {
                zzsdVar.zzo(i, false);
            }
            this.zza.zze += i3;
            return true;
        } catch (zzpi e) {
            zzab zzabVar2 = this.zzi;
            if (zzaL()) {
                zzn();
            }
            throw zzcW(e, zzabVar2, e.zzb, IronSourceConstants.errorCode_biddingDataException);
        } catch (zzpl e2) {
            if (zzaL()) {
                zzn();
            }
            throw zzcW(e2, zzabVar, e2.zzb, IronSourceConstants.errorCode_isReadyException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn, com.google.android.gms.internal.ads.zzhr, com.google.android.gms.internal.ads.zzle
    public final void zzu(int i, Object obj) throws zzib {
        zzrz zzrzVar;
        if (i == 2) {
            zzpm zzpmVar = this.zzd;
            obj.getClass();
            zzpmVar.zzw(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            zze zzeVar = (zze) obj;
            zzpm zzpmVar2 = this.zzd;
            zzeVar.getClass();
            zzpmVar2.zzm(zzeVar);
            return;
        }
        if (i == 6) {
            zzf zzfVar = (zzf) obj;
            zzpm zzpmVar3 = this.zzd;
            zzfVar.getClass();
            zzpmVar3.zzo(zzfVar);
            return;
        }
        if (i == 12) {
            if (zzei.zza >= 23) {
                this.zzd.zzu((AudioDeviceInfo) obj);
                return;
            }
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.zzo = ((Integer) obj).intValue();
            zzsd zzsdVarZzaz = zzaz();
            if (zzsdVarZzaz == null || zzei.zza < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.zzo));
            zzsdVarZzaz.zzq(bundle);
            return;
        }
        if (i == 9) {
            zzpm zzpmVar4 = this.zzd;
            obj.getClass();
            zzpmVar4.zzv(((Boolean) obj).booleanValue());
        } else {
            if (i != 10) {
                super.zzu(i, obj);
                return;
            }
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            this.zzd.zzn(iIntValue);
            if (zzei.zza < 35 || (zzrzVar = this.zze) == null) {
                return;
            }
            zzrzVar.zzd(iIntValue);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    protected final void zzan(zzab zzabVar, MediaFormat mediaFormat) throws zzib {
        int iZzn;
        int[] iArr;
        int i;
        zzab zzabVar2 = this.zzj;
        int[] iArr2 = null;
        if (zzabVar2 != null) {
            zzabVar = zzabVar2;
        } else if (zzaz() != null) {
            mediaFormat.getClass();
            if ("audio/raw".equals(zzabVar.zzo)) {
                iZzn = zzabVar.zzF;
            } else if (zzei.zza < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                iZzn = mediaFormat.containsKey("v-bits-per-sample") ? zzei.zzn(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            } else {
                iZzn = mediaFormat.getInteger("pcm-encoding");
            }
            zzz zzzVar = new zzz();
            zzzVar.zzaa("audio/raw");
            zzzVar.zzU(iZzn);
            zzzVar.zzG(zzabVar.zzG);
            zzzVar.zzH(zzabVar.zzH);
            zzzVar.zzT(zzabVar.zzl);
            Object obj = zzabVar.zzm;
            zzzVar.zzM(zzabVar.zza);
            zzzVar.zzO(zzabVar.zzb);
            zzzVar.zzP(zzabVar.zzc);
            zzzVar.zzQ(zzabVar.zzd);
            zzzVar.zzac(zzabVar.zze);
            zzzVar.zzY(zzabVar.zzf);
            zzzVar.zzz(mediaFormat.getInteger("channel-count"));
            zzzVar.zzab(mediaFormat.getInteger("sample-rate"));
            zzab zzabVarZzag = zzzVar.zzag();
            if (this.zzg && zzabVarZzag.zzD == 6 && (i = zzabVar.zzD) < 6) {
                iArr2 = new int[i];
                for (int i2 = 0; i2 < zzabVar.zzD; i2++) {
                    iArr2[i2] = i2;
                }
            } else if (this.zzh) {
                int i3 = zzabVarZzag.zzD;
                if (i3 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i3 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i3 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i3 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i3 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
                iArr2 = iArr;
            }
            zzabVar = zzabVarZzag;
        }
        try {
            if (zzei.zza >= 29) {
                if (zzaL()) {
                    zzn();
                }
                zzcw.zzf(zzei.zza >= 29);
            }
            this.zzd.zze(zzabVar, 0, iArr2);
        } catch (zzph e) {
            throw zzcW(e, e.zza, false, IronSourceConstants.errorCode_biddingDataException);
        }
    }
}
