.class final Lcom/netease/epay/sdk/core/OnlyForApp$6;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "OnlyForApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/OnlyForApp;->verifyFaceForModifySecretSecurityPhoneNumber(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/netease/epay/sdk/core/OnlyForApp$6;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/epay/sdk/core/OnlyForApp$6;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 122
    const-string v0, "face"

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "verify_noAudit"

    iget-object v3, p0, Lcom/netease/epay/sdk/core/OnlyForApp$6;->a:Ljava/lang/String;

    .line 124
    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFaceJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/core/OnlyForApp$6$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/core/OnlyForApp$6$1;-><init>(Lcom/netease/epay/sdk/core/OnlyForApp$6;)V

    .line 122
    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 150
    return-void
.end method
