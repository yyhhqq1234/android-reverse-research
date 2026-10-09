.class public Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;
.super Ljava/lang/Object;
.source "URLRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;
    }
.end annotation


# instance fields
.field private final AV_HTTP_STATUS_FAIL:I

.field private final AV_HTTP_STATUS_GET_CREATEFILE:I

.field private final AV_HTTP_STATUS_GET_WRITEFILE:I

.field private final AV_HTTP_STATUS_INVALIED_HOST:I

.field private final AV_HTTP_STATUS_INVALIED_URL:I

.field private final AV_HTTP_STATUS_NOHEADERS:I

.field private final AV_HTTP_STATUS_POST_READFILE:I

.field private final AV_HTTP_STATUS_READBODY:I

.field private final AV_HTTP_STATUS_SEND_INCOMPLETE:I

.field private final AV_HTTP_STATUS_SUCC:I

.field private final AV_HTTP_STATUS_TIMEOUT:I

.field private body:[B

.field private delegate:J

.field private getFilePath:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private postFilePath:Ljava/lang/String;

.field private reqConnURL:Ljava/net/URL;

.field private response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

.field private timeout:I

.field private urlConn:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_SUCC:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_FAIL:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_TIMEOUT:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_INVALIED_HOST:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_INVALIED_URL:I

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_NOHEADERS:I

    .line 34
    const/4 v0, 0x6

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_READBODY:I

    .line 35
    const/4 v0, 0x7

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_SEND_INCOMPLETE:I

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_GET_CREATEFILE:I

    .line 37
    const/16 v0, 0x9

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_GET_WRITEFILE:I

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->AV_HTTP_STATUS_POST_READFILE:I

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)[B
    .locals 1
    .param p0, "x0"    # Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->body:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;)Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    return-object v0
.end method

.method public static native response(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V
.end method


# virtual methods
.method public addHead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public getFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->setMethod(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->sendRequest(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public initWithURL(Ljava/lang/String;I)I
    .locals 6
    .param p1, "reqURL"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 54
    new-instance v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    invoke-direct {v1}, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;-><init>()V

    iput-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    .line 55
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iput-object p1, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    .line 56
    const-string v1, "GET"

    iput-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->timeout:I

    .line 59
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v4, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget-object v4, v4, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->reqConnURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->reqConnURL:Ljava/net/URL;

    if-nez v1, :cond_0

    .line 65
    const-string v1, "ApolloVoice"

    const-string v3, "reqConnURL"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 95
    :goto_1
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->reqConnURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    const-string v1, "ApolloVoice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After open Connection With URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 77
    const-string v1, "cz"

    const-string/jumbo v3, "urlConn == null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 78
    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    .line 73
    goto :goto_1

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 89
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    const-string v2, "POST"

    if-ne v1, v2, :cond_2

    .line 90
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 91
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    move v1, v3

    .line 95
    goto :goto_1

    .line 82
    :catch_2
    move-exception v0

    .line 84
    .local v0, "e":Ljava/net/ProtocolException;
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    move v1, v2

    .line 85
    goto :goto_1
.end method

.method public postFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->setMethod(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->sendRequest(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public response2cpp(I)V
    .locals 14
    .param p1, "result"    # I

    .prologue
    .line 118
    const-string v1, "ApolloVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget-object v3, v3, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]response2cpp with result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-wide v2, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->delegate:J

    const/4 v4, 0x0

    const-string v5, ""

    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget-object v6, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v1, p1

    invoke-static/range {v1 .. v9}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v11, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget-object v1, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    .local v0, "entries":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 127
    .local v10, "entry":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 128
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 129
    .local v13, "value":Ljava/lang/String;
    if-eqz v13, :cond_1

    if-eqz v12, :cond_1

    .line 130
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_2
    iget-wide v2, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->delegate:J

    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget v4, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->status:I

    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget-object v5, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget-object v6, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget-object v7, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response:Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;

    iget-object v8, v1, Lcom/tencent/apollo/apollovoice/httpclient/URLResponse;->body:[B

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    move v1, p1

    invoke-static/range {v1 .. v9}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->response(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendRequest()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "GET"

    iput-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    .line 109
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->sendRequest(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public sendRequest(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;

    invoke-direct {v1, p0, p1}, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest$RequestTask;-><init>(Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method public setBody([B)V
    .locals 0
    .param p1, "body"    # [B

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->body:[B

    .line 160
    return-void
.end method

.method public setDelegate(J)V
    .locals 1
    .param p1, "delegate"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->delegate:J

    .line 151
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->method:Ljava/lang/String;

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/URLRequest;->urlConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/net/ProtocolException;
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0
.end method
