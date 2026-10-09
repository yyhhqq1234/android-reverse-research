.class public final Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Logger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logger.kt\ncom/netease/gpdd/fcount/util/Logger$debug$1\n+ 2 FCount.kt\ncom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1\n*L\n1#1,144:1\n438#2:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "com/netease/gpdd/fcount/util/Logger$debug$1"
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
    c = "com.netease.gpdd.fcount.FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1"
    f = "FCount.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $name$inlined:Ljava/lang/String;

.field final synthetic $params$inlined:Ljava/util/Map;

.field final synthetic $stack:[Ljava/lang/StackTraceElement;

.field label:I


# direct methods
.method public constructor <init>([Ljava/lang/StackTraceElement;Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$stack:[Ljava/lang/StackTraceElement;

    iput-object p3, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$name$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$params$inlined:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;

    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$stack:[Ljava/lang/StackTraceElement;

    iget-object v1, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$name$inlined:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$params$inlined:Ljava/util/Map;

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;-><init>([Ljava/lang/StackTraceElement;Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/util/Map;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    sget-object p1, Lcom/netease/gpdd/fcount/util/Logger;->INSTANCE:Lcom/netease/gpdd/fcount/util/Logger;

    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$stack:[Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v0}, Lcom/netease/gpdd/fcount/util/Logger;->generateTagAndPrefix([Ljava/lang/StackTraceElement;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logEvent[Queued](name = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$name$inlined:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1$invokeSuspend$$inlined$debug$1;->$params$inlined:Ljava/util/Map;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
