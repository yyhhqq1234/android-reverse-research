.class public Lcom/pay/network/model/APDataReportReq;
.super Lcom/pay/http/APHttpReqPost;
.source "APDataReportReq.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 11
    invoke-direct {p0}, Lcom/pay/http/APHttpReqPost;-><init>()V

    .line 12
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v1

    .line 14
    .local v1, "offerid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    :goto_0
    return-void

    .line 19
    :cond_0
    const-string v4, "/cgi-bin/log_data.fcg?offer_id=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "devUrl":Ljava/lang/String;
    const-string v4, "/cgi-bin/log_data.fcg?offer_id=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "testUrl":Ljava/lang/String;
    const-string v4, "/cgi-bin/log_data.fcg?offer_id=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "releaseUrl":Ljava/lang/String;
    invoke-virtual {p0, v0, v3, v2}, Lcom/pay/network/model/APDataReportReq;->setReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public startService(Ljava/lang/String;)V
    .locals 3
    .param p1, "report"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "offerid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/pay/network/model/APDataReportReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->reqParam:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 42
    iget-object v1, p0, Lcom/pay/network/model/APDataReportReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->reqParam:Ljava/util/HashMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/pay/network/model/APDataReportReq;->startRequest()V

    goto :goto_0
.end method
