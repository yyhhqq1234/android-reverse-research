.class Lcom/netease/epay/sdk/ResponseParser$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/ResponseParser;->parseFailure(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Landroid/support/v4/app/FragmentActivity;

.field final synthetic d:Lcom/netease/epay/sdk/base/network/INetCallback;

.field final synthetic e:Lcom/netease/epay/sdk/ResponseParser;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/ResponseParser;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netease/epay/sdk/ResponseParser$1;->e:Lcom/netease/epay/sdk/ResponseParser;

    iput-object p2, p0, Lcom/netease/epay/sdk/ResponseParser$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/epay/sdk/ResponseParser$1;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/netease/epay/sdk/ResponseParser$1;->c:Landroid/support/v4/app/FragmentActivity;

    iput-object p5, p0, Lcom/netease/epay/sdk/ResponseParser$1;->d:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 5
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 75
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$1;->b:Lorg/json/JSONObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/ResponseParser$1;->c:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/netease/epay/sdk/ResponseParser$1;->d:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$1;->d:Lcom/netease/epay/sdk/base/network/INetCallback;

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$1;->c:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v3, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/epay/sdk/base/network/INetCallback;->onRiskBlock(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    goto :goto_0
.end method
