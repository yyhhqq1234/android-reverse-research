package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgl extends zzfr implements zzgt {
    private final boolean zza;
    private final int zzb;
    private final int zzc;
    private final String zzd;
    private final zzgs zze;
    private final zzgs zzf;
    private zzgd zzg;
    private HttpURLConnection zzh;
    private InputStream zzi;
    private boolean zzj;
    private int zzk;
    private long zzl;
    private long zzm;

    /* synthetic */ zzgl(String str, int i, int i2, boolean z, boolean z2, zzgs zzgsVar, zzfuo zzfuoVar, boolean z3, zzgk zzgkVar) {
        super(true);
        this.zzd = str;
        this.zzb = i;
        this.zzc = i2;
        this.zza = z;
        this.zze = zzgsVar;
        this.zzf = new zzgs();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0070  */
    private final HttpURLConnection zzk(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map map) throws IOException {
        StringBuilder sb;
        String string;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.zzb);
        httpURLConnection.setReadTimeout(this.zzc);
        HashMap map2 = new HashMap();
        map2.putAll(this.zze.zza());
        map2.putAll(this.zzf.zza());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j != 0) {
            sb = new StringBuilder("bytes=");
            sb.append(j);
            sb.append("-");
            if (j2 != -1) {
                sb.append((j + j2) - 1);
            }
            string = sb.toString();
        } else if (j2 == -1) {
            string = null;
        } else {
            j = 0;
            sb = new StringBuilder("bytes=");
            sb.append(j);
            sb.append("-");
            if (j2 != -1) {
                sb.append((j + j2) - 1);
            }
            string = sb.toString();
        }
        if (string != null) {
            httpURLConnection.setRequestProperty(HttpHeaders.RANGE, string);
        }
        String str = this.zzd;
        if (str != null) {
            httpURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, str);
        }
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, true != z ? "identity" : "gzip");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(false);
        int i2 = zzgd.zzh;
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return httpURLConnection;
    }

    private final URL zzl(URL url, String str, zzgd zzgdVar) throws zzgp {
        if (str == null) {
            throw new zzgp("Null location redirect", zzgdVar, IronSourceConstants.IS_LOAD_CALLED, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new zzgp("Unsupported protocol redirect: ".concat(String.valueOf(protocol)), zzgdVar, IronSourceConstants.IS_LOAD_CALLED, 1);
            }
            if (this.zza || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new zzgp("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", zzgdVar, IronSourceConstants.IS_LOAD_CALLED, 1);
        } catch (MalformedURLException e) {
            throw new zzgp(e, zzgdVar, IronSourceConstants.IS_LOAD_CALLED, 1);
        }
    }

    private final void zzm() {
        HttpURLConnection httpURLConnection = this.zzh;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzdo.zzd("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:13:0x002c A[Catch: IOException -> 0x0036, TRY_LEAVE, TryCatch #0 {IOException -> 0x0036, blocks: (B:4:0x0004, B:6:0x000d, B:9:0x0018, B:10:0x001e, B:13:0x002c), top: B:18:0x0004 }] */
    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) throws zzgp {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.zzl;
            if (j != -1) {
                long j2 = j - this.zzm;
                if (j2 != 0) {
                    i2 = (int) Math.min(i2, j2);
                    InputStream inputStream = this.zzi;
                    int i4 = zzei.zza;
                    i3 = inputStream.read(bArr, i, i2);
                    if (i3 == -1) {
                        this.zzm += (long) i3;
                        zzg(i3);
                        return i3;
                    }
                }
            } else {
                InputStream inputStream2 = this.zzi;
                int i5 = zzei.zza;
                i3 = inputStream2.read(bArr, i, i2);
                if (i3 == -1) {
                    this.zzm += (long) i3;
                    zzg(i3);
                    return i3;
                }
            }
            return -1;
        } catch (IOException e) {
            zzgd zzgdVar = this.zzg;
            int i6 = zzei.zza;
            throw zzgp.zza(e, zzgdVar, 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00b6  */
    @Override // com.google.android.gms.internal.ads.zzfy
    public final long zzb(zzgd zzgdVar) throws zzgp {
        int i;
        HttpURLConnection httpURLConnectionZzk;
        byte[] bArrZzb;
        long j;
        this.zzg = zzgdVar;
        this.zzm = 0L;
        this.zzl = 0L;
        zzi(zzgdVar);
        try {
            URL url = new URL(zzgdVar.zza.toString());
            int i2 = zzgdVar.zzb;
            byte[] bArr = zzgdVar.zzc;
            long j2 = zzgdVar.zze;
            long j3 = zzgdVar.zzf;
            boolean zZzb = zzgdVar.zzb(1);
            if (this.zza) {
                URL urlZzl = url;
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    if (i3 > 20) {
                        i = 1;
                        throw new zzgp(new NoRouteToHostException("Too many redirects: " + i4), zzgdVar, IronSourceConstants.IS_LOAD_CALLED, 1);
                    }
                    long j4 = j3;
                    long j5 = j2;
                    URL url2 = urlZzl;
                    HttpURLConnection httpURLConnectionZzk2 = zzk(urlZzl, 1, null, j2, j3, zZzb, false, zzgdVar.zzd);
                    int responseCode = httpURLConnectionZzk2.getResponseCode();
                    String headerField = httpURLConnectionZzk2.getHeaderField(HttpHeaders.LOCATION);
                    if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                        httpURLConnectionZzk = httpURLConnectionZzk2;
                        break;
                    }
                    i = 1;
                    try {
                        httpURLConnectionZzk2.disconnect();
                        urlZzl = zzl(url2, headerField, zzgdVar);
                        i3 = i4;
                        j3 = j4;
                        j2 = j5;
                    } catch (IOException e) {
                        e = e;
                    }
                    e = e;
                    zzm();
                    throw zzgp.zza(e, zzgdVar, i);
                }
            }
            httpURLConnectionZzk = zzk(url, 1, null, j2, j3, zZzb, true, zzgdVar.zzd);
            this.zzh = httpURLConnectionZzk;
            this.zzk = httpURLConnectionZzk.getResponseCode();
            String responseMessage = httpURLConnectionZzk.getResponseMessage();
            int i5 = this.zzk;
            if (i5 < 200 || i5 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionZzk.getHeaderFields();
                if (this.zzk == 416) {
                    if (zzgdVar.zze == zzgu.zzb(httpURLConnectionZzk.getHeaderField(HttpHeaders.CONTENT_RANGE))) {
                        this.zzj = true;
                        zzj(zzgdVar);
                        long j6 = zzgdVar.zzf;
                        if (j6 != -1) {
                            return j6;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionZzk.getErrorStream();
                try {
                    bArrZzb = errorStream != null ? zzgad.zzb(errorStream) : zzei.zzf;
                } catch (IOException unused) {
                    bArrZzb = zzei.zzf;
                }
                byte[] bArr2 = bArrZzb;
                zzm();
                throw new zzgr(this.zzk, responseMessage, this.zzk == 416 ? new zzfz(2008) : null, headerFields, zzgdVar, bArr2);
            }
            httpURLConnectionZzk.getContentType();
            if (this.zzk == 200) {
                j = zzgdVar.zze;
                if (j == 0) {
                    j = 0;
                }
            } else {
                j = 0;
            }
            boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(httpURLConnectionZzk.getHeaderField(HttpHeaders.CONTENT_ENCODING));
            if (zEqualsIgnoreCase) {
                this.zzl = zzgdVar.zzf;
            } else {
                long j7 = zzgdVar.zzf;
                if (j7 != -1) {
                    this.zzl = j7;
                } else {
                    long jZza = zzgu.zza(httpURLConnectionZzk.getHeaderField(HttpHeaders.CONTENT_LENGTH), httpURLConnectionZzk.getHeaderField(HttpHeaders.CONTENT_RANGE));
                    this.zzl = jZza != -1 ? jZza - j : -1L;
                }
            }
            try {
                this.zzi = httpURLConnectionZzk.getInputStream();
                if (zEqualsIgnoreCase) {
                    this.zzi = new GZIPInputStream(this.zzi);
                }
                this.zzj = true;
                zzj(zzgdVar);
                if (j != 0) {
                    try {
                        byte[] bArr3 = new byte[4096];
                        while (j > 0) {
                            int iMin = (int) Math.min(j, 4096L);
                            InputStream inputStream = this.zzi;
                            int i6 = zzei.zza;
                            int i7 = inputStream.read(bArr3, 0, iMin);
                            if (Thread.currentThread().isInterrupted()) {
                                throw new zzgp(new InterruptedIOException(), zzgdVar, 2000, 1);
                            }
                            if (i7 == -1) {
                                throw new zzgp(zzgdVar, 2008, 1);
                            }
                            j -= (long) i7;
                            zzg(i7);
                        }
                    } catch (IOException e2) {
                        zzm();
                        if (e2 instanceof zzgp) {
                            throw ((zzgp) e2);
                        }
                        throw new zzgp(e2, zzgdVar, 2000, 1);
                    }
                }
                return this.zzl;
            } catch (IOException e3) {
                zzm();
                throw new zzgp(e3, zzgdVar, 2000, 1);
            }
        } catch (IOException e4) {
            e = e4;
            i = 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzh;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        zzgd zzgdVar = this.zzg;
        if (zzgdVar != null) {
            return zzgdVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final void zzd() throws zzgp {
        try {
            InputStream inputStream = this.zzi;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    zzgd zzgdVar = this.zzg;
                    int i = zzei.zza;
                    throw new zzgp(e, zzgdVar, 2000, 3);
                }
            }
            this.zzi = null;
            zzm();
            if (this.zzj) {
                this.zzj = false;
                zzh();
            }
            this.zzh = null;
            this.zzg = null;
        } catch (Throwable th) {
            this.zzi = null;
            zzm();
            if (this.zzj) {
                this.zzj = false;
                zzh();
            }
            this.zzh = null;
            this.zzg = null;
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfr, com.google.android.gms.internal.ads.zzfy
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.zzh;
        return httpURLConnection == null ? zzfxq.zzd() : new zzgj(httpURLConnection.getHeaderFields());
    }
}
