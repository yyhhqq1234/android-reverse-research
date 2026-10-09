package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbsb implements View.OnClickListener {
    final /* synthetic */ zzbsc zza;

    zzbsb(zzbsc zzbscVar) {
        this.zza = zzbscVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zza.zza(true);
    }
}
