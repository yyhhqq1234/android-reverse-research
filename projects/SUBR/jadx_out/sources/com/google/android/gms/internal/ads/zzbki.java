package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.webkit.internal.AssetHelper;
import java.util.Map;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbki implements zzbjp {
    private final Context zza;

    public zzbki(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        if (!map.containsKey(y8.h.K0) || TextUtils.isEmpty((CharSequence) map.get(y8.h.K0))) {
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("Opening Share Sheet with text: ".concat(String.valueOf((String) map.get(y8.h.K0))));
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", (String) map.get(y8.h.K0));
        if (map.containsKey("title")) {
            intent.putExtra("android.intent.extra.TITLE", (String) map.get("title"));
        }
        try {
            com.google.android.gms.ads.internal.zzv.zzq();
            com.google.android.gms.ads.internal.util.zzs.zzT(this.zza, intent);
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to open Share Sheet", e);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "ShareSheetGmsgHandler.onGmsg");
        }
    }
}
