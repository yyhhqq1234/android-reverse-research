package com.netease.cloud.nos.android.ssl;

import com.netease.cloud.nos.android.utils.LogUtil;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class SSLTrustAllSocketFactory extends SSLSocketFactory {
    private static final String LOGTAG = LogUtil.makeLogTag(SSLTrustAllSocketFactory.class);
    private SSLContext mCtx;

    /* loaded from: classes.dex */
    public class SSLTrustAllManager implements X509TrustManager {
        public SSLTrustAllManager() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    public SSLTrustAllSocketFactory(KeyStore truststore) throws Throwable {
        super(truststore);
        try {
            this.mCtx = SSLContext.getInstance("TLS");
            this.mCtx.init(null, new TrustManager[]{new SSLTrustAllManager()}, null);
            setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        } catch (Exception ex) {
            LogUtil.e(LOGTAG, "trust all socket factory exception", ex);
        }
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String host, int port, boolean autoClose) throws IOException, UnknownHostException {
        return this.mCtx.getSocketFactory().createSocket(socket, host, port, autoClose);
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() throws IOException {
        return this.mCtx.getSocketFactory().createSocket();
    }

    public static SSLSocketFactory getSocketFactory() {
        try {
            KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType());
            trustStore.load(null, null);
            return new SSLTrustAllSocketFactory(trustStore);
        } catch (Throwable e) {
            LogUtil.e(LOGTAG, "get socket factory exception", e);
            return null;
        }
    }

    public SSLEngine getSslEngine() {
        return this.mCtx.createSSLEngine();
    }
}
