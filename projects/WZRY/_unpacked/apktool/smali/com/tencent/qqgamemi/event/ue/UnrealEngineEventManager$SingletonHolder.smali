.class Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager$SingletonHolder;
.super Ljava/lang/Object;
.source "UnrealEngineEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;-><init>(Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager$1;)V

    sput-object v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager$SingletonHolder;->sInstance:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager$SingletonHolder;->sInstance:Lcom/tencent/qqgamemi/event/ue/UnrealEngineEventManager;

    return-object v0
.end method
