package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzexo extends zzeww {
    public zzexo(Context context, Executor executor, zzcgx zzcgxVar, zzezf zzezfVar, zzexm zzexmVar, zzfch zzfchVar, VersionInfoParcel versionInfoParcel) {
        super(context, executor, zzcgxVar, zzezfVar, zzexmVar, zzfchVar, versionInfoParcel);
    }

    @Override // com.google.android.gms.internal.ads.zzeww
    protected final /* bridge */ /* synthetic */ zzcuy zze(zzcoj zzcojVar, zzcvc zzcvcVar, zzdbm zzdbmVar) {
        zzcnz zzcnzVarZzd = this.zza.zzd();
        zzcnzVarZzd.zzd(zzcvcVar);
        zzcnzVarZzd.zzc(zzdbmVar);
        return zzcnzVarZzd;
    }
}
