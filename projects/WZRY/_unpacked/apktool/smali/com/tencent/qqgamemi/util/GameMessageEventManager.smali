.class public Lcom/tencent/qqgamemi/util/GameMessageEventManager;
.super Ljava/lang/Object;
.source "GameMessageEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/util/GameMessageEventManager$GameEngineEventFactory;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static volatile sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

.field private static volatile sInstance:Lcom/tencent/qqgamemi/util/GameMessageEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "GameMessageEventManager"

    sput-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager$GameEngineEventFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqgamemi/util/GameMessageEventManager$GameEngineEventFactory;-><init>(Lcom/tencent/qqgamemi/util/GameMessageEventManager;Lcom/tencent/qqgamemi/util/GameMessageEventManager$1;)V

    invoke-virtual {v0, p1}, Lcom/tencent/qqgamemi/util/GameMessageEventManager$GameEngineEventFactory;->createGameEngineEvent(Landroid/content/Context;)Lcom/tencent/qqgamemi/util/GameEngineEvent;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    .line 23
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/qqgamemi/util/GameMessageEventManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sInstance:Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sInstance:Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    invoke-direct {v0, p0}, Lcom/tencent/qqgamemi/util/GameMessageEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sInstance:Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sInstance:Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCheckSDKPermission(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPermission"    # Z

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->TAG:Ljava/lang/String;

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
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qqgamemi/util/GameEngineEvent;->onCheckSDKPermission(Landroid/content/Context;Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public onCheckSupportedSDKFeatureCompletion(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchs"    # I

    .prologue
    .line 57
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->TAG:Ljava/lang/String;

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

    .line 58
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qqgamemi/util/GameEngineEvent;->onCheckSupportedSDKFeatureCompletion(Landroid/content/Context;I)V

    .line 61
    :cond_0
    return-void
.end method

.method public onStartARRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->TAG:Ljava/lang/String;

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

    .line 51
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qqgamemi/util/GameEngineEvent;->onStartARRecordingStatus(Landroid/content/Context;I)V

    .line 54
    :cond_0
    return-void
.end method

.method public onStartJudgementRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 43
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->TAG:Ljava/lang/String;

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

    .line 44
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qqgamemi/util/GameEngineEvent;->onStartJudgementRecordingStatus(Landroid/content/Context;I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onStartMomentRecordingStatus(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 37
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->TAG:Ljava/lang/String;

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

    .line 38
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->sGameEngine:Lcom/tencent/qqgamemi/util/GameEngineEvent;

    invoke-interface {v0, p1, p2}, Lcom/tencent/qqgamemi/util/GameEngineEvent;->onStartMomentRecordingStatus(Landroid/content/Context;I)V

    .line 41
    :cond_0
    return-void
.end method
