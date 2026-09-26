package io.netty.channel;

import io.netty.channel.Channel;
import io.netty.channel.ChannelHandler;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;

@ChannelHandler.Sharable
/* loaded from: classes.dex */
public abstract class ChannelInitializer<C extends Channel> extends ChannelInboundHandlerAdapter {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) ChannelInitializer.class);

    protected abstract void initChannel(C c) throws Exception;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public final void channelRegistered(ChannelHandlerContext ctx) throws Exception {
        ChannelPipeline pipeline = ctx.pipeline();
        try {
            try {
                initChannel(ctx.channel());
                pipeline.remove(this);
                ctx.fireChannelRegistered();
                if (pipeline.context(this) != null) {
                    pipeline.remove(this);
                }
                if (1 == 0) {
                    ctx.close();
                }
            } catch (Throwable t) {
                logger.warn("Failed to initialize a channel. Closing: " + ctx.channel(), t);
                if (pipeline.context(this) != null) {
                    pipeline.remove(this);
                }
                if (0 == 0) {
                    ctx.close();
                }
            }
        } catch (Throwable th) {
            if (pipeline.context(this) != null) {
                pipeline.remove(this);
            }
            if (0 == 0) {
                ctx.close();
            }
            throw th;
        }
    }
}
