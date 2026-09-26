package io.netty.channel.nio;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.Channel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelOption;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.FileRegion;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.nio.AbstractNioChannel;
import io.netty.channel.socket.ChannelInputShutdownEvent;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;

/* loaded from: classes.dex */
public abstract class AbstractNioByteChannel extends AbstractNioChannel {
    private static final String EXPECTED_TYPES = " (expected: " + StringUtil.simpleClassName((Class<?>) ByteBuf.class) + ", " + StringUtil.simpleClassName((Class<?>) FileRegion.class) + ')';
    private Runnable flushTask;

    protected abstract int doReadBytes(ByteBuf byteBuf) throws Exception;

    protected abstract int doWriteBytes(ByteBuf byteBuf) throws Exception;

    protected abstract long doWriteFileRegion(FileRegion fileRegion) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractNioByteChannel(Channel parent, SelectableChannel ch) {
        super(parent, ch, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.AbstractChannel
    public AbstractNioChannel.AbstractNioUnsafe newUnsafe() {
        return new NioByteUnsafe(this, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class NioByteUnsafe extends AbstractNioChannel.AbstractNioUnsafe {
        private RecvByteBufAllocator.Handle allocHandle;

        private NioByteUnsafe() {
            super();
        }

        /* synthetic */ NioByteUnsafe(AbstractNioByteChannel abstractNioByteChannel, NioByteUnsafe nioByteUnsafe) {
            this();
        }

        private void closeOnRead(ChannelPipeline pipeline) {
            SelectionKey key = AbstractNioByteChannel.this.selectionKey();
            AbstractNioByteChannel.this.setInputShutdown();
            if (AbstractNioByteChannel.this.isOpen()) {
                if (Boolean.TRUE.equals(AbstractNioByteChannel.this.config().getOption(ChannelOption.ALLOW_HALF_CLOSURE))) {
                    key.interestOps(key.interestOps() & (AbstractNioByteChannel.this.readInterestOp ^ (-1)));
                    pipeline.fireUserEventTriggered(ChannelInputShutdownEvent.INSTANCE);
                } else {
                    close(voidPromise());
                }
            }
        }

        private void handleReadException(ChannelPipeline pipeline, ByteBuf byteBuf, Throwable cause, boolean close) {
            if (byteBuf != null) {
                if (byteBuf.isReadable()) {
                    AbstractNioByteChannel.this.setReadPending(false);
                    pipeline.fireChannelRead(byteBuf);
                } else {
                    byteBuf.release();
                }
            }
            pipeline.fireChannelReadComplete();
            pipeline.fireExceptionCaught(cause);
            if (close || (cause instanceof IOException)) {
                closeOnRead(pipeline);
            }
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public void read() {
            ChannelConfig config = AbstractNioByteChannel.this.config();
            if (!config.isAutoRead() && !AbstractNioByteChannel.this.isReadPending()) {
                removeReadOp();
                return;
            }
            ChannelPipeline pipeline = AbstractNioByteChannel.this.pipeline();
            ByteBufAllocator allocator = config.getAllocator();
            int maxMessagesPerRead = config.getMaxMessagesPerRead();
            RecvByteBufAllocator.Handle allocHandle = this.allocHandle;
            if (allocHandle == null) {
                allocHandle = config.getRecvByteBufAllocator().newHandle();
                this.allocHandle = allocHandle;
            }
            ByteBuf byteBuf = null;
            int messages = 0;
            boolean close = false;
            int totalReadAmount = 0;
            boolean readPendingReset = false;
            while (true) {
                try {
                    try {
                        byteBuf = allocHandle.allocate(allocator);
                        int writable = byteBuf.writableBytes();
                        int localReadAmount = AbstractNioByteChannel.this.doReadBytes(byteBuf);
                        if (localReadAmount <= 0) {
                            byteBuf.release();
                            close = localReadAmount < 0;
                        } else {
                            if (!readPendingReset) {
                                readPendingReset = true;
                                AbstractNioByteChannel.this.setReadPending(false);
                            }
                            pipeline.fireChannelRead(byteBuf);
                            byteBuf = null;
                            if (totalReadAmount >= Integer.MAX_VALUE - localReadAmount) {
                                totalReadAmount = Integer.MAX_VALUE;
                                break;
                            }
                            totalReadAmount += localReadAmount;
                            if (!config.isAutoRead() || localReadAmount < writable || (messages = messages + 1) >= maxMessagesPerRead) {
                                break;
                            }
                        }
                    } catch (Throwable t) {
                        handleReadException(pipeline, byteBuf, t, close);
                        if (!config.isAutoRead() && !AbstractNioByteChannel.this.isReadPending()) {
                            removeReadOp();
                            return;
                        }
                        return;
                    }
                } catch (Throwable th) {
                    if (!config.isAutoRead() && !AbstractNioByteChannel.this.isReadPending()) {
                        removeReadOp();
                    }
                    throw th;
                }
            }
            pipeline.fireChannelReadComplete();
            allocHandle.record(totalReadAmount);
            if (close) {
                closeOnRead(pipeline);
            }
            if (!config.isAutoRead() && !AbstractNioByteChannel.this.isReadPending()) {
                removeReadOp();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.AbstractChannel
    public void doWrite(ChannelOutboundBuffer in) throws Exception {
        int writeSpinCount = -1;
        while (true) {
            Object msg = in.current();
            if (msg == null) {
                clearOpWrite();
                return;
            }
            if (msg instanceof ByteBuf) {
                ByteBuf buf = (ByteBuf) msg;
                int readableBytes = buf.readableBytes();
                if (readableBytes == 0) {
                    in.remove();
                } else {
                    boolean setOpWrite = false;
                    boolean done = false;
                    long flushedAmount = 0;
                    if (writeSpinCount == -1) {
                        writeSpinCount = config().getWriteSpinCount();
                    }
                    int i = writeSpinCount - 1;
                    while (true) {
                        if (i < 0) {
                            break;
                        }
                        int localFlushedAmount = doWriteBytes(buf);
                        if (localFlushedAmount == 0) {
                            setOpWrite = true;
                            break;
                        }
                        flushedAmount += localFlushedAmount;
                        if (buf.isReadable()) {
                            i--;
                        } else {
                            done = true;
                            break;
                        }
                    }
                    in.progress(flushedAmount);
                    if (done) {
                        in.remove();
                    } else {
                        incompleteWrite(setOpWrite);
                        return;
                    }
                }
            } else if (msg instanceof FileRegion) {
                FileRegion region = (FileRegion) msg;
                boolean setOpWrite2 = false;
                boolean done2 = false;
                long flushedAmount2 = 0;
                if (writeSpinCount == -1) {
                    writeSpinCount = config().getWriteSpinCount();
                }
                int i2 = writeSpinCount - 1;
                while (true) {
                    if (i2 < 0) {
                        break;
                    }
                    long localFlushedAmount2 = doWriteFileRegion(region);
                    if (localFlushedAmount2 == 0) {
                        setOpWrite2 = true;
                        break;
                    }
                    flushedAmount2 += localFlushedAmount2;
                    if (region.transfered() < region.count()) {
                        i2--;
                    } else {
                        done2 = true;
                        break;
                    }
                }
                in.progress(flushedAmount2);
                if (done2) {
                    in.remove();
                } else {
                    incompleteWrite(setOpWrite2);
                    return;
                }
            } else {
                throw new Error();
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected final Object filterOutboundMessage(Object msg) {
        if (msg instanceof ByteBuf) {
            ByteBuf buf = (ByteBuf) msg;
            if (!buf.isDirect()) {
                return newDirectBuffer(buf);
            }
            return msg;
        }
        if (msg instanceof FileRegion) {
            return msg;
        }
        throw new UnsupportedOperationException("unsupported message type: " + StringUtil.simpleClassName(msg) + EXPECTED_TYPES);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void incompleteWrite(boolean setOpWrite) {
        if (setOpWrite) {
            setOpWrite();
            return;
        }
        Runnable flushTask = this.flushTask;
        if (flushTask == null) {
            flushTask = new Runnable() { // from class: io.netty.channel.nio.AbstractNioByteChannel.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractNioByteChannel.this.flush();
                }
            };
            this.flushTask = flushTask;
        }
        eventLoop().execute(flushTask);
    }

    protected final void setOpWrite() {
        SelectionKey key = selectionKey();
        if (key.isValid()) {
            int interestOps = key.interestOps();
            if ((interestOps & 4) == 0) {
                key.interestOps(interestOps | 4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void clearOpWrite() {
        SelectionKey key = selectionKey();
        if (key.isValid()) {
            int interestOps = key.interestOps();
            if ((interestOps & 4) != 0) {
                key.interestOps(interestOps & (-5));
            }
        }
    }
}
