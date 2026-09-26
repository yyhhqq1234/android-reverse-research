.class Lcom/netease/epay/sdk/core/QvhuaHelper$4;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper;->addCard(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/support/v4/app/FragmentActivity;

.field final synthetic d:Lcom/netease/epay/sdk/core/QvhuaHelper;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iput-object p2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 148
    const/4 v0, 0x0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getCardJson(ZILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    const-string v1, "qvhua_finishBtnString"

    iget-object v2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$4;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v1, "card"

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/core/QvhuaHelper$4$1;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper$4;)V

    invoke-static {v1, v2, v0, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 167
    return-void
.end method
