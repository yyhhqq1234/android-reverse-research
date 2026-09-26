package io.netty.channel.nio;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.channel.AbstractChannel;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelPromise;
import io.netty.channel.ConnectTimeoutException;
import io.netty.channel.EventLoop;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.ReferenceCounted;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.OneTimeTask;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketAddress;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class AbstractNioChannel extends AbstractChannel {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final InternalLogger logger;
    private final SelectableChannel ch;
    private ChannelPromise connectPromise;
    private ScheduledFuture<?> connectTimeoutFuture;
    private volatile boolean inputShutdown;
    protected final int readInterestOp;
    private volatile boolean readPending;
    private SocketAddress requestedRemoteAddress;
    volatile SelectionKey selectionKey;

    /* loaded from: classes.dex */
    public interface NioUnsafe extends Channel.Unsafe {
        SelectableChannel ch();

        void finishConnect();

        void forceFlush();

        void read();
    }

    protected abstract boolean doConnect(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception;

    protected abstract void doFinishConnect() throws Exception;

    static {
        $assertionsDisabled = !AbstractNioChannel.class.desiredAssertionStatus();
        logger = InternalLoggerFactory.getInstance((Class<?>) AbstractNioChannel.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractNioChannel(Channel parent, SelectableChannel ch, int readInterestOp) {
        super(parent);
        this.ch = ch;
        this.readInterestOp = readInterestOp;
        try {
            ch.configureBlocking(false);
        } catch (IOException e) {
            try {
                ch.close();
            } catch (IOException e2) {
                if (logger.isWarnEnabled()) {
                    logger.warn("Failed to close a partially initialized socket.", (Throwable) e2);
                }
            }
            throw new ChannelException("Failed to enter non-blocking mode.", e);
        }
    }

    @Override // io.netty.channel.Channel
    public boolean isOpen() {
        return this.ch.isOpen();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public NioUnsafe unsafe() {
        return (NioUnsafe) super.unsafe();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SelectableChannel javaChannel() {
        return this.ch;
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public NioEventLoop eventLoop() {
        return (NioEventLoop) super.eventLoop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SelectionKey selectionKey() {
        if ($assertionsDisabled || this.selectionKey != null) {
            return this.selectionKey;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isReadPending() {
        return this.readPending;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setReadPending(boolean readPending) {
        this.readPending = readPending;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isInputShutdown() {
        return this.inputShutdown;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInputShutdown() {
        this.inputShutdown = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public abstract class AbstractNioUnsafe extends AbstractChannel.AbstractUnsafe implements NioUnsafe {
        static final /* synthetic */ boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !AbstractNioChannel.class.desiredAssertionStatus();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractNioUnsafe() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void removeReadOp() {
            SelectionKey key = AbstractNioChannel.this.selectionKey();
            if (key.isValid()) {
                int interestOps = key.interestOps();
                if ((AbstractNioChannel.this.readInterestOp & interestOps) != 0) {
                    key.interestOps((AbstractNioChannel.this.readInterestOp ^ (-1)) & interestOps);
                }
            }
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public final SelectableChannel ch() {
            return AbstractNioChannel.this.javaChannel();
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void connect(final SocketAddress remoteAddress, SocketAddress localAddress, ChannelPromise promise) {
            if (promise.setUncancellable() && ensureOpen(promise)) {
                try {
                    if (AbstractNioChannel.this.connectPromise != null) {
                        throw new IllegalStateException("connection attempt already made");
                    }
                    boolean wasActive = AbstractNioChannel.this.isActive();
                    if (!AbstractNioChannel.this.doConnect(remoteAddress, localAddress)) {
                        AbstractNioChannel.this.connectPromise = promise;
                        AbstractNioChannel.this.requestedRemoteAddress = remoteAddress;
                        int connectTimeoutMillis = AbstractNioChannel.this.config().getConnectTimeoutMillis();
                        if (connectTimeoutMillis > 0) {
                            AbstractNioChannel.this.connectTimeoutFuture = AbstractNioChannel.this.eventLoop().schedule((Runnable) new OneTimeTask() { // from class: io.netty.channel.nio.AbstractNioChannel.AbstractNioUnsafe.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ChannelPromise connectPromise = AbstractNioChannel.this.connectPromise;
                                    ConnectTimeoutException cause = new ConnectTimeoutException("connection timed out: " + remoteAddress);
                                    if (connectPromise != null && connectPromise.tryFailure(cause)) {
                                        AbstractNioUnsafe.this.close(AbstractNioUnsafe.this.voidPromise());
                                    }
                                }
                            }, connectTimeoutMillis, TimeUnit.MILLISECONDS);
                        }
                        promise.addListener2((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.channel.nio.AbstractNioChannel.AbstractNioUnsafe.2
                            @Override // io.netty.util.concurrent.GenericFutureListener
                            public void operationComplete(ChannelFuture future) throws Exception {
                                if (future.isCancelled()) {
                                    if (AbstractNioChannel.this.connectTimeoutFuture != null) {
                                        AbstractNioChannel.this.connectTimeoutFuture.cancel(false);
                                    }
                                    AbstractNioChannel.this.connectPromise = null;
                                    AbstractNioUnsafe.this.close(AbstractNioUnsafe.this.voidPromise());
                                }
                            }
                        });
                        return;
                    }
                    fulfillConnectPromise(promise, wasActive);
                } catch (Throwable th) {
                    t = th;
                    if (t instanceof ConnectException) {
                        Throwable newT = new ConnectException(String.valueOf(t.getMessage()) + ": " + remoteAddress);
                        newT.setStackTrace(t.getStackTrace());
                        t = newT;
                    }
                    promise.tryFailure(t);
                    closeIfClosed();
                }
            }
        }

        private void fulfillConnectPromise(ChannelPromise promise, boolean wasActive) {
            if (promise != null) {
                boolean promiseSet = promise.trySuccess();
                if (!wasActive && AbstractNioChannel.this.isActive()) {
                    AbstractNioChannel.this.pipeline().fireChannelActive();
                }
                if (!promiseSet) {
                    close(voidPromise());
                }
            }
        }

        private void fulfillConnectPromise(ChannelPromise promise, Throwable cause) {
            if (promise != null) {
                promise.tryFailure(cause);
                closeIfClosed();
            }
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public final void finishConnect() {
            if (!$assertionsDisabled && !AbstractNioChannel.this.eventLoop().inEventLoop()) {
                throw new AssertionError();
            }
            try {
                try {
                    boolean wasActive = AbstractNioChannel.this.isActive();
                    AbstractNioChannel.this.doFinishConnect();
                    fulfillConnectPromise(AbstractNioChannel.this.connectPromise, wasActive);
                    if (AbstractNioChannel.this.connectTimeoutFuture != null) {
                        AbstractNioChannel.this.connectTimeoutFuture.cancel(false);
                    }
                    AbstractNioChannel.this.connectPromise = null;
                } catch (Throwable th) {
                    t = th;
                    if (t instanceof ConnectException) {
                        Throwable newT = new ConnectException(String.valueOf(t.getMessage()) + ": " + AbstractNioChannel.this.requestedRemoteAddress);
                        newT.setStackTrace(t.getStackTrace());
                        t = newT;
                    }
                    fulfillConnectPromise(AbstractNioChannel.this.connectPromise, t);
                    if (AbstractNioChannel.this.connectTimeoutFuture != null) {
                        AbstractNioChannel.this.connectTimeoutFuture.cancel(false);
                    }
                    AbstractNioChannel.this.connectPromise = null;
                }
            } catch (Throwable th2) {
                if (AbstractNioChannel.this.connectTimeoutFuture != null) {
                    AbstractNioChannel.this.connectTimeoutFuture.cancel(false);
                }
                AbstractNioChannel.this.connectPromise = null;
                throw th2;
            }
        }

        @Override // io.netty.channel.AbstractChannel.AbstractUnsafe
        protected final void flush0() {
            if (!isFlushPending()) {
                super.flush0();
            }
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public final void forceFlush() {
            super.flush0();
        }

        private boolean isFlushPending() {
            SelectionKey selectionKey = AbstractNioChannel.this.selectionKey();
            return selectionKey.isValid() && (selectionKey.interestOps() & 4) != 0;
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected boolean isCompatible(EventLoop loop) {
        return loop instanceof NioEventLoop;
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doRegister() throws Exception {
        boolean selected = false;
        while (true) {
            try {
                this.selectionKey = javaChannel().register(eventLoop().selector, 0, this);
                return;
            } catch (CancelledKeyException e) {
                if (!selected) {
                    eventLoop().selectNow();
                    selected = true;
                } else {
                    throw e;
                }
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDeregister() throws Exception {
        eventLoop().cancel(selectionKey());
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doBeginRead() throws Exception {
        if (!this.inputShutdown) {
            SelectionKey selectionKey = this.selectionKey;
            if (selectionKey.isValid()) {
                this.readPending = true;
                int interestOps = selectionKey.interestOps();
                if ((this.readInterestOp & interestOps) == 0) {
                    selectionKey.interestOps(this.readInterestOp | interestOps);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuf newDirectBuffer(ByteBuf buf) {
        int readableBytes = buf.readableBytes();
        if (readableBytes == 0) {
            ReferenceCountUtil.safeRelease(buf);
            return Unpooled.EMPTY_BUFFER;
        }
        ByteBufAllocator alloc = alloc();
        if (alloc.isDirectBufferPooled()) {
            ByteBuf directBuf = alloc.directBuffer(readableBytes);
            directBuf.writeBytes(buf, buf.readerIndex(), readableBytes);
            ReferenceCountUtil.safeRelease(buf);
            return directBuf;
        }
        ByteBuf directBuf2 = ByteBufUtil.threadLocalDirectBuffer();
        if (directBuf2 == null) {
            return buf;
        }
        directBuf2.writeBytes(buf, buf.readerIndex(), readableBytes);
        ReferenceCountUtil.safeRelease(buf);
        return directBuf2;
    }

    protected final ByteBuf newDirectBuffer(ReferenceCounted holder, ByteBuf buf) {
        int readableBytes = buf.readableBytes();
        if (readableBytes == 0) {
            ReferenceCountUtil.safeRelease(holder);
            return Unpooled.EMPTY_BUFFER;
        }
        ByteBufAllocator alloc = alloc();
        if (alloc.isDirectBufferPooled()) {
            ByteBuf directBuf = alloc.directBuffer(readableBytes);
            directBuf.writeBytes(buf, buf.readerIndex(), readableBytes);
            ReferenceCountUtil.safeRelease(holder);
            return directBuf;
        }
        ByteBuf directBuf2 = ByteBufUtil.threadLocalDirectBuffer();
        if (directBuf2 != null) {
            directBuf2.writeBytes(buf, buf.readerIndex(), readableBytes);
            ReferenceCountUtil.safeRelease(holder);
            return directBuf2;
        }
        if (holder != buf) {
            buf.retain();
            ReferenceCountUtil.safeRelease(holder);
        }
        return buf;
    }
}
