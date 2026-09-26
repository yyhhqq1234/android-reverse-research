package com.netease.cloud.nos.android.pipeline;

import com.netease.cloud.nos.android.core.WanAccelerator;
import com.netease.cloud.nos.android.utils.LogUtil;
import io.netty.bootstrap.Bootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.handler.codec.http.DefaultFullHttpRequest;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.util.AttributeKey;
import java.net.InetSocketAddress;
import java.util.List;
import java.util.Vector;

/* loaded from: classes.dex */
public class PipelineHttpClient {
    protected static final int retryLimit = 1;
    private Bootstrap cbs;
    private Channel connectChannel;
    private List<Channel> connectedChannelList;
    protected String ip = null;
    protected int port;
    private PipelineHttpSession session;
    private static final String LOGTAG = LogUtil.makeLogTag(PipelineHttpClient.class);
    public static final AttributeKey<PipelineHttpSession> SESSION_KEY = AttributeKey.valueOf("PipelineHttpSession");
    private static List<Channel> httpChannelList = new Vector();
    private static Bootstrap httpCbs = getBootstrap(new HttpChannelInitializer());
    private static List<Channel> httpsChannelList = new Vector();
    private static Bootstrap httpsCbs = getBootstrap(new HttpsChannelInitializer());

    public PipelineHttpClient(int port, boolean isHttps, PipelineHttpSession session) {
        this.connectedChannelList = null;
        this.cbs = null;
        this.port = 0;
        this.port = port;
        this.session = session;
        if (isHttps) {
            this.connectedChannelList = httpsChannelList;
            this.cbs = httpsCbs;
        } else {
            this.connectedChannelList = httpChannelList;
            this.cbs = httpCbs;
        }
    }

    private static Bootstrap getBootstrap(ChannelInitializer<SocketChannel> channelInitializer) {
        Bootstrap cbs = new Bootstrap();
        cbs.group(new NioEventLoopGroup()).channel(NioSocketChannel.class).option(ChannelOption.TCP_NODELAY, true).option(ChannelOption.SO_SNDBUF, 1048576).option(ChannelOption.WRITE_BUFFER_HIGH_WATER_MARK, 1048576).option(ChannelOption.WRITE_BUFFER_LOW_WATER_MARK, 1048576).option(ChannelOption.CONNECT_TIMEOUT_MILLIS, Integer.valueOf(WanAccelerator.getConf().getConnectionTimeout())).handler(channelInitializer);
        return cbs;
    }

    public Channel connect(String ip) {
        this.connectChannel = null;
        this.ip = ip;
        for (int retry = 0; retry < 1; retry++) {
            Channel channel = doConnect();
            if (channel != null) {
                this.connectChannel = channel;
                return this.connectChannel;
            }
        }
        return null;
    }

    public void reset() {
        synchronized (this.connectedChannelList) {
            if (this.connectChannel != null) {
                this.connectChannel.attr(SESSION_KEY).set(null);
            }
        }
    }

    public void channelClose() {
        synchronized (this.connectedChannelList) {
            if (this.connectChannel != null) {
                this.connectChannel.attr(SESSION_KEY).set(null);
                this.connectedChannelList.remove(this.connectChannel);
                this.connectChannel.close();
                this.connectChannel = null;
            }
        }
    }

    private Channel doConnect() {
        Channel channel;
        int i;
        synchronized (this.connectedChannelList) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= this.connectedChannelList.size()) {
                    LogUtil.d(LOGTAG, "doConnect new connect start: " + System.currentTimeMillis());
                    ChannelFuture future = this.cbs.connect(new InetSocketAddress(this.ip, this.port));
                    future.awaitUninterruptibly2();
                    LogUtil.d(LOGTAG, "doConnect to uploadServer ip: " + this.ip + ", end:" + System.currentTimeMillis());
                    synchronized (this.connectedChannelList) {
                        if (future.isSuccess()) {
                            channel = future.channel();
                            channel.attr(SESSION_KEY).set(this.session);
                            this.connectedChannelList.add(channel);
                        } else {
                            future.channel().close();
                            channel = null;
                        }
                    }
                } else {
                    channel = this.connectedChannelList.get(i3);
                    if (channel.isActive()) {
                        String host = ((InetSocketAddress) channel.remoteAddress()).getAddress().getHostAddress();
                        int port = ((InetSocketAddress) channel.remoteAddress()).getPort();
                        if (channel.attr(SESSION_KEY).get() == null && host.equals(this.ip) && port == this.port) {
                            LogUtil.d(LOGTAG, "reuse active connection to uploadServer ip: " + this.ip);
                            channel.attr(SESSION_KEY).set(this.session);
                            break;
                        }
                        i = i3;
                    } else {
                        LogUtil.d(LOGTAG, "doConnect close inactive channel");
                        i = i3 - 1;
                        try {
                            this.connectedChannelList.remove(i3);
                            if (channel.isOpen()) {
                                channel.close();
                            }
                        }
                    }
                    i2 = i + 1;
                }
            }
        }
        return channel;
    }

    public void get(HttpRequest request) {
        if (this.connectChannel != null) {
            synchronized (this) {
                if (this.connectChannel != null) {
                    this.connectChannel.writeAndFlush(request);
                }
            }
        }
    }

    public ChannelFuture post(DefaultFullHttpRequest request) {
        if (request == null) {
            return null;
        }
        ChannelFuture cf = null;
        if (this.connectChannel == null) {
            return null;
        }
        synchronized (this) {
            if (this.connectChannel != null) {
                cf = this.connectChannel.writeAndFlush(request);
            }
        }
        return cf;
    }
}
