.class Lcom/netease/download/storage/TestToFileProxy$1;
.super Ljava/lang/Object;
.source "TestToFileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/storage/TestToFileProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/storage/TestToFileProxy;


# direct methods
.method constructor <init>(Lcom/netease/download/storage/TestToFileProxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/storage/TestToFileProxy$1;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 110
    .local v2, "info":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/netease/download/storage/TestToFileProxy$1;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    invoke-static {v3}, Lcom/netease/download/storage/TestToFileProxy;->access$0(Lcom/netease/download/storage/TestToFileProxy;)Ljava/util/concurrent/BlockingQueue;

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

    .line 118
    iget-object v3, p0, Lcom/netease/download/storage/TestToFileProxy$1;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    invoke-static {v3}, Lcom/netease/download/storage/TestToFileProxy;->access$1(Lcom/netease/download/storage/TestToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    :goto_1
    return-void

    .line 112
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/netease/download/storage/TestToFileProxy$1;->this$0:Lcom/netease/download/storage/TestToFileProxy;

    invoke-static {v3}, Lcom/netease/download/storage/TestToFileProxy;->access$1(Lcom/netease/download/storage/TestToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
