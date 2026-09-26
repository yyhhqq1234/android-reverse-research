.class Lcom/netease/epay/sdk/core/QvhuaHelper$5;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper;->repay(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/QvhuaHelper;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$5;->a:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 180
    const-string v0, "pay"

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 181
    invoke-static {v3, v2, v2, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getPayJson(Ljava/lang/String;ZZZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/core/QvhuaHelper$5$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/core/QvhuaHelper$5$1;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper$5;)V

    .line 180
    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 188
    return-void
.end method
