.class public Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;
.super Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
.source "ShowToastMsg.java"


# instance fields
.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    .line 15
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;->title:Ljava/lang/String;

    .line 17
    :cond_0
    return-void
.end method
