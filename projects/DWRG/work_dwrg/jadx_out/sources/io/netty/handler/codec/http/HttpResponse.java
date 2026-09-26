package io.netty.handler.codec.http;

/* loaded from: classes.dex */
public interface HttpResponse extends HttpMessage {
    HttpResponseStatus getStatus();

    @Override // io.netty.handler.codec.http.HttpMessage, io.netty.handler.codec.http.HttpRequest, io.netty.handler.codec.http.FullHttpRequest
    HttpResponse setProtocolVersion(HttpVersion httpVersion);

    HttpResponse setStatus(HttpResponseStatus httpResponseStatus);
}
