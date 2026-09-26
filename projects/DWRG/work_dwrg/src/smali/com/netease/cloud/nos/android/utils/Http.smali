.class public Lcom/netease/cloud/nos/android/utils/Http;
.super Ljava/lang/Object;
.source "Http.java"


# static fields
.field private static httpClient:Lorg/apache/http/client/HttpClient;

.field private static lbsHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/netease/cloud/nos/android/utils/Http;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 25
    sput-object v0, Lcom/netease/cloud/nos/android/utils/Http;->lbsHttpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildHttpClient(Landroid/content/Context;II)Lorg/apache/http/client/HttpClient;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connTimeout"    # I
    .param p2, "soTimeout"    # I

    .prologue
    .line 54
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 55
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v5, 0xa

    invoke-static {v3, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v5, 0x3

    invoke-direct {v1, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 57
    .local v1, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRoute;
    invoke-static {v3, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 58
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 60
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 61
    .local v4, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    .line 62
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 61
    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 67
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    .line 68
    invoke-static {}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 67
    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 73
    .local v0, "cm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 75
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 76
    const-string v6, "http.socket.timeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 75
    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 77
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 78
    const-string v6, "http.connection.timeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 77
    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 80
    return-object v2
.end method

.method public static getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 29
    .local v0, "extHttpClient":Lorg/apache/http/client/HttpClient;
    if-eqz v0, :cond_0

    .line 37
    .end local v0    # "extHttpClient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v0

    .line 32
    .restart local v0    # "extHttpClient":Lorg/apache/http/client/HttpClient;
    :cond_0
    sget-object v1, Lcom/netease/cloud/nos/android/utils/Http;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_1

    .line 34
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getConnectionTimeout()I

    move-result v1

    .line 35
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getSoTimeout()I

    move-result v2

    .line 33
    invoke-static {p0, v1, v2}, Lcom/netease/cloud/nos/android/utils/Http;->buildHttpClient(Landroid/content/Context;II)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    sput-object v1, Lcom/netease/cloud/nos/android/utils/Http;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 37
    :cond_1
    sget-object v0, Lcom/netease/cloud/nos/android/utils/Http;->httpClient:Lorg/apache/http/client/HttpClient;

    goto :goto_0
.end method

.method public static getLbsHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 42
    .local v0, "extHttpClient":Lorg/apache/http/client/HttpClient;
    if-eqz v0, :cond_0

    .line 50
    .end local v0    # "extHttpClient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v0

    .line 45
    .restart local v0    # "extHttpClient":Lorg/apache/http/client/HttpClient;
    :cond_0
    sget-object v1, Lcom/netease/cloud/nos/android/utils/Http;->lbsHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_1

    .line 47
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getLbsConnectionTimeout()I

    move-result v1

    .line 48
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getLbsSoTimeout()I

    move-result v2

    .line 46
    invoke-static {p0, v1, v2}, Lcom/netease/cloud/nos/android/utils/Http;->buildHttpClient(Landroid/content/Context;II)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    sput-object v1, Lcom/netease/cloud/nos/android/utils/Http;->lbsHttpClient:Lorg/apache/http/client/HttpClient;

    .line 50
    :cond_1
    sget-object v0, Lcom/netease/cloud/nos/android/utils/Http;->lbsHttpClient:Lorg/apache/http/client/HttpClient;

    goto :goto_0
.end method
