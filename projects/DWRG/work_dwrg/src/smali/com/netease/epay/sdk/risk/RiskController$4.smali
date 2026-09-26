.class Lcom/netease/epay/sdk/risk/RiskController$4;
.super Ljava/lang/Object;
.source "RiskController.java"

# interfaces
.implements Lcom/netease/epay/sdk/risk/RiskController$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/risk/RiskController;->a(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/RiskController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/RiskController;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/RiskController$4;->a:Lcom/netease/epay/sdk/risk/RiskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/epay/sdk/risk/ui/RiskActivity;)V
    .locals 3

    .prologue
    .line 128
    const-string v0, "face"

    const-string v1, "risk"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFaceJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/risk/RiskController$4$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/risk/RiskController$4$1;-><init>(Lcom/netease/epay/sdk/risk/RiskController$4;)V

    invoke-static {v0, p1, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 134
    return-void
.end method
