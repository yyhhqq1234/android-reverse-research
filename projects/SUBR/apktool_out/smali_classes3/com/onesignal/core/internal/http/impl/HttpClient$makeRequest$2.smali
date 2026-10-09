.class final Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/core/internal/http/impl/HttpClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/onesignal/core/internal/http/HttpResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lcom/onesignal/core/internal/http/HttpResponse;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.onesignal.core.internal.http.impl.HttpClient$makeRequest$2"
    f = "HttpClient.kt"
    i = {}
    l = {
        0x5d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

.field final synthetic $jsonBody:Lorg/json/JSONObject;

.field final synthetic $method:Ljava/lang/String;

.field final synthetic $timeout:I

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;


# direct methods
.method constructor <init>(Lcom/onesignal/core/internal/http/impl/HttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/core/internal/http/impl/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/onesignal/core/internal/http/impl/OptionalHeaders;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    iput-object p2, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$method:Ljava/lang/String;

    iput-object p4, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$jsonBody:Lorg/json/JSONObject;

    iput p5, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$timeout:I

    iput-object p6, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;

    iget-object v1, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    iget-object v2, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$method:Ljava/lang/String;

    iget-object v4, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$jsonBody:Lorg/json/JSONObject;

    iget v5, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$timeout:I

    iget-object v6, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;-><init>(Lcom/onesignal/core/internal/http/impl/HttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/onesignal/core/internal/http/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v1, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    iget-object p1, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$method:Ljava/lang/String;

    iget-object v4, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$jsonBody:Lorg/json/JSONObject;

    iget v5, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$timeout:I

    iget-object v6, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequest$2;->label:I

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$makeRequestIODispatcher(Lcom/onesignal/core/internal/http/impl/HttpClient;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
