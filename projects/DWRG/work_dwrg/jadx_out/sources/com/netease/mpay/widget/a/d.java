package com.netease.mpay.widget.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.a.b;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLException;

/* loaded from: classes.dex */
public class d extends e {
    public d() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private HttpURLConnection a(String str, int i, int i2) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestProperty(HttpHeaders.Names.ACCEPT_CHARSET, "UTF-8");
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setReadTimeout(i2);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    @Override // com.netease.mpay.widget.a.e
    protected b.C0055b a(int i, String str, HashMap hashMap, byte[] bArr, int i2, int i3) {
        InputStream errorStream;
        try {
            try {
                HttpURLConnection a = a(str, i2, i3);
                if (i == 0) {
                    a.setRequestMethod("GET");
                } else if (1 == i) {
                    a.setRequestMethod("POST");
                }
                if (hashMap != null && hashMap.size() > 0) {
                    for (String str2 : hashMap.keySet()) {
                        a.addRequestProperty(str2, (String) hashMap.get(str2));
                    }
                }
                if (bArr != null) {
                    a.setDoOutput(true);
                    DataOutputStream dataOutputStream = new DataOutputStream(a.getOutputStream());
                    dataOutputStream.write(bArr);
                    dataOutputStream.close();
                }
                b.C0055b c0055b = new b.C0055b();
                c0055b.a = a.getResponseCode();
                if (c0055b.a == -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                try {
                    errorStream = a.getInputStream();
                } catch (IOException e) {
                    errorStream = a.getErrorStream();
                }
                if (errorStream != null) {
                    c0055b.b = g.a(errorStream);
                }
                c0055b.c = new HashMap();
                for (Map.Entry<String, List<String>> entry : a.getHeaderFields().entrySet()) {
                    c0055b.c.put(entry.getKey(), a.getHeaderField(entry.getKey()));
                }
                return c0055b;
            } catch (IOException e2) {
                throw new b.a(3, e2.getMessage());
            }
        } catch (UnsupportedEncodingException e3) {
            throw new b.a(1, e3.getMessage());
        } catch (IllegalAccessError e4) {
            throw new b.a(3, e4.getMessage());
        } catch (IllegalStateException e5) {
            throw new b.a(2, e5.getMessage());
        } catch (NullPointerException e6) {
            throw new b.a(9, e6.getMessage());
        } catch (ProtocolException e7) {
            throw new b.a(4, e7.getMessage());
        } catch (SSLException e8) {
            throw a(e8);
        }
    }
}
