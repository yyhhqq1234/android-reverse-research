.class Lcom/netease/download/reporter/ReportFile$1;
.super Ljava/lang/Object;
.source "ReportFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportFile;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportFile;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "info":Ljava/lang/String;
    const-string v3, "ReportFile"

    const-string v4, "ReportFile write2File Thread start"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v3}, Lcom/netease/download/reporter/ReportFile;->access$0(Lcom/netease/download/reporter/ReportFile;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const-string v3, "finish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-string v3, "ReportFile"

    const-string v4, "ReportFile write2File finish"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    iget-object v3, v3, Lcom/netease/download/reporter/ReportFile;->mFileCallBack:Lcom/netease/download/reporter/ReportFile$FileCallBack;

    invoke-interface {v3}, Lcom/netease/download/reporter/ReportFile$FileCallBack;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 158
    :goto_1
    return-void

    .line 133
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v6}, Lcom/netease/download/reporter/ReportFile;->access$1(Lcom/netease/download/reporter/ReportFile;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v3, v4}, Lcom/netease/download/reporter/ReportFile;->access$2(Lcom/netease/download/reporter/ReportFile;Ljava/io/BufferedWriter;)V

    .line 134
    iget-object v3, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v3}, Lcom/netease/download/reporter/ReportFile;->access$3(Lcom/netease/download/reporter/ReportFile;)Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v3}, Lcom/netease/download/reporter/ReportFile;->access$3(Lcom/netease/download/reporter/ReportFile;)Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 152
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 140
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2
.end method
