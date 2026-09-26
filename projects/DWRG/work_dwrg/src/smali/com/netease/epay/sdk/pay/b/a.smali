.class public Lcom/netease/epay/sdk/pay/b/a;
.super Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
.source "PayResultBaseMsg.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;-><init>()V

    .line 13
    const/16 v0, -0x64

    iput v0, p0, Lcom/netease/epay/sdk/pay/b/a;->a:I

    .line 21
    if-eqz p1, :cond_0

    .line 22
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/pay/b/a;->a:I

    .line 23
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/b/a;->b:Ljava/lang/String;

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/netease/epay/sdk/pay/b/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
