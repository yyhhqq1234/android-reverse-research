.class Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper$4;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper$4;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 153
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-static {v1, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->c:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v2, v2, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v3, v3, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$100(Lcom/netease/epay/sdk/core/QvhuaHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$4;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-static {v1, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    goto :goto_0
.end method
