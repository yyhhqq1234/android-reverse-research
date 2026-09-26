.class Lcom/netease/epay/sdk/ResponseParser$3;
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
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field final synthetic c:Lcom/netease/epay/sdk/ResponseParser;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/ResponseParser;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/netease/epay/sdk/ResponseParser$3;->c:Lcom/netease/epay/sdk/ResponseParser;

    iput-object p2, p0, Lcom/netease/epay/sdk/ResponseParser$3;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/netease/epay/sdk/ResponseParser$3;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "\u53d6\u6d88"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$3;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "\u62e8\u6253\u5ba2\u670d\u7535\u8bdd"

    return-object v0
.end method

.method public leftClick()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$3;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/epay/sdk/ResponseParser$3;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public rightClick()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getSerivcePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    iget-object v0, p0, Lcom/netease/epay/sdk/ResponseParser$3;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/ResponseParser$3;->leftClick()V

    .line 147
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
