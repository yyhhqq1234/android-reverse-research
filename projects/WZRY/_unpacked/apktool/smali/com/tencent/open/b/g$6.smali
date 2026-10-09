.class Lcom/tencent/open/b/g$6;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/tencent/open/b/g$6;->e:Lcom/tencent/open/b/g;

    iput-object p2, p0, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/open/b/g$6;->c:Z

    iput-object p5, p0, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 737
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->httpRequest, params is null!"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-static {}, Lcom/tencent/open/b/e;->a()I

    move-result v0

    .line 743
    if-nez v0, :cond_2

    const/4 v0, 0x3

    move v5, v0

    .line 745
    :goto_1
    const-string v0, "openSDK_LOG.ReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->httpRequest, retryCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    .line 750
    iget-object v0, p0, Lcom/tencent/open/b/g$6;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 751
    iget-boolean v2, p0, Lcom/tencent/open/b/g$6;->c:Z

    if-eqz v2, :cond_7

    .line 752
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 755
    :goto_2
    iget-object v0, p0, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 756
    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 770
    :goto_3
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v4, v0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v4, v0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    move v2, v1

    .line 774
    :goto_4
    add-int/lit8 v1, v2, 0x1

    .line 776
    :try_start_1
    invoke-interface {v6, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 777
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 778
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 780
    const-string v7, "openSDK_LOG.ReportManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->httpRequest, statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/16 v7, 0xc8

    if-eq v2, v7, :cond_5

    .line 782
    const-string v2, "openSDK_LOG.ReportManager"

    const-string v7, "-->ReportCenter httpRequest : HttpStatuscode != 200"

    invoke-static {v2, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 798
    :cond_1
    :goto_5
    if-ne v0, v3, :cond_6

    .line 799
    :try_start_2
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->ReportCenter httpRequest Thread request success"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->httpRequest, exception in serial executor."

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v5, v0

    .line 743
    goto/16 :goto_1

    .line 759
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/tencent/open/b/g$6;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 760
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/tencent/open/b/g$6;->b:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-static {v2}, Lcom/tencent/open/utils/j;->i(Ljava/lang/String;)[B

    move-result-object v2

    .line 762
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 763
    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v4, v0

    .line 765
    goto :goto_3

    .line 766
    :cond_4
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->httpRequest unkonw request method return."

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 785
    :cond_5
    :try_start_4
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v2, "-->ReportCenter httpRequest Thread success"

    invoke-static {v0, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v0, v3

    goto :goto_5

    .line 788
    :catch_1
    move-exception v2

    .line 789
    :goto_6
    :try_start_5
    const-string v2, "openSDK_LOG.ReportManager"

    const-string v7, "-->ReportCenter httpRequest ConnectTimeoutException"

    invoke-static {v2, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_7
    if-ge v1, v5, :cond_1

    move v2, v1

    goto/16 :goto_4

    .line 790
    :catch_2
    move-exception v2

    .line 791
    :goto_8
    const-string v2, "openSDK_LOG.ReportManager"

    const-string v7, "-->ReportCenter httpRequest SocketTimeoutException"

    invoke-static {v2, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 792
    :catch_3
    move-exception v1

    .line 793
    :goto_9
    const-string v1, "openSDK_LOG.ReportManager"

    const-string v2, "-->ReportCenter httpRequest Exception"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 801
    :cond_6
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->ReportCenter httpRequest Thread request failed"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 792
    :catch_4
    move-exception v0

    move v0, v3

    goto :goto_9

    .line 790
    :catch_5
    move-exception v0

    move v0, v3

    goto :goto_8

    .line 788
    :catch_6
    move-exception v0

    move v0, v3

    goto :goto_6

    :cond_7
    move-object v2, v0

    goto/16 :goto_2
.end method
