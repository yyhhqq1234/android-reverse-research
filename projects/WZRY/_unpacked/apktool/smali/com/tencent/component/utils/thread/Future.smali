.class public interface abstract Lcom/tencent/component/utils/thread/Future;
.super Ljava/lang/Object;
.source "Future.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x4
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/thread/Future$CancelListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isCancelled()Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end method

.method public abstract isDone()Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end method

.method public abstract setCancelListener(Lcom/tencent/component/utils/thread/Future$CancelListener;)V
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end method

.method public abstract waitDone()V
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end method
