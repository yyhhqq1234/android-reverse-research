package io.netty.handler.ssl;

import java.security.Principal;
import java.security.cert.Certificate;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;
import javax.security.cert.X509Certificate;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class JettyNpnSslSession implements SSLSession {
    private volatile String applicationProtocol;
    private final SSLEngine engine;

    /* JADX INFO: Access modifiers changed from: package-private */
    public JettyNpnSslSession(SSLEngine engine) {
        this.engine = engine;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setApplicationProtocol(String applicationProtocol) {
        if (applicationProtocol != null) {
            applicationProtocol = applicationProtocol.replace(':', '_');
        }
        this.applicationProtocol = applicationProtocol;
    }

    @Override // javax.net.ssl.SSLSession
    public String getProtocol() {
        String protocol = unwrap().getProtocol();
        String applicationProtocol = this.applicationProtocol;
        if (applicationProtocol == null) {
            if (protocol != null) {
                return protocol.replace(':', '_');
            }
            return null;
        }
        StringBuilder buf = new StringBuilder(32);
        if (protocol != null) {
            buf.append(protocol.replace(':', '_'));
            buf.append(':');
        } else {
            buf.append("null:");
        }
        buf.append(applicationProtocol);
        return buf.toString();
    }

    private SSLSession unwrap() {
        return this.engine.getSession();
    }

    @Override // javax.net.ssl.SSLSession
    public byte[] getId() {
        return unwrap().getId();
    }

    @Override // javax.net.ssl.SSLSession
    public SSLSessionContext getSessionContext() {
        return unwrap().getSessionContext();
    }

    @Override // javax.net.ssl.SSLSession
    public long getCreationTime() {
        return unwrap().getCreationTime();
    }

    @Override // javax.net.ssl.SSLSession
    public long getLastAccessedTime() {
        return unwrap().getLastAccessedTime();
    }

    @Override // javax.net.ssl.SSLSession
    public void invalidate() {
        unwrap().invalidate();
    }

    @Override // javax.net.ssl.SSLSession
    public boolean isValid() {
        return unwrap().isValid();
    }

    @Override // javax.net.ssl.SSLSession
    public void putValue(String s, Object o) {
        unwrap().putValue(s, o);
    }

    @Override // javax.net.ssl.SSLSession
    public Object getValue(String s) {
        return unwrap().getValue(s);
    }

    @Override // javax.net.ssl.SSLSession
    public void removeValue(String s) {
        unwrap().removeValue(s);
    }

    @Override // javax.net.ssl.SSLSession
    public String[] getValueNames() {
        return unwrap().getValueNames();
    }

    @Override // javax.net.ssl.SSLSession
    public Certificate[] getPeerCertificates() throws SSLPeerUnverifiedException {
        return unwrap().getPeerCertificates();
    }

    @Override // javax.net.ssl.SSLSession
    public Certificate[] getLocalCertificates() {
        return unwrap().getLocalCertificates();
    }

    @Override // javax.net.ssl.SSLSession
    public X509Certificate[] getPeerCertificateChain() throws SSLPeerUnverifiedException {
        return unwrap().getPeerCertificateChain();
    }

    @Override // javax.net.ssl.SSLSession
    public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        return unwrap().getPeerPrincipal();
    }

    @Override // javax.net.ssl.SSLSession
    public Principal getLocalPrincipal() {
        return unwrap().getLocalPrincipal();
    }

    @Override // javax.net.ssl.SSLSession
    public String getCipherSuite() {
        return unwrap().getCipherSuite();
    }

    @Override // javax.net.ssl.SSLSession
    public String getPeerHost() {
        return unwrap().getPeerHost();
    }

    @Override // javax.net.ssl.SSLSession
    public int getPeerPort() {
        return unwrap().getPeerPort();
    }

    @Override // javax.net.ssl.SSLSession
    public int getPacketBufferSize() {
        return unwrap().getPacketBufferSize();
    }

    @Override // javax.net.ssl.SSLSession
    public int getApplicationBufferSize() {
        return unwrap().getApplicationBufferSize();
    }
}
