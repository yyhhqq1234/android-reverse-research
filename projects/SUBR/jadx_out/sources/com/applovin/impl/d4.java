package com.applovin.impl;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.util.Consumer;
import androidx.webkit.ProxyConfig;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinErrorCodes;
import com.google.common.net.HttpHeaders;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d4 {
    private static final List e = Arrays.asList("5.0/i", "4.0/ad", "1.0/mediate");
    private final com.applovin.impl.sdk.j a;
    private final com.applovin.impl.sdk.n b;
    private final dg c;
    private d d;

    public interface e {
        void a(String str, int i, String str2, Object obj);

        void a(String str, Object obj, int i);
    }

    public d4(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        dg dgVar = new dg(jVar);
        this.c = dgVar;
        dgVar.a();
    }

    private class c implements Consumer {
        private final String a;
        private final com.applovin.impl.sdk.network.a b;
        private final String c;
        private final Object d;
        private final boolean e;
        private final b f;
        private final e g;

        private c(String str, com.applovin.impl.sdk.network.a aVar, String str2, Object obj, boolean z, b bVar, e eVar) {
            this.a = str;
            this.b = aVar;
            this.c = str2;
            this.d = obj;
            this.e = z;
            this.f = bVar;
            this.g = eVar;
        }

        @Override // androidx.core.util.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(dg.d dVar) {
            int i;
            long jE = dVar.e();
            Object objA = null;
            int iA = 0;
            try {
                int iC = dVar.c();
                try {
                    if (iC <= 0) {
                        d4.this.a(this.c, this.a, iC, jE, (Throwable) null);
                        this.g.a(this.a, iC, null, null);
                        return;
                    }
                    if (iC >= 200 && iC < 400) {
                        b bVar = this.f;
                        if (bVar != null) {
                            bVar.a(jE);
                        }
                        d4.this.a(this.c, this.a, iC, jE);
                        byte[] bArrD = dVar.d();
                        if (yp.f(com.applovin.impl.sdk.j.m()) && (!this.e || vi.b(bArrD) != vi.a.V2)) {
                            d4.this.a.q().a(bArrD != null ? new String(dVar.d(), Charset.forName("UTF-8")) : "", this.a, this.b.b() != null ? this.b.b().toString() : "");
                        }
                        if (bArrD != null) {
                            String str = new String(dVar.d(), Charset.forName("UTF-8"));
                            b bVar2 = this.f;
                            if (bVar2 != null) {
                                bVar2.b(bArrD.length);
                                if (this.b.r()) {
                                    d4.this.d = new d(this.b.f(), bArrD.length, jE);
                                }
                            }
                            if (this.e) {
                                String strB = vi.b(bArrD, d4.this.a.a0(), d4.this.a);
                                if (strB == null) {
                                    HashMap map = new HashMap(2);
                                    map.put("request", StringUtils.getHostAndPath(this.a));
                                    map.put(org.json.gr.n, str);
                                    d4.this.a.z().trackEvent("rdf", map);
                                }
                                str = strB;
                            }
                            try {
                                this.g.a(this.a, d4.this.a(str, this.d), iC);
                                return;
                            } catch (Throwable th) {
                                String str2 = "Unable to parse response from " + StringUtils.getHostAndPath(this.a) + " because of " + th.getClass().getName() + " : " + th.getMessage();
                                com.applovin.impl.sdk.n unused = d4.this.b;
                                if (com.applovin.impl.sdk.n.a()) {
                                    d4.this.b.a("ConnectionManager", str2, th);
                                }
                                d4.this.a.C().c(ba.n);
                                d4.this.a.D().a("ConnectionManager", "failedToParseResponse", th, CollectionUtils.hashMap("url", StringUtils.getHostAndPath(this.a)));
                                this.g.a(this.a, AppLovinErrorCodes.INVALID_RESPONSE, str2, null);
                                return;
                            }
                        }
                        this.g.a(this.a, this.d, iC);
                        return;
                    }
                    this.g.a(this.a, iC, null, null);
                } catch (MalformedURLException e) {
                    e = e;
                    i = iC;
                    if (this.d == null) {
                        d4.this.a(this.c, this.a, i, jE);
                        this.g.a(this.a, this.d, -901);
                    } else {
                        d4.this.a(this.c, this.a, i, jE, e);
                        this.g.a(this.a, -901, e.getMessage(), null);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    iA = iC;
                    if (((Boolean) d4.this.a.a(sj.q)).booleanValue()) {
                        iA = dVar.b();
                    }
                    if (iA == 0) {
                        iA = d4.this.a(th);
                    }
                    int i2 = iA;
                    try {
                        byte[] bArrF = dVar.f();
                        String str3 = new String(bArrF);
                        if (bArrF != null) {
                            if (this.e) {
                                str3 = vi.b(bArrF, d4.this.a.a0(), d4.this.a);
                            }
                            objA = d4.this.a(str3, this.d);
                        }
                    } catch (Throwable unused2) {
                    }
                    d4.this.a(this.c, this.a, i2, jE, th);
                    this.g.a(this.a, i2, th.getMessage(), objA);
                }
            } catch (MalformedURLException e2) {
                e = e2;
                i = 0;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public static class b {
        private long a;
        private long b;

        public long a() {
            return this.a;
        }

        public long b() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j) {
            this.a = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(long j) {
            this.b = j;
        }
    }

    public static class d {
        private final long a = System.currentTimeMillis();
        private final String b;
        private final long c;
        private final long d;

        public String toString() {
            return "ConnectionManager.RequestMeasurement(timestampMillis=" + c() + ", urlHostAndPathString=" + d() + ", responseSizeBytes=" + b() + ", connectionTimeMillis=" + a() + ")";
        }

        public d(String str, long j, long j2) {
            this.b = str;
            this.c = j;
            this.d = j2;
        }

        protected boolean a(Object obj) {
            return obj instanceof d;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (!dVar.a(this) || c() != dVar.c() || b() != dVar.b() || a() != dVar.a()) {
                return false;
            }
            String strD = d();
            String strD2 = dVar.d();
            return strD != null ? strD.equals(strD2) : strD2 == null;
        }

        public int hashCode() {
            long jC = c();
            long jB = b();
            int i = ((((int) (jC ^ (jC >>> 32))) + 59) * 59) + ((int) (jB ^ (jB >>> 32)));
            long jA = a();
            String strD = d();
            return (((i * 59) + ((int) ((jA >>> 32) ^ jA))) * 59) + (strD == null ? 43 : strD.hashCode());
        }

        public long c() {
            return this.a;
        }

        public String d() {
            return this.b;
        }

        public long b() {
            return this.c;
        }

        public long a() {
            return this.d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(Throwable th) {
        if (th instanceof UnknownHostException) {
            return -1009;
        }
        if (th instanceof SocketTimeoutException) {
            return -1001;
        }
        if (th instanceof IOException) {
            return -100;
        }
        return th instanceof JSONException ? -104 : -1;
    }

    public d a() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(String str, Object obj) {
        if (obj == null) {
            return str;
        }
        if (str != null && str.length() >= 3) {
            if (obj instanceof JSONObject) {
                return new JSONObject(str);
            }
            if (obj instanceof es) {
                return fs.a(str, this.a);
            }
            if (obj instanceof String) {
                return str;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.b.b("ConnectionManager", "Failed to process response of type '" + obj.getClass().getName() + "'");
            }
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:80:0x023c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x023e A[Catch: all -> 0x0290, TryCatch #0 {all -> 0x0290, blocks: (B:44:0x0129, B:46:0x0139, B:50:0x0160, B:49:0x015c, B:51:0x016f, B:54:0x0194, B:56:0x01b0, B:60:0x01d1, B:76:0x0224, B:79:0x0233, B:81:0x023e, B:62:0x01d5, B:65:0x01dd, B:71:0x01f5, B:73:0x01fb, B:74:0x0210, B:57:0x01be, B:82:0x0241, B:84:0x0247, B:85:0x025b, B:67:0x01ee), top: B:98:0x0129, inners: #1 }] */
    public void a(com.applovin.impl.sdk.network.a aVar, b bVar, e eVar) {
        byte[] bytes;
        byte[] bArrA;
        if (aVar != null) {
            String strF = aVar.f();
            String strH = aVar.h();
            if (strF == null) {
                throw new IllegalArgumentException("No endpoint specified");
            }
            if (strH == null) {
                throw new IllegalArgumentException("No method specified");
            }
            if (eVar != null) {
                if (!strF.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP)) {
                    String str = "Requested postback submission to non HTTP endpoint " + strF + "; skipping...";
                    com.applovin.impl.sdk.n.h("ConnectionManager", str);
                    eVar.a(strF, AppLovinErrorCodes.INVALID_URL, str, null);
                    return;
                }
                if (((Boolean) this.a.a(sj.W2)).booleanValue() && !strF.contains("https://")) {
                    this.a.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        this.a.I().k("ConnectionManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
                    }
                    strF = strF.replace("http://", "https://");
                }
                HashMap map = new HashMap(2);
                boolean zM = aVar.m();
                vi.a aVarA = ((Boolean) this.a.a(sj.e5)).booleanValue() ? vi.a.a(((Integer) this.a.a(sj.b5)).intValue()) : aVar.e();
                long jA = yp.a(this.a);
                if ((aVar.i() != null && !aVar.i().isEmpty()) || aVar.c() > 0) {
                    Map mapI = aVar.i();
                    Boolean bool = (Boolean) this.a.a(sj.k3);
                    if (mapI != null && aVar.c() > 0) {
                        mapI.put("current_retry_attempt", String.valueOf(aVar.c()));
                    }
                    if (zM) {
                        String strA = yp.a(mapI, bool.booleanValue());
                        String strB = vi.b(strA, jA, aVarA, this.a.a0(), this.a);
                        if (StringUtils.isValidString(strA) && TextUtils.isEmpty(strB)) {
                            map.put("query", strA);
                        }
                        strF = StringUtils.appendQueryParameter(strF, NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_ICON, strB);
                    } else {
                        strF = StringUtils.appendQueryParameters(strF, mapI, bool.booleanValue());
                    }
                }
                String str2 = strF;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                try {
                    Boolean boolEndsWith = StringUtils.endsWith(StringUtils.getHostAndPath(str2), e);
                    if (com.applovin.impl.sdk.n.a()) {
                        com.applovin.impl.sdk.n nVar = this.b;
                        StringBuilder sb = new StringBuilder("Sending ");
                        sb.append(strH);
                        sb.append(" request to id=#");
                        sb.append(str2.hashCode());
                        sb.append(" \"");
                        sb.append(boolEndsWith.booleanValue() ? str2 : StringUtils.getHostAndPath(str2));
                        sb.append("\"...");
                        nVar.d("ConnectionManager", sb.toString());
                    }
                    dg.c.a aVarA2 = new dg.c.a().a(str2).b(strH).a(aVar.g()).a(aVar.l());
                    if (aVar.b() != null) {
                        if (zM) {
                            bytes = vi.a(aVar.b().toString(), jA, aVarA, this.a.a0(), this.a);
                            if (bytes == null) {
                                map.put(com.ironsource.y8.h.E0, aVar.b().toString());
                            }
                        } else {
                            bytes = aVar.b().toString().getBytes("UTF-8");
                        }
                        byte[] bArr = bytes;
                        if ((!zM || aVarA != vi.a.V2) && aVar.o() && bArr != null && bArr.length > ((Integer) this.a.a(sj.x5)).intValue()) {
                            try {
                                bArrA = yp.a(bArr);
                            } catch (Throwable th) {
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.b.a("ConnectionManager", "Failed to gzip POST body for request " + a(str2), th);
                                }
                                this.a.D().a("ConnectionManager", "gzip", th, CollectionUtils.hashMap("url", StringUtils.getHostAndPath(str2)));
                                bArrA = null;
                            }
                            aVarA2.a("Content-Type", "application/json; charset=utf-8");
                            if (!aVar.o() && bArrA != null) {
                                aVarA2.a(HttpHeaders.CONTENT_ENCODING, "gzip");
                                aVarA2.a(bArrA);
                            } else if (bArr != null) {
                                aVarA2.a(bArr);
                            }
                        } else {
                            bArrA = null;
                            aVarA2.a("Content-Type", "application/json; charset=utf-8");
                            if (!aVar.o()) {
                                if (bArr != null) {
                                    aVarA2.a(bArr);
                                }
                            } else if (bArr != null) {
                                aVarA2.a(bArr);
                            }
                        }
                    }
                    if (!map.isEmpty()) {
                        map.put("request", StringUtils.getHostAndPath(str2));
                        this.a.z().trackEvent("ref", map);
                    }
                    this.c.a(aVarA2.a(new c(str2, aVar, strH, aVar.d(), zM, bVar, eVar)).a(this.a.i0().c()).a());
                    return;
                } catch (Throwable th2) {
                    a(strH, str2, 0, SystemClock.elapsedRealtime() - jElapsedRealtime, th2);
                    eVar.a(str2, 0, th2.getMessage(), null);
                    return;
                }
            }
            throw new IllegalArgumentException("No callback specified");
        }
        throw new IllegalArgumentException("No request specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j) {
        if (com.applovin.impl.sdk.n.a()) {
            this.b.d("ConnectionManager", "Successful " + str + " returned " + i + " in " + (j / 1000.0f) + " s over " + e4.g(this.a) + " to " + a(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j, Throwable th) {
        if (com.applovin.impl.sdk.n.a()) {
            this.b.a("ConnectionManager", "Failed " + str + " returned " + i + " in " + (j / 1000.0f) + " s over " + e4.g(this.a) + " to " + a(str2), th);
        }
    }

    private String a(String str) {
        return "#" + str.hashCode() + " \"" + StringUtils.getHostAndPath(str) + "\"";
    }
}
