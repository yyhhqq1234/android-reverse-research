.class public Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;
.super Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
.source "SetClipboardMsg.java"


# instance fields
.field public data:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;-><init>(Lorg/json/JSONObject;)V

    .line 15
    if-eqz p1, :cond_0

    .line 16
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;->data:Ljava/lang/String;

    .line 18
    :cond_0
    return-void
.end method
