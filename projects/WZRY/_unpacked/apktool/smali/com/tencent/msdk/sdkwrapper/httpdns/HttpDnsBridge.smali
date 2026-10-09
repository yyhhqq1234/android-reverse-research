.class public Lcom/tencent/msdk/sdkwrapper/httpdns/HttpDnsBridge;
.super Ljava/lang/Object;
.source "HttpDnsBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIpByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "domainName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 19
    const-string v5, "Error:domainName is empty!"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 20
    const-string v5, ""

    .line 44
    :goto_0
    return-object v5

    .line 22
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "domainName is \uff1a"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 24
    .local v6, "time":J
    invoke-static {}, Lcom/tencent/special/httpdns/Resolver;->getInstance()Lcom/tencent/special/httpdns/Resolver;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/tencent/special/httpdns/Resolver;->getAddrByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "ipSet":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 26
    .local v2, "lastTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "time:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Ip set is : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 27
    const-wide/16 v8, 0x3e8

    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 28
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "ip"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v5, "time"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v5

    const-string v8, "WGhttpdns_time"

    invoke-virtual {v5, v11, v8, v4}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    .line 33
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 34
    const-string v5, "Warning:ip set is empty."

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    move-result-object v5

    const-string v8, "WGhttpdns_ip"

    const/4 v9, 0x0

    invoke-virtual {v5, v11, v8, v9}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V

    .line 36
    const-string v5, ""

    goto/16 :goto_0

    .line 39
    :cond_2
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "ips":[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-eqz v5, :cond_3

    aget-object v5, v1, v10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    :cond_3
    const-string v5, "Warning:the first ip is empty!"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 42
    const-string v5, ""

    goto/16 :goto_0

    .line 44
    :cond_4
    aget-object v5, v1, v10

    goto/16 :goto_0
.end method
