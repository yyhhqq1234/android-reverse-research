.class final Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FCount.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/gpdd/fcount/FCount;->logEventImpl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFCount.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FCount.kt\ncom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1\n+ 2 Logger.kt\ncom/netease/gpdd/fcount/util/Logger\n*L\n1#1,620:1\n39#2,7:621\n39#2,7:628\n*S KotlinDebug\n*F\n+ 1 FCount.kt\ncom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1\n*L\n438#1:621,7\n441#1:628,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.netease.gpdd.fcount.FCount$logEventImpl$shouldStop$1"
    f = "FCount.kt"
    i = {}
    l = {
        0x1bf
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/netease/gpdd/fcount/FCount;


# direct methods
.method constructor <init>(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/gpdd/fcount/FCount;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$params:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;

    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    iget-object v1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$params:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;-><init>(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 435
    iget v1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 436
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-virtual {p1}, Lcom/netease/gpdd/fcount/FCount;->getStarted()Z

    move-result p1

    if-nez p1, :cond_5

    .line 437
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getDelayedEvents(Lcom/netease/gpdd/fcount/FCount;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v3, 0x3

    if-ge p1, v0, :cond_3

    .line 438
    sget-object p1, Lcom/netease/gpdd/fcount/util/Logger;->INSTANCE:Lcom/netease/gpdd/fcount/util/Logger;

    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$params:Ljava/util/Map;

    .line 621
    invoke-virtual {p1}, Lcom/netease/gpdd/fcount/util/Logger;->getLogLevel()I

    move-result p1

    if-lt v3, p1, :cond_2

    .line 622
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 623
    sget-object v3, Lcom/netease/gpdd/fcount/repo/FCountScope;->INSTANCE:Lcom/netease/gpdd/fcount/repo/FCountScope;

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    const/4 v7, 0x0

    new-instance v3, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;

    invoke-direct {v3, p1, v1, v0, v4}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;-><init>([Ljava/lang/StackTraceElement;Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/util/Map;)V

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 439
    :cond_2
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getDelayedEvents(Lcom/netease/gpdd/fcount/FCount;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/netease/gpdd/fcount/model/EventFromUser;

    iget-object v4, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$params:Ljava/util/Map;

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/netease/gpdd/fcount/model/EventFromUser;-><init>(Ljava/lang/String;Ljava/util/Map;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_3
    sget-object p1, Lcom/netease/gpdd/fcount/util/Logger;->INSTANCE:Lcom/netease/gpdd/fcount/util/Logger;

    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->$params:Ljava/util/Map;

    .line 628
    invoke-virtual {p1}, Lcom/netease/gpdd/fcount/util/Logger;->getLogLevel()I

    move-result p1

    if-lt v3, p1, :cond_4

    .line 629
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 630
    sget-object v3, Lcom/netease/gpdd/fcount/repo/FCountScope;->INSTANCE:Lcom/netease/gpdd/fcount/repo/FCountScope;

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    const/4 v7, 0x0

    new-instance v3, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$2;

    invoke-direct {v3, p1, v1, v0, v4}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$2;-><init>([Ljava/lang/StackTraceElement;Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/util/Map;)V

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 443
    :cond_4
    :goto_0
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 445
    :cond_5
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$getDelayedEvents(Lcom/netease/gpdd/fcount/FCount;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 447
    iget-object p1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->this$0:Lcom/netease/gpdd/fcount/FCount;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->label:I

    invoke-static {p1, v1}, Lcom/netease/gpdd/fcount/FCount;->access$flushEvents(Lcom/netease/gpdd/fcount/FCount;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 449
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
