.class Lcom/netease/epay/sdk/core/QvhuaHelper$3;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper;->verifyShortPwd(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/epay/sdk/core/QvhuaHelper;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$3;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iput-object p2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$3;->b:Landroid/support/v4/app/FragmentActivity;

    iput-object p4, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 5
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 118
    const-string v0, "verifyPwd"

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x1

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$3;->a:Ljava/lang/String;

    .line 119
    invoke-static {v2, v3, v4}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getVerifyPwdJson(IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/core/QvhuaHelper$3$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/core/QvhuaHelper$3$1;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper$3;)V

    .line 118
    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 131
    return-void
.end method
