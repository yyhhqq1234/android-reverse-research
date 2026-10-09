package com.google.android.gms.internal.ads;

import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzvf implements zzyt, zztv {
    final /* synthetic */ zzvk zza;
    private final Uri zzc;
    private final zzgx zzd;
    private final zzuz zze;
    private final zzacq zzf;
    private final zzda zzg;
    private volatile boolean zzi;
    private long zzk;
    private zzadt zzm;
    private boolean zzn;
    private final zzadj zzh = new zzadj();
    private boolean zzj = true;
    private final long zzb = zztx.zza();
    private zzgd zzl = zzi(0);

    public zzvf(zzvk zzvkVar, Uri uri, zzfy zzfyVar, zzuz zzuzVar, zzacq zzacqVar, zzda zzdaVar) {
        this.zza = zzvkVar;
        this.zzc = uri;
        this.zzd = new zzgx(zzfyVar);
        this.zze = zzuzVar;
        this.zzf = zzacqVar;
        this.zzg = zzdaVar;
    }

    static /* bridge */ /* synthetic */ void zzf(zzvf zzvfVar, long j, long j2) {
        zzvfVar.zzh.zza = j;
        zzvfVar.zzk = j2;
        zzvfVar.zzj = true;
        zzvfVar.zzn = false;
    }

    private final zzgd zzi(long j) {
        zzgb zzgbVar = new zzgb();
        zzgbVar.zzd(this.zzc);
        zzgbVar.zzc(j);
        zzgbVar.zza(6);
        zzgbVar.zzb(zzvk.zzb);
        return zzgbVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzyt
    public final void zzg() {
        this.zzi = true;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x01e1 */
    @Override // com.google.android.gms.internal.ads.zzyt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvf.zzh():void");
    }

    @Override // com.google.android.gms.internal.ads.zztv
    public final void zza(zzdy zzdyVar) {
        long jMax = !this.zzn ? this.zzk : Math.max(zzvk.zzr(this.zza, true), this.zzk);
        int iZzb = zzdyVar.zzb();
        zzadt zzadtVar = this.zzm;
        zzadtVar.getClass();
        zzadtVar.zzr(zzdyVar, iZzb);
        zzadtVar.zzt(jMax, 1, iZzb, 0, null);
        this.zzn = true;
    }
}
