package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhas extends IllegalArgumentException {
    zzhas(int i, int i2) {
        super("Unpaired surrogate at index " + i + " of " + i2);
    }
}
