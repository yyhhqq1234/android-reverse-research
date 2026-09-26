.class Lcom/netease/epay/sdk/ResponseParser$2;
.super Ljava/lang/Object;
.source "ResponseParser.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/ResponseParser;->parseFailure(Landroid/support/v4/app/FragmentActivity;ZLcom/netease/epay/sdk/base/network/NewBaseResponse;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/INetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;

.field final synthetic c:Lcom/netease/epay/sdk/base/network/INetCallback;

.field final synthetic d:Lcom/netease/epay/sdk/ResponseParser;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/ResponseParser;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netease/epay/sdk/ResponseParser$2;->d:Lcom/netease/epay/sdk/ResponseParser;

    iput-object p2, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iput-object p3, p0, Lcom/netease/epay/sdk/ResponseParser$2;->b:Landroid/support/v4/app/FragmentActivity;

    iput-object p4, p0, Lcom/netease/epay/sdk/ResponseParser$2;->c:Lcom/netease/epay/sdk/base/network/INetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const-string v0, "060007"

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "\u786e\u5b9a"

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u91cd\u65b0\u8f93\u5165"

    goto :goto_0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "\u627e\u56de\u652f\u4ed8\u5bc6\u7801"

    return-object v0
.end method

.method public leftClick()V
    .locals 3

    .prologue
    .line 107
    const-string v0, "060006"

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$2;->c:Lcom/netease/epay/sdk/base/network/INetCallback;

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$2;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-interface {v0, v1, v2}, Lcom/netease/epay/sdk/base/network/INetCallback;->onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v0, "060007"

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rightClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 86
    const-string v0, "060007"

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$2;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getResetPwdJson(ZI)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    const-string v1, "resetPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/ResponseParser$2;->b:Landroid/support/v4/app/FragmentActivity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {v2, v2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getResetPwdJson(ZI)Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    const-string v1, "resetPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/ResponseParser$2;->b:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/epay/sdk/ResponseParser$2$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/ResponseParser$2$1;-><init>(Lcom/netease/epay/sdk/ResponseParser$2;)V

    invoke-static {v1, v2, v0, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0
.end method
