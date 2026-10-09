.class public abstract Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/loopj/android/tgahttp/ResponseHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler$ResponderHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpRH"

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x0

.field public static final UTF8_BOM:Ljava/lang/String; = "\ufeff"


# instance fields
.field private TAG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private looper:Landroid/os/Looper;

.field private requestHeaders:[Lorg/apache/http/Header;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private usePoolThread:Z

.field private useSynchronousMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 105
    iput-object v1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 106
    iput-object v1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 124
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .end local p1    # "looper":Landroid/os/Looper;
    :cond_0
    iput-object p1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 127
    invoke-virtual {p0, v2}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "usePoolThread"    # Z

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 105
    iput-object v1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 106
    iput-object v1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 141
    invoke-virtual {p0, p1}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->getUsePoolThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 14
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v9, 0x0

    .line 488
    .local v9, "responseBody":[B
    if-eqz p1, :cond_4

    .line 489
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 490
    .local v7, "instream":Ljava/io/InputStream;
    if-eqz v7, :cond_4

    .line 491
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 492
    .local v2, "contentLength":J
    const-wide/32 v12, 0x7fffffff

    cmp-long v11, v2, v12

    if-lez v11, :cond_0

    .line 493
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP entity too large to be buffered in memory"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 495
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gtz v11, :cond_1

    const/16 v1, 0x1000

    .line 497
    .local v1, "buffersize":I
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v11, 0x1000

    :try_start_1
    new-array v10, v11, [B

    .line 500
    .local v10, "tmp":[B
    const-wide/16 v4, 0x0

    .line 503
    .local v4, "count":J
    :goto_1
    invoke-virtual {v7, v10}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "l":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-nez v11, :cond_3

    .line 504
    int-to-long v12, v8

    add-long/2addr v4, v12

    .line 505
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 506
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gtz v11, :cond_2

    const-wide/16 v12, 0x1

    :goto_2
    invoke-virtual {p0, v4, v5, v12, v13}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 509
    .end local v4    # "count":J
    .end local v8    # "l":I
    .end local v10    # "tmp":[B
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-static {v7}, Lcom/loopj/android/tgahttp/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 510
    invoke-static {p1}, Lcom/loopj/android/tgahttp/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 513
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v6

    .line 514
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 515
    new-instance v11, Ljava/io/IOException;

    const-string v12, "File too large to fit into available memory"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 495
    .end local v1    # "buffersize":I
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    long-to-int v1, v2

    goto :goto_0

    .restart local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "buffersize":I
    .restart local v4    # "count":J
    .restart local v8    # "l":I
    .restart local v10    # "tmp":[B
    :cond_2
    move-wide v12, v2

    .line 506
    goto :goto_2

    .line 509
    :cond_3
    :try_start_3
    invoke-static {v7}, Lcom/loopj/android/tgahttp/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 510
    invoke-static {p1}, Lcom/loopj/android/tgahttp/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    .line 512
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 519
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "buffersize":I
    .end local v2    # "contentLength":J
    .end local v4    # "count":J
    .end local v7    # "instream":Ljava/io/InputStream;
    .end local v8    # "l":I
    .end local v10    # "tmp":[B
    :cond_4
    return-object v9
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUsePoolThread()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->usePoolThread:Z

    return v0
.end method

.method public getUseSynchronousMode()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->useSynchronousMode:Z

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 368
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v6, :pswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 371
    :pswitch_0
    :try_start_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 372
    .local v4, "response":[Ljava/lang/Object;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lt v6, v9, :cond_0

    .line 373
    const/4 v6, 0x0

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v6, 0x1

    aget-object v6, v4, v6

    check-cast v6, [Lorg/apache/http/Header;

    check-cast v6, [Lorg/apache/http/Header;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {p0, v8, v6, v7}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 377
    .end local v4    # "response":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "AsyncHttpResponseHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 419
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 420
    .local v3, "error":Ljava/lang/Throwable;
    invoke-virtual {p0, v3}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->onUserException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 375
    .end local v3    # "error":Ljava/lang/Throwable;
    .restart local v4    # "response":[Ljava/lang/Object;
    :cond_0
    :try_start_3
    sget-object v6, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v7, "AsyncHttpRH"

    const-string v8, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-interface {v6, v7, v8}, Lcom/loopj/android/tgahttp/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 382
    .end local v4    # "response":[Ljava/lang/Object;
    :pswitch_1
    :try_start_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 383
    .restart local v4    # "response":[Ljava/lang/Object;
    if-eqz v4, :cond_1

    array-length v6, v4

    const/4 v7, 0x4

    if-lt v6, v7, :cond_1

    .line 384
    const/4 v6, 0x0

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v6, 0x1

    aget-object v6, v4, v6

    check-cast v6, [Lorg/apache/http/Header;

    check-cast v6, [Lorg/apache/http/Header;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    check-cast v7, [B

    check-cast v7, [B

    const/4 v8, 0x3

    aget-object v8, v4, v8

    check-cast v8, Ljava/lang/Throwable;

    invoke-virtual {p0, v9, v6, v7, v8}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto/16 :goto_0

    .line 386
    :cond_1
    sget-object v6, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v7, "AsyncHttpRH"

    const-string v8, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-interface {v6, v7, v8}, Lcom/loopj/android/tgahttp/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    .end local v4    # "response":[Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->onStart()V

    goto/16 :goto_0

    .line 393
    :pswitch_3
    invoke-virtual {p0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->onFinish()V

    goto/16 :goto_0

    .line 396
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 397
    .restart local v4    # "response":[Ljava/lang/Object;
    if-eqz v4, :cond_2

    array-length v6, v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-lt v6, v8, :cond_2

    .line 399
    const/4 v6, 0x0

    :try_start_5
    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v6, 0x1

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v8, v9, v6, v7}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->onProgress(JJ)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 400
    :catch_2
    move-exception v5

    .line 401
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_6
    sget-object v6, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v7, "AsyncHttpRH"

    const-string v8, "custom onProgress contains an error"

    invoke-interface {v6, v7, v8, v5}, Lcom/loopj/android/tgahttp/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 404
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    sget-object v6, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v7, "AsyncHttpRH"

    const-string v8, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-interface {v6, v7, v8}, Lcom/loopj/android/tgahttp/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .end local v4    # "response":[Ljava/lang/Object;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 409
    .restart local v4    # "response":[Ljava/lang/Object;
    if-eqz v4, :cond_3

    array-length v6, v4

    if-ne v6, v7, :cond_3

    .line 410
    const/4 v6, 0x0

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_0

    .line 412
    :cond_3
    sget-object v6, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v7, "AsyncHttpRH"

    const-string v8, "RETRY_MESSAGE didn\'t get enough params"

    invoke-interface {v6, v7, v8}, Lcom/loopj/android/tgahttp/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    .end local v4    # "response":[Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->onCancel()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "responseMessageId"    # I
    .param p2, "responseMessageData"    # Ljava/lang/Object;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 320
    sget-object v0, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Request got cancelled"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/tgahttp/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public onPostProcessResponse(Lcom/loopj/android/tgahttp/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "instance"    # Lcom/loopj/android/tgahttp/ResponseHandlerInterface;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 289
    return-void
.end method

.method public onPreProcessResponse(Lcom/loopj/android/tgahttp/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "instance"    # Lcom/loopj/android/tgahttp/ResponseHandlerInterface;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 284
    return-void
.end method

.method public onProgress(JJ)V
    .locals 11
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 263
    sget-object v2, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v3, "AsyncHttpRH"

    const-string v4, "Progress %d from %d (%2.0f%%)"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v6, 0x2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    long-to-double v0, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v8

    long-to-double v8, p3

    div-double/2addr v0, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v8

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/loopj/android/tgahttp/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void

    .line 263
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public onRetry(I)V
    .locals 6
    .param p1, "retryNo"    # I

    .prologue
    .line 316
    sget-object v0, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Request retry no. %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/tgahttp/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 324
    sget-object v0, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "User-space exception detected!"

    invoke-interface {v0, v1, v2, p1}, Lcom/loopj/android/tgahttp/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 439
    if-eqz p1, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 442
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final sendCancelMessage()V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 361
    return-void
.end method

.method public final sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x1

    .line 340
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 341
    return-void
.end method

.method public final sendFinishMessage()V
    .locals 2

    .prologue
    .line 350
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 351
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 426
    :cond_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lcom/loopj/android/tgahttp/Utils;->asserts(ZLjava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 428
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final sendProgressMessage(JJ)V
    .locals 5
    .param p1, "bytesWritten"    # J
    .param p3, "bytesTotal"    # J

    .prologue
    .line 330
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 331
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 467
    .local v1, "status":Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->getResponseData(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 469
    .local v0, "responseBody":[B
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 471
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 477
    .end local v0    # "responseBody":[B
    .end local v1    # "status":Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    return-void

    .line 473
    .restart local v0    # "responseBody":[B
    .restart local v1    # "status":Lorg/apache/http/StatusLine;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method

.method public final sendRetryMessage(I)V
    .locals 4
    .param p1, "retryNo"    # I

    .prologue
    .line 355
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 356
    return-void
.end method

.method public final sendStartMessage()V
    .locals 2

    .prologue
    .line 345
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 346
    return-void
.end method

.method public final sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 335
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 336
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setRequestHeaders([Lorg/apache/http/Header;)V
    .locals 0
    .param p1, "requestHeaders"    # [Lorg/apache/http/Header;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 181
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .locals 0
    .param p1, "requestURI"    # Ljava/net/URI;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 176
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/Object;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->TAG:Ljava/lang/ref/WeakReference;

    .line 156
    return-void
.end method

.method public setUsePoolThread(Z)V
    .locals 1
    .param p1, "pool"    # Z

    .prologue
    const/4 v0, 0x0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 236
    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 239
    :cond_0
    iput-boolean p1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->usePoolThread:Z

    .line 240
    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .locals 3
    .param p1, "sync"    # Z

    .prologue
    .line 208
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 209
    const/4 p1, 0x1

    .line 210
    sget-object v0, Lcom/loopj/android/tgahttp/AsyncHttpClient;->log:Lcom/loopj/android/tgahttp/LogInterface;

    const-string v1, "AsyncHttpRH"

    const-string v2, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/tgahttp/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 216
    new-instance v0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler$ResponderHandler;

    iget-object v1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler$ResponderHandler;-><init>(Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 222
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->useSynchronousMode:Z

    .line 223
    return-void

    .line 217
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    goto :goto_0
.end method
