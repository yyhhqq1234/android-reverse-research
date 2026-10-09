package com.google.android.gms.ads.internal.util.client;

import android.net.TrafficStats;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzu implements zze {
    private final String zza;

    public zzu() {
        throw null;
    }

    public zzu(String str) {
        this.zza = str;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00e6 A[PHI: r5
  0x00e6: PHI (r5v2 com.google.android.gms.ads.internal.util.client.zzt) = 
  (r5v0 com.google.android.gms.ads.internal.util.client.zzt)
  (r5v1 com.google.android.gms.ads.internal.util.client.zzt)
  (r5v4 com.google.android.gms.ads.internal.util.client.zzt)
 binds: [B:43:0x00e4, B:39:0x00c4, B:23:0x0094] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.ads.internal.util.client.zze
    public final zzt zza(String str) {
        zzt zztVar;
        zzt zztVar2 = zzt.PERMANENT_FAILURE;
        try {
            try {
                if (ClientLibraryUtils.isPackageSide()) {
                    TrafficStats.setThreadStatsTag(263);
                }
                zzo.zze("Pinging URL: " + str);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URI(str).toURL().openConnection();
                try {
                    zzbc.zzb();
                    String str2 = this.zza;
                    httpURLConnection.setConnectTimeout(60000);
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setReadTimeout(60000);
                    if (str2 != null) {
                        httpURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, str2);
                    }
                    httpURLConnection.setUseCaches(false);
                    zzl zzlVar = new zzl(null);
                    zzlVar.zzc(httpURLConnection, null);
                    int responseCode = httpURLConnection.getResponseCode();
                    zzlVar.zze(httpURLConnection, responseCode);
                    if (responseCode < 200 || responseCode >= 300) {
                        zzo.zzj("Received non-success response code " + responseCode + " from pinging URL: " + str);
                        if (responseCode == 502) {
                            zztVar = zzt.RETRIABLE_FAILURE;
                        } else {
                            httpURLConnection.disconnect();
                            if (ClientLibraryUtils.isPackageSide()) {
                                TrafficStats.clearThreadStatsTag();
                            }
                        }
                        return zztVar2;
                    }
                    zztVar = zzt.SUCCESS;
                    zztVar2 = zztVar;
                    httpURLConnection.disconnect();
                    if (ClientLibraryUtils.isPackageSide()) {
                        TrafficStats.clearThreadStatsTag();
                    }
                } catch (Throwable th) {
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Throwable th2) {
                if (ClientLibraryUtils.isPackageSide()) {
                    TrafficStats.clearThreadStatsTag();
                }
                throw th2;
            }
        } catch (IOException e) {
            e = e;
            zzo.zzj("Error while pinging URL: " + str + ". " + e.getMessage());
            zztVar2 = zzt.RETRIABLE_FAILURE;
            if (ClientLibraryUtils.isPackageSide()) {
                TrafficStats.clearThreadStatsTag();
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
            zzo.zzj("Error while parsing ping URL: " + str + ". " + e.getMessage());
            if (ClientLibraryUtils.isPackageSide()) {
                TrafficStats.clearThreadStatsTag();
            }
        } catch (RuntimeException e3) {
            e = e3;
            zzo.zzj("Error while pinging URL: " + str + ". " + e.getMessage());
            zztVar2 = zzt.RETRIABLE_FAILURE;
            if (ClientLibraryUtils.isPackageSide()) {
                TrafficStats.clearThreadStatsTag();
            }
        } catch (URISyntaxException e4) {
            e = e4;
            zzo.zzj("Error while parsing ping URL: " + str + ". " + e.getMessage());
            if (ClientLibraryUtils.isPackageSide()) {
                TrafficStats.clearThreadStatsTag();
            }
        }
        return zztVar2;
    }
}
