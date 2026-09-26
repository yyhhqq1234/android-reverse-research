package io.netty.channel.local;

import io.netty.channel.AbstractChannel;
import io.netty.channel.Channel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.channel.DefaultChannelConfig;
import io.netty.channel.EventLoop;
import io.netty.channel.SingleThreadEventLoop;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.concurrent.SingleThreadEventExecutor;
import io.netty.util.internal.InternalThreadLocalMap;
import java.net.SocketAddress;
import java.nio.channels.AlreadyConnectedException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ConnectionPendingException;
import java.nio.channels.NotYetConnectedException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Queue;

/* loaded from: classes.dex */
public class LocalChannel extends AbstractChannel {
    private static final int MAX_READER_STACK_DEPTH = 8;
    private static final ChannelMetadata METADATA = new ChannelMetadata(false);
    private final ChannelConfig config;
    private volatile ChannelPromise connectPromise;
    private final Queue<Object> inboundBuffer;
    private volatile LocalAddress localAddress;
    private volatile LocalChannel peer;
    private volatile boolean readInProgress;
    private final Runnable readTask;
    private volatile boolean registerInProgress;
    private volatile LocalAddress remoteAddress;
    private final Runnable shutdownHook;
    private volatile int state;

    public LocalChannel() {
        super(null);
        this.config = new DefaultChannelConfig(this);
        this.inboundBuffer = new ArrayDeque();
        this.readTask = new Runnable() { // from class: io.netty.channel.local.LocalChannel.1
            @Override // java.lang.Runnable
            public void run() {
                ChannelPipeline pipeline = LocalChannel.this.pipeline();
                while (true) {
                    Object m = LocalChannel.this.inboundBuffer.poll();
                    if (m != null) {
                        pipeline.fireChannelRead(m);
                    } else {
                        pipeline.fireChannelReadComplete();
                        return;
                    }
                }
            }
        };
        this.shutdownHook = new Runnable() { // from class: io.netty.channel.local.LocalChannel.2
            @Override // java.lang.Runnable
            public void run() {
                LocalChannel.this.unsafe().close(LocalChannel.this.unsafe().voidPromise());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalChannel(LocalServerChannel parent, LocalChannel peer) {
        super(parent);
        this.config = new DefaultChannelConfig(this);
        this.inboundBuffer = new ArrayDeque();
        this.readTask = new Runnable() { // from class: io.netty.channel.local.LocalChannel.1
            @Override // java.lang.Runnable
            public void run() {
                ChannelPipeline pipeline = LocalChannel.this.pipeline();
                while (true) {
                    Object m = LocalChannel.this.inboundBuffer.poll();
                    if (m != null) {
                        pipeline.fireChannelRead(m);
                    } else {
                        pipeline.fireChannelReadComplete();
                        return;
                    }
                }
            }
        };
        this.shutdownHook = new Runnable() { // from class: io.netty.channel.local.LocalChannel.2
            @Override // java.lang.Runnable
            public void run() {
                LocalChannel.this.unsafe().close(LocalChannel.this.unsafe().voidPromise());
            }
        };
        this.peer = peer;
        this.localAddress = parent.localAddress();
        this.remoteAddress = peer.localAddress();
    }

    @Override // io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    @Override // io.netty.channel.Channel
    public ChannelConfig config() {
        return this.config;
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public LocalServerChannel parent() {
        return (LocalServerChannel) super.parent();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public LocalAddress localAddress() {
        return (LocalAddress) super.localAddress();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public LocalAddress remoteAddress() {
        return (LocalAddress) super.remoteAddress();
    }

    @Override // io.netty.channel.Channel
    public boolean isOpen() {
        return this.state < 3;
    }

    @Override // io.netty.channel.Channel
    public boolean isActive() {
        return this.state == 2;
    }

    @Override // io.netty.channel.AbstractChannel
    protected AbstractChannel.AbstractUnsafe newUnsafe() {
        return new LocalUnsafe(this, null);
    }

    @Override // io.netty.channel.AbstractChannel
    protected boolean isCompatible(EventLoop loop) {
        return loop instanceof SingleThreadEventLoop;
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress localAddress0() {
        return this.localAddress;
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress remoteAddress0() {
        return this.remoteAddress;
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doRegister() throws Exception {
        if (this.peer != null && parent() != null) {
            final LocalChannel peer = this.peer;
            this.registerInProgress = true;
            this.state = 2;
            peer.remoteAddress = parent().localAddress();
            peer.state = 2;
            peer.eventLoop().execute(new Runnable() { // from class: io.netty.channel.local.LocalChannel.3
                @Override // java.lang.Runnable
                public void run() {
                    LocalChannel.this.registerInProgress = false;
                    peer.pipeline().fireChannelActive();
                    peer.connectPromise.setSuccess();
                }
            });
        }
        ((SingleThreadEventExecutor) eventLoop()).addShutdownHook(this.shutdownHook);
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doBind(SocketAddress localAddress) throws Exception {
        this.localAddress = LocalChannelRegistry.register(this, this.localAddress, localAddress);
        this.state = 1;
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDisconnect() throws Exception {
        doClose();
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doClose() throws Exception {
        if (this.state <= 2) {
            if (this.localAddress != null) {
                if (parent() == null) {
                    LocalChannelRegistry.unregister(this.localAddress);
                }
                this.localAddress = null;
            }
            this.state = 3;
        }
        final LocalChannel peer = this.peer;
        if (peer != null && peer.isActive()) {
            EventLoop eventLoop = peer.eventLoop();
            if (eventLoop.inEventLoop() && !this.registerInProgress) {
                peer.unsafe().close(unsafe().voidPromise());
            } else {
                peer.eventLoop().execute(new Runnable() { // from class: io.netty.channel.local.LocalChannel.4
                    @Override // java.lang.Runnable
                    public void run() {
                        peer.unsafe().close(LocalChannel.this.unsafe().voidPromise());
                    }
                });
            }
            this.peer = null;
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDeregister() throws Exception {
        ((SingleThreadEventExecutor) eventLoop()).removeShutdownHook(this.shutdownHook);
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doBeginRead() throws Exception {
        if (!this.readInProgress) {
            ChannelPipeline pipeline = pipeline();
            Queue<Object> inboundBuffer = this.inboundBuffer;
            if (inboundBuffer.isEmpty()) {
                this.readInProgress = true;
                return;
            }
            InternalThreadLocalMap threadLocals = InternalThreadLocalMap.get();
            Integer stackDepth = Integer.valueOf(threadLocals.localChannelReaderStackDepth());
            if (stackDepth.intValue() < 8) {
                threadLocals.setLocalChannelReaderStackDepth(stackDepth.intValue() + 1);
                while (true) {
                    try {
                        Object received = inboundBuffer.poll();
                        if (received != null) {
                            pipeline.fireChannelRead(received);
                        } else {
                            pipeline.fireChannelReadComplete();
                            return;
                        }
                    } finally {
                        threadLocals.setLocalChannelReaderStackDepth(stackDepth.intValue());
                    }
                }
            } else {
                eventLoop().execute(this.readTask);
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer in) throws Exception {
        if (this.state < 2) {
            throw new NotYetConnectedException();
        }
        if (this.state > 2) {
            throw new ClosedChannelException();
        }
        final LocalChannel peer = this.peer;
        final ChannelPipeline peerPipeline = peer.pipeline();
        EventLoop peerLoop = peer.eventLoop();
        if (peerLoop != eventLoop()) {
            final Object[] msgsCopy = new Object[in.size()];
            for (int i = 0; i < msgsCopy.length; i++) {
                msgsCopy[i] = ReferenceCountUtil.retain(in.current());
                in.remove();
            }
            peerLoop.execute(new Runnable() { // from class: io.netty.channel.local.LocalChannel.5
                @Override // java.lang.Runnable
                public void run() {
                    Collections.addAll(peer.inboundBuffer, msgsCopy);
                    LocalChannel.finishPeerRead(peer, peerPipeline);
                }
            });
            return;
        }
        while (true) {
            Object msg = in.current();
            if (msg != null) {
                peer.inboundBuffer.add(msg);
                ReferenceCountUtil.retain(msg);
                in.remove();
            } else {
                finishPeerRead(peer, peerPipeline);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void finishPeerRead(LocalChannel peer, ChannelPipeline peerPipeline) {
        if (peer.readInProgress) {
            peer.readInProgress = false;
            while (true) {
                Object received = peer.inboundBuffer.poll();
                if (received != null) {
                    peerPipeline.fireChannelRead(received);
                } else {
                    peerPipeline.fireChannelReadComplete();
                    return;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    private class LocalUnsafe extends AbstractChannel.AbstractUnsafe {
        private LocalUnsafe() {
            super();
        }

        /* synthetic */ LocalUnsafe(LocalChannel localChannel, LocalUnsafe localUnsafe) {
            this();
        }

        @Override // io.netty.channel.Channel.Unsafe
        public void connect(SocketAddress remoteAddress, SocketAddress localAddress, ChannelPromise promise) {
            if (promise.setUncancellable() && ensureOpen(promise)) {
                if (LocalChannel.this.state != 2) {
                    if (LocalChannel.this.connectPromise == null) {
                        LocalChannel.this.connectPromise = promise;
                        if (LocalChannel.this.state != 1 && localAddress == null) {
                            localAddress = new LocalAddress(LocalChannel.this);
                        }
                        if (localAddress != null) {
                            try {
                                LocalChannel.this.doBind(localAddress);
                            } catch (Throwable t) {
                                safeSetFailure(promise, t);
                                close(voidPromise());
                                return;
                            }
                        }
                        Channel boundChannel = LocalChannelRegistry.get(remoteAddress);
                        if (!(boundChannel instanceof LocalServerChannel)) {
                            safeSetFailure(promise, new ChannelException("connection refused"));
                            close(voidPromise());
                            return;
                        } else {
                            LocalServerChannel serverChannel = (LocalServerChannel) boundChannel;
                            LocalChannel.this.peer = serverChannel.serve(LocalChannel.this);
                            return;
                        }
                    }
                    throw new ConnectionPendingException();
                }
                Exception cause = new AlreadyConnectedException();
                safeSetFailure(promise, cause);
                LocalChannel.this.pipeline().fireExceptionCaught(cause);
            }
        }
    }
}
