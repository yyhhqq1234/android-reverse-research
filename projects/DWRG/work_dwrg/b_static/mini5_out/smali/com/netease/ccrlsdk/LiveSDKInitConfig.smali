.class public Lcom/netease/ccrlsdk/LiveSDKInitConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;
    }
.end annotation


# instance fields
.field public CCLiveSDKCallback:Lcom/netease/ccrlsdk/CCLiveSDKCallback;

.field public coverUrl:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public gameName:Ljava/lang/String;

.field public gameType:Ljava/lang/String;

.field public gameUid:Ljava/lang/String;

.field public intentSchemePostfix:Ljava/lang/String;

.field public intentSchemePrefix:Ljava/lang/String;

.field public isDebug:Z

.field public liveType:I

.field public mainTag:Ljava/lang/String;

.field public subTag:Ljava/lang/String;

.field public ticketType:I

.field public urs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->isDebug:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->ticketType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netease/ccrlsdk/LiveSDKInitConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/ccrlsdk/LiveSDKInitConfig;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;Lcom/netease/ccrlsdk/CCLiveSDKCallback;)Lcom/netease/ccrlsdk/LiveSDKInitConfig;
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    invoke-direct {v0}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;-><init>()V

    const-string v1, "gameType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameType(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "gameName"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameName(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "urs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->urs(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "urlScheme"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->intentSchemePrefix(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "ticketType"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->ticketType(I)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "isDebug"

    const-string v2, "0"

    .line 4
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->debugMode(Z)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "liveType"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->liveType(I)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "mainTag"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->mainTag(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "subTag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->subTag(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "coverUrl"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->coverUrl(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "game_uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->gameUid(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object v0

    const-string v1, "extra"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->extra(Ljava/lang/String;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->sdkCallback(Lcom/netease/ccrlsdk/CCLiveSDKCallback;)Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/ccrlsdk/LiveSDKInitConfig$Builder;->build()Lcom/netease/ccrlsdk/LiveSDKInitConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isThirdLogin()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->urs:Ljava/lang/String;

    invoke-static {v0}, Lcclive/ae;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->getInstance()Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;

    move-result-object v0

    iget v1, p0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->ticketType:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->isUnisdkTargetTicketType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
