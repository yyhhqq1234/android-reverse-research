package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbdj extends CustomTabsCallback {
    final /* synthetic */ zzbdk zza;

    zzbdj(zzbdk zzbdkVar) {
        this.zza = zzbdkVar;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i, Bundle bundle) {
        this.zza.zze(i);
    }
}
