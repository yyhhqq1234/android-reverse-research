.class Lcom/netease/epay/sdk/core/QvhuaHelper$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper;->creditPay(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/epay/sdk/core/QvhuaHelper;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$1;->b:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iput-object p2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 6
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    const/4 v5, 0x0

    .line 53
    const-string v0, "pay"

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$1;->a:Ljava/lang/String;

    .line 54
    invoke-static {v2, v5, v5, v3, v4}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getPayJson(Ljava/lang/String;ZZZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/core/QvhuaHelper$1$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/core/QvhuaHelper$1$1;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper$1;)V

    .line 53
    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 60
    return-void
.end method
