.class Lcom/netease/epay/sdk/psw/SetShortPwdController$1;
.super Ljava/lang/Object;
.source "SetShortPwdController.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/setpwd/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/setpwd/a;

.field final synthetic b:Lcom/netease/epay/sdk/psw/SetShortPwdController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/SetShortPwdController;Lcom/netease/epay/sdk/psw/setpwd/a;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$1;->b:Lcom/netease/epay/sdk/psw/SetShortPwdController;

    iput-object p2, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$1;->a:Lcom/netease/epay/sdk/psw/setpwd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelayed()V
    .locals 5

    .prologue
    .line 101
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$1;->b:Lcom/netease/epay/sdk/psw/SetShortPwdController;

    invoke-static {v1}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/SetShortPwdController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType(Z)Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    const-string v1, "shortPayPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$1;->a:Lcom/netease/epay/sdk/psw/setpwd/a;

    iget-object v2, v2, Lcom/netease/epay/sdk/psw/setpwd/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v1, "shortPwdEncodeFactor"

    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getFactor()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v1, "set_short_pay_pwd.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$1;->b:Lcom/netease/epay/sdk/psw/SetShortPwdController;

    invoke-static {v3}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->b(Lcom/netease/epay/sdk/psw/SetShortPwdController;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/psw/SetShortPwdController$1;->b:Lcom/netease/epay/sdk/psw/SetShortPwdController;

    invoke-static {v4}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->c(Lcom/netease/epay/sdk/psw/SetShortPwdController;)Lcom/netease/epay/sdk/NetCallback;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 105
    return-void
.end method
