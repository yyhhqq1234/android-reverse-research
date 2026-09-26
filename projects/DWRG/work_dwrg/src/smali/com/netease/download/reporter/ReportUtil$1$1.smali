.class Lcom/netease/download/reporter/ReportUtil$1$1;
.super Ljava/lang/Object;
.source "ReportUtil.java"

# interfaces
.implements Lcom/netease/download/network/NetworkDealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/download/network/NetworkDealer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/download/reporter/ReportUtil$1;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportUtil$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReportUtil$1$1;->this$1:Lcom/netease/download/reporter/ReportUtil$1;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processContent(Ljava/io/InputStream;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "pInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 268
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v8, "utf-8"

    invoke-direct {v1, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 269
    .local v1, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 271
    .local v0, "e":Ljava/io/BufferedReader;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v7, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 278
    const-string v8, "ReportUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u8bf7\u6c42nstool,\u7ed3\u679c= "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v8, "netdns"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "netdns"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 280
    .local v6, "mNetdns":Ljava/lang/String;
    :goto_1
    const-string v8, "gw"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "gw"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    .line 281
    .local v4, "mGw":Ljava/lang/String;
    :goto_2
    const-string v8, "gwdns"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "gwdns"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v8

    .line 282
    .local v5, "mGwdns":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v8

    iput-object v4, v8, Lcom/netease/download/reporter/ReportInfo;->mCliGateway:Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v8

    iput-object v6, v8, Lcom/netease/download/reporter/ReportInfo;->mCliDns:Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v8

    iput-object v5, v8, Lcom/netease/download/reporter/ReportInfo;->mCliDnscheck:Ljava/lang/String;

    .line 290
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    return-object v8

    .line 274
    .end local v4    # "mGw":Ljava/lang/String;
    .end local v5    # "mGwdns":Ljava/lang/String;
    .end local v6    # "mNetdns":Ljava/lang/String;
    :cond_0
    const-string v8, "="

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "keyValue":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v2, v8

    aget-object v9, v2, v11

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    .end local v2    # "keyValue":[Ljava/lang/String;
    :cond_1
    const-string v6, "-1.-1.-1.-1"

    goto :goto_1

    .line 280
    .restart local v6    # "mNetdns":Ljava/lang/String;
    :cond_2
    const-string v4, "-1.-1.-1.-1"

    goto :goto_2

    .line 281
    .restart local v4    # "mGw":Ljava/lang/String;
    :cond_3
    const-string v5, "-1.-1.-1.-1"

    goto :goto_3
.end method

.method public bridge synthetic processContent(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/download/reporter/ReportUtil$1$1;->processContent(Ljava/io/InputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public processHeader(Ljava/util/Map;ILjava/lang/String;)V
    .locals 0
    .param p2, "pCode"    # I
    .param p3, "resUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "pHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method
