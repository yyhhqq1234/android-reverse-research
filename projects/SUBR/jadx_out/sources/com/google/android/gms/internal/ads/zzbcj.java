package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinMediationProvider;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
public final class zzbcj implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzg;
    private final Object zzb = new Object();
    private final ConditionVariable zzc = new ConditionVariable();
    private volatile boolean zzd = false;
    volatile boolean zza = false;
    private SharedPreferences zze = null;
    private Bundle zzf = new Bundle();
    private JSONObject zzh = new JSONObject();
    private boolean zzi = false;
    private boolean zzj = false;

    private final void zzg(final SharedPreferences sharedPreferences) {
        if (sharedPreferences == null) {
            return;
        }
        try {
            this.zzh = new JSONObject((String) zzbcn.zza(new zzfvf() { // from class: com.google.android.gms.internal.ads.zzbcg
                @Override // com.google.android.gms.internal.ads.zzfvf
                public final Object zza() {
                    return sharedPreferences.getString("flag_configuration", JsonUtils.EMPTY_JSON);
                }
            }));
        } catch (JSONException unused) {
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzg(sharedPreferences);
        }
    }

    public final Object zza(final zzbcc zzbccVar) {
        if (!this.zzc.block(5000L)) {
            synchronized (this.zzb) {
                if (!this.zza) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzd || this.zze == null || this.zzj) {
            synchronized (this.zzb) {
                if (this.zzd && this.zze != null && !this.zzj) {
                }
                return zzbccVar.zzk();
            }
        }
        if (zzbccVar.zze() != 2) {
            return (zzbccVar.zze() == 1 && this.zzh.has(zzbccVar.zzl())) ? zzbccVar.zza(this.zzh) : zzbcn.zza(new zzfvf() { // from class: com.google.android.gms.internal.ads.zzbch
                @Override // com.google.android.gms.internal.ads.zzfvf
                public final Object zza() {
                    return this.zza.zzc(zzbccVar);
                }
            });
        }
        Bundle bundle = this.zzf;
        return bundle == null ? zzbccVar.zzk() : zzbccVar.zzb(bundle);
    }

    final /* synthetic */ Object zzc(zzbcc zzbccVar) {
        return zzbccVar.zzc(this.zze);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x011f A[Catch: all -> 0x015f, TRY_ENTER, TryCatch #3 {, blocks: (B:7:0x0008, B:9:0x000c, B:11:0x000e, B:13:0x0013, B:14:0x0015, B:16:0x0027, B:17:0x002b, B:18:0x002d, B:38:0x0099, B:39:0x00a0, B:48:0x00d1, B:49:0x00d8, B:65:0x011f, B:66:0x0126, B:74:0x014d, B:75:0x0154, B:78:0x0157, B:79:0x015e, B:20:0x0042, B:23:0x004c, B:27:0x0055, B:30:0x0060, B:31:0x0068, B:33:0x006e, B:35:0x007e, B:37:0x0095, B:41:0x00a2, B:43:0x00a6, B:45:0x00b6, B:47:0x00cd, B:51:0x00da, B:61:0x0119, B:68:0x0128, B:70:0x013f, B:72:0x0143, B:73:0x0146, B:54:0x00eb, B:56:0x00f9, B:58:0x0101, B:59:0x010c), top: B:89:0x0008, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0128 A[Catch: all -> 0x0156, TRY_ENTER, TryCatch #0 {all -> 0x0156, blocks: (B:20:0x0042, B:23:0x004c, B:27:0x0055, B:30:0x0060, B:31:0x0068, B:33:0x006e, B:35:0x007e, B:37:0x0095, B:41:0x00a2, B:43:0x00a6, B:45:0x00b6, B:47:0x00cd, B:51:0x00da, B:61:0x0119, B:68:0x0128, B:70:0x013f, B:72:0x0143, B:73:0x0146, B:54:0x00eb, B:56:0x00f9, B:58:0x0101, B:59:0x010c), top: B:84:0x0042, outer: #3 }] */
    public final void zzd(Context context) {
        SharedPreferences sharedPreferencesZza;
        final SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        if (this.zzd) {
            return;
        }
        synchronized (this.zzb) {
            if (this.zzd) {
                return;
            }
            if (!this.zza) {
                this.zza = true;
            }
            this.zzi = TextUtils.equals(context.getPackageName(), "com.google.android.gms");
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.zzg = context;
            try {
                this.zzf = Wrappers.packageManager(context).getApplicationInfo(this.zzg.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            }
            try {
                Context context2 = this.zzg;
                Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context2);
                if (remoteContext != null || context2 == null || (remoteContext = context2.getApplicationContext()) != null) {
                    context2 = remoteContext;
                }
                if (context2 != null) {
                    com.google.android.gms.ads.internal.client.zzbe.zzb();
                    sharedPreferencesZza = zzbce.zza(context2);
                } else {
                    sharedPreferencesZza = null;
                }
                if (sharedPreferencesZza != null) {
                    zzbfc.zzc(new zzbci(this, sharedPreferencesZza));
                }
                if (!this.zzi && ((Long) zzbed.zzd.zze()).longValue() > 0 && zzbbv.zza(this.zzg) >= ((Long) zzbed.zzd.zze()).longValue()) {
                    this.zzj = true;
                    this.zzd = true;
                    this.zza = false;
                    this.zzc.open();
                    return;
                }
                if (!this.zzi && ((Long) zzbed.zzf.zze()).longValue() > 0 && zzbbv.zzb(this.zzg) >= ((Long) zzbed.zzf.zze()).longValue()) {
                    this.zzj = true;
                    this.zzd = true;
                    this.zza = false;
                    this.zzc.open();
                    return;
                }
                Context context3 = this.zzg;
                if (!((Boolean) zzbel.zzg.zze()).booleanValue()) {
                    if (((Boolean) zzbel.zzh.zze()).booleanValue() && (sharedPreferences = context3.getSharedPreferences(AppLovinMediationProvider.ADMOB, 0)) != null) {
                        try {
                            if (new JSONObject((String) zzbcn.zza(new zzfvf() { // from class: com.google.android.gms.internal.ads.zzbcf
                                @Override // com.google.android.gms.internal.ads.zzfvf
                                public final Object zza() {
                                    return sharedPreferences.getString("app_settings_json", JsonUtils.EMPTY_JSON);
                                }
                            })).optBoolean("local_flags_enabled")) {
                            }
                        } catch (JSONException unused2) {
                        }
                    }
                    if (context2 == null) {
                        this.zza = false;
                        this.zzc.open();
                        return;
                    }
                    com.google.android.gms.ads.internal.client.zzbe.zzb();
                    this.zze = zzbce.zza(context2);
                    if (!((Boolean) zzbel.zza.zze()).booleanValue() && (sharedPreferences2 = this.zze) != null) {
                        sharedPreferences2.registerOnSharedPreferenceChangeListener(this);
                    }
                    zzg(this.zze);
                    this.zzd = true;
                    this.zza = false;
                    this.zzc.open();
                }
                context2 = this.zzg;
                if (context2 == null) {
                    this.zza = false;
                    this.zzc.open();
                    return;
                }
                com.google.android.gms.ads.internal.client.zzbe.zzb();
                this.zze = zzbce.zza(context2);
                if (!((Boolean) zzbel.zza.zze()).booleanValue()) {
                    sharedPreferences2.registerOnSharedPreferenceChangeListener(this);
                }
                zzg(this.zze);
                this.zzd = true;
                this.zza = false;
                this.zzc.open();
            } catch (Throwable th) {
                this.zza = false;
                this.zzc.open();
                throw th;
            }
        }
    }

    public final boolean zze() {
        return this.zzj;
    }

    final boolean zzf() {
        return this.zzi;
    }

    public final Object zzb(zzbcc zzbccVar) {
        return (this.zzd || this.zza) ? zza(zzbccVar) : zzbccVar.zzk();
    }
}
