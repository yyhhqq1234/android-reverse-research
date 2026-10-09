package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaxj extends zzaxr {
    private final StackTraceElement[] zzh;

    public zzaxj(zzawd zzawdVar, String str, String str2, zzasc zzascVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzawdVar, "xFbi3+W8aerwW3eqFbTnh9hURu39XqgquwTPQwngps2D/g9L7GAvkI7gDJEB4z+M", "K8GEBKnLvE9ILfJGB5b9krvXjFIAigM9H8Mu/ozNfRc=", zzascVar, i, 45);
        this.zzh = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaxr
    protected final void zza() throws IllegalAccessException, InvocationTargetException {
        StackTraceElement[] stackTraceElementArr = this.zzh;
        if (stackTraceElementArr != null) {
            zzavu zzavuVar = new zzavu((String) this.zze.invoke(null, stackTraceElementArr));
            synchronized (this.zzd) {
                this.zzd.zzF(zzavuVar.zza.longValue());
                if (zzavuVar.zzb.booleanValue()) {
                    this.zzd.zzac(true != zzavuVar.zzc.booleanValue() ? 2 : 1);
                } else {
                    this.zzd.zzac(3);
                }
            }
        }
    }
}
