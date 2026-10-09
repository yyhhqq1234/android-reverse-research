package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzhej {
    public static zzhej zzb(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzhee(cls.getSimpleName()) : new zzheg(cls.getSimpleName());
    }

    public abstract void zza(String str);
}
