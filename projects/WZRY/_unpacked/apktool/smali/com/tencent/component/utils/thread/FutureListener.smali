.class public interface abstract Lcom/tencent/component/utils/thread/FutureListener;
.super Ljava/lang/Object;
.source "FutureListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFutureBegin(Lcom/tencent/component/utils/thread/Future;)V
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/component/utils/thread/Future",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onFutureDone(Lcom/tencent/component/utils/thread/Future;)V
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/component/utils/thread/Future",
            "<TT;>;)V"
        }
    .end annotation
.end method
