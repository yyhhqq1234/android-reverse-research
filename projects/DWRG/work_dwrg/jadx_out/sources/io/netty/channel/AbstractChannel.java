package io.netty.channel;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.Channel;
import io.netty.channel.MessageSizeEstimator;
import io.netty.util.DefaultAttributeMap;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.OneTimeTask;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.ThreadLocalRandom;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.NotYetConnectedException;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public abstract class AbstractChannel extends DefaultAttributeMap implements Channel {
    private MessageSizeEstimator.Handle estimatorHandle;
    private volatile EventLoop eventLoop;
    private volatile SocketAddress localAddress;
    private final Channel parent;
    private volatile boolean registered;
    private volatile SocketAddress remoteAddress;
    private String strVal;
    private boolean strValActive;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) AbstractChannel.class);
    static final ClosedChannelException CLOSED_CHANNEL_EXCEPTION = new ClosedChannelException();
    static final NotYetConnectedException NOT_YET_CONNECTED_EXCEPTION = new NotYetConnectedException();
    private final long hashCode = ThreadLocalRandom.current().nextLong();
    private final ChannelFuture succeededFuture = new SucceededChannelFuture(this, null);
    private final VoidChannelPromise voidPromise = new VoidChannelPromise(this, true);
    private final VoidChannelPromise unsafeVoidPromise = new VoidChannelPromise(this, false);
    private final CloseFuture closeFuture = new CloseFuture(this);
    private final Channel.Unsafe unsafe = newUnsafe();
    private final DefaultChannelPipeline pipeline = new DefaultChannelPipeline(this);

    protected abstract void doBeginRead() throws Exception;

    protected abstract void doBind(SocketAddress socketAddress) throws Exception;

    protected abstract void doClose() throws Exception;

    protected abstract void doDisconnect() throws Exception;

    protected abstract void doWrite(ChannelOutboundBuffer channelOutboundBuffer) throws Exception;

    protected abstract boolean isCompatible(EventLoop eventLoop);

    protected abstract SocketAddress localAddress0();

    protected abstract AbstractUnsafe newUnsafe();

    protected abstract SocketAddress remoteAddress0();

    static {
        CLOSED_CHANNEL_EXCEPTION.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
        NOT_YET_CONNECTED_EXCEPTION.setStackTrace(EmptyArrays.EMPTY_STACK_TRACE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractChannel(Channel parent) {
        this.parent = parent;
    }

    @Override // io.netty.channel.Channel
    public boolean isWritable() {
        ChannelOutboundBuffer buf = this.unsafe.outboundBuffer();
        return buf != null && buf.isWritable();
    }

    @Override // io.netty.channel.Channel
    public Channel parent() {
        return this.parent;
    }

    @Override // io.netty.channel.Channel
    public ChannelPipeline pipeline() {
        return this.pipeline;
    }

    @Override // io.netty.channel.Channel
    public ByteBufAllocator alloc() {
        return config().getAllocator();
    }

    @Override // io.netty.channel.Channel
    public EventLoop eventLoop() {
        EventLoop eventLoop = this.eventLoop;
        if (eventLoop == null) {
            throw new IllegalStateException("channel not registered to an event loop");
        }
        return eventLoop;
    }

    @Override // io.netty.channel.Channel
    public SocketAddress localAddress() {
        SocketAddress localAddress = this.localAddress;
        if (localAddress == null) {
            try {
                localAddress = unsafe().localAddress();
                this.localAddress = localAddress;
            } catch (Throwable th) {
                return null;
            }
        }
        return localAddress;
    }

    protected void invalidateLocalAddress() {
        this.localAddress = null;
    }

    @Override // io.netty.channel.Channel
    public SocketAddress remoteAddress() {
        SocketAddress remoteAddress = this.remoteAddress;
        if (remoteAddress == null) {
            try {
                remoteAddress = unsafe().remoteAddress();
                this.remoteAddress = remoteAddress;
            } catch (Throwable th) {
                return null;
            }
        }
        return remoteAddress;
    }

    protected void invalidateRemoteAddress() {
        this.remoteAddress = null;
    }

    @Override // io.netty.channel.Channel
    public boolean isRegistered() {
        return this.registered;
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture bind(SocketAddress localAddress) {
        return this.pipeline.bind(localAddress);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture connect(SocketAddress remoteAddress) {
        return this.pipeline.connect(remoteAddress);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture connect(SocketAddress remoteAddress, SocketAddress localAddress) {
        return this.pipeline.connect(remoteAddress, localAddress);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture disconnect() {
        return this.pipeline.disconnect();
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture close() {
        return this.pipeline.close();
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture deregister() {
        return this.pipeline.deregister();
    }

    @Override // io.netty.channel.Channel
    public Channel flush() {
        this.pipeline.flush();
        return this;
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture bind(SocketAddress localAddress, ChannelPromise promise) {
        return this.pipeline.bind(localAddress, promise);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture connect(SocketAddress remoteAddress, ChannelPromise promise) {
        return this.pipeline.connect(remoteAddress, promise);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture connect(SocketAddress remoteAddress, SocketAddress localAddress, ChannelPromise promise) {
        return this.pipeline.connect(remoteAddress, localAddress, promise);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture disconnect(ChannelPromise promise) {
        return this.pipeline.disconnect(promise);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture close(ChannelPromise promise) {
        return this.pipeline.close(promise);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture deregister(ChannelPromise promise) {
        return this.pipeline.deregister(promise);
    }

    @Override // io.netty.channel.Channel
    public Channel read() {
        this.pipeline.read();
        return this;
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture write(Object msg) {
        return this.pipeline.write(msg);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture write(Object msg, ChannelPromise promise) {
        return this.pipeline.write(msg, promise);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture writeAndFlush(Object msg) {
        return this.pipeline.writeAndFlush(msg);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture writeAndFlush(Object msg, ChannelPromise promise) {
        return this.pipeline.writeAndFlush(msg, promise);
    }

    @Override // io.netty.channel.Channel
    public ChannelPromise newPromise() {
        return new DefaultChannelPromise(this);
    }

    @Override // io.netty.channel.Channel
    public ChannelProgressivePromise newProgressivePromise() {
        return new DefaultChannelProgressivePromise(this);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture newSucceededFuture() {
        return this.succeededFuture;
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture newFailedFuture(Throwable cause) {
        return new FailedChannelFuture(this, null, cause);
    }

    @Override // io.netty.channel.Channel
    public ChannelFuture closeFuture() {
        return this.closeFuture;
    }

    @Override // io.netty.channel.Channel
    public Channel.Unsafe unsafe() {
        return this.unsafe;
    }

    public final int hashCode() {
        return (int) this.hashCode;
    }

    public final boolean equals(Object o) {
        return this == o;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Channel o) {
        if (this == o) {
            return 0;
        }
        long ret = this.hashCode - o.hashCode();
        if (ret > 0) {
            return 1;
        }
        if (ret < 0) {
            return -1;
        }
        long ret2 = System.identityHashCode(this) - System.identityHashCode(o);
        if (ret2 != 0) {
            return (int) ret2;
        }
        throw new Error();
    }

    public String toString() {
        SocketAddress srcAddr;
        SocketAddress dstAddr;
        boolean active = isActive();
        if (this.strValActive == active && this.strVal != null) {
            return this.strVal;
        }
        SocketAddress remoteAddr = remoteAddress();
        SocketAddress localAddr = localAddress();
        if (remoteAddr != null) {
            if (this.parent == null) {
                srcAddr = localAddr;
                dstAddr = remoteAddr;
            } else {
                srcAddr = remoteAddr;
                dstAddr = localAddr;
            }
            Object[] objArr = new Object[4];
            objArr[0] = Integer.valueOf((int) this.hashCode);
            objArr[1] = srcAddr;
            objArr[2] = active ? "=>" : ":>";
            objArr[3] = dstAddr;
            this.strVal = String.format("[id: 0x%08x, %s %s %s]", objArr);
        } else if (localAddr != null) {
            this.strVal = String.format("[id: 0x%08x, %s]", Integer.valueOf((int) this.hashCode), localAddr);
        } else {
            this.strVal = String.format("[id: 0x%08x]", Integer.valueOf((int) this.hashCode));
        }
        this.strValActive = active;
        return this.strVal;
    }

    @Override // io.netty.channel.Channel
    public final ChannelPromise voidPromise() {
        return this.voidPromise;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MessageSizeEstimator.Handle estimatorHandle() {
        if (this.estimatorHandle == null) {
            this.estimatorHandle = config().getMessageSizeEstimator().newHandle();
        }
        return this.estimatorHandle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public abstract class AbstractUnsafe implements Channel.Unsafe {
        private boolean inFlush0;
        private ChannelOutboundBuffer outboundBuffer;

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractUnsafe() {
            this.outboundBuffer = new ChannelOutboundBuffer(AbstractChannel.this);
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final ChannelOutboundBuffer outboundBuffer() {
            return this.outboundBuffer;
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final SocketAddress localAddress() {
            return AbstractChannel.this.localAddress0();
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final SocketAddress remoteAddress() {
            return AbstractChannel.this.remoteAddress0();
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void register(EventLoop eventLoop, final ChannelPromise promise) {
            if (eventLoop == null) {
                throw new NullPointerException("eventLoop");
            }
            if (AbstractChannel.this.isRegistered()) {
                promise.setFailure((Throwable) new IllegalStateException("registered to an event loop already"));
                return;
            }
            if (AbstractChannel.this.isCompatible(eventLoop)) {
                AbstractChannel.this.eventLoop = eventLoop;
                if (eventLoop.inEventLoop()) {
                    register0(promise);
                    return;
                }
                try {
                    eventLoop.execute(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AbstractUnsafe.this.register0(promise);
                        }
                    });
                    return;
                } catch (Throwable t) {
                    AbstractChannel.logger.warn("Force-closing a channel whose registration task was not accepted by an event loop: {}", AbstractChannel.this, t);
                    closeForcibly();
                    AbstractChannel.this.closeFuture.setClosed();
                    safeSetFailure(promise, t);
                    return;
                }
            }
            promise.setFailure((Throwable) new IllegalStateException("incompatible event loop type: " + eventLoop.getClass().getName()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void register0(ChannelPromise promise) {
            try {
                if (promise.setUncancellable() && ensureOpen(promise)) {
                    AbstractChannel.this.doRegister();
                    AbstractChannel.this.registered = true;
                    safeSetSuccess(promise);
                    AbstractChannel.this.pipeline.fireChannelRegistered();
                    if (AbstractChannel.this.isActive()) {
                        AbstractChannel.this.pipeline.fireChannelActive();
                    }
                }
            } catch (Throwable t) {
                closeForcibly();
                AbstractChannel.this.closeFuture.setClosed();
                safeSetFailure(promise, t);
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void bind(SocketAddress localAddress, ChannelPromise promise) {
            if (promise.setUncancellable() && ensureOpen(promise)) {
                if (!PlatformDependent.isWindows() && !PlatformDependent.isRoot() && Boolean.TRUE.equals(AbstractChannel.this.config().getOption(ChannelOption.SO_BROADCAST)) && (localAddress instanceof InetSocketAddress) && !((InetSocketAddress) localAddress).getAddress().isAnyLocalAddress()) {
                    AbstractChannel.logger.warn("A non-root user can't receive a broadcast packet if the socket is not bound to a wildcard address; binding to a non-wildcard address (" + localAddress + ") anyway as requested.");
                }
                boolean wasActive = AbstractChannel.this.isActive();
                try {
                    AbstractChannel.this.doBind(localAddress);
                    if (!wasActive && AbstractChannel.this.isActive()) {
                        invokeLater(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AbstractChannel.this.pipeline.fireChannelActive();
                            }
                        });
                    }
                    safeSetSuccess(promise);
                } catch (Throwable t) {
                    safeSetFailure(promise, t);
                    closeIfClosed();
                }
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void disconnect(ChannelPromise promise) {
            if (promise.setUncancellable()) {
                boolean wasActive = AbstractChannel.this.isActive();
                try {
                    AbstractChannel.this.doDisconnect();
                    if (wasActive && !AbstractChannel.this.isActive()) {
                        invokeLater(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.3
                            @Override // java.lang.Runnable
                            public void run() {
                                AbstractChannel.this.pipeline.fireChannelInactive();
                            }
                        });
                    }
                    safeSetSuccess(promise);
                    closeIfClosed();
                } catch (Throwable t) {
                    safeSetFailure(promise, t);
                    closeIfClosed();
                }
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void close(final ChannelPromise promise) {
            if (promise.setUncancellable()) {
                if (!this.inFlush0) {
                    if (AbstractChannel.this.closeFuture.isDone()) {
                        safeSetSuccess(promise);
                        return;
                    }
                    boolean wasActive = AbstractChannel.this.isActive();
                    ChannelOutboundBuffer outboundBuffer = this.outboundBuffer;
                    this.outboundBuffer = null;
                    try {
                        AbstractChannel.this.doClose();
                        AbstractChannel.this.closeFuture.setClosed();
                        safeSetSuccess(promise);
                    } catch (Throwable t) {
                        AbstractChannel.this.closeFuture.setClosed();
                        safeSetFailure(promise, t);
                    }
                    try {
                        outboundBuffer.failFlushed(AbstractChannel.CLOSED_CHANNEL_EXCEPTION);
                        outboundBuffer.close(AbstractChannel.CLOSED_CHANNEL_EXCEPTION);
                        return;
                    } finally {
                        if (wasActive && !AbstractChannel.this.isActive()) {
                            invokeLater(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.5
                                @Override // java.lang.Runnable
                                public void run() {
                                    AbstractChannel.this.pipeline.fireChannelInactive();
                                }
                            });
                        }
                        deregister(voidPromise());
                    }
                }
                invokeLater(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.4
                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractUnsafe.this.close(promise);
                    }
                });
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void closeForcibly() {
            try {
                AbstractChannel.this.doClose();
            } catch (Exception e) {
                AbstractChannel.logger.warn("Failed to close a channel.", (Throwable) e);
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void deregister(ChannelPromise promise) {
            if (promise.setUncancellable()) {
                try {
                    if (!AbstractChannel.this.registered) {
                        safeSetSuccess(promise);
                        return;
                    }
                    try {
                        AbstractChannel.this.doDeregister();
                        if (AbstractChannel.this.registered) {
                            AbstractChannel.this.registered = false;
                            invokeLater(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.6
                                @Override // java.lang.Runnable
                                public void run() {
                                    AbstractChannel.this.pipeline.fireChannelUnregistered();
                                }
                            });
                            safeSetSuccess(promise);
                        } else {
                            safeSetSuccess(promise);
                        }
                    } catch (Throwable t) {
                        AbstractChannel.logger.warn("Unexpected exception occurred while deregistering a channel.", t);
                        if (AbstractChannel.this.registered) {
                            AbstractChannel.this.registered = false;
                            invokeLater(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.6
                                @Override // java.lang.Runnable
                                public void run() {
                                    AbstractChannel.this.pipeline.fireChannelUnregistered();
                                }
                            });
                            safeSetSuccess(promise);
                        } else {
                            safeSetSuccess(promise);
                        }
                    }
                } catch (Throwable th) {
                    if (AbstractChannel.this.registered) {
                        AbstractChannel.this.registered = false;
                        invokeLater(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.6
                            @Override // java.lang.Runnable
                            public void run() {
                                AbstractChannel.this.pipeline.fireChannelUnregistered();
                            }
                        });
                        safeSetSuccess(promise);
                    } else {
                        safeSetSuccess(promise);
                    }
                    throw th;
                }
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void beginRead() {
            if (AbstractChannel.this.isActive()) {
                try {
                    AbstractChannel.this.doBeginRead();
                } catch (Exception e) {
                    invokeLater(new OneTimeTask() { // from class: io.netty.channel.AbstractChannel.AbstractUnsafe.7
                        @Override // java.lang.Runnable
                        public void run() {
                            AbstractChannel.this.pipeline.fireExceptionCaught(e);
                        }
                    });
                    close(voidPromise());
                }
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void write(Object msg, ChannelPromise promise) {
            ChannelOutboundBuffer outboundBuffer = this.outboundBuffer;
            if (outboundBuffer == null) {
                safeSetFailure(promise, AbstractChannel.CLOSED_CHANNEL_EXCEPTION);
                ReferenceCountUtil.release(msg);
                return;
            }
            try {
                msg = AbstractChannel.this.filterOutboundMessage(msg);
                int size = AbstractChannel.this.estimatorHandle().size(msg);
                if (size < 0) {
                    size = 0;
                }
                outboundBuffer.addMessage(msg, size, promise);
            } catch (Throwable t) {
                safeSetFailure(promise, t);
                ReferenceCountUtil.release(msg);
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void flush() {
            ChannelOutboundBuffer outboundBuffer = this.outboundBuffer;
            if (outboundBuffer != null) {
                outboundBuffer.addFlush();
                flush0();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void flush0() {
            ChannelOutboundBuffer outboundBuffer;
            if (!this.inFlush0 && (outboundBuffer = this.outboundBuffer) != null && !outboundBuffer.isEmpty()) {
                this.inFlush0 = true;
                if (!AbstractChannel.this.isActive()) {
                    try {
                        if (AbstractChannel.this.isOpen()) {
                            outboundBuffer.failFlushed(AbstractChannel.NOT_YET_CONNECTED_EXCEPTION);
                        } else {
                            outboundBuffer.failFlushed(AbstractChannel.CLOSED_CHANNEL_EXCEPTION);
                        }
                        return;
                    } finally {
                    }
                }
                try {
                    AbstractChannel.this.doWrite(outboundBuffer);
                } catch (Throwable t) {
                    outboundBuffer.failFlushed(t);
                    if ((t instanceof IOException) && AbstractChannel.this.config().isAutoClose()) {
                        close(voidPromise());
                    }
                } finally {
                }
            }
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final ChannelPromise voidPromise() {
            return AbstractChannel.this.unsafeVoidPromise;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final boolean ensureOpen(ChannelPromise promise) {
            if (AbstractChannel.this.isOpen()) {
                return true;
            }
            safeSetFailure(promise, AbstractChannel.CLOSED_CHANNEL_EXCEPTION);
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void safeSetSuccess(ChannelPromise promise) {
            if (!(promise instanceof VoidChannelPromise) && !promise.trySuccess()) {
                AbstractChannel.logger.warn("Failed to mark a promise as success because it is done already: {}", promise);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void safeSetFailure(ChannelPromise promise, Throwable cause) {
            if (!(promise instanceof VoidChannelPromise) && !promise.tryFailure(cause)) {
                AbstractChannel.logger.warn("Failed to mark a promise as failure because it's done already: {}", promise, cause);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void closeIfClosed() {
            if (!AbstractChannel.this.isOpen()) {
                close(voidPromise());
            }
        }

        private void invokeLater(Runnable task) {
            try {
                AbstractChannel.this.eventLoop().execute(task);
            } catch (RejectedExecutionException e) {
                AbstractChannel.logger.warn("Can't invoke task later as EventLoop rejected it", (Throwable) e);
            }
        }
    }

    protected void doRegister() throws Exception {
    }

    protected void doDeregister() throws Exception {
    }

    protected Object filterOutboundMessage(Object msg) throws Exception {
        return msg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class CloseFuture extends DefaultChannelPromise {
        CloseFuture(AbstractChannel ch) {
            super(ch);
        }

        @Override // io.netty.channel.DefaultChannelPromise, io.netty.channel.ChannelPromise
        public ChannelPromise setSuccess() {
            throw new IllegalStateException();
        }

        @Override // io.netty.channel.DefaultChannelPromise, io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise, io.netty.channel.ChannelPromise
        public ChannelPromise setFailure(Throwable cause) {
            throw new IllegalStateException();
        }

        @Override // io.netty.channel.DefaultChannelPromise, io.netty.channel.ChannelPromise
        public boolean trySuccess() {
            throw new IllegalStateException();
        }

        @Override // io.netty.util.concurrent.DefaultPromise, io.netty.util.concurrent.Promise
        public boolean tryFailure(Throwable cause) {
            throw new IllegalStateException();
        }

        boolean setClosed() {
            return super.trySuccess();
        }
    }
}
