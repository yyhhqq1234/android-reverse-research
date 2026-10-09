.class public final Lcom/onesignal/common/consistency/impl/ConsistencyManager;
.super Ljava/lang/Object;
.source "ConsistencyManager.kt"

# interfaces
.implements Lcom/onesignal/common/consistency/models/IConsistencyManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConsistencyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConsistencyManager.kt\ncom/onesignal/common/consistency/impl/ConsistencyManager\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,94:1\n107#2,8:95\n116#2:110\n115#2:111\n107#2,10:112\n357#3,7:103\n*S KotlinDebug\n*F\n+ 1 ConsistencyManager.kt\ncom/onesignal/common/consistency/impl/ConsistencyManager\n*L\n38#1:95,8\n38#1:110\n38#1:111\n49#1:112,10\n39#1:103,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J!\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0006\u0010\u0012\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J)\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aR(\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00070\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00080\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onesignal/common/consistency/impl/ConsistencyManager;",
        "Lcom/onesignal/common/consistency/models/IConsistencyManager;",
        "()V",
        "conditions",
        "",
        "Lkotlin/Pair;",
        "Lcom/onesignal/common/consistency/models/ICondition;",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lcom/onesignal/common/consistency/RywData;",
        "indexedTokens",
        "",
        "",
        "Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "checkConditionsAndComplete",
        "",
        "getRywDataFromAwaitableCondition",
        "condition",
        "(Lcom/onesignal/common/consistency/models/ICondition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resolveConditionsWithID",
        "id",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setRywData",
        "key",
        "value",
        "(Ljava/lang/String;Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;Lcom/onesignal/common/consistency/RywData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final conditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onesignal/common/consistency/models/ICondition;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/onesignal/common/consistency/RywData;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final indexedTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;",
            "Lcom/onesignal/common/consistency/RywData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->indexedTokens:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->conditions:Ljava/util/List;

    return-void
.end method

.method private final checkConditionsAndComplete()V
    .locals 6

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 80
    iget-object v1, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->conditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/common/consistency/models/ICondition;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CompletableDeferred;

    .line 81
    iget-object v4, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->indexedTokens:Ljava/util/Map;

    invoke-interface {v3, v4}, Lcom/onesignal/common/consistency/models/ICondition;->isMet(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    iget-object v4, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->indexedTokens:Ljava/util/Map;

    invoke-interface {v3, v4}, Lcom/onesignal/common/consistency/models/ICondition;->getRywData(Ljava/util/Map;)Lcom/onesignal/common/consistency/RywData;

    move-result-object v4

    .line 83
    invoke-interface {v2}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    invoke-interface {v2, v4}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->conditions:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getRywDataFromAwaitableCondition(Lcom/onesignal/common/consistency/models/ICondition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/common/consistency/models/ICondition;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/onesignal/common/consistency/RywData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;

    iget v1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;

    invoke-direct {v0, p0, p2}, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;-><init>(Lcom/onesignal/common/consistency/impl/ConsistencyManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/onesignal/common/consistency/models/ICondition;

    iget-object v0, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p2, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 117
    iput-object p0, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$getRywDataFromAwaitableCondition$1;->label:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 50
    :goto_1
    :try_start_0
    invoke-static {v4, v3, v4}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    .line 51
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    iget-object p1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->conditions:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-direct {v0}, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->checkConditionsAndComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public resolveConditionsWithID(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->conditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/common/consistency/models/ICondition;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CompletableDeferred;

    .line 62
    invoke-interface {v2}, Lcom/onesignal/common/consistency/models/ICondition;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-interface {v1}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 64
    invoke-interface {v1, v3}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->conditions:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public setRywData(Ljava/lang/String;Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;Lcom/onesignal/common/consistency/RywData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;",
            "Lcom/onesignal/common/consistency/RywData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;

    iget v1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;

    invoke-direct {v0, p0, p4}, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;-><init>(Lcom/onesignal/common/consistency/impl/ConsistencyManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget v2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$3:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Lcom/onesignal/common/consistency/RywData;

    iget-object p2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;

    iget-object v1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p4, p1

    move-object p1, v1

    goto :goto_1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p4, p0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 100
    iput-object p0, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager$setRywData$1;->label:I

    invoke-interface {p4, v3, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 39
    :goto_1
    :try_start_0
    iget-object v1, v0, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->indexedTokens:Ljava/util/Map;

    .line 103
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 39
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 106
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_4
    check-cast v2, Ljava/util/Map;

    .line 40
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-direct {v0}, Lcom/onesignal/common/consistency/impl/ConsistencyManager;->checkConditionsAndComplete()V

    .line 42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-interface {p4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
