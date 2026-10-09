.class public Lcom/tencent/qqgamemi/util/Cocos2dxMessageEvent;
.super Ljava/lang/Object;
.source "Cocos2dxMessageEvent.java"

# interfaces
.implements Lcom/tencent/qqgamemi/util/GameEngineEvent;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxMessageEvent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCocos2d(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCheckSDKPermission(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPermission"    # Z

    .prologue
    .line 64
    const-string v0, "Cocos2dxMessageEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckSDKPermission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/tencent/qqgamemi/util/Cocos2dxMessageEvent;->isCocos2d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/tencent/qqgamemi/event/EventRouter;->getInstance()Lcom/tencent/qqgamemi/event/EventRouter;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SDK_PERMISSION_CHECK_RESULT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/event/EventRouter;->broadcastEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onCheckSupportedSDKFeatureCompletion(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchs"    # I

    .prologue
    .line 56
    const-string v0, "Cocos2dxMessageEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckSupportedSDKFeatureCompletion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/tencent/qqgamemi/util/Cocos2dxMessageEvent;->isCocos2d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/tencent/qqgamemi/event/EventRouter;->getInstance()Lcom/tencent/qqgamemi/event/EventRouter;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_SDK_FEATURE_CHECK_RESULT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/event/EventRouter;->broadcastEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onStartARRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 48
    const-string v0, "Cocos2dxMessageEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartARRecordingStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/tencent/qqgamemi/util/Cocos2dxMessageEvent;->isCocos2d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/tencent/qqgamemi/event/EventRouter;->getInstance()Lcom/tencent/qqgamemi/event/EventRouter;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_START_AR_RECORDING_RESULT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/event/EventRouter;->broadcastEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onStartJudgementRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 40
    const-string v0, "Cocos2dxMessageEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartJudgementRecordingStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/tencent/qqgamemi/util/Cocos2dxMessageEvent;->isCocos2d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/tencent/qqgamemi/event/EventRouter;->getInstance()Lcom/tencent/qqgamemi/event/EventRouter;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_START_JUDGEMENT_RECORDING_RESULT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/event/EventRouter;->broadcastEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onStartMomentRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 32
    const-string v0, "Cocos2dxMessageEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartMomentRecordingStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/tencent/qqgamemi/util/Cocos2dxMessageEvent;->isCocos2d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/tencent/qqgamemi/event/EventRouter;->getInstance()Lcom/tencent/qqgamemi/event/EventRouter;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqgamemi/event/EventID;->GAMEJOY_STARTRECORDING_RESULT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/event/EventRouter;->broadcastEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method
