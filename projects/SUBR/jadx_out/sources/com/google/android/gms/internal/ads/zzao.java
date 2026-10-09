package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzao {
    public static final zzao zza = new zzao(new zzan());
    public final Uri zzb = null;
    public final String zzc = null;
    public final Bundle zzd = null;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
    }

    private zzao(zzan zzanVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzao)) {
            return false;
        }
        zzao zzaoVar = (zzao) obj;
        Uri uri = zzaoVar.zzb;
        String str = zzaoVar.zzc;
        Bundle bundle = zzaoVar.zzd;
        return true;
    }

    public final int hashCode() {
        return 0;
    }
}
