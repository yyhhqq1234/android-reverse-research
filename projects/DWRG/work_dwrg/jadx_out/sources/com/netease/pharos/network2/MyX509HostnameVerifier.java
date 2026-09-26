package com.netease.pharos.network2;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import java.io.IOException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.conn.ssl.X509HostnameVerifier;

/* loaded from: classes.dex */
public class MyX509HostnameVerifier implements X509HostnameVerifier {
    @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
    public boolean verify(String host, SSLSession session) {
        return true;
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public void verify(String host, SSLSocket ssl) throws IOException {
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public void verify(String host, X509Certificate cert) throws SSLException {
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public void verify(String host, String[] cns, String[] subjectAlts) throws SSLException {
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
