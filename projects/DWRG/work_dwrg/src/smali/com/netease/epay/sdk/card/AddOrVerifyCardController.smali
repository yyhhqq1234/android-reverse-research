.class public Lcom/netease/epay/sdk/card/AddOrVerifyCardController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "AddOrVerifyCardController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/controller/BaseController",
        "<",
        "Lcom/netease/epay/sdk/card/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 1
    .param p1, "params"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 54
    const-string v0, "isNeedActivity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->c:Z

    .line 55
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->d:I

    .line 56
    const-string v0, "UUID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a:Ljava/lang/String;

    .line 57
    const-string v0, "qvhua_finishBtnString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->b:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static a()Lcom/netease/epay/sdk/model/JsonBuilder;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v1}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    .line 101
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 103
    if-eqz v0, :cond_1

    .line 104
    iget v2, v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->d:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    iget v0, v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->d:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 105
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType(Z)Lcom/netease/epay/sdk/model/JsonBuilder;

    .line 110
    :cond_1
    :goto_0
    return-object v1

    .line 107
    :cond_2
    invoke-virtual {v1}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/epay/sdk/card/b/a;)V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p1, Lcom/netease/epay/sdk/card/b/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->exit(Lcom/netease/epay/sdk/base/event/BaseEvent;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->c:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/netease/epay/sdk/card/b/a;->isSuccess:Z

    if-nez v0, :cond_3

    .line 78
    :cond_2
    iget-object v0, p1, Lcom/netease/epay/sdk/card/b/a;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a(Landroid/app/Activity;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/netease/epay/sdk/card/b/a;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    :try_start_0
    const-string v0, "quickPayId"

    iget-object v2, p1, Lcom/netease/epay/sdk/card/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v0, "isSetPsw"

    iget-boolean v2, p1, Lcom/netease/epay/sdk/card/b/a;->b:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    new-instance v2, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v3, p1, Lcom/netease/epay/sdk/card/b/a;->code:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/epay/sdk/card/b/a;->msg:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/epay/sdk/card/b/a;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public synthetic deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/netease/epay/sdk/card/b/a;

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a(Lcom/netease/epay/sdk/card/b/a;)V

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 62
    iget v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 63
    :cond_0
    iget v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->d:I

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/card/a;->b(Landroid/content/Context;I)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v0, p0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->d:I

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/card/a;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
