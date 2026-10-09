.class Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$CenterInstance;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterInstance"
.end annotation


# static fields
.field private static _instanceCenter:Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 594
    new-instance v0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;-><init>(Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$1;)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$CenterInstance;->_instanceCenter:Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;
    .locals 1

    .prologue
    .line 593
    sget-object v0, Lcom/tencent/qqgamemi/mgc/eventbus/EventBus$CenterInstance;->_instanceCenter:Lcom/tencent/qqgamemi/mgc/eventbus/EventBus;

    return-object v0
.end method
