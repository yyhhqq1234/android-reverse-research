.class public interface abstract Lcom/tencent/component/plugin/PluginManager$PluginListener;
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
    name = "PluginListener"
.end annotation


# virtual methods
.method public abstract onPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end method

.method public abstract onPlatformInitialFinish()V
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end method

.method public abstract onPlatformInitialStart()V
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation
.end method

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

.method public abstract onStartCheckPluginSurvive(Ljava/util/List;)V
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation
.end method
