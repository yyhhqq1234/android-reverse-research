package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgr extends zzgp {
    public final int zzc;

    public zzgr(int i, String str, IOException iOException, Map map, zzgd zzgdVar, byte[] bArr) {
        super("Response code: " + i, iOException, zzgdVar, IronSourceConstants.IS_CALLBACK_LOAD_SUCCESS, 1);
        this.zzc = i;
    }
}
