.class public Lcom/tencent/qqgamemi/util/UnityMessageEvent;
.super Ljava/lang/Object;
.source "UnityMessageEvent.java"

# interfaces
.implements Lcom/tencent/qqgamemi/util/GameEngineEvent;


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final UnityMessageNotifyClassName:Ljava/lang/String; = "GameJoyUnityNotify"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "UnityMessageEvent"

    sput-object v0, Lcom/tencent/qqgamemi/util/UnityMessageEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fun"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Lcom/tencent/qqgamemi/QMiConfig;->getInstance()Lcom/tencent/qqgamemi/QMiConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/qqgamemi/QMiConfig;->isUnity(Landroid/content/Context;)Z

    move-result v0

    .line 20
    .local v0, "isUnity":Z
    if-eqz v0, :cond_0

    .line 21
    sget-object v1, Lcom/tencent/qqgamemi/util/UnityMessageEvent;->TAG:Ljava/lang/String;

    const-string v2, "fun:%s,param:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "GameJoyUnityNotify"

    invoke-static {v1, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckSDKPermission(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPermission"    # Z

    .prologue
    .line 49
    const-string v1, "OnFinishCheckSDKPremission"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/tencent/qqgamemi/util/UnityMessageEvent;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 49
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public onCheckSupportedSDKFeatureCompletion(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchs"    # I

    .prologue
    .line 44
    const-string v0, "OnCheckSupportedSDKFeatureCompletion"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/qqgamemi/util/UnityMessageEvent;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onStartARRecordingStatus(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 39
    const-string v0, "onStartARRecordingStatus"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/qqgamemi/util/UnityMessageEvent;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onStartJudgementRecordingStatus(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 34
    const-string v0, "onStartJudgementRecordingStatus"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/qqgamemi/util/UnityMessageEvent;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onStartMomentRecordingStatus(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 28
    const-string v0, "onStartMomentRecordingStatus"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/qqgamemi/util/UnityMessageEvent;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method
