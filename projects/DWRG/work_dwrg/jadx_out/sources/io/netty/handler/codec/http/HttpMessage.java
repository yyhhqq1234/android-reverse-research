package io.netty.handler.codec.http;

/* loaded from: classes.dex */
public interface HttpMessage extends HttpObject {
    HttpVersion getProtocolVersion();

    HttpHeaders headers();

    HttpMessage setProtocolVersion(HttpVersion httpVersion);
}
