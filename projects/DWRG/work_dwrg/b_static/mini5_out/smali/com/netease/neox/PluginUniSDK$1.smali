.class Lcom/netease/neox/PluginUniSDK$1;
.super Ljava/lang/Object;
.source "PluginUniSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/neox/PluginUniSDK;->onOpenExitViewFailed()V
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

    .line 389
    iput-object p1, p0, Lcom/netease/neox/PluginUniSDK$1;->this$0:Lcom/netease/neox/PluginUniSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 392
    iget-object p1, p0, Lcom/netease/neox/PluginUniSDK$1;->this$0:Lcom/netease/neox/PluginUniSDK;

    invoke-virtual {p1}, Lcom/netease/neox/PluginUniSDK;->exitApp()V

    return-void
.end method
