.class public Lcom/netease/epay/sdk/base/network/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;
    }
.end annotation


# static fields
.field private static gson:Lcom/google/gson/Gson;

.field private static parseCallback:Lcom/netease/epay/sdk/base/network/IParseCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "x1"    # Lcom/netease/epay/sdk/base/network/INetCallback;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/netease/epay/sdk/base/network/HttpClient;->check(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/netease/epay/sdk/base/network/IParseCallback;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/netease/epay/sdk/base/network/HttpClient;->parseCallback:Lcom/netease/epay/sdk/base/network/IParseCallback;

    return-object v0
.end method

.method public static cancelAll()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->access$200()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 161
    return-void
.end method

.method private static check(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)Z
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/netease/epay/sdk/base/network/INetCallback",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "callback":Lcom/netease/epay/sdk/base/network/INetCallback;, "Lcom/netease/epay/sdk/base/network/INetCallback<TT;>;"
    invoke-static {}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->getInstance()Lcom/netease/epay/sdk/base/network/LoadingHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->dismissLoading(Landroid/support/v4/app/FragmentActivity;)V

    .line 128
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gsonConvert(Lokhttp3/Response;Lcom/netease/epay/sdk/base/network/INetCallback;)Lcom/netease/epay/sdk/base/network/NewBaseResponse;
    .locals 6
    .param p0, "response"    # Lokhttp3/Response;
    .param p1    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Response;",
            "Lcom/netease/epay/sdk/base/network/INetCallback",
            "<TT;>;)",
            "Lcom/netease/epay/sdk/base/network/NewBaseResponse;"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/netease/epay/sdk/base/network/INetCallback;, "Lcom/netease/epay/sdk/base/network/INetCallback<TT;>;"
    const/4 v5, 0x1

    .line 133
    invoke-static {p0}, Lcom/netease/epay/sdk/base/network/Base64DataConverter;->convert(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v4

    .line 135
    :try_start_0
    sget-object v1, Lcom/netease/epay/sdk/base/network/HttpClient;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sput-object v1, Lcom/netease/epay/sdk/base/network/HttpClient;->gson:Lcom/google/gson/Gson;

    .line 139
    :cond_0
    sget-object v1, Lcom/netease/epay/sdk/base/network/HttpClient;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v4}, Lcom/google/gson/TypeAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 144
    instance-of v2, v3, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v2, v2

    if-lt v2, v5, :cond_1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 148
    :cond_1
    instance-of v2, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v2, v2

    if-lt v2, v5, :cond_2

    .line 149
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 150
    sget-object v3, Lcom/netease/epay/sdk/base/network/HttpClient;->gson:Lcom/google/gson/Gson;

    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/gson/TypeAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_2
    :goto_0
    return-object v1

    .line 153
    :catch_0
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    new-instance v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    const-string v2, "-102"

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u6709\u8bef"

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCallbackNull()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netease/epay/sdk/base/network/HttpClient;->parseCallback:Lcom/netease/epay/sdk/base/network/IParseCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static realStartRequest(Lcom/netease/epay/sdk/base/network/EpayNetRequest;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .locals 3
    .param p0, "netRequest"    # Lcom/netease/epay/sdk/base/network/EpayNetRequest;
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/epay/sdk/base/network/EpayNetRequest;",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/netease/epay/sdk/base/network/INetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "callback":Lcom/netease/epay/sdk/base/network/INetCallback;, "Lcom/netease/epay/sdk/base/network/INetCallback<TT;>;"
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/epay/sdk/base/core/SdkConfig;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 79
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->access$200()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/base/network/HttpClient$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/netease/epay/sdk/base/network/HttpClient$1;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;Lcom/netease/epay/sdk/base/network/EpayNetRequest;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    invoke-static {}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->getInstance()Lcom/netease/epay/sdk/base/network/LoadingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->dismissLoading(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public static setParseCallback(Lcom/netease/epay/sdk/base/network/IParseCallback;)V
    .locals 0
    .param p0, "callback"    # Lcom/netease/epay/sdk/base/network/IParseCallback;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    .line 44
    sput-object p0, Lcom/netease/epay/sdk/base/network/HttpClient;->parseCallback:Lcom/netease/epay/sdk/base/network/IParseCallback;

    .line 46
    :cond_0
    return-void
.end method

.method public static startRequest(Ljava/lang/String;Lcom/netease/epay/sdk/base/network/IParamsCallback;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "paramsCallback"    # Lcom/netease/epay/sdk/base/network/IParamsCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isHome"    # Z
    .param p3, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p4    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/netease/epay/sdk/base/network/IParamsCallback;",
            "Z",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/netease/epay/sdk/base/network/INetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, "callback":Lcom/netease/epay/sdk/base/network/INetCallback;, "Lcom/netease/epay/sdk/base/network/INetCallback<TT;>;"
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->getInstance()Lcom/netease/epay/sdk/base/network/LoadingHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->showLoading(Landroid/support/v4/app/FragmentActivity;)V

    .line 72
    new-instance v0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/netease/epay/sdk/base/network/EpayNetRequest;-><init>(Ljava/lang/String;ZLorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/IParamsCallback;)V

    invoke-static {v0, p3, p4}, Lcom/netease/epay/sdk/base/network/HttpClient;->realStartRequest(Lcom/netease/epay/sdk/base/network/EpayNetRequest;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0
.end method

.method public static startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "obj"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isHome"    # Z
    .param p3, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p4    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Z",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/netease/epay/sdk/base/network/INetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p4, "callback":Lcom/netease/epay/sdk/base/network/INetCallback;, "Lcom/netease/epay/sdk/base/network/INetCallback<TT;>;"
    invoke-static {}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->getInstance()Lcom/netease/epay/sdk/base/network/LoadingHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->showLoading(Landroid/support/v4/app/FragmentActivity;)V

    .line 61
    new-instance v0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/netease/epay/sdk/base/network/EpayNetRequest;-><init>(Ljava/lang/String;ZLorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/IParamsCallback;)V

    invoke-static {v0, p3, p4}, Lcom/netease/epay/sdk/base/network/HttpClient;->realStartRequest(Lcom/netease/epay/sdk/base/network/EpayNetRequest;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 62
    return-void
.end method

.method public static startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;Z)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "obj"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isHome"    # Z
    .param p3, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p4    # Lcom/netease/epay/sdk/base/network/INetCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "needLoadingDialog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Z",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/netease/epay/sdk/base/network/INetCallback",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p4, "callback":Lcom/netease/epay/sdk/base/network/INetCallback;, "Lcom/netease/epay/sdk/base/network/INetCallback<TT;>;"
    if-eqz p5, :cond_0

    .line 51
    invoke-static {}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->getInstance()Lcom/netease/epay/sdk/base/network/LoadingHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netease/epay/sdk/base/network/LoadingHandler;->showLoading(Landroid/support/v4/app/FragmentActivity;)V

    .line 54
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/base/network/EpayNetRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/netease/epay/sdk/base/network/EpayNetRequest;-><init>(Ljava/lang/String;ZLorg/json/JSONObject;Lcom/netease/epay/sdk/base/network/IParamsCallback;)V

    invoke-static {v0, p3, p4}, Lcom/netease/epay/sdk/base/network/HttpClient;->realStartRequest(Lcom/netease/epay/sdk/base/network/EpayNetRequest;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 55
    return-void
.end method
