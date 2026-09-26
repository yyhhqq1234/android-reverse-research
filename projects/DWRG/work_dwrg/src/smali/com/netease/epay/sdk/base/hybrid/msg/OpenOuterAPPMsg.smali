.class public Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;
.super Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
.source "OpenOuterAPPMsg.java"


# instance fields
.field public backupURL:Ljava/lang/String;

.field public openURL:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;-><init>(Lorg/json/JSONObject;)V

    .line 19
    if-eqz p1, :cond_0

    .line 20
    const-string v0, "openURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;->openURL:Ljava/lang/String;

    .line 21
    const-string v0, "backupURL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;->backupURL:Ljava/lang/String;

    .line 22
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;->packageName:Ljava/lang/String;

    .line 24
    :cond_0
    return-void
.end method
