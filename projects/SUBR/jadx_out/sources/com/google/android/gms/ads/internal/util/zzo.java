package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbdm;
import com.google.android.gms.internal.ads.zzhfk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzo implements zzbdl {
    final /* synthetic */ zzbdm zza;
    final /* synthetic */ Context zzb;
    final /* synthetic */ Uri zzc;

    zzo(zzs zzsVar, zzbdm zzbdmVar, Context context, Uri uri) {
        this.zza = zzbdmVar;
        this.zzb = context;
        this.zzc = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbdl
    public final void zza() {
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder(this.zza.zza()).build();
        customTabsIntentBuild.intent.setPackage(zzhfk.zza(this.zzb));
        customTabsIntentBuild.launchUrl(this.zzb, this.zzc);
        this.zza.zzf((Activity) this.zzb);
    }
}
