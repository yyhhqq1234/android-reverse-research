.class public final Lcom/bytedance/retrofit2/ServiceMethod;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/retrofit2/ServiceMethod$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field final addCommonParam:Z

.field final cacheServer:Lcom/bytedance/retrofit2/cache/ICacheServer;

.field final callAdapter:Lcom/bytedance/retrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/retrofit2/CallAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field final clientProvider:Lcom/bytedance/retrofit2/client/Client$Provider;

.field private contentTypeHeader:Ljava/lang/String;

.field final extraInfo:Ljava/lang/Object;

.field private final hasBody:Z

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field final httpExecutor:Ljava/util/concurrent/Executor;

.field private final httpMethod:Ljava/lang/String;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final isCustomMethod:Z

.field private final isFormEncoded:Z

.field private final isMultipart:Z

.field final isResponseStreaming:Z

.field final maxLength:I

.field final method:Ljava/lang/reflect/Method;

.field private final parameterHandlers:[Lcom/bytedance/retrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/bytedance/retrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation
.end field

.field final priorityLevel:I

.field private final relativeUrl:Ljava/lang/String;

.field final requestPriorityLevel:I

.field private final responseConverter:Lcom/bytedance/retrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/retrofit2/Converter<",
            "Lcom/bytedance/retrofit2/mime/TypedInput;",
            "TT;>;"
        }
    .end annotation
.end field

.field private retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

.field private final server:Lcom/bytedance/retrofit2/Endpoint;

.field final serviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/retrofit2/ServiceMethod$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/ServiceMethod$Builder<",
            "TT;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/Retrofit;->clientProvider()Lcom/bytedance/retrofit2/client/Client$Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->clientProvider:Lcom/bytedance/retrofit2/client/Client$Provider;

    .line 118
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->callAdapter:Lcom/bytedance/retrofit2/CallAdapter;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->callAdapter:Lcom/bytedance/retrofit2/CallAdapter;

    .line 119
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/Retrofit;->interceptors()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->interceptors:Ljava/util/List;

    .line 120
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/Retrofit;->httpExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 121
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/Retrofit;->server()Lcom/bytedance/retrofit2/Endpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->server:Lcom/bytedance/retrofit2/Endpoint;

    .line 122
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->responseConverter:Lcom/bytedance/retrofit2/Converter;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->responseConverter:Lcom/bytedance/retrofit2/Converter;

    .line 123
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->httpMethod:Ljava/lang/String;

    .line 124
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->relativeUrl:Ljava/lang/String;

    .line 125
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->hasBody:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->hasBody:Z

    .line 126
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->isFormEncoded:Z

    .line 127
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->isMultipart:Z

    .line 128
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterHandlers:[Lcom/bytedance/retrofit2/ParameterHandler;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->parameterHandlers:[Lcom/bytedance/retrofit2/ParameterHandler;

    .line 129
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->headers:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->headers:Ljava/util/List;

    .line 130
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->contentTypeHeader:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->contentTypeHeader:Ljava/lang/String;

    .line 131
    iget v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->priorityLevel:I

    iput v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->priorityLevel:I

    .line 132
    iget v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->requestPriorityLevel:I

    iput v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->requestPriorityLevel:I

    .line 133
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->serviceType:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->serviceType:Ljava/lang/String;

    .line 134
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isResponseStreaming:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->isResponseStreaming:Z

    .line 135
    iget v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->maxLength:I

    iput v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->maxLength:I

    .line 136
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->addCommonParam:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->addCommonParam:Z

    .line 137
    iget-boolean v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isCustomMethod:Z

    iput-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->isCustomMethod:Z

    .line 138
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->extraInfo:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->extraInfo:Ljava/lang/Object;

    .line 139
    iget-object v0, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->method:Ljava/lang/reflect/Method;

    .line 140
    iget-object p1, p1, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/Retrofit;->cacheServer()Lcom/bytedance/retrofit2/cache/ICacheServer;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod;->cacheServer:Lcom/bytedance/retrofit2/cache/ICacheServer;

    return-void
.end method

.method static boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1266
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    .line 1267
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 1268
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    .line 1269
    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 1270
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    .line 1271
    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 1272
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    .line 1273
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 1274
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    .line 1275
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 1276
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    .line 1277
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 1278
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    .line 1279
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 1280
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    .line 1281
    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method

.method static parseMethodParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1258
    sget-object v0, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1259
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1260
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1249
    sget-object v0, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1250
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1251
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1252
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getRetrofitMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    return-object v0
.end method

.method public setRetrofitMetrics(Lcom/bytedance/retrofit2/RetrofitMetrics;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod;->retrofitMetrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    return-void
.end method

.method varargs toRequest(Lcom/bytedance/retrofit2/ExpandCallback;[Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 155
    new-instance v15, Lcom/bytedance/retrofit2/RequestBuilder;

    iget-object v3, v0, Lcom/bytedance/retrofit2/ServiceMethod;->httpMethod:Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/retrofit2/ServiceMethod;->server:Lcom/bytedance/retrofit2/Endpoint;

    iget-object v5, v0, Lcom/bytedance/retrofit2/ServiceMethod;->relativeUrl:Ljava/lang/String;

    iget-object v6, v0, Lcom/bytedance/retrofit2/ServiceMethod;->headers:Ljava/util/List;

    iget-object v7, v0, Lcom/bytedance/retrofit2/ServiceMethod;->contentTypeHeader:Ljava/lang/String;

    iget v8, v0, Lcom/bytedance/retrofit2/ServiceMethod;->priorityLevel:I

    iget v9, v0, Lcom/bytedance/retrofit2/ServiceMethod;->requestPriorityLevel:I

    iget-boolean v10, v0, Lcom/bytedance/retrofit2/ServiceMethod;->isResponseStreaming:Z

    iget v11, v0, Lcom/bytedance/retrofit2/ServiceMethod;->maxLength:I

    iget-boolean v12, v0, Lcom/bytedance/retrofit2/ServiceMethod;->addCommonParam:Z

    iget-object v13, v0, Lcom/bytedance/retrofit2/ServiceMethod;->extraInfo:Ljava/lang/Object;

    iget-boolean v14, v0, Lcom/bytedance/retrofit2/ServiceMethod;->hasBody:Z

    iget-boolean v2, v0, Lcom/bytedance/retrofit2/ServiceMethod;->isFormEncoded:Z

    iget-boolean v1, v0, Lcom/bytedance/retrofit2/ServiceMethod;->isMultipart:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/bytedance/retrofit2/ServiceMethod;->serviceType:Ljava/lang/String;

    move/from16 v17, v2

    move-object v2, v15

    move-object/from16 v18, v15

    move/from16 v15, v17

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v17}, Lcom/bytedance/retrofit2/RequestBuilder;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Endpoint;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IIZIZLjava/lang/Object;ZZZLjava/lang/String;)V

    .line 160
    iget-object v1, v0, Lcom/bytedance/retrofit2/ServiceMethod;->parameterHandlers:[Lcom/bytedance/retrofit2/ParameterHandler;

    check-cast v1, [Lcom/bytedance/retrofit2/ParameterHandler;

    const/4 v2, 0x0

    move-object/from16 v3, p2

    if-eqz v3, :cond_0

    .line 162
    array-length v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 163
    :goto_0
    array-length v5, v1

    if-ne v4, v5, :cond_2

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v4, :cond_1

    .line 170
    aget-object v6, v3, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    aget-object v6, v1, v2

    aget-object v7, v3, v2

    move-object/from16 v8, v18

    invoke-virtual {v6, v8, v7}, Lcom/bytedance/retrofit2/ParameterHandler;->apply(Lcom/bytedance/retrofit2/RequestBuilder;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v8, v18

    .line 173
    const-class v1, Lcom/bytedance/retrofit2/Invocation;

    new-instance v2, Lcom/bytedance/retrofit2/Invocation;

    iget-object v3, v0, Lcom/bytedance/retrofit2/ServiceMethod;->method:Ljava/lang/reflect/Method;

    invoke-direct {v2, v3, v5}, Lcom/bytedance/retrofit2/Invocation;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    invoke-virtual {v8, v1, v2}, Lcom/bytedance/retrofit2/RequestBuilder;->addTag(Ljava/lang/Class;Ljava/lang/Object;)V

    move-object/from16 v1, p1

    .line 175
    invoke-virtual {v8, v1}, Lcom/bytedance/retrofit2/RequestBuilder;->build(Lcom/bytedance/retrofit2/ExpandCallback;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v1

    return-object v1

    .line 164
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Argument count ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") doesn\'t match expected count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method toResponse(Lcom/bytedance/retrofit2/mime/TypedInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/mime/TypedInput;",
            ")TT;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod;->responseConverter:Lcom/bytedance/retrofit2/Converter;

    invoke-interface {v0, p1}, Lcom/bytedance/retrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
