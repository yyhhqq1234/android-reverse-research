package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfzp {
    static int zza(Set set) {
        Iterator it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public static zzfzn zzb(Set set, Set set2) {
        zzfun.zzc(set, "set1");
        zzfun.zzc(set2, "set2");
        return new zzfzj(set, set2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Set zzc(Set set, zzfuo zzfuoVar) {
        if (!(set instanceof SortedSet)) {
            if (!(set instanceof zzfzk)) {
                set.getClass();
                return new zzfzk(set, zzfuoVar);
            }
            zzfzk zzfzkVar = (zzfzk) set;
            return new zzfzk((Set) zzfzkVar.zza, zzfur.zza(zzfzkVar.zzb, zzfuoVar));
        }
        SortedSet sortedSet = (SortedSet) set;
        if (!(sortedSet instanceof zzfzk)) {
            sortedSet.getClass();
            return new zzfzl(sortedSet, zzfuoVar);
        }
        zzfzk zzfzkVar2 = (zzfzk) sortedSet;
        return new zzfzl((SortedSet) zzfzkVar2.zza, zzfur.zza(zzfzkVar2.zzb, zzfuoVar));
    }

    static boolean zzd(Set set, @CheckForNull Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size() && set.containsAll(set2)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    static boolean zzf(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    static boolean zze(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof zzfyv) {
            collection = ((zzfyv) collection).zza();
        }
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            return zzf(set, collection.iterator());
        }
        Iterator it = set.iterator();
        collection.getClass();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }
}
