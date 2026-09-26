.class public Lcom/netease/epay/sdk/base/hybrid/msg/OpenEpayAppMsg;
.super Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
.source "OpenEpayAppMsg.java"


# instance fields
.field public downloadURL:Ljava/lang/String;

.field public routeURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    .line 18
    const-string v0, "routeURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/OpenEpayAppMsg;->routeURL:Ljava/lang/String;

    .line 19
    const-string v0, "downloadURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/OpenEpayAppMsg;->downloadURL:Ljava/lang/String;

    .line 21
    :cond_0
    return-void
.end method
