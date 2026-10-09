package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbaq implements BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzbar zza;

    zzbaq(zzbar zzbarVar) {
        this.zza = zzbarVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.zza.zzc) {
            this.zza.zzf = null;
            zzbar zzbarVar = this.zza;
            if (zzbarVar.zzd != null) {
                zzbarVar.zzd = null;
            }
            this.zza.zzc.notifyAll();
        }
    }
}
