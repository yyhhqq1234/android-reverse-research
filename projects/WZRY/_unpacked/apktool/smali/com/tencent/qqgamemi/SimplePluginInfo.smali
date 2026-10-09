.class public Lcom/tencent/qqgamemi/SimplePluginInfo;
.super Ljava/lang/Object;
.source "SimplePluginInfo.java"


# instance fields
.field public pluginId:Ljava/lang/String;

.field public pluginName:Ljava/lang/String;

.field public version:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 1
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqgamemi/SimplePluginInfo;->pluginId:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqgamemi/SimplePluginInfo;->pluginName:Ljava/lang/String;

    .line 17
    iget v0, p1, Lcom/tencent/component/plugin/PluginInfo;->version:I

    iput v0, p0, Lcom/tencent/qqgamemi/SimplePluginInfo;->version:I

    .line 18
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqgamemi/SimplePluginInfo;->versionName:Ljava/lang/String;

    .line 20
    :cond_0
    return-void
.end method
