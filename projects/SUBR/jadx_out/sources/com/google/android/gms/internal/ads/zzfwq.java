package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfwq extends AbstractSet {
    final /* synthetic */ zzfww zza;

    zzfwq(zzfww zzfwwVar) {
        this.zza = zzfwwVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        Map mapZzl = this.zza.zzl();
        if (mapZzl != null) {
            return mapZzl.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int iZzw = this.zza.zzw(entry.getKey());
            if (iZzw != -1 && zzfuk.zza(zzfww.zzj(this.zza, iZzw), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfww zzfwwVar = this.zza;
        Map mapZzl = zzfwwVar.zzl();
        return mapZzl != null ? mapZzl.entrySet().iterator() : new zzfwo(zzfwwVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        Map mapZzl = this.zza.zzl();
        if (mapZzl != null) {
            return mapZzl.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zzfww zzfwwVar = this.zza;
        if (zzfwwVar.zzr()) {
            return false;
        }
        int iZzv = zzfwwVar.zzv();
        Object key = entry.getKey();
        Object value = entry.getValue();
        zzfww zzfwwVar2 = this.zza;
        int iZzb = zzfwx.zzb(key, value, iZzv, Objects.requireNonNull(zzfwwVar2.zze), zzfwwVar2.zzA(), zzfwwVar2.zzB(), zzfwwVar2.zzC());
        if (iZzb == -1) {
            return false;
        }
        this.zza.zzq(iZzb, iZzv);
        this.zza.zzg--;
        this.zza.zzo();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
