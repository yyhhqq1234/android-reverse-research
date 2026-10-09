package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
public final class zzaze {
    private final Object zza = new Object();
    private zzazc zzb = null;
    private boolean zzc = false;

    public final Activity zza() {
        synchronized (this.zza) {
            zzazc zzazcVar = this.zzb;
            if (zzazcVar == null) {
                return null;
            }
            return zzazcVar.zza();
        }
    }

    public final Context zzb() {
        synchronized (this.zza) {
            zzazc zzazcVar = this.zzb;
            if (zzazcVar == null) {
                return null;
            }
            return zzazcVar.zzb();
        }
    }

    public final void zzc(zzazd zzazdVar) {
        synchronized (this.zza) {
            if (this.zzb == null) {
                this.zzb = new zzazc();
            }
            this.zzb.zzf(zzazdVar);
        }
    }

    public final void zzd(Context context) {
        synchronized (this.zza) {
            if (!this.zzc) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                if (application == null) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Can not cast Context to Application");
                    return;
                }
                if (this.zzb == null) {
                    this.zzb = new zzazc();
                }
                this.zzb.zzg(application, context);
                this.zzc = true;
            }
        }
    }

    public final void zze(zzazd zzazdVar) {
        synchronized (this.zza) {
            zzazc zzazcVar = this.zzb;
            if (zzazcVar == null) {
                return;
            }
            zzazcVar.zzh(zzazdVar);
        }
    }
}
