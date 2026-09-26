.class Lcom/netease/epay/sdk/core/QvhuaHelper$7;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper;->startFace(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;

.field final synthetic c:Lcom/netease/epay/sdk/core/QvhuaHelper;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->c:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iput-object p2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "c"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->c:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->c:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-static {v1, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 288
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/epay/sdk/messenger/R$string;->epaysdk_sdk_ver_suc:I

    invoke-static {v0, v3, v1}, Lcom/netease/epay/sdk/base/ui/ToastResult;->makeToast(Landroid/content/Context;ZI)Lcom/netease/epay/sdk/base/ui/ToastResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ToastResult;->show()V

    .line 273
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->c:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->c:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-static {v1, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/epay/sdk/messenger/R$string;->epaysdk_exit_liveness_warming:I

    .line 276
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_1
    invoke-static {v2, v3, v2, v2, v0}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getSetPwdJson(ZZZZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 277
    const-string v1, "qvhua_finishBtnString"

    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string v1, "setPwd"

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/epay/sdk/core/QvhuaHelper$7$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/core/QvhuaHelper$7$1;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper$7;)V

    invoke-static {v1, v2, v0, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0

    .line 276
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
