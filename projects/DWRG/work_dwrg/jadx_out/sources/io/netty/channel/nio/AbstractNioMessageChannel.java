package io.netty.channel.nio;

import io.netty.channel.Channel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ServerChannel;
import io.netty.channel.nio.AbstractNioChannel;
import java.io.IOException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class AbstractNioMessageChannel extends AbstractNioChannel {
    protected abstract int doReadMessages(List<Object> list) throws Exception;

    protected abstract boolean doWriteMessage(Object obj, ChannelOutboundBuffer channelOutboundBuffer) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractNioMessageChannel(Channel parent, SelectableChannel ch, int readInterestOp) {
        super(parent, ch, readInterestOp);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.AbstractChannel
    public AbstractNioChannel.AbstractNioUnsafe newUnsafe() {
        return new NioMessageUnsafe(this, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class NioMessageUnsafe extends AbstractNioChannel.AbstractNioUnsafe {
        static final /* synthetic */ boolean $assertionsDisabled;
        private final List<Object> readBuf;

        static {
            $assertionsDisabled = !AbstractNioMessageChannel.class.desiredAssertionStatus();
        }

        private NioMessageUnsafe() {
            super();
            this.readBuf = new ArrayList();
        }

        /* synthetic */ NioMessageUnsafe(AbstractNioMessageChannel abstractNioMessageChannel, NioMessageUnsafe nioMessageUnsafe) {
            this();
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public void read() {
            boolean isReadPending;
            if (!$assertionsDisabled && !AbstractNioMessageChannel.this.eventLoop().inEventLoop()) {
                throw new AssertionError();
            }
            ChannelConfig config = AbstractNioMessageChannel.this.config();
            if (!r10) {
                if (!isReadPending) {
                    return;
                }
            }
            int maxMessagesPerRead = config.getMaxMessagesPerRead();
            ChannelPipeline pipeline = AbstractNioMessageChannel.this.pipeline();
            boolean closed = false;
            Throwable exception = null;
            while (true) {
                try {
                    try {
                        int localRead = AbstractNioMessageChannel.this.doReadMessages(this.readBuf);
                        if (localRead == 0) {
                            break;
                        }
                        if (localRead < 0) {
                            closed = true;
                            break;
                        } else if (!config.isAutoRead() || this.readBuf.size() >= maxMessagesPerRead) {
                            break;
                        }
                    } finally {
                        if (!config.isAutoRead() && !AbstractNioMessageChannel.this.isReadPending()) {
                            removeReadOp();
                        }
                    }
                } catch (Throwable t) {
                    exception = t;
                }
            }
            AbstractNioMessageChannel.this.setReadPending(false);
            int size = this.readBuf.size();
            for (int i = 0; i < size; i++) {
                pipeline.fireChannelRead(this.readBuf.get(i));
            }
            this.readBuf.clear();
            pipeline.fireChannelReadComplete();
            if (exception != null) {
                if (exception instanceof IOException) {
                    closed = !(AbstractNioMessageChannel.this instanceof ServerChannel);
                }
                pipeline.fireExceptionCaught(exception);
            }
            if (closed && AbstractNioMessageChannel.this.isOpen()) {
                close(voidPromise());
            }
            if (!config.isAutoRead() && !AbstractNioMessageChannel.this.isReadPending()) {
                removeReadOp();
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer in) throws Exception {
        SelectionKey key = selectionKey();
        int interestOps = key.interestOps();
        while (true) {
            Object msg = in.current();
            if (msg == null) {
                if ((interestOps & 4) != 0) {
                    key.interestOps(interestOps & (-5));
                    return;
                }
                return;
            }
            boolean done = false;
            try {
                int i = config().getWriteSpinCount() - 1;
                while (true) {
                    if (i < 0) {
                        break;
                    }
                    if (!doWriteMessage(msg, in)) {
                        i--;
                    } else {
                        done = true;
                        break;
                    }
                }
            } catch (IOException e) {
                if (continueOnWriteError()) {
                    in.remove(e);
                } else {
                    throw e;
                }
            }
            if (done) {
                in.remove();
            } else {
                if ((interestOps & 4) == 0) {
                    key.interestOps(interestOps | 4);
                    return;
                }
                return;
            }
        }
    }

    protected boolean continueOnWriteError() {
        return false;
    }
}
