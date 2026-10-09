package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzegb {
    private final zzgdb zzc;
    private zzegr zzf;
    private final String zzh;
    private final int zzi;
    private final zzegq zzj;
    private zzfbo zzk;
    private final Map zza = new HashMap();
    private final List zzb = new ArrayList();
    private final List zzd = new ArrayList();
    private final Set zze = new HashSet();
    private int zzg = Integer.MAX_VALUE;
    private boolean zzl = false;

    zzegb(zzfca zzfcaVar, zzegq zzegqVar, zzgdb zzgdbVar) {
        this.zzi = zzfcaVar.zzb.zzb.zzr;
        this.zzj = zzegqVar;
        this.zzc = zzgdbVar;
        this.zzh = zzegx.zzc(zzfcaVar);
        List list = zzfcaVar.zzb.zza;
        for (int i = 0; i < list.size(); i++) {
            this.zza.put((zzfbo) list.get(i), Integer.valueOf(i));
        }
        this.zzb.addAll(list);
    }

    private final synchronized void zze() {
        this.zzj.zzi(this.zzk);
        zzegr zzegrVar = this.zzf;
        if (zzegrVar != null) {
            this.zzc.zzc(zzegrVar);
        } else {
            this.zzc.zzd(new zzegu(3, this.zzh));
        }
    }

    private final synchronized boolean zzf(boolean z) {
        for (zzfbo zzfboVar : this.zzb) {
            Integer num = (Integer) this.zza.get(zzfboVar);
            Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
            if (z || !this.zze.contains(zzfboVar.zzat)) {
                if (numValueOf.intValue() < this.zzg) {
                    return true;
                }
                if (numValueOf.intValue() > this.zzg) {
                    break;
                }
            }
        }
        return false;
    }

    private final synchronized boolean zzg() {
        Iterator it = this.zzd.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) this.zza.get((zzfbo) it.next());
            if (Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE).intValue() < this.zzg) {
                return true;
            }
        }
        return false;
    }

    private final synchronized boolean zzh() {
        return zzf(true) || zzg();
    }

    private final synchronized boolean zzi() {
        if (this.zzl) {
            return false;
        }
        if (!this.zzb.isEmpty() && ((zzfbo) this.zzb.get(0)).zzav && !this.zzd.isEmpty()) {
            return false;
        }
        if (!zzd()) {
            List list = this.zzd;
            if (list.size() < this.zzi && zzf(false)) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    final synchronized zzfbo zza() {
        if (zzi()) {
            for (int i = 0; i < this.zzb.size(); i++) {
                zzfbo zzfboVar = (zzfbo) this.zzb.get(i);
                String str = zzfboVar.zzat;
                if (!this.zze.contains(str)) {
                    if (zzfboVar.zzav) {
                        this.zzl = true;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        this.zze.add(str);
                    }
                    this.zzd.add(zzfboVar);
                    return (zzfbo) this.zzb.remove(i);
                }
            }
        }
        return null;
    }

    final synchronized void zzb(Throwable th, zzfbo zzfboVar) {
        this.zzl = false;
        this.zzd.remove(zzfboVar);
        this.zze.remove(zzfboVar.zzat);
        if (zzd() || zzh()) {
            return;
        }
        zze();
    }

    final synchronized void zzc(zzegr zzegrVar, zzfbo zzfboVar) {
        this.zzl = false;
        this.zzd.remove(zzfboVar);
        if (zzd()) {
            zzegrVar.zzr();
            return;
        }
        Integer num = (Integer) this.zza.get(zzfboVar);
        Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
        if (numValueOf.intValue() > this.zzg) {
            this.zzj.zzm(zzfboVar);
            return;
        }
        if (this.zzf != null) {
            this.zzj.zzm(this.zzk);
        }
        this.zzg = numValueOf.intValue();
        this.zzf = zzegrVar;
        this.zzk = zzfboVar;
        if (zzh()) {
            return;
        }
        zze();
    }

    final synchronized boolean zzd() {
        return this.zzc.isDone();
    }
}
