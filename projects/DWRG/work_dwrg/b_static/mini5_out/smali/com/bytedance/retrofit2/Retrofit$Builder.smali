.class public final Lcom/bytedance/retrofit2/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private cacheServer:Lcom/bytedance/retrofit2/cache/ICacheServer;

.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private clientProvider:Lcom/bytedance/retrofit2/client/Client$Provider;

.field private converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private endpoint:Lcom/bytedance/retrofit2/Endpoint;

.field private httpExecutor:Ljava/util/concurrent/Executor;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/intercept/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Lcom/bytedance/retrofit2/Platform;

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 503
    invoke-static {}, Lcom/bytedance/retrofit2/Platform;->get()Lcom/bytedance/retrofit2/Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/retrofit2/Retrofit$Builder;-><init>(Lcom/bytedance/retrofit2/Platform;)V

    return-void
.end method

.method constructor <init>(Lcom/bytedance/retrofit2/Platform;)V
    .locals 1

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->interceptors:Ljava/util/List;

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    .line 496
    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->platform:Lcom/bytedance/retrofit2/Platform;

    .line 499
    iget-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v0, Lcom/bytedance/retrofit2/BuiltInConverters;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/BuiltInConverters;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addCallAdapterFactory(Lcom/bytedance/retrofit2/CallAdapter$Factory;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lcom/bytedance/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addConverterFactory(Lcom/bytedance/retrofit2/Converter$Factory;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lcom/bytedance/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "interceptor == null"

    .line 535
    invoke-static {p1, v0}, Lcom/bytedance/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    .line 536
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/bytedance/retrofit2/Retrofit;
    .locals 10

    .line 634
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->endpoint:Lcom/bytedance/retrofit2/Endpoint;

    if-eqz v0, :cond_5

    .line 637
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->clientProvider:Lcom/bytedance/retrofit2/client/Client$Provider;

    if-eqz v0, :cond_4

    .line 641
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_3

    .line 645
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->platform:Lcom/bytedance/retrofit2/Platform;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_0
    move-object v8, v0

    .line 651
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 652
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->platform:Lcom/bytedance/retrofit2/Platform;

    invoke-virtual {v0, v8}, Lcom/bytedance/retrofit2/Platform;->defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lcom/bytedance/retrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 657
    sget-object v0, Lcom/bytedance/retrofit2/Retrofit;->sCommonInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 658
    sget-object v0, Lcom/bytedance/retrofit2/Retrofit;->sCommonInterceptors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    .line 659
    iget-object v2, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    iget-object v2, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
    :cond_2
    new-instance v0, Lcom/bytedance/retrofit2/Retrofit;

    iget-object v2, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->endpoint:Lcom/bytedance/retrofit2/Endpoint;

    iget-object v3, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->clientProvider:Lcom/bytedance/retrofit2/client/Client$Provider;

    iget-object v4, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->interceptors:Ljava/util/List;

    iget-object v7, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v9, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->validateEagerly:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/retrofit2/Retrofit;-><init>(Lcom/bytedance/retrofit2/Endpoint;Lcom/bytedance/retrofit2/client/Client$Provider;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Z)V

    return-object v0

    .line 642
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HttpExecutor may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClientProvider may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Endpoint may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheServer(Lcom/bytedance/retrofit2/cache/ICacheServer;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->cacheServer:Lcom/bytedance/retrofit2/cache/ICacheServer;

    return-object p0
.end method

.method public callbackExecutor(Ljava/util/concurrent/Executor;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "callbackExecutor == null"

    .line 599
    invoke-static {p1, v0}, Lcom/bytedance/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public client(Lcom/bytedance/retrofit2/client/Client$Provider;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "provider == null"

    .line 515
    invoke-static {p1, v0}, Lcom/bytedance/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/retrofit2/client/Client$Provider;

    invoke-virtual {p0, p1}, Lcom/bytedance/retrofit2/Retrofit$Builder;->provider(Lcom/bytedance/retrofit2/client/Client$Provider;)Lcom/bytedance/retrofit2/Retrofit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public httpExecutor(Ljava/util/concurrent/Executor;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "httpExecutor == null"

    .line 604
    invoke-static {p1, v0}, Lcom/bytedance/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->httpExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public provider(Lcom/bytedance/retrofit2/client/Client$Provider;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "provider == null"

    .line 524
    invoke-static {p1, v0}, Lcom/bytedance/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/retrofit2/client/Client$Provider;

    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->clientProvider:Lcom/bytedance/retrofit2/client/Client$Provider;

    return-object p0
.end method

.method public removeInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "interceptor == null"

    .line 547
    invoke-static {p1, v0}, Lcom/bytedance/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/retrofit2/intercept/Interceptor;

    .line 548
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEndpoint(Lcom/bytedance/retrofit2/Endpoint;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 570
    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->endpoint:Lcom/bytedance/retrofit2/Endpoint;

    return-object p0

    .line 568
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Endpoint may not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEndpoint(Ljava/lang/String;)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-static {p1}, Lcom/bytedance/retrofit2/Endpoints;->newFixedEndpoint(Ljava/lang/String;)Lcom/bytedance/retrofit2/Endpoint;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->endpoint:Lcom/bytedance/retrofit2/Endpoint;

    return-object p0

    .line 557
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Endpoint may not be blank."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateEagerly(Z)Lcom/bytedance/retrofit2/Retrofit$Builder;
    .locals 0

    .line 613
    iput-boolean p1, p0, Lcom/bytedance/retrofit2/Retrofit$Builder;->validateEagerly:Z

    return-object p0
.end method
