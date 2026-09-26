.class public Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;
.super Landroid/os/Handler;
.source "DownloadListenerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/listener/DownloadListenerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadListenerHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InnerDownloadHandler"


# instance fields
.field data:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$2;

    invoke-direct {v1, p0}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$2;-><init>(Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    return-void
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 261
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    .line 262
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    :pswitch_0
    return-object v0

    .line 264
    :pswitch_1
    const-string v0, "\u4e0b\u8f7d\u6210\u529f"

    .line 265
    goto :goto_0

    .line 267
    :pswitch_2
    const-string v0, "\u8fde\u63a5\u9519\u8bef"

    .line 268
    goto :goto_0

    .line 270
    :pswitch_3
    const-string v0, "\u5927\u5c0f\u9a8c\u8bc1\u5931\u8d25"

    .line 271
    goto :goto_0

    .line 273
    :pswitch_4
    const-string v0, "MD5\u9a8c\u8bc1\u5931\u8d25"

    .line 274
    goto :goto_0

    .line 276
    :pswitch_5
    const-string v0, "\u5199\u5165\u6587\u4ef6\u5931\u8d25"

    .line 277
    goto :goto_0

    .line 279
    :pswitch_6
    const-string v0, "\u8bbe\u5907\u7a7a\u95f4\u4e0d\u8db3"

    .line 280
    goto :goto_0

    .line 282
    :pswitch_7
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    .line 283
    goto :goto_0

    .line 285
    :pswitch_8
    const-string v0, "\u4e0b\u8f7d\u88ab\u53d6\u6d88"

    .line 286
    goto :goto_0

    .line 288
    :pswitch_9
    const-string v0, "\u8bfb\u53d6\u5185\u5bb9\u8d85\u65f6"

    .line 289
    goto :goto_0

    .line 291
    :pswitch_a
    const-string v0, "\u65e0\u6548\u7684\u4f20\u5165\u53c2\u6570"

    .line 292
    goto :goto_0

    .line 294
    :pswitch_b
    const-string v0, "\u65e0\u6548\u7684\u57df\u540d\uff0c\u65e0\u6cd5\u89e3\u6790"

    .line 295
    goto :goto_0

    .line 297
    :pswitch_c
    const-string v0, "\u914d\u7f6e\u6587\u4ef6\u4e0b\u8f7d\u9519\u8bef"

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "pMsg"    # Landroid/os/Message;

    .prologue
    .line 242
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->access$2()Lcom/netease/download/listener/DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :pswitch_0
    const-string v0, "InnerDownloadHandler"

    const-string v1, "not exist this type of msg!"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_1
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->access$2()Lcom/netease/download/listener/DownloadListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/netease/download/listener/DownloadListener;->onProgress(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 252
    :pswitch_2
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->access$2()Lcom/netease/download/listener/DownloadListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/netease/download/listener/DownloadListener;->onFinish(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pFinishCode"    # I
    .param p2, "pSize"    # J
    .param p4, "pBytes"    # J
    .param p6, "pUrlSuffix"    # Ljava/lang/String;
    .param p7, "filePath"    # Ljava/lang/String;
    .param p8, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string v2, "finished"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    const-string v2, "size"

    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    const-string v2, "bytes"

    sget-wide v4, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 219
    const-string v2, "filename"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v2, "filepath"

    invoke-virtual {v1, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    if-eqz p1, :cond_0

    .line 222
    const-string v2, "error"

    invoke-virtual {p0, p1}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :cond_0
    const-string v2, "sessionid"

    invoke-virtual {v1, v2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized sendHasDownloadMag(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "size"    # J
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "part"    # I

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J

    add-long/2addr v0, p1

    sput-wide v0, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "size"    # J
    .param p3, "bytes"    # J
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    sget-wide v4, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J

    add-long/2addr v4, p3

    sput-wide v4, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    iget-object v4, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string v5, "size"

    invoke-virtual {v4, v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 122
    iget-object v4, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string v5, "bytes"

    sget-wide v6, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    iget-object v4, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string v5, "filename"

    invoke-virtual {v4, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v4, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string v5, "filepath"

    invoke-virtual {v4, v5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "0.000"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/16 v2, 0x0

    .line 128
    .local v2, "x":D
    const-string v1, "0"

    .line 129
    .local v1, "result":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    .line 130
    sget-wide v4, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J

    long-to-double v4, v4

    long-to-double v6, p1

    div-double v2, v4, v6

    .line 131
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    const-string v5, "progress"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "x":D
    :goto_0
    const/4 v4, 0x2

    :try_start_2
    iget-object v5, p0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->data:Lorg/json/JSONObject;

    invoke-virtual {p0, v4, v5}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 137
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$1;

    invoke-direct {v1, p0}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler$1;-><init>(Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    return-void
.end method
