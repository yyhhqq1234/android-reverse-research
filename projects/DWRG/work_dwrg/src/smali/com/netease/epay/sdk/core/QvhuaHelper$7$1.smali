.class Lcom/netease/epay/sdk/core/QvhuaHelper$7$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper$7;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/QvhuaHelper$7;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper$7;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$7;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 3
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 281
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$7;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->b:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    sget v2, Lcom/netease/epay/sdk/messenger/R$string;->epaysdk_sdk_ver_suc:I

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/ToastResult;->makeToast(Landroid/content/Context;ZI)Lcom/netease/epay/sdk/base/ui/ToastResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ToastResult;->show()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$7;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->c:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$7$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$7;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$7;->c:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-static {v1, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 285
    return-void
.end method
