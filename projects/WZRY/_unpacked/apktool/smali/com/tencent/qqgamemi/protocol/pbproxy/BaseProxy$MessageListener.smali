.class public interface abstract Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;
.super Ljava/lang/Object;
.source "BaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/String;)V
.end method

.method public varargs abstract onSuccess([Ljava/lang/Object;)V
.end method

.method public abstract onTimeOut(Lcom/tencent/qt/base/net/Request;)V
.end method
