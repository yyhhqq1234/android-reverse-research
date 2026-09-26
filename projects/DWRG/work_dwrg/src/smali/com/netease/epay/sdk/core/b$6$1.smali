.class Lcom/netease/epay/sdk/core/b$6$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/b$6;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/b$6;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/b$6;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/netease/epay/sdk/core/b$6$1;->a:Lcom/netease/epay/sdk/core/b$6;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 6
    .param p1, "c"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/epay/sdk/messenger/R$string;->epaysdk_sdk_ver_suc:I

    invoke-static {v0, v5, v1}, Lcom/netease/epay/sdk/base/ui/ToastResult;->makeToast(Landroid/content/Context;ZI)Lcom/netease/epay/sdk/base/ui/ToastResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ToastResult;->show()V

    .line 188
    invoke-static {}, Lcom/netease/epay/sdk/ExitUtil;->successCallback()V

    goto :goto_0

    .line 190
    :cond_1
    const-string v1, "setPwd"

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/epay/sdk/messenger/R$string;->epaysdk_exit_liveness_warming:I

    .line 191
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_1
    invoke-static {v4, v5, v4, v4, v0}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getSetPwdJson(ZZZZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lcom/netease/epay/sdk/core/b$6$1$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/core/b$6$1$1;-><init>(Lcom/netease/epay/sdk/core/b$6$1;)V

    invoke-static {v1, v2, v0, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
