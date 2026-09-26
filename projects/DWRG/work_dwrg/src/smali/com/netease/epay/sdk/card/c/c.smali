.class public Lcom/netease/epay/sdk/card/c/c;
.super Ljava/lang/Object;
.source "AddCardMustSetPwdPresenter.java"


# instance fields
.field public a:Z

.field public b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/c;->c:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/netease/epay/sdk/card/c/c;->b:Z

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v0, "addcardsms_must_set_pwd"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    .line 42
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/netease/epay/sdk/base/network/NewBaseResponse",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignCardData;",
            ">;",
            "Lcom/netease/epay/sdk/base/network/NewBaseResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v1, Lcom/netease/epay/sdk/card/b/a;

    iget-object v2, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/netease/epay/sdk/base/model/SignCardData;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SignCardData;->cardInfo:Lcom/netease/epay/sdk/base/model/Card;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/model/Card;->getBankQuickPayId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/netease/epay/sdk/card/b/a;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/netease/epay/sdk/card/b/a;->c:Z

    .line 119
    if-eqz p3, :cond_0

    .line 120
    invoke-virtual {p3}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->isSuccess()Z

    move-result v0

    iput-boolean v0, v1, Lcom/netease/epay/sdk/card/b/a;->b:Z

    .line 122
    :cond_0
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a(Lcom/netease/epay/sdk/card/b/a;)V

    .line 126
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/c;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/epay/sdk/card/c/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/c;Lcom/netease/epay/sdk/card/ui/c;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/card/ui/c;)V

    return-void
.end method

.method private a(Lcom/netease/epay/sdk/card/ui/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 63
    const-string v0, "setPwd"

    invoke-virtual {p1}, Lcom/netease/epay/sdk/card/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v3, v3, v2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getSetPwdJson(ZZZZ)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/card/c/c$2;

    invoke-direct {v3, p0, p1}, Lcom/netease/epay/sdk/card/c/c$2;-><init>(Lcom/netease/epay/sdk/card/c/c;Lcom/netease/epay/sdk/card/ui/c;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 69
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/c;->c:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->b:Z

    .line 114
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/netease/epay/sdk/base/network/NewBaseResponse",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignCardData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    const-string v1, "shortPayPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v1, "shortPwdEncodeFactor"

    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getFactor()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v1, "set_short_pay_pwd.htm"

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/card/c/c$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/epay/sdk/card/c/c$3;-><init>(Lcom/netease/epay/sdk/card/c/c;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v1, v0, v2, p1, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/epay/sdk/card/c/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    return v0
.end method

.method public a(Lcom/netease/epay/sdk/base/view/SendSmsButton;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    if-eqz v0, :cond_0

    .line 73
    iput-boolean v1, p0, Lcom/netease/epay/sdk/card/c/c;->b:Z

    .line 74
    iput-object p2, p0, Lcom/netease/epay/sdk/card/c/c;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    .line 76
    invoke-virtual {p1, p1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    return v0
.end method

.method public a(Lcom/netease/epay/sdk/card/ui/c;Lcom/netease/epay/sdk/base/view/SendSmsButton;Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p2, p3}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V

    .line 48
    new-instance v0, Lcom/netease/epay/sdk/card/c/c$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/card/c/c$1;-><init>(Lcom/netease/epay/sdk/card/c/c;Lcom/netease/epay/sdk/card/ui/c;)V

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/card/ui/c;)V

    .line 59
    :goto_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    return v0

    .line 56
    :cond_0
    invoke-virtual {p2, p3}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    goto :goto_0
.end method
