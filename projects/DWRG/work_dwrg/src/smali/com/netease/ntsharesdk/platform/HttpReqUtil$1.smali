.class Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;
.super Ljava/lang/Object;
.source "HttpReqUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntsharesdk/platform/HttpReqUtil;->wpost(Ljava/lang/String;Ljava/util/List;Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;

.field private final synthetic val$nameValuePairs:Ljava/util/List;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;->val$nameValuePairs:Ljava/util/List;

    iput-object p3, p0, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;->val$cb:Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 31
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 32
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 33
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-static {}, Lcom/netease/ntsharesdk/platform/HttpReqUtil;->access$0()I

    move-result v6

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 34
    invoke-static {}, Lcom/netease/ntsharesdk/platform/HttpReqUtil;->access$1()I

    move-result v6

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 35
    const/4 v4, 0x0

    .line 38
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;->val$url:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 40
    .local v3, "request":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v7, p0, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;->val$nameValuePairs:Ljava/util/List;

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 41
    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 47
    :goto_0
    const-string v5, ""

    .line 48
    .local v5, "strResp":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 50
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 55
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;->val$cb:Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;

    if-eqz v6, :cond_1

    .line 56
    iget-object v6, p0, Lcom/netease/ntsharesdk/platform/HttpReqUtil$1;->val$cb:Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;

    invoke-interface {v6, v5}, Lcom/netease/ntsharesdk/platform/HttpReqUtil$WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    .line 58
    :cond_1
    return-void

    .line 42
    .end local v5    # "strResp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v0    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "strResp":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
