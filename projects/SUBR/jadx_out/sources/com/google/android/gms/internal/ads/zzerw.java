package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.text.TextUtils;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzerw implements zzetq {
    private final zzfcj zza;
    private final PackageInfo zzb;
    private final com.google.android.gms.ads.internal.util.zzg zzc;

    public zzerw(zzfcj zzfcjVar, PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = zzfcjVar;
        this.zzb = packageInfo;
        this.zzc = zzgVar;
    }

    private final void zzc(Bundle bundle) {
        zzbfl zzbflVar = this.zza.zzi;
        if (zzbflVar == null || zzbflVar.zzi == 0) {
            return;
        }
        bundle.putBoolean("sccg_tap", zzbflVar.zzj);
        bundle.putInt("sccg_dir", this.zza.zzi.zzi);
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        ArrayList arrayList = this.zza.zzg;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        zzc(zzcuvVar.zzb);
    }

    /* JADX WARN: Code duplicated, block: B:70:0x0120  */
    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzbfl zzbflVar;
        JSONArray jSONArrayOptJSONArray;
        String str;
        ArrayList<String> arrayList = this.zza.zzg;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (arrayList == null) {
            return;
        }
        if (arrayList.isEmpty()) {
            zzcuvVar.zza.putInt("native_version", 0);
            return;
        }
        Bundle bundle = zzcuvVar.zza;
        bundle.putInt("native_version", 3);
        bundle.putStringArrayList("native_templates", arrayList);
        bundle.putStringArrayList("native_custom_templates", this.zza.zzh);
        zzbfl zzbflVar2 = this.zza.zzi;
        if (zzbflVar2 != null) {
            int i = zzbflVar2.zza;
            String str2 = y8.h.C;
            if (i > 3) {
                bundle.putBoolean("enable_native_media_orientation", true);
                int i2 = this.zza.zzi.zzh;
                if (i2 == 1) {
                    str = "any";
                } else if (i2 == 2) {
                    str = y8.h.C;
                } else if (i2 != 3) {
                    str = i2 != 4 ? "unknown" : "square";
                } else {
                    str = y8.h.D;
                }
                if (!"unknown".equals(str)) {
                    bundle.putString("native_media_orientation", str);
                }
            }
            int i3 = this.zza.zzi.zzc;
            if (i3 == 0) {
                str2 = "any";
            } else if (i3 == 1) {
                str2 = y8.h.D;
            } else if (i3 != 2) {
                str2 = "unknown";
            }
            if (!"unknown".equals(str2)) {
                bundle.putString("native_image_orientation", str2);
            }
            bundle.putBoolean("native_multiple_images", this.zza.zzi.zzd);
            bundle.putBoolean("use_custom_mute", this.zza.zzi.zzg);
            zzc(zzcuvVar.zza);
        }
        PackageInfo packageInfo = this.zzb;
        int i4 = packageInfo != null ? packageInfo.versionCode : 0;
        if (i4 > this.zzc.zza()) {
            this.zzc.zzq();
            this.zzc.zzt(i4);
        }
        JSONObject jSONObjectZzn = this.zzc.zzn();
        String string = null;
        if (jSONObjectZzn != null && (jSONArrayOptJSONArray = jSONObjectZzn.optJSONArray(this.zza.zzf)) != null) {
            string = jSONArrayOptJSONArray.toString();
        }
        if (!TextUtils.isEmpty(string)) {
            bundle.putString("native_advanced_settings", string);
        }
        int i5 = this.zza.zzk;
        if (i5 > 1) {
            bundle.putInt("max_num_ads", i5);
        }
        zzblz zzblzVar = this.zza.zzb;
        if (zzblzVar != null) {
            if (TextUtils.isEmpty(zzblzVar.zzc)) {
                int i6 = zzblzVar.zza;
                String str3 = NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON;
                if (i6 >= 2) {
                    int i7 = zzblzVar.zzd;
                    if (i7 == 2 || i7 != 3) {
                        str3 = "l";
                    }
                } else {
                    int i8 = zzblzVar.zzb;
                    if (i8 == 1) {
                        str3 = "l";
                    } else if (i8 != 2) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Instream ad video aspect ratio " + i8 + " is wrong.");
                        str3 = "l";
                    }
                }
                bundle.putString("ia_var", str3);
            } else {
                bundle.putString("ad_tag", zzblzVar.zzc);
            }
            bundle.putBoolean("instr", true);
        }
        if (this.zza.zza() != null) {
            bundle.putBoolean("has_delayed_banner_listener", true);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlJ)).booleanValue() || (zzbflVar = this.zza.zzi) == null) {
            return;
        }
        if (zzbflVar.zzf != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("startMuted", this.zza.zzi.zzf.zza);
            bundle2.putBoolean("clickToExpandRequested", this.zza.zzi.zzf.zzc);
            bundle2.putBoolean("customControlsRequested", this.zza.zzi.zzf.zzb);
            bundle.putBundle(MimeTypes.BASE_TYPE_VIDEO, bundle2);
        }
        bundle.putBoolean("disable_image_loading", this.zza.zzi.zzb);
        bundle.putInt("preferred_ad_choices_position", this.zza.zzi.zze);
    }
}
