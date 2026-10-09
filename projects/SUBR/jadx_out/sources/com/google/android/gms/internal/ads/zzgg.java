package com.google.android.gms.internal.ads;

import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgg implements zzfx {
    private zzgy zzb;
    private String zzc;
    private boolean zzf;
    private final zzgs zza = new zzgs();
    private int zzd = ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED;
    private int zze = ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED;

    public final zzgg zzb(boolean z) {
        this.zzf = true;
        return this;
    }

    public final zzgg zzc(int i) {
        this.zzd = i;
        return this;
    }

    public final zzgg zzd(int i) {
        this.zze = i;
        return this;
    }

    public final zzgg zze(zzgy zzgyVar) {
        this.zzb = zzgyVar;
        return this;
    }

    public final zzgg zzf(String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzgl zza() {
        zzgl zzglVar = new zzgl(this.zzc, this.zzd, this.zze, this.zzf, false, this.zza, null, false, null);
        zzgy zzgyVar = this.zzb;
        if (zzgyVar != null) {
            zzglVar.zzf(zzgyVar);
        }
        return zzglVar;
    }
}
