package io.netty.channel.embedded;

import io.netty.channel.AbstractChannel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.channel.DefaultChannelConfig;
import io.netty.channel.EventLoop;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.RecyclableArrayList;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes.dex */
public class EmbeddedChannel extends AbstractChannel {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final ChannelMetadata METADATA;
    private static final InternalLogger logger;
    private final ChannelConfig config;
    private final Queue<Object> inboundMessages;
    private Throwable lastException;
    private final SocketAddress localAddress;
    private final EmbeddedEventLoop loop;
    private final Queue<Object> outboundMessages;
    private final SocketAddress remoteAddress;
    private int state;

    static {
        $assertionsDisabled = !EmbeddedChannel.class.desiredAssertionStatus();
        logger = InternalLoggerFactory.getInstance((Class<?>) EmbeddedChannel.class);
        METADATA = new ChannelMetadata(false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmbeddedChannel(ChannelHandler... handlers) {
        super(null);
        LastInboundHandler lastInboundHandler = null;
        this.loop = new EmbeddedEventLoop();
        this.config = new DefaultChannelConfig(this);
        this.localAddress = new EmbeddedSocketAddress();
        this.remoteAddress = new EmbeddedSocketAddress();
        this.inboundMessages = new ArrayDeque();
        this.outboundMessages = new ArrayDeque();
        if (handlers == null) {
            throw new NullPointerException("handlers");
        }
        int nHandlers = 0;
        ChannelPipeline p = pipeline();
        for (ChannelHandler h : handlers) {
            if (h == null) {
                break;
            }
            nHandlers++;
            p.addLast(h);
        }
        if (nHandlers == 0) {
            throw new IllegalArgumentException("handlers is empty.");
        }
        this.loop.register(this);
        p.addLast(new LastInboundHandler(this, lastInboundHandler));
    }

    @Override // io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    @Override // io.netty.channel.Channel
    public ChannelConfig config() {
        return this.config;
    }

    @Override // io.netty.channel.Channel
    public boolean isOpen() {
        return this.state < 2;
    }

    @Override // io.netty.channel.Channel
    public boolean isActive() {
        return this.state == 1;
    }

    public Queue<Object> inboundMessages() {
        return this.inboundMessages;
    }

    @Deprecated
    public Queue<Object> lastInboundBuffer() {
        return inboundMessages();
    }

    public Queue<Object> outboundMessages() {
        return this.outboundMessages;
    }

    @Deprecated
    public Queue<Object> lastOutboundBuffer() {
        return outboundMessages();
    }

    public Object readInbound() {
        return this.inboundMessages.poll();
    }

    public Object readOutbound() {
        return this.outboundMessages.poll();
    }

    public boolean writeInbound(Object... msgs) {
        ensureOpen();
        if (msgs.length == 0) {
            return !this.inboundMessages.isEmpty();
        }
        ChannelPipeline p = pipeline();
        for (Object m : msgs) {
            p.fireChannelRead(m);
        }
        p.fireChannelReadComplete();
        runPendingTasks();
        checkException();
        return !this.inboundMessages.isEmpty();
    }

    public boolean writeOutbound(Object... msgs) {
        ensureOpen();
        if (msgs.length == 0) {
            return !this.outboundMessages.isEmpty();
        }
        RecyclableArrayList futures = RecyclableArrayList.newInstance(msgs.length);
        try {
            for (Object m : msgs) {
                if (m == null) {
                    break;
                }
                futures.add(write(m));
            }
            flush();
            int size = futures.size();
            for (int i = 0; i < size; i++) {
                ChannelFuture future = (ChannelFuture) futures.get(i);
                if (!$assertionsDisabled && !future.isDone()) {
                    throw new AssertionError();
                }
                if (future.cause() != null) {
                    recordException(future.cause());
                }
            }
            runPendingTasks();
            checkException();
            return this.outboundMessages.isEmpty() ? false : true;
        } finally {
            futures.recycle();
        }
    }

    public boolean finish() {
        close();
        runPendingTasks();
        checkException();
        return (this.inboundMessages.isEmpty() && this.outboundMessages.isEmpty()) ? false : true;
    }

    public void runPendingTasks() {
        try {
            this.loop.runTasks();
        } catch (Exception e) {
            recordException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordException(Throwable cause) {
        if (this.lastException == null) {
            this.lastException = cause;
        } else {
            logger.warn("More than one exception was raised. Will report only the first one and log others.", cause);
        }
    }

    public void checkException() {
        Throwable t = this.lastException;
        if (t != null) {
            this.lastException = null;
            PlatformDependent.throwException(t);
        }
    }

    protected final void ensureOpen() {
        if (!isOpen()) {
            recordException(new ClosedChannelException());
            checkException();
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected boolean isCompatible(EventLoop loop) {
        return loop instanceof EmbeddedEventLoop;
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress localAddress0() {
        if (isActive()) {
            return this.localAddress;
        }
        return null;
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress remoteAddress0() {
        if (isActive()) {
            return this.remoteAddress;
        }
        return null;
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doRegister() throws Exception {
        this.state = 1;
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doBind(SocketAddress localAddress) throws Exception {
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDisconnect() throws Exception {
        doClose();
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doClose() throws Exception {
        this.state = 2;
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doBeginRead() throws Exception {
    }

    @Override // io.netty.channel.AbstractChannel
    protected AbstractChannel.AbstractUnsafe newUnsafe() {
        return new DefaultUnsafe(this, null);
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer in) throws Exception {
        while (true) {
            Object msg = in.current();
            if (msg != null) {
                ReferenceCountUtil.retain(msg);
                this.outboundMessages.add(msg);
                in.remove();
            } else {
                return;
            }
        }
    }

    /* loaded from: classes.dex */
    private class DefaultUnsafe extends AbstractChannel.AbstractUnsafe {
        private DefaultUnsafe() {
            super();
        }

        /* synthetic */ DefaultUnsafe(EmbeddedChannel embeddedChannel, DefaultUnsafe defaultUnsafe) {
            this();
        }

        @Override // io.netty.channel.Channel.Unsafe
        public void connect(SocketAddress remoteAddress, SocketAddress localAddress, ChannelPromise promise) {
            safeSetSuccess(promise);
        }
    }

    /* loaded from: classes.dex */
    private final class LastInboundHandler extends ChannelInboundHandlerAdapter {
        private LastInboundHandler() {
        }

        /* synthetic */ LastInboundHandler(EmbeddedChannel embeddedChannel, LastInboundHandler lastInboundHandler) {
            this();
        }

        @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
        public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
            EmbeddedChannel.this.inboundMessages.add(msg);
        }

        @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
        public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
            EmbeddedChannel.this.recordException(cause);
        }
    }
}
