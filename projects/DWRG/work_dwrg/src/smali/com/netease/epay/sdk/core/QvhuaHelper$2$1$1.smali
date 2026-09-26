.class Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 91
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    sget v2, Lcom/netease/epay/sdk/messenger/R$string;->epaysdk_sdk_ver_suc:I

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/ToastResult;->makeToast(Landroid/content/Context;ZI)Lcom/netease/epay/sdk/base/ui/ToastResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ToastResult;->show()V

    .line 94
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2;

    iget-object v2, v2, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    iget-object v3, v3, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2;

    iget-object v3, v3, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$100(Lcom/netease/epay/sdk/core/QvhuaHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$2;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-static {v1, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    goto :goto_0
.end method
