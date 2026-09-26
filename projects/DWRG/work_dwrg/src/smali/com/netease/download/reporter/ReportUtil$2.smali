.class Lcom/netease/download/reporter/ReportUtil$2;
.super Ljava/lang/Object;
.source "ReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportUtil;->ping(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportUtil;

.field private final synthetic val$gateway:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReportUtil$2;->this$0:Lcom/netease/download/reporter/ReportUtil;

    iput-object p2, p0, Lcom/netease/download/reporter/ReportUtil$2;->val$gateway:Ljava/lang/String;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 359
    const/4 v6, 0x0

    .line 360
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    const-string v8, "ReportUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping \u7f51\u5173="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/netease/download/reporter/ReportUtil$2;->val$gateway:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "/system/bin/ping -c 1 www.baidu.com"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 362
    .local v5, "p":Ljava/lang/Process;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 363
    .local v4, "lost":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 364
    .local v1, "delay":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 365
    .local v0, "buf":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    .local v3, "info":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 369
    .local v7, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 374
    const-string v8, "ReportUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping\u4fe1\u606f="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v1    # "delay":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/StringBuffer;
    .end local v4    # "lost":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 370
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "delay":Ljava/lang/String;
    .restart local v3    # "info":Ljava/lang/StringBuffer;
    .restart local v4    # "lost":Ljava/lang/String;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v7    # "str":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v1    # "delay":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/StringBuffer;
    .end local v4    # "lost":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "ReportUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping IOException \u5f02\u5e38 ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
