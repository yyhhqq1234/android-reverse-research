package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.util.internal.RecyclableArrayList;
import io.netty.util.internal.StringUtil;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ByteToMessageDecoder extends ChannelInboundHandlerAdapter {
    ByteBuf cumulation;
    private boolean decodeWasNull;
    private boolean first;
    private boolean singleDecode;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteToMessageDecoder() {
        if (isSharable()) {
            throw new IllegalStateException("@Sharable annotation is not allowed");
        }
    }

    public void setSingleDecode(boolean singleDecode) {
        this.singleDecode = singleDecode;
    }

    public boolean isSingleDecode() {
        return this.singleDecode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int actualReadableBytes() {
        return internalBuffer().readableBytes();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuf internalBuffer() {
        return this.cumulation != null ? this.cumulation : Unpooled.EMPTY_BUFFER;
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public final void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        ByteBuf buf = internalBuffer();
        int readable = buf.readableBytes();
        if (buf.isReadable()) {
            ByteBuf bytes = buf.readBytes(readable);
            buf.release();
            ctx.fireChannelRead(bytes);
        } else {
            buf.release();
        }
        this.cumulation = null;
        ctx.fireChannelReadComplete();
        handlerRemoved0(ctx);
    }

    protected void handlerRemoved0(ChannelHandlerContext ctx) throws Exception {
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        if (!(msg instanceof ByteBuf)) {
            ctx.fireChannelRead(msg);
            return;
        }
        RecyclableArrayList out = RecyclableArrayList.newInstance();
        try {
            try {
                try {
                    ByteBuf data = (ByteBuf) msg;
                    this.first = this.cumulation == null;
                    if (this.first) {
                        this.cumulation = data;
                    } else {
                        if (this.cumulation.writerIndex() > this.cumulation.maxCapacity() - data.readableBytes() || this.cumulation.refCnt() > 1) {
                            expandCumulation(ctx, data.readableBytes());
                        }
                        this.cumulation.writeBytes(data);
                        data.release();
                    }
                    callDecode(ctx, this.cumulation, out);
                } catch (DecoderException e) {
                    throw e;
                }
            } catch (Throwable t) {
                throw new DecoderException(t);
            }
        } finally {
            if (this.cumulation != null && !this.cumulation.isReadable()) {
                this.cumulation.release();
                this.cumulation = null;
            }
            int size = out.size();
            this.decodeWasNull = size == 0;
            for (int i = 0; i < size; i++) {
                ctx.fireChannelRead(out.get(i));
            }
            out.recycle();
        }
    }

    private void expandCumulation(ChannelHandlerContext ctx, int readable) {
        ByteBuf oldCumulation = this.cumulation;
        this.cumulation = ctx.alloc().buffer(oldCumulation.readableBytes() + readable);
        this.cumulation.writeBytes(oldCumulation);
        oldCumulation.release();
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        if (this.cumulation != null && !this.first && this.cumulation.refCnt() == 1) {
            this.cumulation.discardSomeReadBytes();
        }
        if (this.decodeWasNull) {
            this.decodeWasNull = false;
            if (!ctx.channel().config().isAutoRead()) {
                ctx.read();
            }
        }
        ctx.fireChannelReadComplete();
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        RecyclableArrayList out = RecyclableArrayList.newInstance();
        try {
            try {
                if (this.cumulation != null) {
                    callDecode(ctx, this.cumulation, out);
                    decodeLast(ctx, this.cumulation, out);
                } else {
                    decodeLast(ctx, Unpooled.EMPTY_BUFFER, out);
                }
                try {
                    if (this.cumulation != null) {
                        this.cumulation.release();
                        this.cumulation = null;
                    }
                    int size = out.size();
                    for (int i = 0; i < size; i++) {
                        ctx.fireChannelRead(out.get(i));
                    }
                    if (size > 0) {
                        ctx.fireChannelReadComplete();
                    }
                    ctx.fireChannelInactive();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    if (this.cumulation != null) {
                        this.cumulation.release();
                        this.cumulation = null;
                    }
                    int size2 = out.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ctx.fireChannelRead(out.get(i2));
                    }
                    if (size2 > 0) {
                        ctx.fireChannelReadComplete();
                    }
                    ctx.fireChannelInactive();
                    throw th;
                } finally {
                }
            }
        } catch (DecoderException e) {
            throw e;
        } catch (Exception e2) {
            throw new DecoderException(e2);
        }
    }

    protected void callDecode(ChannelHandlerContext ctx, ByteBuf in, List<Object> out) {
        while (in.isReadable()) {
            try {
                int outSize = out.size();
                int oldInputLength = in.readableBytes();
                decode(ctx, in, out);
                if (!ctx.isRemoved()) {
                    if (outSize == out.size()) {
                        if (oldInputLength == in.readableBytes()) {
                            return;
                        }
                    } else {
                        if (oldInputLength == in.readableBytes()) {
                            throw new DecoderException(String.valueOf(StringUtil.simpleClassName(getClass())) + ".decode() did not read anything but decoded a message.");
                        }
                        if (isSingleDecode()) {
                            return;
                        }
                    }
                } else {
                    return;
                }
            } catch (DecoderException e) {
                throw e;
            } catch (Throwable cause) {
                throw new DecoderException(cause);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void decodeLast(ChannelHandlerContext ctx, ByteBuf in, List<Object> out) throws Exception {
        decode(ctx, in, out);
    }
}
