package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.internal.ads.zzaou;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzaqt;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzcab;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbo {
    private static zzapp zza;
    private static final Object zzb = new Object();

    /* JADX WARN: Code duplicated, block: B:14:0x0034 A[Catch: all -> 0x0040, TryCatch #0 {, blocks: (B:7:0x0010, B:9:0x0014, B:11:0x001d, B:13:0x002f, B:15:0x003c, B:14:0x0034, B:16:0x003e), top: B:21:0x0010 }] */
    public zzbo(Context context) {
        zzapp zzappVarZza;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (zzb) {
            if (zza == null) {
                zzbcl.zza(context);
                if (ClientLibraryUtils.isPackageSide()) {
                    zzappVarZza = zzaqt.zza(context, null);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzew)).booleanValue()) {
                        zzappVarZza = zzaz.zzb(context);
                    } else {
                        zzappVarZza = zzaqt.zza(context, null);
                    }
                }
                zza = zzappVarZza;
            }
        }
    }

    public final ListenableFuture zza(String str) {
        zzcab zzcabVar = new zzcab();
        zza.zza(new zzbm(str, null, zzcabVar));
        return zzcabVar;
    }

    public final ListenableFuture zzb(int i, String str, Map map, byte[] bArr) {
        zzbk zzbkVar = new zzbk(null);
        zzbi zzbiVar = new zzbi(this, str, zzbkVar);
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        zzbj zzbjVar = new zzbj(this, i, str, zzbkVar, zzbiVar, bArr, map, zzlVar);
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk()) {
            try {
                zzlVar.zzd(str, "GET", zzbjVar.zzl(), zzbjVar.zzx());
            } catch (zzaou e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj(e.getMessage());
            }
        }
        zza.zza(zzbjVar);
        return zzbkVar;
    }
}
