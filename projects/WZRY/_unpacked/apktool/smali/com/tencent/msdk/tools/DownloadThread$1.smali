.class final Lcom/tencent/msdk/tools/DownloadThread$1;
.super Landroid/os/Handler;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/tools/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 179
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 180
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/tencent/msdk/tools/DownloadItem;

    invoke-direct {v1}, Lcom/tencent/msdk/tools/DownloadItem;-><init>()V

    .line 181
    .local v1, "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 184
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$100()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 186
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$100()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    check-cast v1, Lcom/tencent/msdk/tools/DownloadItem;

    .line 187
    .restart local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 188
    new-instance v2, Lcom/tencent/msdk/tools/DownloadThread;

    invoke-direct {v2, v1}, Lcom/tencent/msdk/tools/DownloadThread;-><init>(Lcom/tencent/msdk/tools/DownloadItem;)V

    .line 189
    .local v2, "tempDownloadThread":Lcom/tencent/msdk/tools/DownloadThread;
    invoke-static {v2}, Lcom/tencent/msdk/tools/DownloadThread;->access$300(Lcom/tencent/msdk/tools/DownloadThread;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    invoke-virtual {v2}, Lcom/tencent/msdk/tools/DownloadThread;->start()V

    .line 192
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v2    # "tempDownloadThread":Lcom/tencent/msdk/tools/DownloadThread;
    :cond_2
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    :goto_1
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 197
    :cond_3
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 199
    const-string v3, "no new task"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_4
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$400()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    const-string v3, "all task finished have been notified"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_5
    invoke-static {v4}, Lcom/tencent/msdk/tools/DownloadThread;->access$500(Z)V

    .line 206
    const-string v3, "all task finished"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :pswitch_1
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    check-cast v1, Lcom/tencent/msdk/tools/DownloadItem;

    .line 215
    .restart local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 219
    :cond_6
    iput v4, v0, Landroid/os/Message;->what:I

    .line 220
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/tools/DownloadThread$1;->sendMessage(Landroid/os/Message;)Z

    .line 221
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 224
    :pswitch_2
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 225
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    check-cast v1, Lcom/tencent/msdk/tools/DownloadItem;

    .line 226
    .restart local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 228
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 230
    :cond_7
    iput v4, v0, Landroid/os/Message;->what:I

    .line 231
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/tools/DownloadThread$1;->sendMessage(Landroid/os/Message;)Z

    .line 232
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
