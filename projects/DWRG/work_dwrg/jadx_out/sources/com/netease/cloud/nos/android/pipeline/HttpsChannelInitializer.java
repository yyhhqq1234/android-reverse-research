package com.netease.cloud.nos.android.pipeline;

import com.netease.cloud.nos.android.ssl.SSLTrustAllSocketFactory;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpRequestEncoder;
import io.netty.handler.codec.http.HttpResponseDecoder;
import io.netty.handler.ssl.SslHandler;
import javax.net.ssl.SSLEngine;

/* loaded from: classes.dex */
public class HttpsChannelInitializer extends ChannelInitializer<SocketChannel> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.ChannelInitializer
    public void initChannel(SocketChannel ch) throws Exception {
        ChannelPipeline pipeline = ch.pipeline();
        SSLEngine engine = ((SSLTrustAllSocketFactory) SSLTrustAllSocketFactory.getSocketFactory()).getSslEngine();
        engine.setUseClientMode(true);
        pipeline.addLast("ssl", new SslHandler(engine));
        pipeline.addLast("decoder", new HttpResponseDecoder());
        pipeline.addLast("encoder", new HttpRequestEncoder());
        pipeline.addLast("aggregator", new HttpObjectAggregator(1048576));
        pipeline.addLast("handler", new PipelineHttpClientHandler());
    }
}
