.class Lcom/netease/neox/PluginUniSDK$2;
.super Ljava/lang/Object;
.source "PluginUniSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginUniSDK;->initDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/neox/PluginUniSDK;


# direct methods
.method constructor <init>(Lcom/netease/neox/PluginUniSDK;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/netease/neox/PluginUniSDK$2;->this$0:Lcom/netease/neox/PluginUniSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK$2;->this$0:Lcom/netease/neox/PluginUniSDK;

    invoke-static {v0}, Lcom/netease/neox/PluginUniSDK;->access$000(Lcom/netease/neox/PluginUniSDK;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/neox/PluginUniSDK$2;->this$0:Lcom/netease/neox/PluginUniSDK;

    invoke-static {v1}, Lcom/netease/neox/PluginUniSDK;->access$100(Lcom/netease/neox/PluginUniSDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkDownload;->setContext(Landroid/content/Context;)V

    .line 687
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/neox/PluginUniSDK$2;->this$0:Lcom/netease/neox/PluginUniSDK;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkDownload;->setDownloadCallback(Lcom/netease/download/listener/DownloadListener;)V

    .line 688
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK$2;->this$0:Lcom/netease/neox/PluginUniSDK;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/neox/PluginUniSDK;->access$002(Lcom/netease/neox/PluginUniSDK;Z)Z

    .line 689
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->access$200()V

    :cond_0
    return-void
.end method
