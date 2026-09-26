.class public Lcom/netease/epay/sdk/pay/ui/card/f;
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->c:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->b:Z

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const-string v0, "addcardsms_must_set_pwd"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    .line 37
    :cond_0
    return-void
.end method

.method private a(Lcom/netease/epay/sdk/pay/ui/card/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 61
    const-string v0, "setPwd"

    invoke-virtual {p1}, Lcom/netease/epay/sdk/pay/ui/card/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v3, v3, v2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getSetPwdJson(ZZZZ)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/card/f$2;

    invoke-direct {v3, p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/f$2;-><init>(Lcom/netease/epay/sdk/pay/ui/card/f;Lcom/netease/epay/sdk/pay/ui/card/c;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/card/f;Lcom/netease/epay/sdk/pay/ui/card/c;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/pay/ui/card/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->c:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->b:Z

    .line 92
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/NetCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    const-string v1, "shortPayPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v1, "shortPwdEncodeFactor"

    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getFactor()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v1, "set_short_pay_pwd.htm"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1, p2}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    return v0
.end method

.method public a(Lcom/netease/epay/sdk/base/view/SendSmsButton;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    if-eqz v0, :cond_0

    .line 71
    iput-boolean v1, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->b:Z

    .line 72
    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->c:Ljava/lang/String;

    .line 73
    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    .line 74
    invoke-virtual {p1, p1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    return v0
.end method

.method public a(Lcom/netease/epay/sdk/pay/ui/card/c;Lcom/netease/epay/sdk/base/view/SendSmsButton;Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)Z
    .locals 1

    .prologue
    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    .line 57
    :goto_0
    return v0

    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p2, p3}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V

    .line 46
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/f$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/f$1;-><init>(Lcom/netease/epay/sdk/pay/ui/card/f;Lcom/netease/epay/sdk/pay/ui/card/c;)V

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/pay/ui/card/c;)V

    .line 57
    :goto_1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p2, p3}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    goto :goto_1
.end method
