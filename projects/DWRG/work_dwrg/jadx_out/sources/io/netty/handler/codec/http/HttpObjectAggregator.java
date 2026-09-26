package io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.CompositeByteBuf;
import io.netty.buffer.DefaultByteBufHolder;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.MessageToMessageDecoder;
import io.netty.handler.codec.TooLongFrameException;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import java.util.List;

/* loaded from: classes.dex */
public class HttpObjectAggregator extends MessageToMessageDecoder<HttpObject> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final FullHttpResponse CONTINUE;
    public static final int DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS = 1024;
    private ChannelHandlerContext ctx;
    private AggregatedFullHttpMessage currentMessage;
    private final int maxContentLength;
    private int maxCumulationBufferComponents = 1024;
    private boolean tooLongFrameFound;

    @Override // io.netty.handler.codec.MessageToMessageDecoder
    protected /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, HttpObject httpObject, List list) throws Exception {
        decode2(channelHandlerContext, httpObject, (List<Object>) list);
    }

    static {
        $assertionsDisabled = !HttpObjectAggregator.class.desiredAssertionStatus();
        CONTINUE = new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.CONTINUE, Unpooled.EMPTY_BUFFER);
    }

    public HttpObjectAggregator(int maxContentLength) {
        if (maxContentLength <= 0) {
            throw new IllegalArgumentException("maxContentLength must be a positive integer: " + maxContentLength);
        }
        this.maxContentLength = maxContentLength;
    }

    public final int getMaxCumulationBufferComponents() {
        return this.maxCumulationBufferComponents;
    }

    public final void setMaxCumulationBufferComponents(int maxCumulationBufferComponents) {
        if (maxCumulationBufferComponents < 2) {
            throw new IllegalArgumentException("maxCumulationBufferComponents: " + maxCumulationBufferComponents + " (expected: >= 2)");
        }
        if (this.ctx == null) {
            this.maxCumulationBufferComponents = maxCumulationBufferComponents;
            return;
        }
        throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
    }

    /* renamed from: decode, reason: avoid collision after fix types in other method */
    protected void decode2(final ChannelHandlerContext channelHandlerContext, HttpObject httpObject, List<Object> list) throws Exception {
        boolean z;
        AggregatedFullHttpMessage aggregatedFullHttpMessage;
        HttpHeaders httpHeaders = null;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        AggregatedFullHttpMessage aggregatedFullHttpMessage2 = this.currentMessage;
        if (httpObject instanceof HttpMessage) {
            this.tooLongFrameFound = false;
            if (!$assertionsDisabled && aggregatedFullHttpMessage2 != null) {
                throw new AssertionError();
            }
            HttpMessage httpMessage = (HttpMessage) httpObject;
            if (HttpHeaders.is100ContinueExpected(httpMessage)) {
                channelHandlerContext.writeAndFlush(CONTINUE).addListener2((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.handler.codec.http.HttpObjectAggregator.1
                    @Override // io.netty.util.concurrent.GenericFutureListener
                    public void operationComplete(ChannelFuture future) throws Exception {
                        if (!future.isSuccess()) {
                            channelHandlerContext.fireExceptionCaught(future.cause());
                        }
                    }
                });
            }
            if (!httpMessage.getDecoderResult().isSuccess()) {
                HttpHeaders.removeTransferEncodingChunked(httpMessage);
                list.add(toFullMessage(httpMessage));
                this.currentMessage = null;
                return;
            }
            if (httpObject instanceof HttpRequest) {
                AggregatedFullHttpMessage aggregatedFullHttpRequest = new AggregatedFullHttpRequest((HttpRequest) httpObject, channelHandlerContext.alloc().compositeBuffer(this.maxCumulationBufferComponents), httpHeaders, z4 ? 1 : 0);
                this.currentMessage = aggregatedFullHttpRequest;
                aggregatedFullHttpMessage = aggregatedFullHttpRequest;
            } else if (httpObject instanceof HttpResponse) {
                AggregatedFullHttpMessage aggregatedFullHttpResponse = new AggregatedFullHttpResponse((HttpResponse) httpObject, Unpooled.compositeBuffer(this.maxCumulationBufferComponents), z3 ? 1 : 0, z2 ? 1 : 0);
                this.currentMessage = aggregatedFullHttpResponse;
                aggregatedFullHttpMessage = aggregatedFullHttpResponse;
            } else {
                throw new Error();
            }
            HttpHeaders.removeTransferEncodingChunked(aggregatedFullHttpMessage);
            return;
        }
        if (httpObject instanceof HttpContent) {
            if (this.tooLongFrameFound) {
                if (httpObject instanceof LastHttpContent) {
                    this.currentMessage = null;
                    return;
                }
                return;
            }
            if (!$assertionsDisabled && aggregatedFullHttpMessage2 == null) {
                throw new AssertionError();
            }
            HttpContent httpContent = (HttpContent) httpObject;
            CompositeByteBuf compositeByteBuf = (CompositeByteBuf) aggregatedFullHttpMessage2.content();
            if (compositeByteBuf.readableBytes() > this.maxContentLength - httpContent.content().readableBytes()) {
                this.tooLongFrameFound = true;
                aggregatedFullHttpMessage2.release();
                this.currentMessage = null;
                throw new TooLongFrameException("HTTP content length exceeded " + this.maxContentLength + " bytes.");
            }
            if (httpContent.content().isReadable()) {
                httpContent.retain();
                compositeByteBuf.addComponent(httpContent.content());
                compositeByteBuf.writerIndex(compositeByteBuf.writerIndex() + httpContent.content().readableBytes());
            }
            if (!httpContent.getDecoderResult().isSuccess()) {
                aggregatedFullHttpMessage2.setDecoderResult(DecoderResult.failure(httpContent.getDecoderResult().cause()));
                z = true;
            } else {
                z = httpContent instanceof LastHttpContent;
            }
            if (z) {
                this.currentMessage = null;
                if (httpContent instanceof LastHttpContent) {
                    aggregatedFullHttpMessage2.setTrailingHeaders(((LastHttpContent) httpContent).trailingHeaders());
                } else {
                    aggregatedFullHttpMessage2.setTrailingHeaders(new DefaultHttpHeaders());
                }
                aggregatedFullHttpMessage2.headers().set(HttpHeaders.Names.CONTENT_LENGTH, (Object) String.valueOf(compositeByteBuf.readableBytes()));
                list.add(aggregatedFullHttpMessage2);
                return;
            }
            return;
        }
        throw new Error();
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        super.channelInactive(ctx);
        if (this.currentMessage != null) {
            this.currentMessage.release();
            this.currentMessage = null;
        }
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        this.ctx = ctx;
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        super.handlerRemoved(ctx);
        if (this.currentMessage != null) {
            this.currentMessage.release();
            this.currentMessage = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static FullHttpMessage toFullMessage(HttpMessage httpMessage) {
        AggregatedFullHttpRequest aggregatedFullHttpRequest = null;
        Object[] objArr = 0;
        if (httpMessage instanceof FullHttpMessage) {
            return ((FullHttpMessage) httpMessage).retain();
        }
        if (httpMessage instanceof HttpRequest) {
            return new AggregatedFullHttpRequest((HttpRequest) httpMessage, Unpooled.EMPTY_BUFFER, new DefaultHttpHeaders(), aggregatedFullHttpRequest);
        }
        if (httpMessage instanceof HttpResponse) {
            return new AggregatedFullHttpResponse((HttpResponse) httpMessage, Unpooled.EMPTY_BUFFER, new DefaultHttpHeaders(), objArr == true ? 1 : 0);
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class AggregatedFullHttpMessage extends DefaultByteBufHolder implements FullHttpMessage {
        protected final HttpMessage message;
        private HttpHeaders trailingHeaders;

        @Override // io.netty.buffer.DefaultByteBufHolder, io.netty.buffer.ByteBufHolder
        public abstract FullHttpMessage copy();

        @Override // io.netty.buffer.DefaultByteBufHolder, io.netty.buffer.ByteBufHolder
        public abstract FullHttpMessage duplicate();

        /* synthetic */ AggregatedFullHttpMessage(HttpMessage httpMessage, ByteBuf byteBuf, HttpHeaders httpHeaders, AggregatedFullHttpMessage aggregatedFullHttpMessage) {
            this(httpMessage, byteBuf, httpHeaders);
        }

        private AggregatedFullHttpMessage(HttpMessage message, ByteBuf content, HttpHeaders trailingHeaders) {
            super(content);
            this.message = message;
            this.trailingHeaders = trailingHeaders;
        }

        @Override // io.netty.handler.codec.http.LastHttpContent
        public HttpHeaders trailingHeaders() {
            return this.trailingHeaders;
        }

        public void setTrailingHeaders(HttpHeaders trailingHeaders) {
            this.trailingHeaders = trailingHeaders;
        }

        @Override // io.netty.handler.codec.http.HttpMessage
        public HttpVersion getProtocolVersion() {
            return this.message.getProtocolVersion();
        }

        @Override // io.netty.handler.codec.http.HttpMessage, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpMessage setProtocolVersion(HttpVersion version) {
            this.message.setProtocolVersion(version);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpMessage
        public HttpHeaders headers() {
            return this.message.headers();
        }

        @Override // io.netty.handler.codec.http.HttpObject
        public DecoderResult getDecoderResult() {
            return this.message.getDecoderResult();
        }

        @Override // io.netty.handler.codec.http.HttpObject
        public void setDecoderResult(DecoderResult result) {
            this.message.setDecoderResult(result);
        }

        @Override // io.netty.buffer.DefaultByteBufHolder, io.netty.util.ReferenceCounted
        public FullHttpMessage retain(int increment) {
            super.retain(increment);
            return this;
        }

        @Override // io.netty.buffer.DefaultByteBufHolder, io.netty.util.ReferenceCounted
        public FullHttpMessage retain() {
            super.retain();
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class AggregatedFullHttpRequest extends AggregatedFullHttpMessage implements FullHttpRequest {
        /* synthetic */ AggregatedFullHttpRequest(HttpRequest httpRequest, ByteBuf byteBuf, HttpHeaders httpHeaders, AggregatedFullHttpRequest aggregatedFullHttpRequest) {
            this(httpRequest, byteBuf, httpHeaders);
        }

        private AggregatedFullHttpRequest(HttpRequest request, ByteBuf content, HttpHeaders trailingHeaders) {
            super(request, content, trailingHeaders, null);
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.buffer.DefaultByteBufHolder, io.netty.buffer.ByteBufHolder
        public FullHttpRequest copy() {
            DefaultFullHttpRequest copy = new DefaultFullHttpRequest(getProtocolVersion(), getMethod(), getUri(), content().copy());
            copy.headers().set(headers());
            copy.trailingHeaders().set(trailingHeaders());
            return copy;
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.buffer.DefaultByteBufHolder, io.netty.buffer.ByteBufHolder
        public FullHttpRequest duplicate() {
            DefaultFullHttpRequest duplicate = new DefaultFullHttpRequest(getProtocolVersion(), getMethod(), getUri(), content().duplicate());
            duplicate.headers().set(headers());
            duplicate.trailingHeaders().set(trailingHeaders());
            return duplicate;
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.buffer.DefaultByteBufHolder, io.netty.util.ReferenceCounted
        public FullHttpRequest retain(int increment) {
            super.retain(increment);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.buffer.DefaultByteBufHolder, io.netty.util.ReferenceCounted
        public FullHttpRequest retain() {
            super.retain();
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setMethod(HttpMethod method) {
            ((HttpRequest) this.message).setMethod(method);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setUri(String uri) {
            ((HttpRequest) this.message).setUri(uri);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public HttpMethod getMethod() {
            return ((HttpRequest) this.message).getMethod();
        }

        @Override // io.netty.handler.codec.http.HttpRequest
        public String getUri() {
            return ((HttpRequest) this.message).getUri();
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.handler.codec.http.HttpMessage, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpRequest setProtocolVersion(HttpVersion version) {
            super.setProtocolVersion(version);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class AggregatedFullHttpResponse extends AggregatedFullHttpMessage implements FullHttpResponse {
        /* synthetic */ AggregatedFullHttpResponse(HttpResponse httpResponse, ByteBuf byteBuf, HttpHeaders httpHeaders, AggregatedFullHttpResponse aggregatedFullHttpResponse) {
            this(httpResponse, byteBuf, httpHeaders);
        }

        private AggregatedFullHttpResponse(HttpResponse message, ByteBuf content, HttpHeaders trailingHeaders) {
            super(message, content, trailingHeaders, null);
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.buffer.DefaultByteBufHolder, io.netty.buffer.ByteBufHolder
        public FullHttpResponse copy() {
            DefaultFullHttpResponse copy = new DefaultFullHttpResponse(getProtocolVersion(), getStatus(), content().copy());
            copy.headers().set(headers());
            copy.trailingHeaders().set(trailingHeaders());
            return copy;
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.buffer.DefaultByteBufHolder, io.netty.buffer.ByteBufHolder
        public FullHttpResponse duplicate() {
            DefaultFullHttpResponse duplicate = new DefaultFullHttpResponse(getProtocolVersion(), getStatus(), content().duplicate());
            duplicate.headers().set(headers());
            duplicate.trailingHeaders().set(trailingHeaders());
            return duplicate;
        }

        @Override // io.netty.handler.codec.http.HttpResponse, io.netty.handler.codec.http.FullHttpResponse
        public FullHttpResponse setStatus(HttpResponseStatus status) {
            ((HttpResponse) this.message).setStatus(status);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpResponse
        public HttpResponseStatus getStatus() {
            return ((HttpResponse) this.message).getStatus();
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.handler.codec.http.HttpMessage, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
        public FullHttpResponse setProtocolVersion(HttpVersion version) {
            super.setProtocolVersion(version);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.buffer.DefaultByteBufHolder, io.netty.util.ReferenceCounted
        public FullHttpResponse retain(int increment) {
            super.retain(increment);
            return this;
        }

        @Override // io.netty.handler.codec.http.HttpObjectAggregator.AggregatedFullHttpMessage, io.netty.buffer.DefaultByteBufHolder, io.netty.util.ReferenceCounted
        public FullHttpResponse retain() {
            super.retain();
            return this;
        }
    }
}
