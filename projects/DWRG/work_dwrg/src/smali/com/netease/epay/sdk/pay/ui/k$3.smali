.class Lcom/netease/epay/sdk/pay/ui/k$3;
.super Ljava/lang/Object;
.source "PayFingerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/k;->onAuthenticationSucceeded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/k;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/k$3;->b:Lcom/netease/epay/sdk/pay/ui/k;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/k$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    const-string v1, "challengeType"

    const-string v2, "fingerprintPay"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v1, "fingerprintPayToken"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/k$3;->b:Lcom/netease/epay/sdk/pay/ui/k;

    invoke-static {v2}, Lcom/netease/epay/sdk/pay/ui/k;->a(Lcom/netease/epay/sdk/pay/ui/k;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/k$3;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/base/util/RSA;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ltz v1, :cond_0

    .line 122
    const-string v1, "quickPayId"

    sget v2, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    invoke-static {v2}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardBankQuickPayId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/k$3;->b:Lcom/netease/epay/sdk/pay/ui/k;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/k;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
