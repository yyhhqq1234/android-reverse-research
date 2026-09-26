.class Lcom/netease/epay/sdk/core/QvhuaHelper$2;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper;->verifyFace(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/epay/sdk/core/QvhuaHelper;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->d:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iput-object p2, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 74
    const-string v0, "face"

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "verify"

    iget-object v3, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$2;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFaceJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/core/QvhuaHelper$2$1;-><init>(Lcom/netease/epay/sdk/core/QvhuaHelper$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 104
    return-void
.end method
