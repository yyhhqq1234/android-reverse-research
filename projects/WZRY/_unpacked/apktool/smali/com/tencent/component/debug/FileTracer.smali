.class public Lcom/tencent/component/debug/FileTracer;
.super Lcom/tencent/component/debug/Tracer;
.source "FileTracer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FLUSH:I = 0x400


# instance fields
.field private volatile bufferA:Lcom/tencent/component/data/SafeStringQueue;

.field private volatile bufferB:Lcom/tencent/component/data/SafeStringQueue;

.field private charBuffer:[C

.field private config:Lcom/tencent/component/debug/FileTracerConfig;

.field private currTraceFile:Ljava/io/File;

.field private fileWriter:Ljava/io/FileOutputStream;

.field private handler:Landroid/os/Handler;

.field private volatile isFlushing:Z

.field private volatile readBuffer:Lcom/tencent/component/data/SafeStringQueue;

.field private thread:Landroid/os/HandlerThread;

.field private volatile writeBuffer:Lcom/tencent/component/data/SafeStringQueue;


# direct methods
.method public constructor <init>(IZLcom/tencent/component/debug/TraceFormat;Lcom/tencent/component/debug/FileTracerConfig;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "enable"    # Z
    .param p3, "format"    # Lcom/tencent/component/debug/TraceFormat;
    .param p4, "config"    # Lcom/tencent/component/debug/FileTracerConfig;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/debug/Tracer;-><init>(IZLcom/tencent/component/debug/TraceFormat;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/debug/FileTracer;->isFlushing:Z

    .line 95
    invoke-virtual {p0, p4}, Lcom/tencent/component/debug/FileTracer;->setConfig(Lcom/tencent/component/debug/FileTracerConfig;)V

    .line 97
    new-instance v0, Lcom/tencent/component/data/SafeStringQueue;

    invoke-direct {v0}, Lcom/tencent/component/data/SafeStringQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->bufferA:Lcom/tencent/component/data/SafeStringQueue;

    .line 98
    new-instance v0, Lcom/tencent/component/data/SafeStringQueue;

    invoke-direct {v0}, Lcom/tencent/component/data/SafeStringQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->bufferB:Lcom/tencent/component/data/SafeStringQueue;

    .line 100
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->bufferA:Lcom/tencent/component/data/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->writeBuffer:Lcom/tencent/component/data/SafeStringQueue;

    .line 101
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->bufferB:Lcom/tencent/component/data/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->readBuffer:Lcom/tencent/component/data/SafeStringQueue;

    .line 103
    invoke-virtual {p4}, Lcom/tencent/component/debug/FileTracerConfig;->getMaxBufferSize()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->charBuffer:[C

    .line 106
    invoke-direct {p0}, Lcom/tencent/component/debug/FileTracer;->obtainFileWriter()Ljava/io/FileOutputStream;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p4}, Lcom/tencent/component/debug/FileTracerConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/component/debug/FileTracerConfig;->getPriority()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->thread:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/component/debug/FileTracer;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->handler:Landroid/os/Handler;

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/tencent/component/debug/FileTracer;->prepareNextFlush()V

    .line 123
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/component/debug/FileTracer$1;

    invoke-direct {v1, p0}, Lcom/tencent/component/debug/FileTracer$1;-><init>(Lcom/tencent/component/debug/FileTracer;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/tencent/component/debug/FileTracerConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/tencent/component/debug/FileTracerConfig;

    .prologue
    .line 75
    const/16 v0, 0x3f

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/component/debug/TraceFormat;->DEFAULT:Lcom/tencent/component/debug/TraceFormat;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/component/debug/FileTracer;-><init>(IZLcom/tencent/component/debug/TraceFormat;Lcom/tencent/component/debug/FileTracerConfig;)V

    .line 76
    return-void
.end method

.method private closeFileWriter()V
    .locals 2

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/debug/FileTracer;->fileWriter:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/tencent/component/debug/FileTracer;->fileWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 339
    iget-object v1, p0, Lcom/tencent/component/debug/FileTracer;->fileWriter:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private flushBuffer()V
    .locals 5

    .prologue
    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/debug/FileTracer;->thread:Landroid/os/HandlerThread;

    if-eq v3, v4, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-boolean v3, p0, Lcom/tencent/component/debug/FileTracer;->isFlushing:Z

    if-nez v3, :cond_0

    .line 230
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/component/debug/FileTracer;->isFlushing:Z

    .line 234
    const/4 v0, 0x0

    .line 237
    .local v0, "fileLock":Ljava/nio/channels/FileLock;
    invoke-direct {p0}, Lcom/tencent/component/debug/FileTracer;->swapBuffers()V

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/component/debug/FileTracer;->obtainFileWriter()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 243
    .local v1, "fos":Ljava/io/FileOutputStream;
    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    .line 248
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 250
    .local v2, "writer":Ljava/io/OutputStreamWriter;
    if-eqz v2, :cond_2

    .line 252
    iget-object v3, p0, Lcom/tencent/component/debug/FileTracer;->readBuffer:Lcom/tencent/component/data/SafeStringQueue;

    iget-object v4, p0, Lcom/tencent/component/debug/FileTracer;->charBuffer:[C

    invoke-virtual {v3, v2, v4}, Lcom/tencent/component/data/SafeStringQueue;->writeAndFlush(Ljava/io/Writer;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v2    # "writer":Ljava/io/OutputStreamWriter;
    :cond_2
    if-eqz v0, :cond_3

    .line 267
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/tencent/component/debug/FileTracer;->readBuffer:Lcom/tencent/component/data/SafeStringQueue;

    invoke-virtual {v3}, Lcom/tencent/component/data/SafeStringQueue;->clear()V

    .line 280
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/component/debug/FileTracer;->isFlushing:Z

    goto :goto_0

    .line 256
    :catch_0
    move-exception v3

    .line 263
    if-eqz v0, :cond_4

    .line 267
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 276
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/tencent/component/debug/FileTracer;->readBuffer:Lcom/tencent/component/data/SafeStringQueue;

    invoke-virtual {v3}, Lcom/tencent/component/data/SafeStringQueue;->clear()V

    goto :goto_2

    .line 263
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    .line 267
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 276
    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/tencent/component/debug/FileTracer;->readBuffer:Lcom/tencent/component/data/SafeStringQueue;

    invoke-virtual {v4}, Lcom/tencent/component/data/SafeStringQueue;->clear()V

    throw v3

    .line 269
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_4
.end method

.method private obtainFileWriter()Ljava/io/FileOutputStream;
    .locals 6

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 293
    .local v1, "forceChanged":Z
    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/component/debug/FileTracerConfig;->getCurrFile()Ljava/io/File;

    move-result-object v2

    .line 296
    .local v2, "newFile":Ljava/io/File;
    iget-object v3, p0, Lcom/tencent/component/debug/FileTracer;->currTraceFile:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/tencent/component/debug/FileTracer;->currTraceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/component/debug/FileTracer;->currTraceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    :cond_0
    const/4 v1, 0x1

    .line 305
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/tencent/component/debug/FileTracer;->currTraceFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 307
    :cond_2
    iput-object v2, p0, Lcom/tencent/component/debug/FileTracer;->currTraceFile:Ljava/io/File;

    .line 309
    invoke-direct {p0}, Lcom/tencent/component/debug/FileTracer;->closeFileWriter()V

    .line 313
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/tencent/component/debug/FileTracer;->currTraceFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v3, p0, Lcom/tencent/component/debug/FileTracer;->fileWriter:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_3
    iget-object v3, p0, Lcom/tencent/component/debug/FileTracer;->fileWriter:Ljava/io/FileOutputStream;

    :goto_0
    return-object v3

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private prepareNextFlush()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->handler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/component/debug/FileTracerConfig;->getFlushInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 212
    return-void
.end method

.method private swapBuffers()V
    .locals 2

    .prologue
    .line 356
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->writeBuffer:Lcom/tencent/component/data/SafeStringQueue;

    iget-object v1, p0, Lcom/tencent/component/debug/FileTracer;->bufferA:Lcom/tencent/component/data/SafeStringQueue;

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->bufferB:Lcom/tencent/component/data/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->writeBuffer:Lcom/tencent/component/data/SafeStringQueue;

    .line 361
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->bufferA:Lcom/tencent/component/data/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->readBuffer:Lcom/tencent/component/data/SafeStringQueue;

    .line 368
    :goto_0
    monitor-exit p0

    .line 369
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->bufferA:Lcom/tencent/component/data/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->writeBuffer:Lcom/tencent/component/data/SafeStringQueue;

    .line 366
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->bufferB:Lcom/tencent/component/data/SafeStringQueue;

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracer;->readBuffer:Lcom/tencent/component/data/SafeStringQueue;

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "level"    # I
    .param p2, "thread"    # Ljava/lang/Thread;
    .param p3, "time"    # J
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "msg"    # Ljava/lang/String;
    .param p7, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracer;->getTraceFormat()Lcom/tencent/component/debug/TraceFormat;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/component/debug/TraceFormat;->formatTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "trace":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/component/debug/FileTracer;->doTrace(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method protected doTrace(Ljava/lang/String;)V
    .locals 2
    .param p1, "formattedTrace"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->writeBuffer:Lcom/tencent/component/data/SafeStringQueue;

    invoke-virtual {v0, p1}, Lcom/tencent/component/data/SafeStringQueue;->addToBuffer(Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->writeBuffer:Lcom/tencent/component/data/SafeStringQueue;

    invoke-virtual {v0}, Lcom/tencent/component/data/SafeStringQueue;->getBufferSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/component/debug/FileTracerConfig;->getMaxBufferSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracer;->flush()V

    .line 183
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 142
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method

.method public getConfig()Lcom/tencent/component/debug/FileTracerConfig;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->config:Lcom/tencent/component/debug/FileTracerConfig;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 193
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/component/debug/FileTracer;->flushBuffer()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    invoke-direct {p0}, Lcom/tencent/component/debug/FileTracer;->prepareNextFlush()V

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    goto :goto_1

    .line 188
    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/tencent/component/debug/FileTracer;->closeFileWriter()V

    .line 162
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracer;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 163
    return-void
.end method

.method public setConfig(Lcom/tencent/component/debug/FileTracerConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/tencent/component/debug/FileTracerConfig;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracer;->config:Lcom/tencent/component/debug/FileTracerConfig;

    .line 390
    return-void
.end method

.method public setCurrTraceFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracer;->currTraceFile:Ljava/io/File;

    .line 327
    return-void
.end method
