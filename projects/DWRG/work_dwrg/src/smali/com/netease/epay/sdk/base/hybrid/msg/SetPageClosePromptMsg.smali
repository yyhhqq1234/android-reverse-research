.class public Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;
.super Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
.source "SetPageClosePromptMsg.java"


# instance fields
.field public status:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    .line 18
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;->title:Ljava/lang/String;

    .line 19
    const-string v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;->status:I

    .line 21
    :cond_0
    return-void
.end method
