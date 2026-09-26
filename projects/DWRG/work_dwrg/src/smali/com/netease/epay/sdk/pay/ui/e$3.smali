.class Lcom/netease/epay/sdk/pay/ui/e$3;
.super Ljava/lang/Object;
.source "FingerprintAuthenticationFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/network/IParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/e;->onAuthenticationSucceeded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/e$3;->b:Lcom/netease/epay/sdk/pay/ui/e;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/e$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/e$3;->b:Lcom/netease/epay/sdk/pay/ui/e;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/e;->a(Lcom/netease/epay/sdk/pay/ui/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/e$3;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/base/util/RSA;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "fingerprintPayToken"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-object v0
.end method
