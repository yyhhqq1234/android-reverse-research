.class Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$1;
.super Ljava/lang/Object;
.source "DownloadListenerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;


# direct methods
.method constructor <init>(Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$1;->this$1:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 148
    const-wide/16 v4, 0x0

    .line 149
    .local v4, "size":J
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "allSize":J
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v2, "data":Lorg/json/JSONObject;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->access$0()Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, -0x64

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 171
    :goto_1
    return-void

    .line 155
    :cond_0
    add-long/2addr v0, v4

    .line 158
    :try_start_1
    const-string v6, "bytes"

    invoke-virtual {v2, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 159
    const-string v6, "filename"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v6, "md5"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->access$1()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$1;->this$1:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v2}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    goto :goto_2
.end method
