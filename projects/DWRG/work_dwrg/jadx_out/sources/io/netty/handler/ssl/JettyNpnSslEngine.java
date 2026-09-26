package io.netty.handler.ssl;

import java.nio.ByteBuffer;
import java.util.List;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSession;
import org.eclipse.jetty.npn.NextProtoNego;

/* loaded from: classes.dex */
final class JettyNpnSslEngine extends SSLEngine {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static boolean available;
    private final SSLEngine engine;
    private final JettyNpnSslSession session;

    static {
        $assertionsDisabled = !JettyNpnSslEngine.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isAvailable() {
        updateAvailability();
        return available;
    }

    private static void updateAvailability() {
        if (!available) {
            try {
                ClassLoader bootloader = ClassLoader.getSystemClassLoader().getParent();
                if (bootloader == null) {
                    bootloader = ClassLoader.getSystemClassLoader();
                }
                Class.forName("sun.security.ssl.NextProtoNegoExtension", true, bootloader);
                available = true;
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JettyNpnSslEngine(SSLEngine engine, final List<String> nextProtocols, boolean server) {
        if (!$assertionsDisabled && nextProtocols.isEmpty()) {
            throw new AssertionError();
        }
        this.engine = engine;
        this.session = new JettyNpnSslSession(engine);
        if (server) {
            NextProtoNego.put(engine, new NextProtoNego.ServerProvider() { // from class: io.netty.handler.ssl.JettyNpnSslEngine.1
                public void unsupported() {
                    JettyNpnSslEngine.this.getSession().setApplicationProtocol((String) nextProtocols.get(nextProtocols.size() - 1));
                }

                public List<String> protocols() {
                    return nextProtocols;
                }

                public void protocolSelected(String protocol) {
                    JettyNpnSslEngine.this.getSession().setApplicationProtocol(protocol);
                }
            });
            return;
        }
        final String[] list = (String[]) nextProtocols.toArray(new String[nextProtocols.size()]);
        final String fallback = list[list.length - 1];
        NextProtoNego.put(engine, new NextProtoNego.ClientProvider() { // from class: io.netty.handler.ssl.JettyNpnSslEngine.2
            public boolean supports() {
                return true;
            }

            public void unsupported() {
                JettyNpnSslEngine.this.session.setApplicationProtocol(null);
            }

            public String selectProtocol(List<String> protocols) {
                String[] arr$ = list;
                for (String p : arr$) {
                    if (protocols.contains(p)) {
                        return p;
                    }
                }
                return fallback;
            }
        });
    }

    @Override // javax.net.ssl.SSLEngine
    public JettyNpnSslSession getSession() {
        return this.session;
    }

    @Override // javax.net.ssl.SSLEngine
    public void closeInbound() throws SSLException {
        NextProtoNego.remove(this.engine);
        this.engine.closeInbound();
    }

    @Override // javax.net.ssl.SSLEngine
    public void closeOutbound() {
        NextProtoNego.remove(this.engine);
        this.engine.closeOutbound();
    }

    @Override // javax.net.ssl.SSLEngine
    public String getPeerHost() {
        return this.engine.getPeerHost();
    }

    @Override // javax.net.ssl.SSLEngine
    public int getPeerPort() {
        return this.engine.getPeerPort();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        return this.engine.wrap(byteBuffer, byteBuffer2);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBuffers, ByteBuffer byteBuffer) throws SSLException {
        return this.engine.wrap(byteBuffers, byteBuffer);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBuffers, int i, int i2, ByteBuffer byteBuffer) throws SSLException {
        return this.engine.wrap(byteBuffers, i, i2, byteBuffer);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        return this.engine.unwrap(byteBuffer, byteBuffer2);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBuffers) throws SSLException {
        return this.engine.unwrap(byteBuffer, byteBuffers);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBuffers, int i, int i2) throws SSLException {
        return this.engine.unwrap(byteBuffer, byteBuffers, i, i2);
    }

    @Override // javax.net.ssl.SSLEngine
    public Runnable getDelegatedTask() {
        return this.engine.getDelegatedTask();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean isInboundDone() {
        return this.engine.isInboundDone();
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean isOutboundDone() {
        return this.engine.isOutboundDone();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getSupportedCipherSuites() {
        return this.engine.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getEnabledCipherSuites() {
        return this.engine.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnabledCipherSuites(String[] strings) {
        this.engine.setEnabledCipherSuites(strings);
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getSupportedProtocols() {
        return this.engine.getSupportedProtocols();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getEnabledProtocols() {
        return this.engine.getEnabledProtocols();
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnabledProtocols(String[] strings) {
        this.engine.setEnabledProtocols(strings);
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLSession getHandshakeSession() {
        return this.engine.getHandshakeSession();
    }

    @Override // javax.net.ssl.SSLEngine
    public void beginHandshake() throws SSLException {
        this.engine.beginHandshake();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLEngineResult.HandshakeStatus getHandshakeStatus() {
        return this.engine.getHandshakeStatus();
    }

    @Override // javax.net.ssl.SSLEngine
    public void setUseClientMode(boolean b) {
        this.engine.setUseClientMode(b);
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getUseClientMode() {
        return this.engine.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLEngine
    public void setNeedClientAuth(boolean b) {
        this.engine.setNeedClientAuth(b);
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getNeedClientAuth() {
        return this.engine.getNeedClientAuth();
    }

    @Override // javax.net.ssl.SSLEngine
    public void setWantClientAuth(boolean b) {
        this.engine.setWantClientAuth(b);
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getWantClientAuth() {
        return this.engine.getWantClientAuth();
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnableSessionCreation(boolean b) {
        this.engine.setEnableSessionCreation(b);
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getEnableSessionCreation() {
        return this.engine.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLParameters getSSLParameters() {
        return this.engine.getSSLParameters();
    }

    @Override // javax.net.ssl.SSLEngine
    public void setSSLParameters(SSLParameters sslParameters) {
        this.engine.setSSLParameters(sslParameters);
    }
}
