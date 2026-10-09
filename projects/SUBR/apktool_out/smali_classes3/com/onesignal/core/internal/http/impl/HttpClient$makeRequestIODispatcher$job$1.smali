.class final Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/core/internal/http/impl/HttpClient;->makeRequestIODispatcher(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
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
    c = "com.onesignal.core.internal.http.impl.HttpClient$makeRequestIODispatcher$job$1"
    f = "HttpClient.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x97
    }
    m = "invokeSuspend"
    n = {
        "con",
        "httpResponse"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

.field final synthetic $jsonBody:Lorg/json/JSONObject;

.field final synthetic $method:Ljava/lang/String;

.field final synthetic $retVal:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onesignal/core/internal/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $timeout:I

.field final synthetic $url:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;


# direct methods
.method constructor <init>(Lcom/onesignal/core/internal/http/impl/HttpClient;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;Lcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/core/internal/http/impl/HttpClient;",
            "Ljava/lang/String;",
            "I",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/onesignal/core/internal/http/impl/OptionalHeaders;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onesignal/core/internal/http/HttpResponse;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    iput-object p2, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$url:Ljava/lang/String;

    iput p3, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$timeout:I

    iput-object p4, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$jsonBody:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    iput-object p6, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    iput-object p7, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$retVal:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;

    iget-object v1, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    iget-object v2, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$url:Ljava/lang/String;

    iget v3, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$timeout:I

    iget-object v4, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$jsonBody:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    iget-object v6, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    iget-object v7, p0, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$retVal:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;-><init>(Lcom/onesignal/core/internal/http/impl/HttpClient;Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;Lcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v1, p0

    const-string v0, "OneSignal"

    const-string v2, "HttpClient: Got Response = Response has etag of "

    const-string v3, "HttpClient: Adding header if-none-match: "

    const-string v4, "onesignal/"

    const-string v5, "HttpClient: "

    const-string v6, "HttpClient: Could not send last request, device is offline. Throwable: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 114
    iget v8, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->label:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v8, :cond_1

    if-ne v8, v10, :cond_0

    iget v4, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->I$0:I

    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/net/HttpURLConnection;

    iget-object v13, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/net/HttpURLConnection;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v14, p1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move/from16 v26, v4

    goto/16 :goto_11

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    move-object v8, v12

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 118
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v8, v13, :cond_2

    const/16 v8, 0x2710

    .line 119
    invoke-static {v8}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_2
    const/4 v8, -0x1

    .line 123
    :try_start_1
    iget-object v13, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v13}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$get_connectionFactory$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)Lcom/onesignal/core/internal/http/impl/IHttpConnectionFactory;

    move-result-object v13

    iget-object v14, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$url:Ljava/lang/String;

    invoke-interface {v13, v14}, Lcom/onesignal/core/internal/http/impl/IHttpConnectionFactory;->newHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 135
    :try_start_2
    invoke-virtual {v13, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 136
    iget v14, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$timeout:I

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 137
    iget v14, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$timeout:I

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v14, "SDK-Version"

    const-string v15, "onesignal/android/050124"

    .line 138
    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/onesignal/common/OneSignalWrapper;->getSdkType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/onesignal/common/OneSignalWrapper;->getSdkVersion()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    const-string v14, "SDK-Wrapper"

    .line 141
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/onesignal/common/OneSignalWrapper;->getSdkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/common/OneSignalWrapper;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v14, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v4, "Accept"

    const-string v14, "application/vnd.onesignal.v1+json"

    .line 144
    invoke-virtual {v13, v4, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v4, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v4}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$get_configModelStore$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)Lcom/onesignal/core/internal/config/ConfigModelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v4

    check-cast v4, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v4}, Lcom/onesignal/core/internal/config/ConfigModel;->getPushSubscriptionId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 147
    move-object v14, v4

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_5

    const-string v14, "OneSignal-Subscription-Id"

    .line 148
    invoke-virtual {v13, v14, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v4, "OneSignal-Install-Id"

    .line 151
    iget-object v14, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v14}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$get_installIdService$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)Lcom/onesignal/core/internal/device/IInstallIdService;

    move-result-object v14

    move-object v15, v1

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v13, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->L$2:Ljava/lang/Object;

    iput v8, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->I$0:I

    iput v10, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->label:I

    invoke-interface {v14, v15}, Lcom/onesignal/core/internal/device/IInstallIdService;->getId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v14, v7, :cond_6

    return-object v7

    :cond_6
    move-object v7, v4

    move-object v8, v13

    const/4 v4, -0x1

    :goto_1
    :try_start_3
    check-cast v14, Ljava/util/UUID;

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v7, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$jsonBody:Lorg/json/JSONObject;

    if-eqz v7, :cond_7

    .line 154
    invoke-virtual {v13, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 157
    :cond_7
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    if-eqz v7, :cond_8

    const-string v7, "Content-Type"

    const-string v8, "application/json; charset=UTF-8"

    .line 158
    invoke-virtual {v13, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v13, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 163
    :cond_8
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    const-string v14, "con.url"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v15

    const-string v9, "con.requestProperties"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8, v10, v14, v15}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$logHTTPSent(Lcom/onesignal/core/internal/http/impl/HttpClient;Ljava/lang/String;Ljava/net/URL;Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 165
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$jsonBody:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "UTF-8"

    if-eqz v7, :cond_9

    .line 166
    :try_start_4
    sget-object v7, Lcom/onesignal/common/JSONUtils;->INSTANCE:Lcom/onesignal/common/JSONUtils;

    iget-object v9, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$jsonBody:Lorg/json/JSONObject;

    invoke-virtual {v7, v9}, Lcom/onesignal/common/JSONUtils;->toUnescapedEUIDString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    const-string v10, "forName(charsetName)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v9, "this as java.lang.String).getBytes(charset)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    array-length v9, v7

    invoke-virtual {v13, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 169
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 170
    invoke-virtual {v9, v7}, Ljava/io/OutputStream;->write([B)V

    .line 175
    :cond_9
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getCacheKey()Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_a
    move-object v7, v12

    :goto_2
    const-string v9, "PREFS_OS_ETAG_PREFIX_"

    if-eqz v7, :cond_b

    .line 177
    :try_start_5
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v7}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$get_prefs$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object v17

    const-string v18, "OneSignal"

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    invoke-virtual {v10}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x4

    const/16 v22, 0x0

    .line 177
    invoke-static/range {v17 .. v22}, Lcom/onesignal/core/internal/preferences/IPreferencesService$DefaultImpls;->getString$default(Lcom/onesignal/core/internal/preferences/IPreferencesService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v10, "If-None-Match"

    .line 182
    invoke-virtual {v13, v10, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12, v11, v12}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 187
    :cond_b
    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getRywToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    move-object v3, v12

    :goto_3
    if-eqz v3, :cond_d

    const-string v3, "OneSignal-RYW-Token"

    .line 188
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    invoke-virtual {v7}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getRywToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_d
    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getRetryCount()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_e
    move-object v3, v12

    :goto_4
    if-eqz v3, :cond_f

    const-string v3, "Onesignal-Retry-Count"

    .line 192
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    invoke-virtual {v7}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getRetryCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_f
    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getSessionDuration()Ljava/lang/Long;

    move-result-object v3

    goto :goto_5

    :cond_10
    move-object v3, v12

    :goto_5
    if-eqz v3, :cond_11

    const-string v3, "OneSignal-Session-Duration"

    .line 196
    iget-object v7, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    invoke-virtual {v7}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getSessionDuration()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_11
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 202
    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v3, v13}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$retryAfterFromResponse(Lcom/onesignal/core/internal/http/impl/HttpClient;Ljava/net/HttpURLConnection;)Ljava/lang/Integer;

    move-result-object v21

    .line 203
    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v3, v13}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$retryLimitFromResponse(Lcom/onesignal/core/internal/http/impl/HttpClient;Ljava/net/HttpURLConnection;)Ljava/lang/Integer;

    move-result-object v22

    .line 204
    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v3}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$get_time$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)Lcom/onesignal/core/internal/time/ITime;

    move-result-object v3

    invoke-interface {v3}, Lcom/onesignal/core/internal/time/ITime;->getCurrentTimeMillis()J

    move-result-wide v14

    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_6

    :cond_12
    const/4 v3, 0x0

    :goto_6
    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v11, v3

    add-long/2addr v14, v11

    .line 205
    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v3}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$getDelayNewRequestsUntil$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)J

    move-result-wide v11

    cmp-long v3, v14, v11

    if-lez v3, :cond_13

    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v3, v14, v15}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$setDelayNewRequestsUntil$p(Lcom/onesignal/core/internal/http/impl/HttpClient;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_13
    const/16 v3, 0x130

    const/16 v11, 0x20

    const-string v12, "GET"

    const-string v14, "PREFS_OS_HTTP_CACHE_PREFIX_"

    const-string v15, "HttpClient: Got Response = "

    if-eq v4, v3, :cond_1c

    const-string v3, " - Body: "

    const-string v16, ""

    const-string v7, "\\A"

    const-string v10, " - STATUS: "

    packed-switch v4, :pswitch_data_0

    .line 252
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    if-nez v2, :cond_14

    goto :goto_7

    :cond_14
    move-object v12, v2

    :goto_7
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - FAILED STATUS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v9, 0x0

    invoke-static {v0, v9, v2, v9}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 254
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_15

    .line 256
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 259
    :cond_15
    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 261
    new-instance v11, Ljava/util/Scanner;

    invoke-direct {v11, v0, v8}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v11, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v11}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v16

    :cond_16
    move-object/from16 v0, v16

    .line 264
    invoke-virtual {v11}, Ljava/util/Scanner;->close()V

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v7, v2, v7}, Lcom/onesignal/debug/internal/logging/Logging;->warn$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object/from16 v19, v0

    goto :goto_8

    .line 267
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - No response body!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Lcom/onesignal/debug/internal/logging/Logging;->warn$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v19, 0x0

    .line 270
    :goto_8
    iget-object v0, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$retVal:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v2, Lcom/onesignal/core/internal/http/HttpResponse;

    const/16 v20, 0x0

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v4

    invoke-direct/range {v17 .. v24}, Lcom/onesignal/core/internal/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_e

    .line 223
    :pswitch_0
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    move-object/from16 v17, v12

    .line 224
    new-instance v12, Ljava/util/Scanner;

    invoke-direct {v12, v11, v8}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v12, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v12}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_9

    :cond_18
    move-object/from16 v8, v16

    .line 226
    :goto_9
    invoke-virtual {v12}, Ljava/util/Scanner;->close()V

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    if-nez v11, :cond_19

    move-object/from16 v12, v17

    goto :goto_a

    :cond_19
    move-object v12, v11

    :goto_a
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    const/4 v10, 0x0

    .line 227
    invoke-static {v3, v10, v7, v10}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 231
    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_1a
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_1b

    const-string v3, "etag"

    .line 232
    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 234
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " so caching the response."

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    const/4 v10, 0x0

    invoke-static {v2, v10, v7, v10}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 236
    iget-object v2, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v2}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$get_prefs$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object v2

    .line 238
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    invoke-virtual {v9}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getCacheKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 236
    invoke-interface {v2, v0, v9, v3}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v2, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v2}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$get_prefs$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object v2

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    invoke-virtual {v9}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getCacheKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-interface {v2, v0, v3, v8}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1b
    iget-object v0, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$retVal:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v2, Lcom/onesignal/core/internal/http/HttpResponse;

    const/16 v20, 0x0

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v4

    move-object/from16 v19, v8

    invoke-direct/range {v17 .. v24}, Lcom/onesignal/core/internal/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_e

    :cond_1c
    move-object/from16 v17, v12

    .line 210
    iget-object v0, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->this$0:Lcom/onesignal/core/internal/http/impl/HttpClient;

    invoke-static {v0}, Lcom/onesignal/core/internal/http/impl/HttpClient;->access$get_prefs$p(Lcom/onesignal/core/internal/http/impl/HttpClient;)Lcom/onesignal/core/internal/preferences/IPreferencesService;

    move-result-object v23

    const-string v24, "OneSignal"

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$headers:Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_1d
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x0

    .line 210
    invoke-static/range {v23 .. v28}, Lcom/onesignal/core/internal/preferences/IPreferencesService$DefaultImpls;->getString$default(Lcom/onesignal/core/internal/preferences/IPreferencesService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    if-nez v3, :cond_1e

    move-object/from16 v12, v17

    goto :goto_d

    :cond_1e
    move-object v12, v3

    :goto_d
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - Using Cached response due to 304: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v7, 0x0

    .line 214
    invoke-static {v2, v7, v3, v7}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 220
    iget-object v2, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$retVal:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v3, Lcom/onesignal/core/internal/http/HttpResponse;

    const/16 v20, 0x0

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v24}, Lcom/onesignal/core/internal/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_e
    if-eqz v13, :cond_21

    .line 282
    :goto_f
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_14

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    const/4 v13, 0x0

    :goto_10
    const/16 v26, -0x1

    .line 274
    :goto_11
    :try_start_7
    instance-of v2, v0, Ljava/net/ConnectException;

    if-nez v2, :cond_20

    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_1f

    goto :goto_12

    .line 277
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Error thrown from network stack. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/onesignal/debug/internal/logging/Logging;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 275
    :cond_20
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Lcom/onesignal/debug/internal/logging/Logging;->info$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 280
    :goto_13
    iget-object v2, v1, Lcom/onesignal/core/internal/http/impl/HttpClient$makeRequestIODispatcher$job$1;->$retVal:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v3, Lcom/onesignal/core/internal/http/HttpResponse;

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x18

    const/16 v32, 0x0

    move-object/from16 v25, v3

    move-object/from16 v28, v0

    invoke-direct/range {v25 .. v32}, Lcom/onesignal/core/internal/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v13, :cond_21

    goto :goto_f

    .line 284
    :cond_21
    :goto_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_3
    move-exception v0

    if-eqz v13, :cond_22

    .line 282
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_22
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
