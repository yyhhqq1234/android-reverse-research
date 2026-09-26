package io.netty.handler.codec.http;

/* loaded from: classes.dex */
public interface FullHttpRequest extends HttpRequest, FullHttpMessage {
    @Override // io.netty.handler.codec.http.FullHttpMessage, io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder
    FullHttpRequest copy();

    @Override // io.netty.handler.codec.http.FullHttpMessage, io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder, io.netty.util.ReferenceCounted
    FullHttpRequest retain();

    @Override // io.netty.handler.codec.http.FullHttpMessage, io.netty.handler.codec.http.LastHttpContent, io.netty.handler.codec.http.HttpContent, io.netty.buffer.ByteBufHolder, io.netty.util.ReferenceCounted
    FullHttpRequest retain(int i);

    FullHttpRequest setMethod(HttpMethod httpMethod);

    FullHttpRequest setProtocolVersion(HttpVersion httpVersion);

    FullHttpRequest setUri(String str);
}
