.class public interface abstract Lcom/tencent/component/utils/thread/ThreadPool$JobContext;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x4
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JobContext"
.end annotation


# virtual methods
.method public abstract isCancelled()Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end method

.method public abstract setMode(I)Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end method
