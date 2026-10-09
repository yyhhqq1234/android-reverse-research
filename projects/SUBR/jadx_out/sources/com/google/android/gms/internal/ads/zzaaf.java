package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.reflect.Constructor;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaaf implements zzbl {
    private final zzca zza;

    public zzaaf(zzca zzcaVar) {
        this.zza = zzcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbm zza(Context context, zzk zzkVar, zzn zznVar, zzcc zzccVar, Executor executor, List list, long j) throws zzbz {
        try {
            Constructor<?> constructor = Class.forName("androidx.media3.effect.PreviewingSingleInputVideoGraph$Factory").getConstructor(zzca.class);
            Object[] objArr = new Object[1];
            try {
                objArr[0] = this.zza;
                return ((zzbl) constructor.newInstance(objArr)).zza(context, zzkVar, zznVar, zzccVar, executor, list, 0L);
            } catch (Exception e) {
                e = e;
                if (e instanceof zzbz) {
                    throw ((zzbz) e);
                }
                throw new zzbz(e, -9223372036854775807L);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
