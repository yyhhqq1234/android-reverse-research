.class Lcom/netease/epay/sdk/psw/SetShortPwdController$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "SetShortPwdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/psw/SetShortPwdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/SetShortPwdController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/SetShortPwdController;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$2;->a:Lcom/netease/epay/sdk/psw/SetShortPwdController;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRiskBlock(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$2;->a:Lcom/netease/epay/sdk/psw/SetShortPwdController;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/SetShortPwdController;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/NetCallback;->onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 119
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$2;->a:Lcom/netease/epay/sdk/psw/SetShortPwdController;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/SetShortPwdController;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$2;->a:Lcom/netease/epay/sdk/psw/SetShortPwdController;

    const-string v1, "000000"

    const-string v2, "\u8bbe\u7f6e\u652f\u4ed8\u5bc6\u7801\u6210\u529f"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/SetShortPwdController;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
