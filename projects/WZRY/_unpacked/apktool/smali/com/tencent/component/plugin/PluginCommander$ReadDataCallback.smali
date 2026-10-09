.class public interface abstract Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;
.super Ljava/lang/Object;
.source "PluginCommander.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x12c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginCommander;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReadDataCallback"
.end annotation


# virtual methods
.method public abstract onReadDataFinish(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end method
