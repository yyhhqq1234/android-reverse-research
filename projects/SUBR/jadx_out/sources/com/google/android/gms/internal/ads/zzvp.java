package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Looper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzvp extends zztf implements zzvg {
    private final zzfx zza;
    private final zzrf zzb;
    private final int zzc;
    private boolean zzd = true;
    private long zze = -9223372036854775807L;
    private boolean zzf;
    private boolean zzg;
    private zzgy zzh;
    private zzar zzi;
    private final zzvm zzj;
    private final zzyo zzk;

    /* synthetic */ zzvp(zzar zzarVar, zzfx zzfxVar, zzvm zzvmVar, zzrf zzrfVar, zzyo zzyoVar, int i, boolean z, zzfvf zzfvfVar, zzvo zzvoVar) {
        this.zzi = zzarVar;
        this.zza = zzfxVar;
        this.zzj = zzvmVar;
        this.zzb = zzrfVar;
        this.zzk = zzyoVar;
        this.zzc = i;
    }

    private final void zzw() {
        long j = this.zze;
        boolean z = this.zzf;
        boolean z2 = this.zzg;
        zzar zzarVarZzJ = zzJ();
        zzwc zzwcVar = new zzwc(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j, 0L, 0L, z, false, false, null, zzarVarZzJ, z2 ? zzarVarZzJ.zzc : null);
        zzo(this.zzd ? new zzvl(this, zzwcVar) : zzwcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzG(zzue zzueVar) {
        ((zzvk) zzueVar).zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final zzue zzI(zzug zzugVar, zzyk zzykVar, long j) {
        zzfy zzfyVarZza = this.zza.zza();
        zzgy zzgyVar = this.zzh;
        if (zzgyVar != null) {
            zzfyVarZza.zzf(zzgyVar);
        }
        zzam zzamVar = zzJ().zzb;
        zzamVar.getClass();
        Uri uri = zzamVar.zza;
        zzvm zzvmVar = this.zzj;
        zzb();
        return new zzvk(uri, zzfyVarZza, new zzti(zzvmVar.zza), this.zzb, zzc(zzugVar), this.zzk, zze(zzugVar), this, zzykVar, null, this.zzc, false, zzei.zzs(-9223372036854775807L), null);
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final synchronized zzar zzJ() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzvg
    public final void zza(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.zze;
        }
        if (!this.zzd && this.zze == j && this.zzf == z && this.zzg == z2) {
            return;
        }
        this.zze = j;
        this.zzf = z;
        this.zzg = z2;
        this.zzd = false;
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zztf
    protected final void zzn(zzgy zzgyVar) {
        this.zzh = zzgyVar;
        Looper.myLooper().getClass();
        zzb();
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zztf
    protected final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zztf, com.google.android.gms.internal.ads.zzui
    public final synchronized void zzt(zzar zzarVar) {
        this.zzi = zzarVar;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzz() {
    }
}
