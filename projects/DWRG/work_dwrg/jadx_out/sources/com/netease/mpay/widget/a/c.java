package com.netease.mpay.widget.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

/* loaded from: classes.dex */
public class c extends e {
    public c() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.netease.mpay.widget.a.e
    protected b.C0055b a(int i, String str, HashMap hashMap, byte[] bArr, int i2, int i3) {
        HttpGet httpGet;
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, i2);
        HttpConnectionParams.setSoTimeout(basicHttpParams, i3);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        try {
            if (i == 1) {
                HttpPost httpPost = new HttpPost(str);
                if (bArr != null && bArr.length != 0) {
                    httpPost.setEntity(new ByteArrayEntity(bArr));
                }
                httpGet = httpPost;
            } else {
                if (i != 0) {
                    throw new b.a(5, "" + i + " is not a valid request method");
                }
                httpGet = new HttpGet(str);
            }
            if (hashMap != null && hashMap.size() > 0) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    httpGet.setHeader((String) entry.getKey(), (String) entry.getValue());
                }
            }
            try {
                HttpResponse execute = defaultHttpClient.execute(httpGet);
                int statusCode = execute.getStatusLine().getStatusCode();
                InputStream content = execute.getEntity().getContent();
                byte[] a = content != null ? g.a(content) : null;
                b.C0055b c0055b = new b.C0055b();
                c0055b.a = statusCode;
                c0055b.b = a;
                c0055b.c = new HashMap();
                for (Header header : execute.getAllHeaders()) {
                    c0055b.c.put(header.getName(), header.getValue());
                }
                return c0055b;
            } catch (SSLPeerUnverifiedException e) {
                throw a(e);
            } catch (ClientProtocolException e2) {
                throw new b.a(4, e2.getMessage());
            } catch (IOException e3) {
                throw new b.a(3, e3.getMessage());
            }
        } catch (IllegalArgumentException e4) {
            throw new b.a(7, "Illegal character in url address: " + str);
        }
    }
}
