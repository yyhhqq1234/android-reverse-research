package com.google.android.gms.internal.ads;

import android.os.AsyncTask;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfmw extends AsyncTask {
    private zzfmx zza;
    protected final zzfmo zzd;

    public zzfmw(zzfmo zzfmoVar) {
        this.zzd = zzfmoVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        zzfmx zzfmxVar = this.zza;
        if (zzfmxVar != null) {
            zzfmxVar.zza(this);
        }
    }

    public final void zzb(zzfmx zzfmxVar) {
        this.zza = zzfmxVar;
    }
}
