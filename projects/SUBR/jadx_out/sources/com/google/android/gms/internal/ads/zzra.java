package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzra {
    public final int zza;
    public final zzug zzb;
    private final CopyOnWriteArrayList zzc;

    public zzra() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    private zzra(CopyOnWriteArrayList copyOnWriteArrayList, int i, zzug zzugVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzugVar;
    }

    public final zzra zza(int i, zzug zzugVar) {
        return new zzra(this.zzc, 0, zzugVar);
    }

    public final void zzb(Handler handler, zzrb zzrbVar) {
        this.zzc.add(new zzqz(handler, zzrbVar));
    }

    public final void zzc(zzrb zzrbVar) {
        for (zzqz zzqzVar : this.zzc) {
            if (zzqzVar.zza == zzrbVar) {
                this.zzc.remove(zzqzVar);
            }
        }
    }
}
