package io.netty.handler.ssl;

import android.support.v4.os.EnvironmentCompat;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;
import javax.security.cert.X509Certificate;
import org.apache.tomcat.jni.Buffer;
import org.apache.tomcat.jni.SSL;

/* loaded from: classes.dex */
public final class OpenSslEngine extends SSLEngine {
    private static final AtomicIntegerFieldUpdater<OpenSslEngine> DESTROYED_UPDATER;
    private static final int MAX_CIPHERTEXT_LENGTH = 18432;
    private static final int MAX_COMPRESSED_LENGTH = 17408;
    static final int MAX_ENCRYPTED_PACKET_LENGTH = 18713;
    static final int MAX_ENCRYPTION_OVERHEAD_LENGTH = 2329;
    private static final int MAX_PLAINTEXT_LENGTH = 16384;
    private int accepted;
    private final ByteBufAllocator alloc;
    private volatile String applicationProtocol;
    private String cipher;
    private volatile int destroyed;
    private boolean engineClosed;
    private final String fallbackApplicationProtocol;
    private boolean handshakeFinished;
    private boolean isInboundDone;
    private boolean isOutboundDone;
    private int lastPrimingReadResult;
    private long networkBIO;
    private boolean receivedShutdown;
    private SSLSession session;
    private long ssl;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) OpenSslEngine.class);
    private static final Certificate[] EMPTY_CERTIFICATES = new Certificate[0];
    private static final X509Certificate[] EMPTY_X509_CERTIFICATES = new X509Certificate[0];
    private static final SSLException ENGINE_CLOSED = new SSLException("engine closed");
    private static final SSLException RENEGOTIATION_UNSUPPORTED = new SSLException("renegotiation unsupported");
    private static final SSLException ENCRYPTED_PACKET_OVERSIZED = new SSLException("encrypted packet oversized");

    static {
        ENGINE_CLOSED.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
        RENEGOTIATION_UNSUPPORTED.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
        ENCRYPTED_PACKET_OVERSIZED.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
        DESTROYED_UPDATER = AtomicIntegerFieldUpdater.newUpdater(OpenSslEngine.class, "destroyed");
    }

    public OpenSslEngine(long sslCtx, ByteBufAllocator alloc, String fallbackApplicationProtocol) {
        OpenSsl.ensureAvailability();
        if (sslCtx == 0) {
            throw new NullPointerException("sslContext");
        }
        if (alloc == null) {
            throw new NullPointerException("alloc");
        }
        this.alloc = alloc;
        this.ssl = SSL.newSSL(sslCtx, true);
        this.networkBIO = SSL.makeNetworkBIO(this.ssl);
        this.fallbackApplicationProtocol = fallbackApplicationProtocol;
    }

    public synchronized void shutdown() {
        if (DESTROYED_UPDATER.compareAndSet(this, 0, 1)) {
            SSL.freeSSL(this.ssl);
            SSL.freeBIO(this.networkBIO);
            this.networkBIO = 0L;
            this.ssl = 0L;
            this.engineClosed = true;
            this.isOutboundDone = true;
            this.isInboundDone = true;
        }
    }

    private int writePlaintextData(ByteBuffer src) {
        int sslWrote;
        int pos = src.position();
        int limit = src.limit();
        int len = Math.min(limit - pos, 16384);
        if (src.isDirect()) {
            long addr = Buffer.address(src) + pos;
            sslWrote = SSL.writeToSSL(this.ssl, addr, len);
            if (sslWrote > 0) {
                src.position(pos + sslWrote);
                return sslWrote;
            }
        } else {
            ByteBuf buf = this.alloc.directBuffer(len);
            try {
                long addr2 = buf.hasMemoryAddress() ? buf.memoryAddress() : Buffer.address(buf.nioBuffer());
                src.limit(pos + len);
                buf.setBytes(0, src);
                src.limit(limit);
                sslWrote = SSL.writeToSSL(this.ssl, addr2, len);
                if (sslWrote > 0) {
                    src.position(pos + sslWrote);
                    return sslWrote;
                }
                src.position(pos);
            } finally {
                buf.release();
            }
        }
        throw new IllegalStateException("SSL.writeToSSL() returned a non-positive value: " + sslWrote);
    }

    private int writeEncryptedData(ByteBuffer src) {
        long addr;
        int pos = src.position();
        int len = src.remaining();
        if (src.isDirect()) {
            long addr2 = Buffer.address(src) + pos;
            int netWrote = SSL.writeToBIO(this.networkBIO, addr2, len);
            if (netWrote >= 0) {
                src.position(pos + netWrote);
                this.lastPrimingReadResult = SSL.readFromSSL(this.ssl, addr2, 0);
                return netWrote;
            }
        } else {
            ByteBuf buf = this.alloc.directBuffer(len);
            try {
                if (buf.hasMemoryAddress()) {
                    addr = buf.memoryAddress();
                } else {
                    addr = Buffer.address(buf.nioBuffer());
                }
                buf.setBytes(0, src);
                int netWrote2 = SSL.writeToBIO(this.networkBIO, addr, len);
                if (netWrote2 >= 0) {
                    src.position(pos + netWrote2);
                    this.lastPrimingReadResult = SSL.readFromSSL(this.ssl, addr, 0);
                    return netWrote2;
                }
                src.position(pos);
            } finally {
                buf.release();
            }
        }
        return 0;
    }

    private int readPlaintextData(ByteBuffer dst) {
        long addr;
        if (dst.isDirect()) {
            int pos = dst.position();
            long addr2 = Buffer.address(dst) + pos;
            int sslRead = SSL.readFromSSL(this.ssl, addr2, dst.limit() - pos);
            if (sslRead > 0) {
                dst.position(pos + sslRead);
                return sslRead;
            }
        } else {
            int pos2 = dst.position();
            int limit = dst.limit();
            int len = Math.min(MAX_ENCRYPTED_PACKET_LENGTH, limit - pos2);
            ByteBuf buf = this.alloc.directBuffer(len);
            try {
                if (buf.hasMemoryAddress()) {
                    addr = buf.memoryAddress();
                } else {
                    addr = Buffer.address(buf.nioBuffer());
                }
                int sslRead2 = SSL.readFromSSL(this.ssl, addr, len);
                if (sslRead2 > 0) {
                    dst.limit(pos2 + sslRead2);
                    buf.getBytes(0, dst);
                    dst.limit(limit);
                    return sslRead2;
                }
            } finally {
                buf.release();
            }
        }
        return 0;
    }

    private int readEncryptedData(ByteBuffer dst, int pending) {
        long addr;
        if (dst.isDirect() && dst.remaining() >= pending) {
            int pos = dst.position();
            long addr2 = Buffer.address(dst) + pos;
            int bioRead = SSL.readFromBIO(this.networkBIO, addr2, pending);
            if (bioRead <= 0) {
                return 0;
            }
            dst.position(pos + bioRead);
            return bioRead;
        }
        ByteBuf buf = this.alloc.directBuffer(pending);
        try {
            if (buf.hasMemoryAddress()) {
                addr = buf.memoryAddress();
            } else {
                addr = Buffer.address(buf.nioBuffer());
            }
            int bioRead2 = SSL.readFromBIO(this.networkBIO, addr, pending);
            if (bioRead2 <= 0) {
                return 0;
            }
            int oldLimit = dst.limit();
            dst.limit(dst.position() + bioRead2);
            buf.getBytes(0, dst);
            dst.limit(oldLimit);
            return bioRead2;
        } finally {
            buf.release();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00fd, code lost:
    
        r4 = r19.remaining();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0101, code lost:
    
        if (r4 >= r8) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0103, code lost:
    
        r10 = new javax.net.ssl.SSLEngineResult(javax.net.ssl.SSLEngineResult.Status.BUFFER_OVERFLOW, getHandshakeStatus(), r2, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x011d, code lost:
    
        r3 = 0 + readEncryptedData(r19, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x011e, code lost:
    
        r10 = new javax.net.ssl.SSLEngineResult(getEngineStatus(), getHandshakeStatus(), r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x012d, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0133, code lost:
    
        throw new javax.net.ssl.SSLException(r5);
     */
    @Override // javax.net.ssl.SSLEngine
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized javax.net.ssl.SSLEngineResult wrap(java.nio.ByteBuffer[] r16, int r17, int r18, java.nio.ByteBuffer r19) throws javax.net.ssl.SSLException {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.ssl.OpenSslEngine.wrap(java.nio.ByteBuffer[], int, int, java.nio.ByteBuffer):javax.net.ssl.SSLEngineResult");
    }

    @Override // javax.net.ssl.SSLEngine
    public synchronized SSLEngineResult unwrap(ByteBuffer src, ByteBuffer[] dsts, int offset, int length) throws SSLException {
        SSLEngineResult sSLEngineResult;
        if (this.destroyed != 0) {
            sSLEngineResult = new SSLEngineResult(SSLEngineResult.Status.CLOSED, SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING, 0, 0);
        } else {
            if (src == null) {
                throw new NullPointerException("src");
            }
            if (dsts == null) {
                throw new NullPointerException("dsts");
            }
            if (offset >= dsts.length || offset + length > dsts.length) {
                throw new IndexOutOfBoundsException("offset: " + offset + ", length: " + length + " (expected: offset <= offset + length <= dsts.length (" + dsts.length + "))");
            }
            int capacity = 0;
            int endOffset = offset + length;
            for (int i = offset; i < endOffset; i++) {
                ByteBuffer dst = dsts[i];
                if (dst == null) {
                    throw new IllegalArgumentException();
                }
                if (dst.isReadOnly()) {
                    throw new ReadOnlyBufferException();
                }
                capacity += dst.remaining();
            }
            if (this.accepted == 0) {
                beginHandshakeImplicitly();
            }
            SSLEngineResult.HandshakeStatus handshakeStatus = getHandshakeStatus();
            if ((!this.handshakeFinished || this.engineClosed) && handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP) {
                sSLEngineResult = new SSLEngineResult(getEngineStatus(), SSLEngineResult.HandshakeStatus.NEED_WRAP, 0, 0);
            } else {
                if (src.remaining() > MAX_ENCRYPTED_PACKET_LENGTH) {
                    this.isInboundDone = true;
                    this.isOutboundDone = true;
                    this.engineClosed = true;
                    shutdown();
                    throw ENCRYPTED_PACKET_OVERSIZED;
                }
                this.lastPrimingReadResult = 0;
                try {
                    int bytesConsumed = 0 + writeEncryptedData(src);
                    String error = SSL.getLastError();
                    if (error != null && !error.startsWith("error:00000000:")) {
                        if (logger.isInfoEnabled()) {
                            logger.info("SSL_read failed: primingReadResult: " + this.lastPrimingReadResult + "; OpenSSL error: '" + error + '\'');
                        }
                        shutdown();
                        throw new SSLException(error);
                    }
                    int pendingApp = SSL.isInInit(this.ssl) == 0 ? SSL.pendingReadableBytesInSSL(this.ssl) : 0;
                    if (capacity < pendingApp) {
                        sSLEngineResult = new SSLEngineResult(SSLEngineResult.Status.BUFFER_OVERFLOW, getHandshakeStatus(), bytesConsumed, 0);
                    } else {
                        int bytesProduced = 0;
                        int idx = offset;
                        while (idx < endOffset) {
                            ByteBuffer dst2 = dsts[idx];
                            if (!dst2.hasRemaining()) {
                                idx++;
                            } else {
                                if (pendingApp <= 0) {
                                    break;
                                }
                                try {
                                    int bytesRead = readPlaintextData(dst2);
                                    if (bytesRead == 0) {
                                        break;
                                    }
                                    bytesProduced += bytesRead;
                                    pendingApp -= bytesRead;
                                    if (!dst2.hasRemaining()) {
                                        idx++;
                                    }
                                } catch (Exception e) {
                                    throw new SSLException(e);
                                }
                            }
                        }
                        if (!this.receivedShutdown && (SSL.getShutdown(this.ssl) & 2) == 2) {
                            this.receivedShutdown = true;
                            closeOutbound();
                            closeInbound();
                        }
                        sSLEngineResult = new SSLEngineResult(getEngineStatus(), getHandshakeStatus(), bytesConsumed, bytesProduced);
                    }
                } catch (Exception e2) {
                    throw new SSLException(e2);
                }
            }
        }
        return sSLEngineResult;
    }

    @Override // javax.net.ssl.SSLEngine
    public Runnable getDelegatedTask() {
        return null;
    }

    @Override // javax.net.ssl.SSLEngine
    public synchronized void closeInbound() throws SSLException {
        if (!this.isInboundDone) {
            this.isInboundDone = true;
            this.engineClosed = true;
            if (this.accepted != 0) {
                if (!this.receivedShutdown) {
                    shutdown();
                    throw new SSLException("Inbound closed before receiving peer's close_notify: possible truncation attack?");
                }
            } else {
                shutdown();
            }
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public synchronized boolean isInboundDone() {
        boolean z;
        if (!this.isInboundDone) {
            z = this.engineClosed;
        }
        return z;
    }

    @Override // javax.net.ssl.SSLEngine
    public synchronized void closeOutbound() {
        if (!this.isOutboundDone) {
            this.isOutboundDone = true;
            this.engineClosed = true;
            if (this.accepted != 0 && this.destroyed == 0) {
                int mode = SSL.getShutdown(this.ssl);
                if ((mode & 1) != 1) {
                    SSL.shutdownSSL(this.ssl);
                }
            } else {
                shutdown();
            }
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public synchronized boolean isOutboundDone() {
        return this.isOutboundDone;
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getSupportedCipherSuites() {
        return EmptyArrays.EMPTY_STRINGS;
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getEnabledCipherSuites() {
        return EmptyArrays.EMPTY_STRINGS;
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnabledCipherSuites(String[] strings) {
        throw new UnsupportedOperationException();
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getSupportedProtocols() {
        return EmptyArrays.EMPTY_STRINGS;
    }

    @Override // javax.net.ssl.SSLEngine
    public String[] getEnabledProtocols() {
        return EmptyArrays.EMPTY_STRINGS;
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnabledProtocols(String[] strings) {
        throw new UnsupportedOperationException();
    }

    @Override // javax.net.ssl.SSLEngine
    public SSLSession getSession() {
        SSLSession session = this.session;
        if (session == null) {
            SSLSession session2 = new SSLSession() { // from class: io.netty.handler.ssl.OpenSslEngine.1
                @Override // javax.net.ssl.SSLSession
                public byte[] getId() {
                    return String.valueOf(OpenSslEngine.this.ssl).getBytes();
                }

                @Override // javax.net.ssl.SSLSession
                public SSLSessionContext getSessionContext() {
                    return null;
                }

                @Override // javax.net.ssl.SSLSession
                public long getCreationTime() {
                    return 0L;
                }

                @Override // javax.net.ssl.SSLSession
                public long getLastAccessedTime() {
                    return 0L;
                }

                @Override // javax.net.ssl.SSLSession
                public void invalidate() {
                }

                @Override // javax.net.ssl.SSLSession
                public boolean isValid() {
                    return false;
                }

                @Override // javax.net.ssl.SSLSession
                public void putValue(String s, Object o) {
                }

                @Override // javax.net.ssl.SSLSession
                public Object getValue(String s) {
                    return null;
                }

                @Override // javax.net.ssl.SSLSession
                public void removeValue(String s) {
                }

                @Override // javax.net.ssl.SSLSession
                public String[] getValueNames() {
                    return EmptyArrays.EMPTY_STRINGS;
                }

                @Override // javax.net.ssl.SSLSession
                public Certificate[] getPeerCertificates() {
                    return OpenSslEngine.EMPTY_CERTIFICATES;
                }

                @Override // javax.net.ssl.SSLSession
                public Certificate[] getLocalCertificates() {
                    return OpenSslEngine.EMPTY_CERTIFICATES;
                }

                @Override // javax.net.ssl.SSLSession
                public X509Certificate[] getPeerCertificateChain() {
                    return OpenSslEngine.EMPTY_X509_CERTIFICATES;
                }

                @Override // javax.net.ssl.SSLSession
                public Principal getPeerPrincipal() {
                    return null;
                }

                @Override // javax.net.ssl.SSLSession
                public Principal getLocalPrincipal() {
                    return null;
                }

                @Override // javax.net.ssl.SSLSession
                public String getCipherSuite() {
                    return OpenSslEngine.this.cipher;
                }

                @Override // javax.net.ssl.SSLSession
                public String getProtocol() {
                    String applicationProtocol = OpenSslEngine.this.applicationProtocol;
                    return applicationProtocol == null ? EnvironmentCompat.MEDIA_UNKNOWN : "unknown:" + applicationProtocol;
                }

                @Override // javax.net.ssl.SSLSession
                public String getPeerHost() {
                    return null;
                }

                @Override // javax.net.ssl.SSLSession
                public int getPeerPort() {
                    return 0;
                }

                @Override // javax.net.ssl.SSLSession
                public int getPacketBufferSize() {
                    return OpenSslEngine.MAX_ENCRYPTED_PACKET_LENGTH;
                }

                @Override // javax.net.ssl.SSLSession
                public int getApplicationBufferSize() {
                    return 16384;
                }
            };
            this.session = session2;
            return session2;
        }
        return session;
    }

    @Override // javax.net.ssl.SSLEngine
    public synchronized void beginHandshake() throws SSLException {
        if (this.engineClosed) {
            throw ENGINE_CLOSED;
        }
        switch (this.accepted) {
            case 0:
                SSL.doHandshake(this.ssl);
                this.accepted = 2;
                break;
            case 1:
                this.accepted = 2;
                break;
            case 2:
                throw RENEGOTIATION_UNSUPPORTED;
            default:
                throw new Error();
        }
    }

    private synchronized void beginHandshakeImplicitly() throws SSLException {
        if (this.engineClosed) {
            throw ENGINE_CLOSED;
        }
        if (this.accepted == 0) {
            SSL.doHandshake(this.ssl);
            this.accepted = 1;
        }
    }

    private SSLEngineResult.Status getEngineStatus() {
        return this.engineClosed ? SSLEngineResult.Status.CLOSED : SSLEngineResult.Status.OK;
    }

    @Override // javax.net.ssl.SSLEngine
    public synchronized SSLEngineResult.HandshakeStatus getHandshakeStatus() {
        SSLEngineResult.HandshakeStatus handshakeStatus;
        if (this.accepted == 0 || this.destroyed != 0) {
            handshakeStatus = SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
        } else if (!this.handshakeFinished) {
            if (SSL.pendingWrittenBytesInBIO(this.networkBIO) != 0) {
                handshakeStatus = SSLEngineResult.HandshakeStatus.NEED_WRAP;
            } else if (SSL.isInInit(this.ssl) == 0) {
                this.handshakeFinished = true;
                this.cipher = SSL.getCipherForSSL(this.ssl);
                String applicationProtocol = SSL.getNextProtoNegotiated(this.ssl);
                if (applicationProtocol == null) {
                    applicationProtocol = this.fallbackApplicationProtocol;
                }
                if (applicationProtocol != null) {
                    this.applicationProtocol = applicationProtocol.replace(':', '_');
                } else {
                    this.applicationProtocol = null;
                }
                handshakeStatus = SSLEngineResult.HandshakeStatus.FINISHED;
            } else {
                handshakeStatus = SSLEngineResult.HandshakeStatus.NEED_UNWRAP;
            }
        } else if (this.engineClosed) {
            if (SSL.pendingWrittenBytesInBIO(this.networkBIO) != 0) {
                handshakeStatus = SSLEngineResult.HandshakeStatus.NEED_WRAP;
            } else {
                handshakeStatus = SSLEngineResult.HandshakeStatus.NEED_UNWRAP;
            }
        } else {
            handshakeStatus = SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
        }
        return handshakeStatus;
    }

    @Override // javax.net.ssl.SSLEngine
    public void setUseClientMode(boolean clientMode) {
        if (clientMode) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getUseClientMode() {
        return false;
    }

    @Override // javax.net.ssl.SSLEngine
    public void setNeedClientAuth(boolean b) {
        if (b) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getNeedClientAuth() {
        return false;
    }

    @Override // javax.net.ssl.SSLEngine
    public void setWantClientAuth(boolean b) {
        if (b) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getWantClientAuth() {
        return false;
    }

    @Override // javax.net.ssl.SSLEngine
    public void setEnableSessionCreation(boolean b) {
        if (b) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public boolean getEnableSessionCreation() {
        return false;
    }
}
