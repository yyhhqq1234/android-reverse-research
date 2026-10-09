package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.OnAdInspectorClosedListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzeu extends zzdk {
    private zzeu() {
        throw null;
    }

    /* synthetic */ zzeu(zzew zzewVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdl
    public final void zze(zze zzeVar) {
        OnAdInspectorClosedListener onAdInspectorClosedListener = zzex.zzf().zzj;
        if (onAdInspectorClosedListener != null) {
            onAdInspectorClosedListener.onAdInspectorClosed(zzeVar == null ? null : new AdInspectorError(zzeVar.zza, zzeVar.zzb, zzeVar.zzc));
        }
    }
}
