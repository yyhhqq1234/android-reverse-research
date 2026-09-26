.class final Lcom/netease/epay/sdk/core/b$13;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/b;->c(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netease/epay/sdk/core/b$13;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/epay/sdk/core/b$13;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 108
    const-string v0, "verifySms"

    iget-object v1, p0, Lcom/netease/epay/sdk/core/b$13;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/epay/sdk/core/b$13;->b:Ljava/lang/String;

    .line 109
    invoke-static {v2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getSMSJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    .line 108
    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 110
    return-void
.end method
