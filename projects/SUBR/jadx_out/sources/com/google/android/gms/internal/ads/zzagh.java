package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzagh implements zzax {
    public final String zzf;

    public zzagh(String str) {
        this.zzf = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzax
    public /* synthetic */ void zza(zzat zzatVar) {
    }
}
