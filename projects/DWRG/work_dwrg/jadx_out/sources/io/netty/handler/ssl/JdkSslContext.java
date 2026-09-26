package io.netty.handler.ssl;

import io.netty.buffer.ByteBufAllocator;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLSessionContext;

/* loaded from: classes.dex */
public abstract class JdkSslContext extends SslContext {
    static final List<String> DEFAULT_CIPHERS;
    static final String PROTOCOL = "TLS";
    static final String[] PROTOCOLS;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) JdkSslContext.class);
    private final String[] cipherSuites;
    private final List<String> unmodifiableCipherSuites;

    public abstract SSLContext context();

    static {
        try {
            SSLContext context = SSLContext.getInstance(PROTOCOL);
            context.init(null, null, null);
            SSLEngine engine = context.createSSLEngine();
            String[] supportedProtocols = engine.getSupportedProtocols();
            List<String> protocols = new ArrayList<>();
            addIfSupported(supportedProtocols, protocols, "TLSv1.2", "TLSv1.1", "TLSv1", "SSLv3");
            if (!protocols.isEmpty()) {
                PROTOCOLS = (String[]) protocols.toArray(new String[protocols.size()]);
            } else {
                PROTOCOLS = engine.getEnabledProtocols();
            }
            String[] supportedCiphers = engine.getSupportedCipherSuites();
            List<String> ciphers = new ArrayList<>();
            addIfSupported(supportedCiphers, ciphers, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "SSL_RSA_WITH_RC4_128_SHA", "SSL_RSA_WITH_RC4_128_MD5", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_CBC_SHA", "SSL_RSA_WITH_DES_CBC_SHA");
            if (!ciphers.isEmpty()) {
                DEFAULT_CIPHERS = Collections.unmodifiableList(ciphers);
            } else {
                DEFAULT_CIPHERS = Collections.unmodifiableList(Arrays.asList(engine.getEnabledCipherSuites()));
            }
            if (logger.isDebugEnabled()) {
                logger.debug("Default protocols (JDK): {} ", Arrays.asList(PROTOCOLS));
                logger.debug("Default cipher suites (JDK): {}", DEFAULT_CIPHERS);
            }
        } catch (Exception e) {
            throw new Error("failed to initialize the default SSL context", e);
        }
    }

    private static void addIfSupported(String[] supported, List<String> enabled, String... names) {
        for (String n : names) {
            int len$ = supported.length;
            int i$ = 0;
            while (true) {
                if (i$ < len$) {
                    String s = supported[i$];
                    if (!n.equals(s)) {
                        i$++;
                    } else {
                        enabled.add(s);
                        break;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JdkSslContext(Iterable<String> ciphers) {
        this.cipherSuites = toCipherSuiteArray(ciphers);
        this.unmodifiableCipherSuites = Collections.unmodifiableList(Arrays.asList(this.cipherSuites));
    }

    public final SSLSessionContext sessionContext() {
        return isServer() ? context().getServerSessionContext() : context().getClientSessionContext();
    }

    @Override // io.netty.handler.ssl.SslContext
    public final List<String> cipherSuites() {
        return this.unmodifiableCipherSuites;
    }

    @Override // io.netty.handler.ssl.SslContext
    public final long sessionCacheSize() {
        return sessionContext().getSessionCacheSize();
    }

    @Override // io.netty.handler.ssl.SslContext
    public final long sessionTimeout() {
        return sessionContext().getSessionTimeout();
    }

    @Override // io.netty.handler.ssl.SslContext
    public final SSLEngine newEngine(ByteBufAllocator alloc) {
        SSLEngine engine = context().createSSLEngine();
        engine.setEnabledCipherSuites(this.cipherSuites);
        engine.setEnabledProtocols(PROTOCOLS);
        engine.setUseClientMode(isClient());
        return wrapEngine(engine);
    }

    @Override // io.netty.handler.ssl.SslContext
    public final SSLEngine newEngine(ByteBufAllocator alloc, String peerHost, int peerPort) {
        SSLEngine engine = context().createSSLEngine(peerHost, peerPort);
        engine.setEnabledCipherSuites(this.cipherSuites);
        engine.setEnabledProtocols(PROTOCOLS);
        engine.setUseClientMode(isClient());
        return wrapEngine(engine);
    }

    private SSLEngine wrapEngine(SSLEngine engine) {
        return nextProtocols().isEmpty() ? engine : new JettyNpnSslEngine(engine, nextProtocols(), isServer());
    }

    private static String[] toCipherSuiteArray(Iterable<String> ciphers) {
        String c;
        if (ciphers == null) {
            return (String[]) DEFAULT_CIPHERS.toArray(new String[DEFAULT_CIPHERS.size()]);
        }
        List<String> newCiphers = new ArrayList<>();
        Iterator i$ = ciphers.iterator();
        while (i$.hasNext() && (c = i$.next()) != null) {
            newCiphers.add(c);
        }
        return (String[]) newCiphers.toArray(new String[newCiphers.size()]);
    }
}
