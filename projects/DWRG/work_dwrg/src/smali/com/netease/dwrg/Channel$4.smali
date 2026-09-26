.class Lcom/netease/dwrg/Channel$4;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Channel;->onOpenExitViewFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Channel;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Channel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Channel;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/netease/dwrg/Channel$4;->this$0:Lcom/netease/dwrg/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/netease/dwrg/Channel$4;->this$0:Lcom/netease/dwrg/Channel;

    const-string v1, "quicksdk"

    invoke-static {v0, v1}, Lcom/netease/dwrg/Channel;->access$000(Lcom/netease/dwrg/Channel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Channel$4;->this$0:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0}, Lcom/netease/dwrg/Channel;->exitApp()V

    goto :goto_0
.end method
