package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzher;
import com.google.android.gms.internal.ads.zzhfj;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class CsiParamDefaults_Factory implements zzher<CsiParamDefaults> {
    private final zzhfj zza;
    private final zzhfj zzb;

    public CsiParamDefaults_Factory(zzhfj<Context> zzhfjVar, zzhfj<VersionInfoParcel> zzhfjVar2) {
        this.zza = zzhfjVar;
        this.zzb = zzhfjVar2;
    }

    public static CsiParamDefaults_Factory create(zzhfj<Context> zzhfjVar, zzhfj<VersionInfoParcel> zzhfjVar2) {
        return new CsiParamDefaults_Factory(zzhfjVar, zzhfjVar2);
    }

    public static CsiParamDefaults newInstance(Context context, VersionInfoParcel versionInfoParcel) {
        return new CsiParamDefaults(context, versionInfoParcel);
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    /* JADX INFO: renamed from: get, reason: merged with bridge method [inline-methods] */
    public CsiParamDefaults zzb() {
        return newInstance((Context) this.zza.zzb(), (VersionInfoParcel) this.zzb.zzb());
    }
}
