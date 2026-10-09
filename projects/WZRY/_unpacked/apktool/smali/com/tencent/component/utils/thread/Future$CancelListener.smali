.class public interface abstract Lcom/tencent/component/utils/thread/Future$CancelListener;
.super Ljava/lang/Object;
.source "Future.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x12c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/thread/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CancelListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end method
