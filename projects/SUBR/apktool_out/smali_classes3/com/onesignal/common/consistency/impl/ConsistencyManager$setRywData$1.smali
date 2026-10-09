.class final Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ConsistencyManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/common/consistency/impl/ConsistencyManager;->setRywData(Ljava/lang/String;Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;Lcom/onesignal/common/consistency/RywData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.onesignal.common.consistency.impl.ConsistencyManager"
    f = "ConsistencyManager.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x64
    }
    m = "setRywData"
    n = {
        "this",
        "id",
        "key",
        "value",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/onesignal/common/consistency/impl/ConsistencyManager;


# direct methods
.method constructor <init>(Lcom/onesignal/common/consistency/impl/ConsistencyManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/common/consistency/impl/ConsistencyManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->this$0:Lcom/onesignal/common/consistency/impl/ConsistencyManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->label:I

    iget-object p1, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->this$0:Lcom/onesignal/common/consistency/impl/ConsistencyManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->setRywData(Ljava/lang/String;Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;Lcom/onesignal/common/consistency/RywData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
