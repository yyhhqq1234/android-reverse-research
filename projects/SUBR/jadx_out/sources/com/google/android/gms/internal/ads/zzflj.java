package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzflj extends zzflm {
    private static final zzflj zzb = new zzflj();

    private zzflj() {
    }

    public static zzflj zza() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzflm
    public final void zzb(boolean z) {
        Iterator it = zzflk.zza().zzc().iterator();
        while (it.hasNext()) {
            ((zzfkt) it.next()).zzg().zzk(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzflm
    public final boolean zzc() {
        Iterator it = zzflk.zza().zzb().iterator();
        while (it.hasNext()) {
            View viewZzf = ((zzfkt) it.next()).zzf();
            if (viewZzf != null && viewZzf.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
