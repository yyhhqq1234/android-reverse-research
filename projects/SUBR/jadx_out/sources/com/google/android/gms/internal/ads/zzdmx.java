package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdmx implements zzbjp {
    private final zzbha zza;
    private final zzdnl zzb;
    private final zzhel zzc;

    public zzdmx(zzdiq zzdiqVar, zzdif zzdifVar, zzdnl zzdnlVar, zzhel zzhelVar) {
        this.zza = zzdiqVar.zzc(zzdifVar.zzA());
        this.zzb = zzdnlVar;
        this.zzc = zzhelVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("asset");
        try {
            this.zza.zze((zzbgq) this.zzc.zzb(), str);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to call onCustomClick for asset " + str + ".", e);
        }
    }

    public final void zzb() {
        if (this.zza == null) {
            return;
        }
        this.zzb.zzl("/nativeAdCustomClick", this);
    }
}
