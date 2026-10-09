.class public final Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;
.super Ljava/lang/Object;
.source "ParamsBackendService.kt"

# interfaces
.implements Lcom/onesignal/core/internal/backend/IParamsBackendService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J#\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;",
        "Lcom/onesignal/core/internal/backend/IParamsBackendService;",
        "_http",
        "Lcom/onesignal/core/internal/http/IHttpClient;",
        "(Lcom/onesignal/core/internal/http/IHttpClient;)V",
        "fetchParams",
        "Lcom/onesignal/core/internal/backend/ParamsObject;",
        "appId",
        "",
        "subscriptionId",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processOutcomeJson",
        "Lcom/onesignal/core/internal/backend/InfluenceParamsObject;",
        "outcomeJson",
        "Lorg/json/JSONObject;",
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
.field private final _http:Lcom/onesignal/core/internal/http/IHttpClient;


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/http/IHttpClient;)V
    .locals 1

    const-string v0, "_http"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;->_http:Lcom/onesignal/core/internal/http/IHttpClient;

    return-void
.end method

.method public static final synthetic access$processOutcomeJson(Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;Lorg/json/JSONObject;)Lcom/onesignal/core/internal/backend/InfluenceParamsObject;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;->processOutcomeJson(Lorg/json/JSONObject;)Lcom/onesignal/core/internal/backend/InfluenceParamsObject;

    move-result-object p0

    return-object p0
.end method

.method private final processOutcomeJson(Lorg/json/JSONObject;)Lcom/onesignal/core/internal/backend/InfluenceParamsObject;
    .locals 22

    move-object/from16 v0, p1

    .line 82
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 83
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 84
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 85
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 86
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 87
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 88
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 91
    new-instance v1, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$processOutcomeJson$1;

    invoke-direct {v1, v11}, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$processOutcomeJson$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "direct"

    invoke-static {v0, v2, v1}, Lcom/onesignal/common/JSONObjectExtensionsKt;->expandJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 96
    new-instance v14, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$processOutcomeJson$2;

    move-object v1, v14

    move-object v2, v12

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$processOutcomeJson$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const-string v1, "indirect"

    invoke-static {v0, v1, v14}, Lcom/onesignal/common/JSONObjectExtensionsKt;->expandJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 111
    new-instance v1, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$processOutcomeJson$3;

    invoke-direct {v1, v13}, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$processOutcomeJson$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-string v2, "unattributed"

    invoke-static {v0, v2, v1}, Lcom/onesignal/common/JSONObjectExtensionsKt;->expandJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 115
    new-instance v0, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;

    .line 116
    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Ljava/lang/Integer;

    .line 117
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/Integer;

    .line 118
    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Integer;

    .line 119
    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/Integer;

    .line 120
    iget-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/Boolean;

    .line 121
    iget-object v1, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/Boolean;

    .line 122
    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v21, v1

    check-cast v21, Ljava/lang/Boolean;

    move-object v14, v0

    .line 115
    invoke-direct/range {v14 .. v21}, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public fetchParams(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onesignal/core/internal/backend/ParamsObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;

    iget v5, v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;

    invoke-direct {v4, v0, v3}, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;-><init>(Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 24
    iget v6, v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;->label:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v1, v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    sget-object v3, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "ParamsBackendService.fetchParams(appId: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", subscriptionId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "apps/"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android_params.js"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_3

    .line 31
    sget-object v3, Lcom/onesignal/common/IDManager;->INSTANCE:Lcom/onesignal/common/IDManager;

    invoke-virtual {v3, v2}, Lcom/onesignal/common/IDManager;->isLocalId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?player_id="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    :cond_3
    iget-object v2, v0, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;->_http:Lcom/onesignal/core/internal/http/IHttpClient;

    new-instance v3, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;

    const-string v9, "CACHE_KEY_REMOTE_PARAMS"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/onesignal/core/internal/http/impl/OptionalHeaders;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;->L$0:Ljava/lang/Object;

    iput v7, v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$1;->label:I

    invoke-interface {v2, v1, v3, v4}, Lcom/onesignal/core/internal/http/IHttpClient;->get(Ljava/lang/String;Lcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_4

    return-object v5

    :cond_4
    move-object v1, v0

    .line 24
    :goto_1
    check-cast v3, Lcom/onesignal/core/internal/http/HttpResponse;

    .line 37
    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/HttpResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 41
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/HttpResponse;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 45
    new-instance v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$2;

    invoke-direct {v4, v3, v1}, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const-string v1, "outcomes"

    invoke-static {v2, v1, v4}, Lcom/onesignal/common/JSONObjectExtensionsKt;->expandJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 50
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 51
    new-instance v4, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$3;

    invoke-direct {v4, v1}, Lcom/onesignal/core/internal/backend/impl/ParamsBackendService$fetchParams$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const-string v5, "fcm"

    invoke-static {v2, v5, v4}, Lcom/onesignal/common/JSONObjectExtensionsKt;->expandJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 60
    new-instance v4, Lcom/onesignal/core/internal/backend/ParamsObject;

    const-string v5, "android_sender_id"

    .line 61
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "enterp"

    .line 62
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    const-string v5, "require_ident_auth"

    .line 64
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    const-string v5, "chnl_lst"

    .line 65
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const-string v5, "fba"

    .line 66
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    const-string v5, "restore_ttl_filter"

    .line 67
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    const-string v5, "clear_group_on_summary_click"

    .line 68
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    const-string v5, "receive_receipts_enable"

    .line 69
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    const-string v5, "disable_gms_missing_prompt"

    .line 70
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    const-string v5, "unsubscribe_on_notifications_disabled"

    .line 71
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    const-string v5, "location_shared"

    .line 72
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    const-string v5, "requires_user_privacy_consent"

    .line 73
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeBool(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    const-string v5, "oprepo_execution_interval"

    .line 75
    invoke-static {v2, v5}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    .line 76
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;

    if-nez v2, :cond_5

    new-instance v2, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x7f

    const/16 v29, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v29}, Lcom/onesignal/core/internal/backend/InfluenceParamsObject;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_5
    move-object/from16 v20, v2

    .line 77
    :goto_2
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/onesignal/core/internal/backend/FCMParamsObject;

    if-nez v1, :cond_6

    new-instance v1, Lcom/onesignal/core/internal/backend/FCMParamsObject;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x7

    const/16 v26, 0x0

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v26}, Lcom/onesignal/core/internal/backend/FCMParamsObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_6
    move-object/from16 v21, v1

    :goto_3
    move-object v6, v4

    .line 60
    invoke-direct/range {v6 .. v21}, Lcom/onesignal/core/internal/backend/ParamsObject;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lorg/json/JSONArray;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/onesignal/core/internal/backend/InfluenceParamsObject;Lcom/onesignal/core/internal/backend/FCMParamsObject;)V

    return-object v4

    .line 38
    :cond_7
    new-instance v1, Lcom/onesignal/common/exceptions/BackendException;

    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/HttpResponse;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onesignal/core/internal/http/HttpResponse;->getRetryAfterSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Lcom/onesignal/common/exceptions/BackendException;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    throw v1
.end method
