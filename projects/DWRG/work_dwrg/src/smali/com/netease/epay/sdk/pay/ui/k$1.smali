.class Lcom/netease/epay/sdk/pay/ui/k$1;
.super Ljava/lang/Object;
.source "PayFingerFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/network/IParamsCallback;


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
    .line 90
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/k$1;->b:Lcom/netease/epay/sdk/pay/ui/k;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/k$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    const-string v1, "fingerprintPayToken"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/k$1;->b:Lcom/netease/epay/sdk/pay/ui/k;

    invoke-static {v2}, Lcom/netease/epay/sdk/pay/ui/k;->a(Lcom/netease/epay/sdk/pay/ui/k;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/k$1;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/base/util/RSA;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-object v0
.end method
