.class Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/network/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static client:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static getFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 187
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 188
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/netease/epay/sdk/base/network/MyX509TrustManager;

    invoke-direct {v4}, Lcom/netease/epay/sdk/base/network/MyX509TrustManager;-><init>()V

    aput-object v4, v2, v3

    .line 189
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 190
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 194
    :catch_1
    move-exception v1

    .line 195
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getHostnameVerify()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder$1;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder$1;-><init>()V

    return-object v0
.end method

.method private static getInstance()Lokhttp3/OkHttpClient;
    .locals 5

    .prologue
    .line 167
    sget-object v0, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 168
    const-class v1, Lcom/netease/epay/sdk/base/network/HttpClient;

    monitor-enter v1

    .line 169
    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 171
    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x28

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 172
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x28

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 173
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lcom/netease/epay/sdk/base/network/UrlSuffixInterceptor;

    invoke-direct {v2}, Lcom/netease/epay/sdk/base/network/UrlSuffixInterceptor;-><init>()V

    .line 174
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lcom/netease/epay/sdk/base/network/CookieInterceptor;

    invoke-direct {v2}, Lcom/netease/epay/sdk/base/network/CookieInterceptor;-><init>()V

    .line 175
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->getFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/base/network/MyX509TrustManager;

    invoke-direct {v3}, Lcom/netease/epay/sdk/base/network/MyX509TrustManager;-><init>()V

    invoke-virtual {v0, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 177
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->getHostnameVerify()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->client:Lokhttp3/OkHttpClient;

    .line 180
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base/network/HttpClient$InstanceHolder;->client:Lokhttp3/OkHttpClient;

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
