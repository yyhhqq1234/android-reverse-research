.class final Lcom/netease/epay/sdk/core/a$2;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "Epay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/netease/epay/sdk/core/a$2;->a:Z

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 5
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 99
    const-string v0, "pay"

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v2, p0, Lcom/netease/epay/sdk/core/a$2;->a:Z

    invoke-static {v3, v2, v4, v4, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getPayJson(Ljava/lang/String;ZZZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 100
    return-void
.end method
