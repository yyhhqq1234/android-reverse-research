.class Lcom/tencent/qqgamemi/util/GameMessageEventManager$GameEngineEventFactory;
.super Ljava/lang/Object;
.source "GameMessageEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/util/GameMessageEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameEngineEventFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/util/GameMessageEventManager;


# direct methods
.method private constructor <init>(Lcom/tencent/qqgamemi/util/GameMessageEventManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/qqgamemi/util/GameMessageEventManager$GameEngineEventFactory;->this$0:Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqgamemi/util/GameMessageEventManager;Lcom/tencent/qqgamemi/util/GameMessageEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qqgamemi/util/GameMessageEventManager;
    .param p2, "x1"    # Lcom/tencent/qqgamemi/util/GameMessageEventManager$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/util/GameMessageEventManager$GameEngineEventFactory;-><init>(Lcom/tencent/qqgamemi/util/GameMessageEventManager;)V

    return-void
.end method


# virtual methods
.method public createGameEngineEvent(Landroid/content/Context;)Lcom/tencent/qqgamemi/util/GameEngineEvent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {}, Lcom/tencent/qqgamemi/QMiConfig;->getInstance()Lcom/tencent/qqgamemi/QMiConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqgamemi/QMiConfig;->isUnity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/tencent/qqgamemi/util/UnityMessageEvent;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/util/UnityMessageEvent;-><init>()V

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QMiConfig;->getInstance()Lcom/tencent/qqgamemi/QMiConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qqgamemi/QMiConfig;->isUnrealEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/util/UnrealEngineMessageEvent;-><init>()V

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Lcom/tencent/qqgamemi/util/Cocos2dxMessageEvent;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/util/Cocos2dxMessageEvent;-><init>()V

    goto :goto_0
.end method
