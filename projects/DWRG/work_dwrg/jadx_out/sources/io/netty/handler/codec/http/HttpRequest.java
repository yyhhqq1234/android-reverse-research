package io.netty.handler.codec.http;

/* loaded from: classes.dex */
public interface HttpRequest extends HttpMessage {
    HttpMethod getMethod();

    String getUri();

    HttpRequest setMethod(HttpMethod httpMethod);

    HttpRequest setProtocolVersion(HttpVersion httpVersion);

    HttpRequest setUri(String str);
}
