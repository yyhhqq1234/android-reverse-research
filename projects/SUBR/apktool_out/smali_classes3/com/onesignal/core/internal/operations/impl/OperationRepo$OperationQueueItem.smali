.class public final Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;
.super Ljava/lang/Object;
.source "OperationRepo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/core/internal/operations/impl/OperationRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationQueueItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;",
        "",
        "operation",
        "Lcom/onesignal/core/internal/operations/Operation;",
        "waiter",
        "Lcom/onesignal/common/threading/WaiterWithValue;",
        "",
        "bucket",
        "",
        "retries",
        "(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;II)V",
        "getBucket",
        "()I",
        "getOperation",
        "()Lcom/onesignal/core/internal/operations/Operation;",
        "getRetries",
        "setRetries",
        "(I)V",
        "getWaiter",
        "()Lcom/onesignal/common/threading/WaiterWithValue;",
        "toString",
        "",
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
.field private final bucket:I

.field private final operation:Lcom/onesignal/core/internal/operations/Operation;

.field private retries:I

.field private final waiter:Lcom/onesignal/common/threading/WaiterWithValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/threading/WaiterWithValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/core/internal/operations/Operation;",
            "Lcom/onesignal/common/threading/WaiterWithValue<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->operation:Lcom/onesignal/core/internal/operations/Operation;

    .line 34
    iput-object p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    .line 35
    iput p3, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->bucket:I

    .line 36
    iput p4, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->retries:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 32
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;-><init>(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;II)V

    return-void
.end method


# virtual methods
.method public final getBucket()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->bucket:I

    return v0
.end method

.method public final getOperation()Lcom/onesignal/core/internal/operations/Operation;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->operation:Lcom/onesignal/core/internal/operations/Operation;

    return-object v0
.end method

.method public final getRetries()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->retries:I

    return v0
.end method

.method public final getWaiter()Lcom/onesignal/common/threading/WaiterWithValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/common/threading/WaiterWithValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    return-object v0
.end method

.method public final setRetries(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->retries:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bucket:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->bucket:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->retries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->operation:Lcom/onesignal/core/internal/operations/Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
