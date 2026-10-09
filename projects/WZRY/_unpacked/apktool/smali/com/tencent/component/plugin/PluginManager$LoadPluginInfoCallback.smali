.class public interface abstract Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadPluginInfoCallback"
.end annotation


# virtual methods
.method public abstract onLoadPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end method
