.class public interface abstract Lcom/tencent/component/plugin/PluginManager$PluginMonitor;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
    since = 0x190
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PluginMonitor"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onPluginChanged(Ljava/lang/String;II)V
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end method

.method public abstract onPluginInstalled(Ljava/lang/String;II)V
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end method

.method public abstract onPluginUninstall(Ljava/lang/String;)V
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end method
