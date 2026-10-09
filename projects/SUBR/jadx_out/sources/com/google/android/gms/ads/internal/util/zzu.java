package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbcl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzu extends zzt {
    static final boolean zze(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final boolean zzd(Activity activity, Configuration configuration) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeR)).booleanValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeT)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        com.google.android.gms.ads.internal.client.zzbc.zzb();
        int iZzx = com.google.android.gms.ads.internal.util.client.zzf.zzx(activity, configuration.screenHeightDp);
        int iZzx2 = com.google.android.gms.ads.internal.util.client.zzf.zzx(activity, configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzv.zzq();
        DisplayMetrics displayMetricsZzu = zzs.zzu(windowManager);
        int i = displayMetricsZzu.heightPixels;
        int i2 = displayMetricsZzu.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int iRound = ((int) Math.round(((double) activity.getResources().getDisplayMetrics().density) + 0.5d)) * ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeP)).intValue();
        return (zze(i, iZzx + dimensionPixelSize, iRound) && zze(i2, iZzx2, iRound)) ? false : true;
    }
}
