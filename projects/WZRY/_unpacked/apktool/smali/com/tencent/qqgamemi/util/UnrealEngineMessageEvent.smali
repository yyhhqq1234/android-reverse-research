.class public Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;
.super Ljava/lang/Object;
.source "UnrealEngineMessageEvent.java"

# interfaces
.implements Lcom/tencent/qqgamemi/util/GameEngineEvent;


# static fields
.field private static final TAG:Ljava/lang/String; = "UnrealEngineMessageEvent"


# instance fields
.field private mIsUnrealEngine:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->mIsUnrealEngine:Ljava/lang/Boolean;

    return-void
.end method

.method private isUnrealEngine(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    iget-object v1, p0, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->mIsUnrealEngine:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->mIsUnrealEngine:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 29
    :goto_0
    return v0

    .line 27
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QMiConfig;->getInstance()Lcom/tencent/qqgamemi/QMiConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/qqgamemi/QMiConfig;->isUnrealEngine(Landroid/content/Context;)Z

    move-result v0

    .line 28
    .local v0, "isUE":Z
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->mIsUnrealEngine:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public onCheckSDKPermission(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPermission"    # Z

    .prologue
    .line 66
    const-string v0, "UnrealEngineMessageEvent"

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

    .line 67
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->isUnrealEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->getInstance()Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    move-result-object v0

    sget v1, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SDK_PERMISSION_CHECK_RESULT:I

    invoke-virtual {v0, v1, p2}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->notify(IZ)V

    .line 70
    :cond_0
    return-void
.end method

.method public onCheckSupportedSDKFeatureCompletion(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchs"    # I

    .prologue
    .line 58
    const-string v0, "UnrealEngineMessageEvent"

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

    .line 59
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->isUnrealEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->getInstance()Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    move-result-object v0

    sget v1, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_SDK_FEATURE_CHECK_RESULT:I

    invoke-virtual {v0, v1, p2}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->notify(II)V

    .line 62
    :cond_0
    return-void
.end method

.method public onStartARRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 50
    const-string v0, "UnrealEngineMessageEvent"

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

    .line 51
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->isUnrealEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->getInstance()Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    move-result-object v0

    sget v1, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_START_AR_RECORDING_RESULT:I

    invoke-virtual {v0, v1, p2}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->notify(II)V

    .line 54
    :cond_0
    return-void
.end method

.method public onStartJudgementRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 42
    const-string v0, "UnrealEngineMessageEvent"

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

    .line 43
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->isUnrealEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->getInstance()Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    move-result-object v0

    sget v1, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_START_JUDGEMENT_RECORDING_RESULT:I

    invoke-virtual {v0, v1, p2}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->notify(II)V

    .line 46
    :cond_0
    return-void
.end method

.method public onStartMomentRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 34
    const-string v0, "UnrealEngineMessageEvent"

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

    .line 35
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;->isUnrealEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->getInstance()Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    move-result-object v0

    sget v1, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventID;->GAMEJOY_STARTRECORDING_RESULT:I

    invoke-virtual {v0, v1, p2}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->notify(II)V

    .line 38
    :cond_0
    return-void
.end method
