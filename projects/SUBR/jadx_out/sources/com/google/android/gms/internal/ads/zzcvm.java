package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcvm extends com.google.android.gms.ads.internal.client.zzdx {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final List zze;
    private final long zzf;
    private final String zzg;
    private final zzedb zzh;
    private final Bundle zzi;

    public zzcvm(zzfbo zzfboVar, String str, zzedb zzedbVar, zzfbr zzfbrVar, String str2) {
        String string = null;
        this.zzb = zzfboVar == null ? null : zzfboVar.zzab;
        this.zzc = str2;
        this.zzd = zzfbrVar == null ? null : zzfbrVar.zzb;
        if (("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) && zzfboVar != null) {
            try {
                string = zzfboVar.zzv.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.zza = string != null ? string : str;
        this.zze = zzedbVar.zzc();
        this.zzh = zzedbVar;
        this.zzf = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() / 1000;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgE)).booleanValue() || zzfbrVar == null) {
            this.zzi = new Bundle();
        } else {
            this.zzi = zzfbrVar.zzk;
        }
        this.zzg = (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzje)).booleanValue() || zzfbrVar == null || TextUtils.isEmpty(zzfbrVar.zzi)) ? "" : zzfbrVar.zzi;
    }

    public final long zzc() {
        return this.zzf;
    }

    public final String zzd() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdy
    public final Bundle zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdy
    public final com.google.android.gms.ads.internal.client.zzw zzf() {
        zzedb zzedbVar = this.zzh;
        if (zzedbVar != null) {
            return zzedbVar.zza();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdy
    public final String zzg() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdy
    public final String zzh() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdy
    public final String zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdy
    public final List zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzd;
    }
}
