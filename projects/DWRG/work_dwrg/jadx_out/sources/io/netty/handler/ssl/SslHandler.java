package io.netty.handler.ssl;

import android.support.v4.view.MotionEventCompat;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.Unpooled;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelOutboundHandler;
import io.netty.channel.ChannelPromise;
import io.netty.channel.PendingWriteQueue;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.util.concurrent.DefaultPromise;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.ImmediateExecutor;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;

/* loaded from: classes.dex */
public class SslHandler extends ByteToMessageDecoder implements ChannelOutboundHandler {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final ClosedChannelException CHANNEL_CLOSED;
    private static final SSLException HANDSHAKE_TIMED_OUT;
    private static final Pattern IGNORABLE_CLASS_IN_STACK;
    private static final Pattern IGNORABLE_ERROR_MESSAGE;
    private static final SSLException SSLENGINE_CLOSED;
    private static final InternalLogger logger;
    private volatile long closeNotifyTimeoutMillis;
    private volatile ChannelHandlerContext ctx;
    private final Executor delegatedTaskExecutor;
    private final SSLEngine engine;
    private boolean flushedBeforeHandshakeDone;
    private final LazyChannelPromise handshakePromise;
    private volatile long handshakeTimeoutMillis;
    private final int maxPacketBufferSize;
    private boolean needsFlush;
    private int packetLength;
    private PendingWriteQueue pendingUnencryptedWrites;
    private boolean sentFirstMessage;
    private final LazyChannelPromise sslCloseFuture;
    private final boolean startTls;
    private final boolean wantsDirectBuffer;
    private boolean wantsInboundHeapBuffer;
    private final boolean wantsLargeOutboundNetworkBuffer;

    static {
        $assertionsDisabled = !SslHandler.class.desiredAssertionStatus();
        logger = InternalLoggerFactory.getInstance((Class<?>) SslHandler.class);
        IGNORABLE_CLASS_IN_STACK = Pattern.compile("^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$");
        IGNORABLE_ERROR_MESSAGE = Pattern.compile("^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$", 2);
        SSLENGINE_CLOSED = new SSLException("SSLEngine closed already");
        HANDSHAKE_TIMED_OUT = new SSLException("handshake timed out");
        CHANNEL_CLOSED = new ClosedChannelException();
        SSLENGINE_CLOSED.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
        HANDSHAKE_TIMED_OUT.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
        CHANNEL_CLOSED.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
    }

    public SslHandler(SSLEngine engine) {
        this(engine, false);
    }

    public SslHandler(SSLEngine engine, boolean startTls) {
        this(engine, startTls, ImmediateExecutor.INSTANCE);
    }

    @Deprecated
    public SslHandler(SSLEngine engine, Executor delegatedTaskExecutor) {
        this(engine, false, delegatedTaskExecutor);
    }

    @Deprecated
    public SslHandler(SSLEngine engine, boolean startTls, Executor delegatedTaskExecutor) {
        this.handshakePromise = new LazyChannelPromise();
        this.sslCloseFuture = new LazyChannelPromise();
        this.handshakeTimeoutMillis = 10000L;
        this.closeNotifyTimeoutMillis = 3000L;
        if (engine == null) {
            throw new NullPointerException("engine");
        }
        if (delegatedTaskExecutor == null) {
            throw new NullPointerException("delegatedTaskExecutor");
        }
        this.engine = engine;
        this.delegatedTaskExecutor = delegatedTaskExecutor;
        this.startTls = startTls;
        this.maxPacketBufferSize = engine.getSession().getPacketBufferSize();
        this.wantsDirectBuffer = engine instanceof OpenSslEngine;
        this.wantsLargeOutboundNetworkBuffer = !(engine instanceof OpenSslEngine);
    }

    public long getHandshakeTimeoutMillis() {
        return this.handshakeTimeoutMillis;
    }

    public void setHandshakeTimeout(long handshakeTimeout, TimeUnit unit) {
        if (unit == null) {
            throw new NullPointerException("unit");
        }
        setHandshakeTimeoutMillis(unit.toMillis(handshakeTimeout));
    }

    public void setHandshakeTimeoutMillis(long handshakeTimeoutMillis) {
        if (handshakeTimeoutMillis < 0) {
            throw new IllegalArgumentException("handshakeTimeoutMillis: " + handshakeTimeoutMillis + " (expected: >= 0)");
        }
        this.handshakeTimeoutMillis = handshakeTimeoutMillis;
    }

    public long getCloseNotifyTimeoutMillis() {
        return this.closeNotifyTimeoutMillis;
    }

    public void setCloseNotifyTimeout(long closeNotifyTimeout, TimeUnit unit) {
        if (unit == null) {
            throw new NullPointerException("unit");
        }
        setCloseNotifyTimeoutMillis(unit.toMillis(closeNotifyTimeout));
    }

    public void setCloseNotifyTimeoutMillis(long closeNotifyTimeoutMillis) {
        if (closeNotifyTimeoutMillis < 0) {
            throw new IllegalArgumentException("closeNotifyTimeoutMillis: " + closeNotifyTimeoutMillis + " (expected: >= 0)");
        }
        this.closeNotifyTimeoutMillis = closeNotifyTimeoutMillis;
    }

    public SSLEngine engine() {
        return this.engine;
    }

    public Future<Channel> handshakeFuture() {
        return this.handshakePromise;
    }

    public ChannelFuture close() {
        return close(this.ctx.newPromise());
    }

    public ChannelFuture close(final ChannelPromise future) {
        final ChannelHandlerContext ctx = this.ctx;
        ctx.executor().execute(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.1
            @Override // java.lang.Runnable
            public void run() {
                SslHandler.this.engine.closeOutbound();
                try {
                    SslHandler.this.write(ctx, Unpooled.EMPTY_BUFFER, future);
                    SslHandler.this.flush(ctx);
                } catch (Exception e) {
                    if (!future.tryFailure(e)) {
                        SslHandler.logger.warn("flush() raised a masked exception.", (Throwable) e);
                    }
                }
            }
        });
        return future;
    }

    public Future<Channel> sslCloseFuture() {
        return this.sslCloseFuture;
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    public void handlerRemoved0(ChannelHandlerContext ctx) throws Exception {
        if (!this.pendingUnencryptedWrites.isEmpty()) {
            this.pendingUnencryptedWrites.removeAndFailAll(new ChannelException("Pending write on removal of SslHandler"));
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void bind(ChannelHandlerContext ctx, SocketAddress localAddress, ChannelPromise promise) throws Exception {
        ctx.bind(localAddress, promise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void connect(ChannelHandlerContext ctx, SocketAddress remoteAddress, SocketAddress localAddress, ChannelPromise promise) throws Exception {
        ctx.connect(remoteAddress, localAddress, promise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void deregister(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
        ctx.deregister(promise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void disconnect(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
        closeOutboundAndChannel(ctx, promise, true);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void close(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
        closeOutboundAndChannel(ctx, promise, false);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void read(ChannelHandlerContext ctx) {
        ctx.read();
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext ctx, Object msg, ChannelPromise promise) throws Exception {
        this.pendingUnencryptedWrites.add(msg, promise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void flush(ChannelHandlerContext ctx) throws Exception {
        if (this.startTls && !this.sentFirstMessage) {
            this.sentFirstMessage = true;
            this.pendingUnencryptedWrites.removeAndWriteAll();
            ctx.flush();
        } else {
            if (this.pendingUnencryptedWrites.isEmpty()) {
                this.pendingUnencryptedWrites.add(Unpooled.EMPTY_BUFFER, ctx.voidPromise());
            }
            if (!this.handshakePromise.isDone()) {
                this.flushedBeforeHandshakeDone = true;
            }
            wrap(ctx, false);
            ctx.flush();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0063. Please report as an issue. */
    private void wrap(ChannelHandlerContext ctx, boolean inUnwrap) throws SSLException {
        ByteBuf out = null;
        ChannelPromise promise = null;
        while (true) {
            try {
                try {
                    Object msg = this.pendingUnencryptedWrites.current();
                    if (msg == null) {
                        return;
                    }
                    if (msg instanceof ByteBuf) {
                        ByteBuf buf = (ByteBuf) msg;
                        if (out == null) {
                            out = allocateOutNetBuf(ctx, buf.readableBytes());
                        }
                        SSLEngineResult result = wrap(this.engine, buf, out);
                        promise = !buf.isReadable() ? this.pendingUnencryptedWrites.remove() : null;
                        if (result.getStatus() == SSLEngineResult.Status.CLOSED) {
                            this.pendingUnencryptedWrites.removeAndFailAll(SSLENGINE_CLOSED);
                            return;
                        }
                        switch (AnonymousClass8.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[result.getHandshakeStatus().ordinal()]) {
                            case 1:
                                runDelegatedTasks();
                                break;
                            case 2:
                                setHandshakeSuccess();
                                setHandshakeSuccessIfStillHandshaking();
                                finishWrap(ctx, out, promise, inUnwrap);
                                promise = null;
                                out = null;
                                break;
                            case 3:
                                setHandshakeSuccessIfStillHandshaking();
                                finishWrap(ctx, out, promise, inUnwrap);
                                promise = null;
                                out = null;
                                break;
                            case 4:
                                finishWrap(ctx, out, promise, inUnwrap);
                                promise = null;
                                out = null;
                                break;
                            case 5:
                                return;
                            default:
                                throw new IllegalStateException("Unknown handshake status: " + result.getHandshakeStatus());
                        }
                    } else {
                        this.pendingUnencryptedWrites.removeAndWrite();
                    }
                } catch (SSLException e) {
                    setHandshakeFailure(e);
                    throw e;
                }
            } finally {
                finishWrap(ctx, out, promise, inUnwrap);
            }
        }
    }

    private void finishWrap(ChannelHandlerContext ctx, ByteBuf out, ChannelPromise promise, boolean inUnwrap) {
        if (out == null) {
            out = Unpooled.EMPTY_BUFFER;
        } else if (!out.isReadable()) {
            out.release();
            out = Unpooled.EMPTY_BUFFER;
        }
        if (promise != null) {
            ctx.write(out, promise);
        } else {
            ctx.write(out);
        }
        if (inUnwrap) {
            this.needsFlush = true;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x002b. Please report as an issue. */
    private void wrapNonAppData(ChannelHandlerContext ctx, boolean inUnwrap) throws SSLException {
        SSLEngineResult result;
        ByteBuf out = null;
        do {
            if (out == null) {
                try {
                    try {
                        out = allocateOutNetBuf(ctx, 0);
                    } catch (SSLException e) {
                        setHandshakeFailure(e);
                        throw e;
                    }
                } finally {
                    if (out != null) {
                        out.release();
                    }
                }
            }
            result = wrap(this.engine, Unpooled.EMPTY_BUFFER, out);
            if (result.bytesProduced() > 0) {
                ctx.write(out);
                if (inUnwrap) {
                    this.needsFlush = true;
                }
                out = null;
            }
            switch (AnonymousClass8.$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[result.getHandshakeStatus().ordinal()]) {
                case 1:
                    runDelegatedTasks();
                    break;
                case 2:
                    setHandshakeSuccess();
                    break;
                case 3:
                    setHandshakeSuccessIfStillHandshaking();
                    if (!inUnwrap) {
                        unwrapNonAppData(ctx);
                    }
                    break;
                case 4:
                    break;
                case 5:
                    if (!inUnwrap) {
                        unwrapNonAppData(ctx);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown handshake status: " + result.getHandshakeStatus());
            }
        } while (result.bytesProduced() != 0);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private javax.net.ssl.SSLEngineResult wrap(javax.net.ssl.SSLEngine r7, io.netty.buffer.ByteBuf r8, io.netty.buffer.ByteBuf r9) throws javax.net.ssl.SSLException {
        /*
            r6 = this;
            java.nio.ByteBuffer r0 = r8.nioBuffer()
            boolean r4 = r0.isDirect()
            if (r4 != 0) goto L1a
            int r4 = r0.remaining()
            java.nio.ByteBuffer r1 = java.nio.ByteBuffer.allocateDirect(r4)
            java.nio.ByteBuffer r4 = r1.put(r0)
            r4.flip()
            r0 = r1
        L1a:
            int r4 = r9.writerIndex()
            int r5 = r9.writableBytes()
            java.nio.ByteBuffer r2 = r9.nioBuffer(r4, r5)
            javax.net.ssl.SSLEngineResult r3 = r7.wrap(r0, r2)
            int r4 = r3.bytesConsumed()
            r8.skipBytes(r4)
            int r4 = r9.writerIndex()
            int r5 = r3.bytesProduced()
            int r4 = r4 + r5
            r9.writerIndex(r4)
            int[] r4 = io.netty.handler.ssl.SslHandler.AnonymousClass8.$SwitchMap$javax$net$ssl$SSLEngineResult$Status
            javax.net.ssl.SSLEngineResult$Status r5 = r3.getStatus()
            int r5 = r5.ordinal()
            r4 = r4[r5]
            switch(r4) {
                case 1: goto L4d;
                default: goto L4c;
            }
        L4c:
            return r3
        L4d:
            int r4 = r6.maxPacketBufferSize
            r9.ensureWritable(r4)
            goto L1a
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.ssl.SslHandler.wrap(javax.net.ssl.SSLEngine, io.netty.buffer.ByteBuf, io.netty.buffer.ByteBuf):javax.net.ssl.SSLEngineResult");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.netty.handler.ssl.SslHandler$8, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus;
        static final /* synthetic */ int[] $SwitchMap$javax$net$ssl$SSLEngineResult$Status = new int[SSLEngineResult.Status.values().length];

        static {
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$Status[SSLEngineResult.Status.BUFFER_OVERFLOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus = new int[SSLEngineResult.HandshakeStatus.values().length];
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_TASK.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_WRAP.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus[SSLEngineResult.HandshakeStatus.NEED_UNWRAP.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        setHandshakeFailure(CHANNEL_CLOSED);
        super.channelInactive(ctx);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        if (ignoreException(cause)) {
            if (logger.isDebugEnabled()) {
                logger.debug("Swallowing a harmless 'connection reset by peer / broken pipe' error that occurred while writing close_notify in response to the peer's close_notify", cause);
            }
            if (ctx.channel().isActive()) {
                ctx.close();
                return;
            }
            return;
        }
        ctx.fireExceptionCaught(cause);
    }

    private boolean ignoreException(Throwable t) {
        if (!(t instanceof SSLException) && (t instanceof IOException) && this.sslCloseFuture.isDone()) {
            String message = String.valueOf(t.getMessage()).toLowerCase();
            if (IGNORABLE_ERROR_MESSAGE.matcher(message).matches()) {
                return true;
            }
            StackTraceElement[] elements = t.getStackTrace();
            for (StackTraceElement element : elements) {
                String classname = element.getClassName();
                String methodname = element.getMethodName();
                if (!classname.startsWith("io.netty.") && "read".equals(methodname)) {
                    if (IGNORABLE_CLASS_IN_STACK.matcher(classname).matches()) {
                        return true;
                    }
                    try {
                        Class<?> clazz = PlatformDependent.getClassLoader(getClass()).loadClass(classname);
                        if (SocketChannel.class.isAssignableFrom(clazz) || DatagramChannel.class.isAssignableFrom(clazz)) {
                            return true;
                        }
                        if (PlatformDependent.javaVersion() >= 7 && "com.sun.nio.sctp.SctpChannel".equals(clazz.getSuperclass().getName())) {
                            return true;
                        }
                    } catch (ClassNotFoundException e) {
                    }
                }
            }
        }
        return false;
    }

    public static boolean isEncrypted(ByteBuf buffer) {
        if (buffer.readableBytes() < 5) {
            throw new IllegalArgumentException("buffer must have at least 5 readable bytes");
        }
        return getEncryptedPacketLength(buffer, buffer.readerIndex()) != -1;
    }

    private static int getEncryptedPacketLength(ByteBuf buffer, int offset) {
        boolean tls;
        int packetLength = 0;
        switch (buffer.getUnsignedByte(offset)) {
            case 20:
            case MotionEventCompat.AXIS_WHEEL /* 21 */:
            case MotionEventCompat.AXIS_GAS /* 22 */:
            case 23:
                tls = true;
                break;
            default:
                tls = false;
                break;
        }
        if (tls) {
            if (buffer.getUnsignedByte(offset + 1) == 3) {
                packetLength = buffer.getUnsignedShort(offset + 3) + 5;
                if (packetLength <= 5) {
                    tls = false;
                }
            } else {
                tls = false;
            }
        }
        if (!tls) {
            boolean sslv2 = true;
            int headerLength = (buffer.getUnsignedByte(offset) & 128) != 0 ? 2 : 3;
            int majorVersion = buffer.getUnsignedByte(offset + headerLength + 1);
            if (majorVersion == 2 || majorVersion == 3) {
                if (headerLength == 2) {
                    packetLength = (buffer.getShort(offset) & Short.MAX_VALUE) + 2;
                } else {
                    packetLength = (buffer.getShort(offset) & 16383) + 3;
                }
                if (packetLength <= headerLength) {
                    sslv2 = false;
                }
            } else {
                sslv2 = false;
            }
            if (!sslv2) {
                return -1;
            }
        }
        return packetLength;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0027, code lost:
    
        if (r9 <= 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0029, code lost:
    
        r14.skipBytes(r9);
        r2 = r14.nioBuffer(r8, r9);
        unwrap(r13, r2, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0035, code lost:
    
        if (io.netty.handler.ssl.SslHandler.$assertionsDisabled != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x003b, code lost:
    
        if (r2.hasRemaining() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0043, code lost:
    
        if (r12.engine.isInboundDone() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006e, code lost:
    
        if (r4 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
    
        r0 = new io.netty.handler.ssl.NotSslRecordException("not an SSL/TLS record: " + io.netty.buffer.ByteBufUtil.hexDump(r14));
        r14.skipBytes(r14.readableBytes());
        r13.fireExceptionCaught(r0);
        setHandshakeFailure(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return;
     */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void decode(io.netty.channel.ChannelHandlerContext r13, io.netty.buffer.ByteBuf r14, java.util.List<java.lang.Object> r15) throws javax.net.ssl.SSLException {
        /*
            r12 = this;
            int r8 = r14.readerIndex()
            int r1 = r14.writerIndex()
            r5 = r8
            r9 = 0
            int r10 = r12.packetLength
            if (r10 <= 0) goto L1d
            int r10 = r1 - r8
            int r11 = r12.packetLength
            if (r10 >= r11) goto L15
        L14:
            return
        L15:
            int r10 = r12.packetLength
            int r5 = r5 + r10
            int r9 = r12.packetLength
            r10 = 0
            r12.packetLength = r10
        L1d:
            r4 = 0
        L1e:
            r10 = 18713(0x4919, float:2.6222E-41)
            if (r9 >= r10) goto L27
            int r7 = r1 - r5
            r10 = 5
            if (r7 >= r10) goto L4b
        L27:
            if (r9 <= 0) goto L6e
            r14.skipBytes(r9)
            java.nio.ByteBuffer r2 = r14.nioBuffer(r8, r9)
            r12.unwrap(r13, r2, r9)
            boolean r10 = io.netty.handler.ssl.SslHandler.$assertionsDisabled
            if (r10 != 0) goto L6e
            boolean r10 = r2.hasRemaining()
            if (r10 == 0) goto L6e
            javax.net.ssl.SSLEngine r10 = r12.engine
            boolean r10 = r10.isInboundDone()
            if (r10 != 0) goto L6e
            java.lang.AssertionError r10 = new java.lang.AssertionError
            r10.<init>()
            throw r10
        L4b:
            int r6 = getEncryptedPacketLength(r14, r5)
            r10 = -1
            if (r6 != r10) goto L54
            r4 = 1
            goto L27
        L54:
            boolean r10 = io.netty.handler.ssl.SslHandler.$assertionsDisabled
            if (r10 != 0) goto L60
            if (r6 > 0) goto L60
            java.lang.AssertionError r10 = new java.lang.AssertionError
            r10.<init>()
            throw r10
        L60:
            if (r6 <= r7) goto L65
            r12.packetLength = r6
            goto L27
        L65:
            int r3 = r9 + r6
            r10 = 18713(0x4919, float:2.6222E-41)
            if (r3 > r10) goto L27
            int r5 = r5 + r6
            r9 = r3
            goto L1e
        L6e:
            if (r4 == 0) goto L14
            io.netty.handler.ssl.NotSslRecordException r0 = new io.netty.handler.ssl.NotSslRecordException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "not an SSL/TLS record: "
            java.lang.StringBuilder r10 = r10.append(r11)
            java.lang.String r11 = io.netty.buffer.ByteBufUtil.hexDump(r14)
            java.lang.StringBuilder r10 = r10.append(r11)
            java.lang.String r10 = r10.toString()
            r0.<init>(r10)
            int r10 = r14.readableBytes()
            r14.skipBytes(r10)
            r13.fireExceptionCaught(r0)
            r12.setHandshakeFailure(r0)
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.ssl.SslHandler.decode(io.netty.channel.ChannelHandlerContext, io.netty.buffer.ByteBuf, java.util.List):void");
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        if (this.needsFlush) {
            this.needsFlush = false;
            ctx.flush();
        }
        super.channelReadComplete(ctx);
    }

    private void unwrapNonAppData(ChannelHandlerContext ctx) throws SSLException {
        unwrap(ctx, Unpooled.EMPTY_BUFFER.nioBuffer(), 0);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x008a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x005c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void unwrap(io.netty.channel.ChannelHandlerContext r18, java.nio.ByteBuffer r19, int r20) throws javax.net.ssl.SSLException {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.ssl.SslHandler.unwrap(io.netty.channel.ChannelHandlerContext, java.nio.ByteBuffer, int):void");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private static javax.net.ssl.SSLEngineResult unwrap(javax.net.ssl.SSLEngine r7, java.nio.ByteBuffer r8, io.netty.buffer.ByteBuf r9) throws javax.net.ssl.SSLException {
        /*
            r2 = 0
        L1:
            int r5 = r9.writerIndex()
            int r6 = r9.writableBytes()
            java.nio.ByteBuffer r1 = r9.nioBuffer(r5, r6)
            javax.net.ssl.SSLEngineResult r4 = r7.unwrap(r8, r1)
            int r5 = r9.writerIndex()
            int r6 = r4.bytesProduced()
            int r5 = r5 + r6
            r9.writerIndex(r5)
            int[] r5 = io.netty.handler.ssl.SslHandler.AnonymousClass8.$SwitchMap$javax$net$ssl$SSLEngineResult$Status
            javax.net.ssl.SSLEngineResult$Status r6 = r4.getStatus()
            int r6 = r6.ordinal()
            r5 = r5[r6]
            switch(r5) {
                case 1: goto L2d;
                default: goto L2c;
            }
        L2c:
            return r4
        L2d:
            javax.net.ssl.SSLSession r5 = r7.getSession()
            int r0 = r5.getApplicationBufferSize()
            int r3 = r2 + 1
            switch(r2) {
                case 0: goto L3f;
                default: goto L3a;
            }
        L3a:
            r9.ensureWritable(r0)
        L3d:
            r2 = r3
            goto L1
        L3f:
            int r5 = r8.remaining()
            int r5 = java.lang.Math.min(r0, r5)
            r9.ensureWritable(r5)
            goto L3d
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.ssl.SslHandler.unwrap(javax.net.ssl.SSLEngine, java.nio.ByteBuffer, io.netty.buffer.ByteBuf):javax.net.ssl.SSLEngineResult");
    }

    private void runDelegatedTasks() {
        if (this.delegatedTaskExecutor != ImmediateExecutor.INSTANCE) {
            final List<Runnable> tasks = new ArrayList<>(2);
            while (true) {
                Runnable task = this.engine.getDelegatedTask();
                if (task == null) {
                    break;
                } else {
                    tasks.add(task);
                }
            }
            if (!tasks.isEmpty()) {
                final CountDownLatch latch = new CountDownLatch(1);
                this.delegatedTaskExecutor.execute(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            for (Runnable task2 : tasks) {
                                task2.run();
                            }
                        } catch (Exception e) {
                            SslHandler.this.ctx.fireExceptionCaught(e);
                        } finally {
                            latch.countDown();
                        }
                    }
                });
                boolean interrupted = false;
                while (latch.getCount() != 0) {
                    try {
                        latch.await();
                    } catch (InterruptedException e) {
                        interrupted = true;
                    }
                }
                if (interrupted) {
                    Thread.currentThread().interrupt();
                    return;
                }
                return;
            }
            return;
        }
        while (true) {
            Runnable task2 = this.engine.getDelegatedTask();
            if (task2 != null) {
                task2.run();
            } else {
                return;
            }
        }
    }

    private boolean setHandshakeSuccessIfStillHandshaking() {
        if (this.handshakePromise.isDone()) {
            return false;
        }
        setHandshakeSuccess();
        return true;
    }

    private void setHandshakeSuccess() {
        String cipherSuite = String.valueOf(this.engine.getSession().getCipherSuite());
        if (!this.wantsDirectBuffer && (cipherSuite.contains("_GCM_") || cipherSuite.contains("-GCM-"))) {
            this.wantsInboundHeapBuffer = true;
        }
        if (this.handshakePromise.trySuccess(this.ctx.channel())) {
            if (logger.isDebugEnabled()) {
                logger.debug(this.ctx.channel() + " HANDSHAKEN: " + this.engine.getSession().getCipherSuite());
            }
            this.ctx.fireUserEventTriggered(SslHandshakeCompletionEvent.SUCCESS);
        }
    }

    private void setHandshakeFailure(Throwable cause) {
        this.engine.closeOutbound();
        try {
            this.engine.closeInbound();
        } catch (SSLException e) {
            String msg = e.getMessage();
            if (msg == null || !msg.contains("possible truncation attack")) {
                logger.debug("SSLEngine.closeInbound() raised an exception.", (Throwable) e);
            }
        }
        notifyHandshakeFailure(cause);
        this.pendingUnencryptedWrites.removeAndFailAll(cause);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyHandshakeFailure(Throwable cause) {
        if (this.handshakePromise.tryFailure(cause)) {
            this.ctx.fireUserEventTriggered(new SslHandshakeCompletionEvent(cause));
            this.ctx.close();
        }
    }

    private void closeOutboundAndChannel(ChannelHandlerContext ctx, ChannelPromise promise, boolean disconnect) throws Exception {
        if (!ctx.channel().isActive()) {
            if (disconnect) {
                ctx.disconnect(promise);
                return;
            } else {
                ctx.close(promise);
                return;
            }
        }
        this.engine.closeOutbound();
        ChannelPromise closeNotifyFuture = ctx.newPromise();
        write(ctx, Unpooled.EMPTY_BUFFER, closeNotifyFuture);
        flush(ctx);
        safeClose(ctx, closeNotifyFuture, promise);
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        this.ctx = ctx;
        this.pendingUnencryptedWrites = new PendingWriteQueue(ctx);
        if (ctx.channel().isActive() && this.engine.getUseClientMode()) {
            handshake();
        }
    }

    private Future<Channel> handshake() {
        final ScheduledFuture<?> timeoutFuture;
        if (this.handshakeTimeoutMillis > 0) {
            timeoutFuture = this.ctx.executor().schedule(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.3
                @Override // java.lang.Runnable
                public void run() {
                    if (!SslHandler.this.handshakePromise.isDone()) {
                        SslHandler.this.notifyHandshakeFailure(SslHandler.HANDSHAKE_TIMED_OUT);
                    }
                }
            }, this.handshakeTimeoutMillis, TimeUnit.MILLISECONDS);
        } else {
            timeoutFuture = null;
        }
        this.handshakePromise.addListener2((GenericFutureListener) new GenericFutureListener<Future<Channel>>() { // from class: io.netty.handler.ssl.SslHandler.4
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(Future<Channel> f) throws Exception {
                if (timeoutFuture != null) {
                    timeoutFuture.cancel(false);
                }
            }
        });
        try {
            this.engine.beginHandshake();
            wrapNonAppData(this.ctx, false);
            this.ctx.flush();
        } catch (Exception e) {
            notifyHandshakeFailure(e);
        }
        return this.handshakePromise;
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelActive(final ChannelHandlerContext ctx) throws Exception {
        if (!this.startTls && this.engine.getUseClientMode()) {
            handshake().addListener2(new GenericFutureListener<Future<Channel>>() { // from class: io.netty.handler.ssl.SslHandler.5
                @Override // io.netty.util.concurrent.GenericFutureListener
                public void operationComplete(Future<Channel> future) throws Exception {
                    if (!future.isSuccess()) {
                        SslHandler.logger.debug("Failed to complete handshake", future.cause());
                        ctx.close();
                    }
                }
            });
        }
        ctx.fireChannelActive();
    }

    private void safeClose(final ChannelHandlerContext ctx, ChannelFuture flushFuture, final ChannelPromise promise) {
        final ScheduledFuture<?> timeoutFuture;
        if (!ctx.channel().isActive()) {
            ctx.close(promise);
            return;
        }
        if (this.closeNotifyTimeoutMillis > 0) {
            timeoutFuture = ctx.executor().schedule(new Runnable() { // from class: io.netty.handler.ssl.SslHandler.6
                @Override // java.lang.Runnable
                public void run() {
                    SslHandler.logger.warn(ctx.channel() + " last write attempt timed out. Force-closing the connection.");
                    ctx.close(promise);
                }
            }, this.closeNotifyTimeoutMillis, TimeUnit.MILLISECONDS);
        } else {
            timeoutFuture = null;
        }
        flushFuture.addListener2((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.ssl.SslHandler.7
            @Override // io.netty.util.concurrent.GenericFutureListener
            public void operationComplete(ChannelFuture f) throws Exception {
                if (timeoutFuture != null) {
                    timeoutFuture.cancel(false);
                }
                ctx.close(promise);
            }
        });
    }

    private ByteBuf allocate(ChannelHandlerContext ctx, int capacity) {
        ByteBufAllocator alloc = ctx.alloc();
        return this.wantsDirectBuffer ? alloc.directBuffer(capacity) : alloc.buffer(capacity);
    }

    private ByteBuf allocateOutNetBuf(ChannelHandlerContext ctx, int pendingBytes) {
        return this.wantsLargeOutboundNetworkBuffer ? allocate(ctx, this.maxPacketBufferSize) : allocate(ctx, Math.min(pendingBytes + 2329, this.maxPacketBufferSize));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class LazyChannelPromise extends DefaultPromise<Channel> {
        private LazyChannelPromise() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.netty.util.concurrent.DefaultPromise
        public EventExecutor executor() {
            if (SslHandler.this.ctx != null) {
                return SslHandler.this.ctx.executor();
            }
            throw new IllegalStateException();
        }
    }
}
