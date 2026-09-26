.class public interface abstract Lio/netty/handler/codec/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpMessage;


# virtual methods
.method public abstract getMethod()Lio/netty/handler/codec/http/HttpMethod;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract setMethod(Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/HttpRequest;
.end method

.method public abstract setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpRequest;
.end method

.method public abstract setUri(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;
.end method
