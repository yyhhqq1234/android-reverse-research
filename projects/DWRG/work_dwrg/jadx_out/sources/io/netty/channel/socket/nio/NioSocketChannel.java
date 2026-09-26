package io.netty.channel.socket.nio;

import io.netty.buffer.ByteBuf;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelPromise;
import io.netty.channel.EventLoop;
import io.netty.channel.FileRegion;
import io.netty.channel.nio.AbstractNioByteChannel;
import io.netty.channel.socket.DefaultSocketChannelConfig;
import io.netty.channel.socket.ServerSocketChannel;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.SocketChannelConfig;
import io.netty.util.internal.OneTimeTask;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.channels.spi.SelectorProvider;

/* loaded from: classes.dex */
public class NioSocketChannel extends AbstractNioByteChannel implements SocketChannel {
    private final SocketChannelConfig config;
    private static final ChannelMetadata METADATA = new ChannelMetadata(false);
    private static final SelectorProvider DEFAULT_SELECTOR_PROVIDER = SelectorProvider.provider();

    private static java.nio.channels.SocketChannel newSocket(SelectorProvider provider) {
        try {
            return provider.openSocketChannel();
        } catch (IOException e) {
            throw new ChannelException("Failed to open a socket.", e);
        }
    }

    public NioSocketChannel() {
        this(newSocket(DEFAULT_SELECTOR_PROVIDER));
    }

    public NioSocketChannel(SelectorProvider provider) {
        this(newSocket(provider));
    }

    public NioSocketChannel(java.nio.channels.SocketChannel socket) {
        this(null, socket);
    }

    public NioSocketChannel(Channel parent, java.nio.channels.SocketChannel socket) {
        super(parent, socket);
        this.config = new NioSocketChannelConfig(this, socket.socket());
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public ServerSocketChannel parent() {
        return (ServerSocketChannel) super.parent();
    }

    @Override // io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    @Override // io.netty.channel.Channel
    public SocketChannelConfig config() {
        return this.config;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.nio.AbstractNioChannel
    public java.nio.channels.SocketChannel javaChannel() {
        return (java.nio.channels.SocketChannel) super.javaChannel();
    }

    @Override // io.netty.channel.Channel
    public boolean isActive() {
        java.nio.channels.SocketChannel ch = javaChannel();
        return ch.isOpen() && ch.isConnected();
    }

    @Override // io.netty.channel.nio.AbstractNioChannel, io.netty.channel.socket.SocketChannel
    public boolean isInputShutdown() {
        return super.isInputShutdown();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public InetSocketAddress localAddress() {
        return (InetSocketAddress) super.localAddress();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public InetSocketAddress remoteAddress() {
        return (InetSocketAddress) super.remoteAddress();
    }

    @Override // io.netty.channel.socket.SocketChannel
    public boolean isOutputShutdown() {
        return javaChannel().socket().isOutputShutdown() || !isActive();
    }

    @Override // io.netty.channel.socket.SocketChannel
    public ChannelFuture shutdownOutput() {
        return shutdownOutput(newPromise());
    }

    @Override // io.netty.channel.socket.SocketChannel
    public ChannelFuture shutdownOutput(final ChannelPromise promise) {
        EventLoop loop = eventLoop();
        if (loop.inEventLoop()) {
            try {
                javaChannel().socket().shutdownOutput();
                promise.setSuccess();
            } catch (Throwable t) {
                promise.setFailure(t);
            }
        } else {
            loop.execute(new OneTimeTask() { // from class: io.netty.channel.socket.nio.NioSocketChannel.1
                @Override // java.lang.Runnable
                public void run() {
                    NioSocketChannel.this.shutdownOutput(promise);
                }
            });
        }
        return promise;
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress localAddress0() {
        return javaChannel().socket().getLocalSocketAddress();
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress remoteAddress0() {
        return javaChannel().socket().getRemoteSocketAddress();
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doBind(SocketAddress localAddress) throws Exception {
        javaChannel().socket().bind(localAddress);
    }

    @Override // io.netty.channel.nio.AbstractNioChannel
    protected boolean doConnect(SocketAddress remoteAddress, SocketAddress localAddress) throws Exception {
        if (localAddress != null) {
            javaChannel().socket().bind(localAddress);
        }
        boolean success = false;
        try {
            boolean connected = javaChannel().connect(remoteAddress);
            if (!connected) {
                selectionKey().interestOps(8);
            }
            success = true;
            return connected;
        } finally {
            if (!success) {
                doClose();
            }
        }
    }

    @Override // io.netty.channel.nio.AbstractNioChannel
    protected void doFinishConnect() throws Exception {
        if (!javaChannel().finishConnect()) {
            throw new Error();
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDisconnect() throws Exception {
        doClose();
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doClose() throws Exception {
        javaChannel().close();
    }

    @Override // io.netty.channel.nio.AbstractNioByteChannel
    protected int doReadBytes(ByteBuf byteBuf) throws Exception {
        return byteBuf.writeBytes(javaChannel(), byteBuf.writableBytes());
    }

    @Override // io.netty.channel.nio.AbstractNioByteChannel
    protected int doWriteBytes(ByteBuf buf) throws Exception {
        int expectedWrittenBytes = buf.readableBytes();
        return buf.readBytes(javaChannel(), expectedWrittenBytes);
    }

    @Override // io.netty.channel.nio.AbstractNioByteChannel
    protected long doWriteFileRegion(FileRegion region) throws Exception {
        long position = region.transfered();
        return region.transferTo(javaChannel(), position);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect condition in loop: B:2:0x0004 */
    @Override // io.netty.channel.nio.AbstractNioByteChannel, io.netty.channel.AbstractChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doWrite(io.netty.channel.ChannelOutboundBuffer r19) throws java.lang.Exception {
        /*
            r18 = this;
        L0:
            int r13 = r19.size()
            if (r13 != 0) goto La
            r18.clearOpWrite()
        L9:
            return
        La:
            r14 = 0
            r3 = 0
            r12 = 0
            java.nio.ByteBuffer[] r11 = r19.nioBuffers()
            int r10 = r19.nioBufferCount()
            long r4 = r19.nioBufferSize()
            java.nio.channels.SocketChannel r2 = r18.javaChannel()
            switch(r10) {
                case 0: goto L49;
                case 1: goto L4d;
                default: goto L21;
            }
        L21:
            io.netty.channel.socket.SocketChannelConfig r16 = r18.config()
            int r16 = r16.getWriteSpinCount()
            int r6 = r16 + (-1)
        L2b:
            if (r6 < 0) goto L3c
            r16 = 0
            r0 = r16
            long r8 = r2.write(r11, r0, r10)
            r16 = 0
            int r16 = (r8 > r16 ? 1 : (r8 == r16 ? 0 : -1))
            if (r16 != 0) goto L7a
            r12 = 1
        L3c:
            r0 = r19
            r0.removeBytes(r14)
            if (r3 != 0) goto L0
            r0 = r18
            r0.incompleteWrite(r12)
            goto L9
        L49:
            super.doWrite(r19)
            goto L9
        L4d:
            r16 = 0
            r7 = r11[r16]
            io.netty.channel.socket.SocketChannelConfig r16 = r18.config()
            int r16 = r16.getWriteSpinCount()
            int r6 = r16 + (-1)
        L5b:
            if (r6 < 0) goto L3c
            int r8 = r2.write(r7)
            if (r8 != 0) goto L65
            r12 = 1
            goto L3c
        L65:
            long r0 = (long) r8
            r16 = r0
            long r4 = r4 - r16
            long r0 = (long) r8
            r16 = r0
            long r14 = r14 + r16
            r16 = 0
            int r16 = (r4 > r16 ? 1 : (r4 == r16 ? 0 : -1))
            if (r16 != 0) goto L77
            r3 = 1
            goto L3c
        L77:
            int r6 = r6 + (-1)
            goto L5b
        L7a:
            long r4 = r4 - r8
            long r14 = r14 + r8
            r16 = 0
            int r16 = (r4 > r16 ? 1 : (r4 == r16 ? 0 : -1))
            if (r16 != 0) goto L84
            r3 = 1
            goto L3c
        L84:
            int r6 = r6 + (-1)
            goto L2b
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.channel.socket.nio.NioSocketChannel.doWrite(io.netty.channel.ChannelOutboundBuffer):void");
    }

    /* loaded from: classes.dex */
    private final class NioSocketChannelConfig extends DefaultSocketChannelConfig {
        private NioSocketChannelConfig(NioSocketChannel channel, Socket javaSocket) {
            super(channel, javaSocket);
        }

        @Override // io.netty.channel.DefaultChannelConfig
        protected void autoReadCleared() {
            NioSocketChannel.this.setReadPending(false);
        }
    }
}
