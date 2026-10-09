.class public Lcom/tencent/component/utils/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/HttpUtil$ClientOptions;,
        Lcom/tencent/component/utils/HttpUtil$RequestOptions;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x7530

.field private static final DEFAULT_CLIENT_OPTIONS:Lcom/tencent/component/utils/HttpUtil$ClientOptions;

.field private static final SO_TIMEOUT:I = 0xafc8

.field private static final TAG:Ljava/lang/String; = "HttpUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/tencent/component/utils/HttpUtil$ClientOptions;

    invoke-direct {v0}, Lcom/tencent/component/utils/HttpUtil$ClientOptions;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/HttpUtil;->DEFAULT_CLIENT_OPTIONS:Lcom/tencent/component/utils/HttpUtil$ClientOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static containsProxy(Lorg/apache/http/HttpRequest;)Z
    .locals 5
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    if-eqz p0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/tencent/component/utils/AssertUtil;->assertTrue(Z)V

    .line 232
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.route.default-proxy"

    invoke-interface {v1, v4}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, "proxy":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/apache/http/HttpHost;

    if-eqz v1, :cond_1

    :goto_1
    return v2

    .end local v0    # "proxy":Ljava/lang/Object;
    :cond_0
    move v1, v3

    .line 231
    goto :goto_0

    .restart local v0    # "proxy":Ljava/lang/Object;
    :cond_1
    move v2, v3

    .line 233
    goto :goto_1
.end method

.method public static createHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/component/utils/HttpUtil;->createHttpClient(Lcom/tencent/component/utils/HttpUtil$ClientOptions;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createHttpClient(Lcom/tencent/component/utils/HttpUtil$ClientOptions;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8
    .param p0, "options"    # Lcom/tencent/component/utils/HttpUtil$ClientOptions;

    .prologue
    const/4 v6, 0x0

    .line 107
    if-nez p0, :cond_0

    .line 108
    sget-object p0, Lcom/tencent/component/utils/HttpUtil;->DEFAULT_CLIENT_OPTIONS:Lcom/tencent/component/utils/HttpUtil$ClientOptions;

    .line 112
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 116
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 118
    const-wide/16 v4, 0x7530

    invoke-static {v2, v4, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 120
    const/16 v4, 0x7530

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 121
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 122
    const v4, 0xafc8

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 123
    const/16 v4, 0x2000

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 126
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 127
    iget-object v4, p0, Lcom/tencent/component/utils/HttpUtil$ClientOptions;->userAgent:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tencent/component/utils/HttpUtil$ClientOptions;->userAgent:Ljava/lang/String;

    :goto_0
    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 130
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 135
    .local v3, "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :try_start_0
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 136
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 143
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/impl/conn/DefaultHttpRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V

    .line 145
    return-object v1

    .line 127
    .end local v1    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_1
    const-string v4, "HttpClient"

    goto :goto_0

    .line 137
    .restart local v3    # "supportedSchemes":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HttpUtil"

    const-string v5, "http register Scheme exception"

    invoke-static {v4, v5, v0}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    return-object v0
.end method

.method public static createHttpGet(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/HttpUtil;->createHttpGet(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method public static createHttpGet(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/client/methods/HttpGet;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/tencent/component/utils/HttpUtil$RequestOptions;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p1}, Lcom/tencent/component/utils/HttpUtil;->prepareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p1}, Lcom/tencent/component/utils/HttpUtil;->prepareHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string/jumbo v2, "x-online-host"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "Host"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p0, v1, p2}, Lcom/tencent/component/utils/HttpUtil;->prepareRequest(Landroid/content/Context;Lorg/apache/http/HttpRequest;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)V

    .line 177
    return-object v1
.end method

.method public static createHttpGet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/client/methods/HttpGet;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestUrl"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/tencent/component/utils/HttpUtil$RequestOptions;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1}, Lcom/tencent/component/utils/HttpUtil;->prepareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p2}, Lcom/tencent/component/utils/HttpUtil;->prepareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 161
    invoke-static {p1}, Lcom/tencent/component/utils/HttpUtil;->prepareHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string/jumbo v2, "x-online-host"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "Host"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p0, v1, p3}, Lcom/tencent/component/utils/HttpUtil;->prepareRequest(Landroid/content/Context;Lorg/apache/http/HttpRequest;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)V

    .line 166
    return-object v1
.end method

.method public static createHttpPost(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/component/utils/HttpUtil;->createHttpPost(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method public static createHttpPost(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/client/methods/HttpPost;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "options"    # Lcom/tencent/component/utils/HttpUtil$RequestOptions;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {p1}, Lcom/tencent/component/utils/HttpUtil;->prepareUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p1}, Lcom/tencent/component/utils/HttpUtil;->prepareHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "Host"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v2, "x-online-host"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    instance-of v2, p2, Lorg/apache/http/entity/ByteArrayEntity;

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    invoke-virtual {v1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 197
    invoke-static {p0, v1, p3}, Lcom/tencent/component/utils/HttpUtil;->prepareRequest(Landroid/content/Context;Lorg/apache/http/HttpRequest;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)V

    .line 198
    return-object v1
.end method

.method public static executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/HttpUtil;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static executeHttpGet(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "option"    # Lcom/tencent/component/utils/HttpUtil$RequestOptions;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/tencent/component/utils/HttpUtil;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 209
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-static {p0, p1, p2}, Lcom/tencent/component/utils/HttpUtil;->createHttpGet(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 210
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public static executeHttpPost(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/component/utils/HttpUtil;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static executeHttpPost(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;
    .param p3, "option"    # Lcom/tencent/component/utils/HttpUtil$RequestOptions;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/tencent/component/utils/HttpUtil;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 221
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/component/utils/HttpUtil;->createHttpPost(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 222
    .local v1, "httpPost":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method private static prepareHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 250
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/tencent/component/utils/AssertUtil;->assertTrue(Z)V

    .line 251
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static prepareRequest(Landroid/content/Context;Lorg/apache/http/HttpRequest;Lcom/tencent/component/utils/HttpUtil$RequestOptions;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "options"    # Lcom/tencent/component/utils/HttpUtil$RequestOptions;

    .prologue
    .line 256
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lcom/tencent/component/utils/HttpUtil$RequestOptions;->allowProxy:Z

    .line 257
    .local v0, "allowProxy":Z
    :goto_0
    if-eqz p2, :cond_2

    iget-boolean v1, p2, Lcom/tencent/component/utils/HttpUtil$RequestOptions;->apnProxy:Z

    .line 258
    .local v1, "apnProxy":Z
    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/component/utils/NetworkUtil;->isViaMobile(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    invoke-static {p0, v1}, Lcom/tencent/component/utils/NetworkUtil;->getProxy(Landroid/content/Context;Z)Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;

    move-result-object v2

    .line 260
    .local v2, "networkProxy":Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    if-eqz v2, :cond_0

    .line 261
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->host:Ljava/lang/String;

    iget v5, v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->port:I

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 262
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 264
    const-string v4, "HttpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "use proxy[host:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v2    # "networkProxy":Lcom/tencent/component/utils/NetworkUtil$NetworkProxy;
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    return-void

    .line 256
    .end local v0    # "allowProxy":Z
    .end local v1    # "apnProxy":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    .restart local v0    # "allowProxy":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static prepareUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 238
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/tencent/component/utils/AssertUtil;->assertTrue(Z)V

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 240
    const-string v1, " "

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 242
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 243
    .local v0, "hashIndex":I
    if-lez v0, :cond_0

    .line 244
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 246
    :cond_0
    return-object p0

    .end local v0    # "hashIndex":I
    :cond_1
    move v1, v2

    .line 238
    goto :goto_0
.end method

.method public static setKeepAliveEnabled(Lorg/apache/http/HttpRequest;Z)V
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "enabled"    # Z

    .prologue
    .line 226
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/tencent/component/utils/AssertUtil;->assertTrue(Z)V

    .line 227
    const-string v1, "Connection"

    if-eqz p1, :cond_1

    const-string v0, "Keep-Alive"

    :goto_1
    invoke-interface {p0, v1, v0}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_1
    const-string v0, "Close"

    goto :goto_1
.end method
