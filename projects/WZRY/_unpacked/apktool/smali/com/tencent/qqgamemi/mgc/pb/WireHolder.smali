.class public Lcom/tencent/qqgamemi/mgc/pb/WireHolder;
.super Ljava/lang/Object;
.source "WireHolder.java"


# static fields
.field private static sWire:Lcom/squareup/wire/Wire;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqgamemi/mgc/pb/WireHolder;->sWire:Lcom/squareup/wire/Wire;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static declared-synchronized getWire()Lcom/squareup/wire/Wire;
    .locals 3

    .prologue
    .line 12
    const-class v1, Lcom/tencent/qqgamemi/mgc/pb/WireHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqgamemi/mgc/pb/WireHolder;->sWire:Lcom/squareup/wire/Wire;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/pb/WireHolder;->sWire:Lcom/squareup/wire/Wire;

    .line 15
    :cond_0
    sget-object v0, Lcom/tencent/qqgamemi/mgc/pb/WireHolder;->sWire:Lcom/squareup/wire/Wire;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
