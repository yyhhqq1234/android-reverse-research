package com.netease.mcount.a;

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
public class d extends f {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.netease.mcount.a.f
    protected c a(int i, String str, HashMap hashMap, byte[] bArr, int i2, int i3) {
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
                    throw new b(5, "" + i + " is not a valid request method");
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
                c cVar = new c();
                cVar.a = statusCode;
                cVar.b = a;
                cVar.c = new HashMap();
                for (Header header : execute.getAllHeaders()) {
                    cVar.c.put(header.getName(), header.getValue());
                }
                return cVar;
            } catch (SSLPeerUnverifiedException e) {
                throw new b(6, e.getMessage());
            } catch (ClientProtocolException e2) {
                throw new b(4, e2.getMessage());
            } catch (IOException e3) {
                throw new b(3, e3.getMessage());
            }
        } catch (IllegalArgumentException e4) {
            throw new b(7, "Illegal character in url address: " + str);
        }
    }
}
