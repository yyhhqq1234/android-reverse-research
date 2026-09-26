.class public Lcom/netease/epay/sdk/pay/c/c;
.super Ljava/lang/Object;
.source "EpayPayPwdPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/pay/ui/m$a;


# instance fields
.field private a:Lcom/netease/epay/sdk/pay/ui/m;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/m;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/c;->a:Lcom/netease/epay/sdk/pay/ui/m;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    :try_start_0
    const-string v1, "challengeType"

    const-string v2, "paypwd"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "payPwd"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v1, "hasShortPwd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 26
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/c;->a:Lcom/netease/epay/sdk/pay/ui/m;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/m;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
