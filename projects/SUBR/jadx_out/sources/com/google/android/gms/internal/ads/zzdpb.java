package com.google.android.gms.internal.ads;

import android.view.InputEvent;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdpb {

    @Nullable
    private volatile InputEvent zza;

    @Nullable
    public final InputEvent zza() {
        return this.zza;
    }

    public final void zzb(InputEvent inputEvent) {
        this.zza = inputEvent;
    }
}
