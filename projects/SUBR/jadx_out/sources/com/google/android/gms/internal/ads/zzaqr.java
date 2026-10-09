package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.json.rb;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzaqr extends zzapm {
    private final Object zza;
    private final zzapr zzb;

    public zzaqr(int i, String str, zzapr zzaprVar, zzapq zzapqVar) {
        super(i, str, zzapqVar);
        this.zza = new Object();
        this.zzb = zzaprVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    protected final zzaps zzh(zzapi zzapiVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzapiVar.zzb;
            Map map = zzapiVar.zzc;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = (String) map.get("Content-Type")) != null) {
                String[] strArrSplit = str2.split(";", 0);
                for (int i = 1; i < strArrSplit.length; i++) {
                    String[] strArrSplit2 = strArrSplit[i].trim().split(y8.i.b, 0);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals(rb.M)) {
                        str3 = strArrSplit2[1];
                        break;
                    }
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzapiVar.zzb);
        }
        return zzaps.zzb(str, zzaqj.zzb(zzapiVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzapm
    /* JADX INFO: renamed from: zzz, reason: merged with bridge method [inline-methods] */
    public void zzo(String str) {
        zzapr zzaprVar;
        synchronized (this.zza) {
            zzaprVar = this.zzb;
        }
        zzaprVar.zza(str);
    }
}
