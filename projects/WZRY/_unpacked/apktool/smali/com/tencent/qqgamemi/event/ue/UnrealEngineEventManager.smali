.class public Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;
.super Ljava/lang/Object;
.source "UnrealEngineEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UnrealEngineEvent"


# instance fields
.field private mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager$1;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager$SingletonHolder;->access$000()Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public notify(II)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "msg"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;->onNotify(II)V

    .line 26
    :cond_0
    return-void
.end method

.method public notify(IJ)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "msg"    # J

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;->onNotify(IJ)V

    .line 38
    :cond_0
    return-void
.end method

.method public notify(ILjava/lang/Object;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;->onNotify(ILjava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method public notify(IZ)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "msg"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;->mEventDispatcher:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventDispatcher;->onNotify(IZ)V

    .line 32
    :cond_0
    return-void
.end method
