package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.Signal;
import io.netty.util.internal.RecyclableArrayList;
import io.netty.util.internal.StringUtil;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ReplayingDecoder<S> extends ByteToMessageDecoder {
    static final Signal REPLAY = Signal.valueOf(String.valueOf(ReplayingDecoder.class.getName()) + ".REPLAY");
    private int checkpoint;
    private final ReplayingDecoderBuffer replayable;
    private S state;

    protected ReplayingDecoder() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ReplayingDecoder(S initialState) {
        this.replayable = new ReplayingDecoderBuffer();
        this.checkpoint = -1;
        this.state = initialState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkpoint() {
        this.checkpoint = internalBuffer().readerIndex();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkpoint(S state) {
        checkpoint();
        state(state);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public S state() {
        return this.state;
    }

    protected S state(S newState) {
        S oldState = this.state;
        this.state = newState;
        return oldState;
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        RecyclableArrayList out = RecyclableArrayList.newInstance();
        try {
            try {
                try {
                    this.replayable.terminate();
                    callDecode(ctx, internalBuffer(), out);
                    decodeLast(ctx, this.replayable, out);
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
            }
        } catch (Signal replay) {
            replay.expect(REPLAY);
            try {
                if (this.cumulation != null) {
                    this.cumulation.release();
                    this.cumulation = null;
                }
                int size3 = out.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    ctx.fireChannelRead(out.get(i3));
                }
                if (size3 > 0) {
                    ctx.fireChannelReadComplete();
                }
                ctx.fireChannelInactive();
            } finally {
            }
        } catch (Exception e2) {
            throw new DecoderException(e2);
        }
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void callDecode(ChannelHandlerContext ctx, ByteBuf in, List<Object> out) {
        int checkpoint;
        this.replayable.setCumulation(in);
        while (in.isReadable()) {
            try {
                int oldReaderIndex = in.readerIndex();
                this.checkpoint = oldReaderIndex;
                int outSize = out.size();
                S oldState = this.state;
                int oldInputLength = in.readableBytes();
                try {
                    decode(ctx, this.replayable, out);
                    if (!ctx.isRemoved()) {
                        if (outSize == out.size()) {
                            if (oldInputLength == in.readableBytes() && oldState == this.state) {
                                throw new DecoderException(String.valueOf(StringUtil.simpleClassName(getClass())) + ".decode() must consume the inbound data or change its state if it did not decode anything.");
                            }
                        } else {
                            if (oldReaderIndex == in.readerIndex() && oldState == this.state) {
                                throw new DecoderException(String.valueOf(StringUtil.simpleClassName(getClass())) + ".decode() method must consume the inbound data or change its state if it decoded something.");
                            }
                            if (isSingleDecode()) {
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                } catch (Signal replay) {
                    replay.expect(REPLAY);
                    if (!ctx.isRemoved() && (checkpoint = this.checkpoint) >= 0) {
                        in.readerIndex(checkpoint);
                        return;
                    }
                    return;
                }
            } catch (DecoderException e) {
                throw e;
            } catch (Throwable cause) {
                throw new DecoderException(cause);
            }
        }
    }
}
