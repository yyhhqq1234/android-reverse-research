.class public final Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;
.super Ljava/lang/Object;
.source "OperationRepo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/core/internal/operations/impl/OperationRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoopWaiterMessage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;",
        "",
        "force",
        "",
        "previousWaitedTime",
        "",
        "(ZJ)V",
        "getForce",
        "()Z",
        "getPreviousWaitedTime",
        "()J",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final force:Z

.field private final previousWaitedTime:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;->force:Z

    .line 45
    iput-wide p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;->previousWaitedTime:J

    return-void
.end method

.method public synthetic constructor <init>(ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;-><init>(ZJ)V

    return-void
.end method


# virtual methods
.method public final getForce()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;->force:Z

    return v0
.end method

.method public final getPreviousWaitedTime()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;->previousWaitedTime:J

    return-wide v0
.end method
