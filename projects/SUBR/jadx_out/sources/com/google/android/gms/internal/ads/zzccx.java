package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccx implements Iterable {
    private final List zza = new ArrayList();

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zza.iterator();
    }

    final zzccw zza(zzcbs zzcbsVar) {
        Iterator it = iterator();
        while (it.hasNext()) {
            zzccw zzccwVar = (zzccw) it.next();
            if (zzccwVar.zza == zzcbsVar) {
                return zzccwVar;
            }
        }
        return null;
    }

    public final void zzb(zzccw zzccwVar) {
        this.zza.add(zzccwVar);
    }

    public final void zzc(zzccw zzccwVar) {
        this.zza.remove(zzccwVar);
    }

    public final boolean zzd(zzcbs zzcbsVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            zzccw zzccwVar = (zzccw) it.next();
            if (zzccwVar.zza == zzcbsVar) {
                arrayList.add(zzccwVar);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((zzccw) it2.next()).zzb.zzf();
        }
        return true;
    }
}
