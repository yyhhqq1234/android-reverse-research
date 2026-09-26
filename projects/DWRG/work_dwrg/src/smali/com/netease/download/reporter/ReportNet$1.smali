.class Lcom/netease/download/reporter/ReportNet$1;
.super Ljava/lang/Object;
.source "ReportNet.java"

# interfaces
.implements Lcom/netease/download/network/NetworkDealer2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/reporter/ReportNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/download/network/NetworkDealer2",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportNet;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportNet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReportNet$1;->this$0:Lcom/netease/download/reporter/ReportNet;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processContent(Ljava/net/HttpURLConnection;ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "pCode"    # I
    .param p3, "resUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v6, 0x0

    .line 114
    .local v6, "result":Z
    const-string v7, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u8bf7\u6c42\u7ed3\u679c\u89e3\u6790"

    invoke-static {v7}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 115
    const/4 v4, 0x0

    .line 117
    .local v4, "pInputStream":Ljava/io/InputStream;
    const/16 v7, 0xc8

    if-ne v7, p2, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 124
    :goto_0
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v7, "utf-8"

    invoke-direct {v2, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 125
    .local v2, "in":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v1, "e":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, "cache":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "resp":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 136
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 140
    :goto_2
    return-object v7

    .line 121
    .end local v0    # "cache":Ljava/lang/StringBuilder;
    .end local v1    # "e":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "resp":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_0

    .line 130
    .restart local v0    # "cache":Ljava/lang/StringBuilder;
    .restart local v1    # "e":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 139
    .restart local v5    # "resp":Ljava/lang/String;
    :cond_2
    const-string v7, "ReportNet"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u8bf7\u6c42\u8fd4\u56de\u7801="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0c\u7ed3\u679c\u89e3\u6790="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_2
.end method

.method public bridge synthetic processContent(Ljava/net/HttpURLConnection;ILjava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/download/reporter/ReportNet$1;->processContent(Ljava/net/HttpURLConnection;ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public processHeader(Ljava/util/Map;ILjava/lang/String;)I
    .locals 4
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
            ")I"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "pHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x1

    .line 97
    .local v0, "result":I
    const-string v1, "ReportNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u4e0a\u4f20\u8fd4\u56de\u7801="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u8bf7\u6c42\u94fe\u63a5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", header="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/16 v1, 0xc8

    if-ne v1, p2, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/netease/download/reporter/ReportNet$1;->this$0:Lcom/netease/download/reporter/ReportNet;

    invoke-static {v1}, Lcom/netease/download/reporter/ReportNet;->access$0(Lcom/netease/download/reporter/ReportNet;)Lcom/netease/download/reporter/ReportNet$ReportCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/download/reporter/ReportNet$ReportCallBack;->finish(I)V

    .line 107
    return v0
.end method
