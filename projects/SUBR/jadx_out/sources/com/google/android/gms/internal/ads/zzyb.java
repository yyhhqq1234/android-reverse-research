package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzyb {
    private zzya zza;
    private zzyj zzb;

    public zzll zze() {
        throw null;
    }

    public void zzj() {
        this.zza = null;
        this.zzb = null;
    }

    public void zzk(zze zzeVar) {
        throw null;
    }

    public boolean zzn() {
        throw null;
    }

    public abstract zzyc zzo(zzlm[] zzlmVarArr, zzwj zzwjVar, zzug zzugVar, zzbq zzbqVar) throws zzib;

    public abstract void zzp(Object obj);

    protected final zzyj zzq() {
        zzyj zzyjVar = this.zzb;
        zzcw.zzb(zzyjVar);
        return zzyjVar;
    }

    public final void zzr(zzya zzyaVar, zzyj zzyjVar) {
        this.zza = zzyaVar;
        this.zzb = zzyjVar;
    }

    protected final void zzs() {
        zzya zzyaVar = this.zza;
        if (zzyaVar != null) {
            zzyaVar.zzj();
        }
    }
}
