.class Lcom/netease/download/reporter/ReportUtil$1;
.super Ljava/lang/Object;
.source "ReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportUtil;->getQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportUtil;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReportUtil$1;->this$0:Lcom/netease/download/reporter/ReportUtil;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 263
    const-string v5, "ReportUtil"

    const-string v6, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u8bf7\u6c42nstool\uff0c\u83b7\u53d6\u7f51\u5173\uff0cdns"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/netease/download/reporter/ReportUtil$1$1;

    invoke-direct {v0, p0}, Lcom/netease/download/reporter/ReportUtil$1$1;-><init>(Lcom/netease/download/reporter/ReportUtil$1;)V

    .line 302
    .local v0, "dealer":Lcom/netease/download/network/NetworkDealer;, "Lcom/netease/download/network/NetworkDealer<Ljava/lang/Boolean;>;"
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v5

    iget-object v4, v5, Lcom/netease/download/config2/ConfigParams2;->pickerUrl:Ljava/lang/String;

    .line 304
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "domain":Ljava/lang/String;
    const-string v5, "Host"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v5, "ReportUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u8bf7\u6c42\u7f51\u7ba1\u5730\u5740="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/config2/ConfigParams2;->pickerUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/config2/ConfigParams2;->pickerUrl:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "GET"

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v0}, Lcom/netease/download/network/NetUtil;->doSimpleHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v1    # "domain":Ljava/lang/String;
    .end local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
