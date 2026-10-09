package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class qa implements pd {
    private final pa.b a;
    private final String b;
    private final boolean c;
    private final Map d;

    public qa(String str, boolean z, pa.b bVar) {
        b1.a((z && TextUtils.isEmpty(str)) ? false : true);
        this.a = bVar;
        this.b = str;
        this.c = z;
        this.d = new HashMap();
    }

    @Override // com.applovin.impl.pd
    public byte[] a(UUID uuid, y7.a aVar) throws qd {
        String str;
        String strB = aVar.b();
        if (this.c || TextUtils.isEmpty(strB)) {
            strB = this.b;
        }
        if (!TextUtils.isEmpty(strB)) {
            HashMap map = new HashMap();
            UUID uuid2 = t2.e;
            if (uuid2.equals(uuid)) {
                str = "text/xml";
            } else {
                str = t2.c.equals(uuid) ? org.json.rb.L : "application/octet-stream";
            }
            map.put("Content-Type", str);
            if (uuid2.equals(uuid)) {
                map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
            }
            synchronized (this.d) {
                map.putAll(this.d);
            }
            return a(this.a, strB, aVar.a(), map);
        }
        k5.b bVar = new k5.b();
        Uri uri = Uri.EMPTY;
        throw new qd(bVar.a(uri).a(), uri, fb.h(), 0L, new IllegalStateException("No license URL"));
    }

    @Override // com.applovin.impl.pd
    public byte[] a(UUID uuid, y7.d dVar) {
        return a(this.a, dVar.b() + "&signedRequest=" + xp.a(dVar.a()), null, Collections.emptyMap());
    }

    private static String a(pa.e eVar, int i) {
        Map map;
        List list;
        int i2 = eVar.d;
        if ((i2 != 307 && i2 != 308) || i >= 5 || (map = eVar.g) == null || (list = (List) map.get(HttpHeaders.LOCATION)) == null || list.isEmpty()) {
            return null;
        }
        return (String) list.get(0);
    }

    public void a(String str, String str2) {
        b1.a((Object) str);
        b1.a((Object) str2);
        synchronized (this.d) {
            this.d.put(str, str2);
        }
    }

    private static byte[] a(pa.b bVar, String str, byte[] bArr, Map map) throws qd {
        fl flVar = new fl(bVar.a());
        k5 k5VarA = new k5.b().b(str).a(map).b(2).a(bArr).a(1).a();
        int i = 0;
        k5 k5VarA2 = k5VarA;
        while (true) {
            try {
                j5 j5Var = new j5(flVar, k5VarA2);
                try {
                    try {
                        byte[] bArrA = xp.a((InputStream) j5Var);
                        xp.a((Closeable) j5Var);
                        return bArrA;
                    } catch (pa.e e) {
                        String strA = a(e, i);
                        if (strA != null) {
                            i++;
                            k5VarA2 = k5VarA2.a().b(strA).a();
                            xp.a((Closeable) j5Var);
                        } else {
                            throw e;
                        }
                    }
                } catch (Throwable th) {
                    xp.a((Closeable) j5Var);
                    throw th;
                }
            } catch (Exception e2) {
                throw new qd(k5VarA, (Uri) b1.a(flVar.h()), flVar.e(), flVar.g(), e2);
            }
        }
    }
}
