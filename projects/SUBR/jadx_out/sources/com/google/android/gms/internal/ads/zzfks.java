package com.google.android.gms.internal.ads;

import com.onesignal.inAppMessages.internal.InAppMessageContent;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzfks {
    HTML(InAppMessageContent.HTML),
    NATIVE("native"),
    JAVASCRIPT("javascript");

    private final String zze;

    zzfks(String str) {
        this.zze = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.zze;
    }
}
