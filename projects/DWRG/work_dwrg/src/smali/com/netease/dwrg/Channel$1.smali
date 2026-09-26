.class Lcom/netease/dwrg/Channel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Channel;->initialize()V
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
    .line 74
    iput-object p1, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishInit(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 78
    iget-object v1, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    const-string v4, "baidu"

    invoke-static {v1, v4}, Lcom/netease/dwrg/Channel;->access$000(Lcom/netease/dwrg/Channel;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-static {v1}, Lcom/netease/dwrg/Channel;->access$100(Lcom/netease/dwrg/Channel;)Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/netease/ntunisdk/base/StartupActivity;->popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupActivity$StartupFinishListener;)V

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnInitSdk(I)V

    .line 82
    iget-object v4, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/netease/dwrg/Channel;->access$202(Lcom/netease/dwrg/Channel;Z)Z

    .line 83
    iget-object v1, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-static {v1, v3}, Lcom/netease/dwrg/Channel;->access$302(Lcom/netease/dwrg/Channel;Z)Z

    .line 84
    if-nez p1, :cond_2

    .line 86
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    .line 87
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V

    .line 88
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    .line 89
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setContinueListener(Lcom/netease/ntunisdk/base/OnContinueListener;I)V

    .line 90
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V

    .line 91
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;I)V

    .line 92
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V

    .line 93
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V

    .line 95
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetFloatBtnVisible(Z)V

    .line 98
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-interface {v1, v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V

    iget-object v1, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/netease/dwrg/Channel;->loginDone(I)V

    .line 108
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 82
    goto :goto_0

    .line 103
    :cond_2
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnExitApp()V

    .line 104
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 105
    iget-object v1, p0, Lcom/netease/dwrg/Channel$1;->this$0:Lcom/netease/dwrg/Channel;

    invoke-static {v1}, Lcom/netease/dwrg/Channel;->access$100(Lcom/netease/dwrg/Channel;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/NativeActivity;

    .line 106
    .local v0, "main_act":Landroid/app/NativeActivity;
    invoke-virtual {v0}, Landroid/app/NativeActivity;->finish()V

    goto :goto_1
.end method
