.class public Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;
.super Ljava/lang/Object;
.source "PipelineHttpSession.java"


# static fields
.field private static final EACH_PART_SIZE:I = 0x20000

.field private static final LOGTAG:Ljava/lang/String;

.field private static isStop:Z

.field private static stopTime:J


# instance fields
.field private MD5:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private callback:Lcom/netease/cloud/nos/android/core/Callback;

.field private chunkSize:I

.field private client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

.field private completeCondition:Ljava/lang/Object;

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private fileParam:Ljava/lang/Object;

.field private volatile hasBreakQuery:Z

.field private volatile isComplete:Z

.field private isHttps:Z

.field private volatile isSuccess:I

.field private volatile lastResponseTime:J

.field private meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

.field private volatile respNum:J

.field private volatile responseOffset:J

.field private volatile rs:Lcom/netease/cloud/nos/android/http/HttpResult;

.field private volatile sendOffset:J

.field private timeout:I

.field private token:Ljava/lang/String;

.field private totalLength:J

.field private volatile upCancelled:Z

.field private volatile uploadContext:Ljava/lang/String;

.field private uploadTask:Lcom/netease/cloud/nos/android/core/UploadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->stopTime:J

    .line 37
    const-class v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;ZLcom/netease/cloud/nos/android/core/WanNOSObject;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ILcom/netease/cloud/nos/android/core/UploadTask;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileParam"    # Ljava/lang/Object;
    .param p5, "file"    # Ljava/io/File;
    .param p6, "uploadContext"    # Ljava/lang/String;
    .param p7, "isHttps"    # Z
    .param p8, "meta"    # Lcom/netease/cloud/nos/android/core/WanNOSObject;
    .param p9, "MD5"    # Ljava/lang/String;
    .param p10, "callback"    # Lcom/netease/cloud/nos/android/core/Callback;
    .param p11, "chunkSize"    # I
    .param p12, "uploadTask"    # Lcom/netease/cloud/nos/android/core/UploadTask;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileName:Ljava/lang/String;

    .line 41
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->token:Ljava/lang/String;

    .line 42
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    .line 43
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    .line 45
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    .line 46
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->file:Ljava/io/File;

    .line 47
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    .line 49
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    .line 50
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    .line 51
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 52
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    .line 53
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    .line 54
    const/4 v3, 0x0

    iput v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    .line 55
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    .line 56
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 57
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    .line 58
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 60
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadTask:Lcom/netease/cloud/nos/android/core/UploadTask;

    .line 61
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    .line 63
    const/high16 v3, 0x20000

    iput v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->chunkSize:I

    .line 64
    const/16 v3, 0x7530

    iput v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    .line 65
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isHttps:Z

    .line 66
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->bucketName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileName:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    .line 77
    iput-object p4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileParam:Ljava/lang/Object;

    .line 78
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    .line 79
    iput-object p5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->file:Ljava/io/File;

    .line 81
    iput-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->token:Ljava/lang/String;

    .line 82
    iput-object p8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    .line 83
    iput-boolean p7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isHttps:Z

    .line 84
    iput-object p9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadTask:Lcom/netease/cloud/nos/android/core/UploadTask;

    .line 87
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getSoTimeout()I

    move-result v3

    iput v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    .line 88
    move/from16 v0, p11

    iput v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->chunkSize:I

    .line 90
    if-eqz p7, :cond_0

    const/16 v2, 0x1bb

    .line 91
    .local v2, "port":I
    :goto_0
    new-instance v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-direct {v3, v2, p7, p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;-><init>(IZLcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;)V

    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    .line 92
    return-void

    .line 90
    .end local v2    # "port":I
    :cond_0
    const/16 v2, 0x50

    goto :goto_0
.end method

.method private buildBreakRequest(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    .line 357
    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    .line 358
    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    .line 356
    invoke-direct {v0, v1, v2, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 360
    .local v0, "request":Lio/netty/handler/codec/http/HttpRequest;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    const-string v2, "Host"

    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    iget-object v3, v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 362
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    const-string v2, "x-nos-token"

    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 364
    return-object v0
.end method

.method private buildUploadRequest(Ljava/io/InputStream;ILjava/lang/String;)Lio/netty/handler/codec/http/DefaultFullHttpRequest;
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "postUrl"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v1, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    sget-object v2, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v3, Lio/netty/handler/codec/http/HttpMethod;->POST:Lio/netty/handler/codec/http/HttpMethod;

    invoke-direct {v1, v2, v3, p3}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 395
    .local v1, "request":Lio/netty/handler/codec/http/DefaultFullHttpRequest;
    invoke-virtual {v1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    const-string v3, "Host"

    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    iget-object v4, v4, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    .line 397
    const-string v3, "Content-Length"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 399
    invoke-virtual {v1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    const-string v3, "x-nos-token"

    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 400
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    invoke-virtual {v1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    const-string v3, "Content-MD5"

    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    if-eqz v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/Util;->pipeAddHeaders(Lio/netty/handler/codec/http/DefaultFullHttpRequest;Lcom/netease/cloud/nos/android/core/WanNOSObject;)V

    .line 408
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v1    # "request":Lio/netty/handler/codec/http/DefaultFullHttpRequest;
    :goto_0
    return-object v1

    .line 409
    .restart local v1    # "request":Lio/netty/handler/codec/http/DefaultFullHttpRequest;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-virtual {p0, v2, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 414
    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to read file, readlength:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 415
    const-string v4, ", totalLength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handlerComplete(Lcom/netease/cloud/nos/android/http/HttpResult;)V
    .locals 2
    .param p1, "rs"    # Lcom/netease/cloud/nos/android/http/HttpResult;

    .prologue
    .line 570
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline http post Complete"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 572
    return-void
.end method

.method private handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V
    .locals 3
    .param p1, "rs"    # Lcom/netease/cloud/nos/android/http/HttpResult;
    .param p2, "errCode"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 576
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerError cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->channelClose()V

    .line 578
    invoke-virtual {p0, p2, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 579
    return-void
.end method

.method public static isStop()Z
    .locals 4

    .prologue
    .line 639
    sget-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->stopTime:J

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getPipelineFailoverPeriod()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 641
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    .line 644
    :cond_0
    sget-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    return v0
.end method

.method private oneUpload(Ljava/lang/String;Ljava/io/FileInputStream;)J
    .locals 18
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v12, "pipeline one upload start"

    invoke-static {v9, v12}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    .line 206
    const/16 v9, 0xe

    move-object/from16 v0, p0

    iput v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    .line 207
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    .line 208
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 209
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    .line 210
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 213
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connect(Ljava/lang/String;)Lio/netty/channel/Channel;

    move-result-object v9

    if-nez v9, :cond_0

    .line 214
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "failed to connect uploadServer:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v9, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v12, 0x384

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const/4 v14, 0x0

    invoke-direct {v9, v12, v13, v14}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 216
    const-wide/16 v10, 0x0

    .line 321
    :goto_0
    return-wide v10

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz v9, :cond_1

    .line 221
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 224
    :cond_1
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "uploadContext:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uploadContextExist:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContextExist()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContextExist()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->breakQuery()V

    .line 229
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    if-nez v9, :cond_3

    .line 230
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 235
    :cond_2
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    .line 239
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz v9, :cond_4

    .line 240
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 243
    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 244
    .local v2, "breakQueryOffset":J
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v9, :cond_5

    .line 245
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    .line 247
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 248
    .local v7, "fc":Ljava/nio/channels/FileChannel;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    invoke-virtual {v7, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 251
    .end local v7    # "fc":Ljava/nio/channels/FileChannel;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 252
    const/4 v5, 0x0

    .line 253
    .local v5, "count":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v9, v12, v14

    if-ltz v9, :cond_7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-eqz v9, :cond_7

    .line 316
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->waitForComplete()V

    .line 318
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    cmp-long v9, v12, v2

    if-lez v9, :cond_d

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    sub-long v10, v12, v2

    .line 319
    .local v10, "sendSize":J
    :goto_3
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "pipeline one upload isSuccess:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " sendSize:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 255
    .end local v10    # "sendSize":J
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-nez v9, :cond_6

    .line 260
    add-int/lit8 v5, v5, 0x1

    .line 261
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->chunkSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13, v9}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendPost(Ljava/io/FileInputStream;JI)Lio/netty/channel/ChannelFuture;

    move-result-object v4

    .line 262
    .local v4, "cf":Lio/netty/channel/ChannelFuture;
    if-eqz v4, :cond_6

    .line 268
    :try_start_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v12, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v12, v13, v9}, Lio/netty/channel/ChannelFuture;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-nez v9, :cond_6

    .line 281
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "pipeline one block upload isDone:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v0, v9

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    const-wide/16 v16, 0x320

    add-long v14, v14, v16

    cmp-long v9, v12, v14

    if-lez v9, :cond_9

    .line 285
    new-instance v8, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v9, 0x383

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const/4 v13, 0x0

    invoke-direct {v8, v9, v12, v13}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 286
    .local v8, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v9, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "upload timeout for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms, close channel"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v12}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 269
    .end local v8    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :catch_0
    move-exception v6

    .line 270
    .local v6, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-nez v9, :cond_8

    .line 271
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 273
    :cond_8
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "pipeline upload is interrupted:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 290
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_9
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-eqz v9, :cond_6

    .line 295
    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v9

    invoke-interface {v9}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v9

    if-nez v9, :cond_a

    .line 296
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "channel is not wirtable, sendCount:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->waitForWriteDone(Lio/netty/channel/ChannelFuture;I)V

    .line 300
    :cond_a
    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v9

    invoke-interface {v9}, Lio/netty/channel/Channel;->isActive()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 302
    const/4 v9, 0x1

    if-ne v9, v5, :cond_b

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v9, v12, v14

    if-gez v9, :cond_b

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->waitForContext()V

    .line 306
    :cond_b
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "pipeline http post success, sendOffset: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", totalLength: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", this is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 308
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " block uploaded"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 306
    invoke-static {v9, v12}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 310
    :cond_c
    new-instance v8, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v9, 0x31f

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const/4 v13, 0x0

    invoke-direct {v8, v9, v12, v13}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 311
    .restart local v8    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v9, 0x1

    const-string v12, "Channel is not active"

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v12}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 318
    .end local v4    # "cf":Lio/netty/channel/ChannelFuture;
    .end local v8    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_d
    const-wide/16 v10, 0x0

    goto/16 :goto_3
.end method

.method public static reStart()V
    .locals 2

    .prologue
    .line 648
    sget-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    .line 650
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline restart"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 633
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->stopTime:J

    .line 635
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline stopped for a while"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method private uploadContextExist()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForBreakResp()V
    .locals 10

    .prologue
    .line 329
    :try_start_0
    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_1

    .line 330
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 332
    :goto_0
    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_0

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    .line 332
    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 330
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_2

    .line 345
    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v3, "no breakQuery response"

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x383

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 348
    .local v1, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 352
    .end local v1    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    return-void

    .line 334
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    iget v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private waitForComplete()V
    .locals 10

    .prologue
    .line 131
    :try_start_0
    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_1

    .line 132
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 134
    :goto_0
    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 132
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_2

    .line 147
    new-instance v1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x383

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 148
    .local v1, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload timeout for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms, close channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 151
    .end local v1    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    return-void

    .line 135
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    iget v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private waitForContext()V
    .locals 10

    .prologue
    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 105
    :goto_0
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContextExist()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    .line 105
    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    .line 103
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_1
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContextExist()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_1

    .line 117
    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v3, "no uploadContext received"

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x383

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 120
    .local v1, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 124
    .end local v1    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    return-void

    .line 107
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    iget v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public breakQuery()V
    .locals 12

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 372
    .local v0, "breakQueryUrl":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isHttps:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "https://"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    iget-object v10, v10, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":443"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    iget-object v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->bucketName:Ljava/lang/String;

    iget-object v10, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileName:Ljava/lang/String;

    iget-object v11, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lcom/netease/cloud/nos/android/utils/Util;->pipeBuildQueryUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 372
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 380
    sget-object v8, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "break query upload server url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 382
    .local v6, "tStart":J
    iget-object v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->buildBreakRequest(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->get(Lio/netty/handler/codec/http/HttpRequest;)V

    .line 383
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->waitForBreakResp()V

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 386
    .local v4, "tEnd":J
    sub-long v2, v4, v6

    .line 387
    .local v2, "tDuration":J
    sget-object v8, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "breakQuery duration: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v2    # "tDuration":J
    .end local v4    # "tEnd":J
    .end local v6    # "tStart":J
    :goto_1
    return-void

    .line 372
    :cond_0
    :try_start_1
    const-string v8, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v9, "build breakQueryUrl exception"

    invoke-static {v8, v9, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-instance v8, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v9, 0x31f

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v8, v9, v10, v1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    iput-object v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    goto :goto_1
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 480
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline uploading is canceling"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    .line 483
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v1, 0xc

    const-string v2, "pipeline upload is cancelled"

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 486
    :cond_0
    return-void
.end method

.method public getUploadContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    return-object v0
.end method

.method public handleBreakInfo(ILorg/json/JSONObject;)V
    .locals 12
    .param p1, "httpRespCode"    # I
    .param p2, "nosInfo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v11, 0x2bb

    const/4 v10, 0x5

    const-wide/16 v8, 0x0

    .line 504
    const/16 v3, 0x194

    if-ne p1, v3, :cond_2

    .line 505
    iput-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    .line 523
    :goto_0
    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    :cond_0
    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_6

    .line 524
    :cond_1
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 525
    new-instance v4, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "offset is invalid in server side, with offset: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 526
    const-string v6, ", file length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 525
    invoke-direct {v4, v5}, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-direct {v0, v11, v3, v4}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 527
    .local v0, "breakRs":Lcom/netease/cloud/nos/android/http/HttpResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP Response Code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v10, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 528
    iput-wide v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 537
    .end local v0    # "breakRs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_1
    return-void

    .line 506
    :cond_2
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_5

    .line 507
    if-eqz p2, :cond_3

    const-string v3, "offset"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 509
    :cond_3
    new-instance v1, Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 510
    new-instance v3, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;

    const-string v4, "offset is missing in breakQuery response"

    invoke-direct {v3, v4}, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-direct {v1, v11, p2, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 511
    .local v1, "offsetRs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const-string v3, "no offset in breakQuery response"

    invoke-direct {p0, v1, v10, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 512
    iput-wide v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    goto :goto_1

    .line 516
    .end local v1    # "offsetRs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_4
    const-string v3, "offset"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    goto :goto_0

    .line 518
    :cond_5
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-direct {v2, p1, p2, v4}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 519
    .local v2, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTP Response Code:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto :goto_1

    .line 532
    .end local v2    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_6
    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v4

    .line 533
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    .line 534
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 532
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleOffset(ILcom/netease/cloud/nos/android/http/HttpResult;)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "rs"    # Lcom/netease/cloud/nos/android/http/HttpResult;

    .prologue
    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 543
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    .line 545
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 547
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 548
    invoke-direct {p0, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerComplete(Lcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadTask:Lcom/netease/cloud/nos/android/core/UploadTask;

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/netease/cloud/nos/android/core/UploadTask;->getUploadProgress(JJ)V

    .line 563
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pipeline http response, offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 565
    const-string v2, ", this is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 549
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    if-gez p1, :cond_2

    .line 551
    :cond_1
    const/16 v0, 0x9

    const-string v1, "offset error"

    invoke-direct {p0, p2, v0, v1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_2
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 553
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pipeline backoff, offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    const-string v2, ", current responseOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v0, 0xd

    const-string v1, "pipeline offset backoff"

    invoke-direct {p0, p2, v0, v1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_3
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    goto :goto_0
.end method

.method public hasBreakQuery()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    return v0
.end method

.method public isUpCancelled()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    return v0
.end method

.method public sendPost(Ljava/io/FileInputStream;JI)Lio/netty/channel/ChannelFuture;
    .locals 14
    .param p1, "inputStream"    # Ljava/io/FileInputStream;
    .param p2, "offset"    # J
    .param p4, "part_size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    iget-boolean v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-eqz v3, :cond_1

    .line 425
    sget-object v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "iscomplete offset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", totalLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v2, 0x0

    .line 458
    :cond_0
    :goto_0
    return-object v2

    .line 429
    :cond_1
    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    .line 430
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-direct {p0, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerComplete(Lcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 431
    sget-object v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendPost complete offset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= totalLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v2, 0x0

    goto :goto_0

    .line 433
    :cond_2
    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v3, p2, v4

    if-lez v3, :cond_3

    .line 434
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-virtual {p0, v3, v4}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 435
    sget-object v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendPost Error offset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", totalLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v2, 0x0

    goto :goto_0

    .line 439
    :cond_3
    move/from16 v0, p4

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    sub-long v6, v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v9, v4

    .line 440
    .local v9, "length":I
    sget-object v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "upload block size is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", part_size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    int-to-long v4, v9

    add-long v4, v4, p2

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    .line 443
    const/4 v8, 0x0

    .line 444
    .local v8, "isLast":Z
    int-to-long v4, v9

    add-long v4, v4, p2

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 445
    const/4 v8, 0x1

    .line 448
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isHttps:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    iget-object v4, v4, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":443"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->bucketName:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    move-wide/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lcom/netease/cloud/nos/android/utils/Util;->pipeBuildPostDataUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 450
    .local v11, "url":Ljava/lang/String;
    sget-object v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "post data url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-direct {p0, p1, v9, v11}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->buildUploadRequest(Ljava/io/InputStream;ILjava/lang/String;)Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->post(Lio/netty/handler/codec/http/DefaultFullHttpRequest;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    .line 453
    .local v2, "cf":Lio/netty/channel/ChannelFuture;
    if-nez v2, :cond_0

    .line 454
    new-instance v10, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v3, 0x31f

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v10, v3, v4, v5}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 455
    .local v10, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v3, 0x2

    const-string v4, "pipeline exception: ChannelFuture is null"

    invoke-direct {p0, v10, v3, v4}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 448
    .end local v2    # "cf":Lio/netty/channel/ChannelFuture;
    .end local v10    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .end local v11    # "url":Ljava/lang/String;
    :cond_5
    const-string v3, ""

    goto :goto_1
.end method

.method public setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V
    .locals 2
    .param p1, "isSuccess"    # I
    .param p2, "rs"    # Lcom/netease/cloud/nos/android/http/HttpResult;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->reset()V

    .line 464
    iget v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 465
    iput p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    if-nez v0, :cond_1

    .line 469
    iput-object p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    .line 474
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 472
    monitor-exit v1

    .line 477
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUploadContext(Ljava/lang/String;)V
    .locals 3
    .param p1, "newUploadContext"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/netease/cloud/nos/android/core/Callback;->onUploadContextCreate(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    iput-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 492
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received new uploadContext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    return-void

    .line 492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public upload(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 20
    .param p1, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .local v2, "count":J
    const-wide/16 v12, 0x0

    .line 157
    .local v12, "totalSize":J
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->file:Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v6, "inputStream":Ljava/io/FileInputStream;
    sget-object v14, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "start pipeline upload to uploadServer ip: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 162
    .local v10, "tStart":J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz v14, :cond_2

    .line 186
    :cond_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v4, v14, v10

    .line 188
    .local v4, "duration":J
    long-to-double v14, v12

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v16

    long-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v16, v16, v18

    div-double v14, v14, v16

    double-to-float v7, v14

    .line 190
    .local v7, "speed":F
    sget-object v14, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "pipeline upload isSuccess:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " duration:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 191
    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " totalSize:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " speed:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "KB/S"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 190
    invoke-static {v14, v15}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    if-nez v14, :cond_1

    .line 194
    new-instance v15, Lcom/netease/cloud/nos/android/http/HttpResult;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    if-nez v14, :cond_4

    const/16 v14, 0xc8

    :goto_1
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v14, v0, v1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 197
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    return-object v14

    .line 163
    .end local v4    # "duration":J
    .end local v7    # "speed":F
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->oneUpload(Ljava/lang/String;Ljava/io/FileInputStream;)J

    move-result-wide v8

    .line 164
    .local v8, "sendSize":J
    add-long/2addr v12, v8

    .line 166
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-nez v14, :cond_0

    .line 170
    move-object/from16 v0, p0

    iget v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    const/16 v15, 0xd

    if-eq v14, v15, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 173
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    .line 181
    :cond_3
    sget-object v14, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "retry to upload for reason:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 182
    const-string v16, " count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", current respNum:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 181
    invoke-static {v14, v15}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-wide/16 v14, 0x1

    add-long/2addr v2, v14

    goto/16 :goto_0

    .line 194
    .end local v8    # "sendSize":J
    .restart local v4    # "duration":J
    .restart local v7    # "speed":F
    :cond_4
    const/16 v14, 0x31f

    goto :goto_1
.end method

.method public waitForWriteDone(Lio/netty/channel/ChannelFuture;I)V
    .locals 10
    .param p1, "cf"    # Lio/netty/channel/ChannelFuture;
    .param p2, "count"    # I

    .prologue
    .line 594
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_1

    .line 595
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 597
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_0

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    .line 597
    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 595
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    :cond_1
    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v2, :cond_2

    .line 610
    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v3, "wait for channel writable long time"

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x31f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 613
    .local v1, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v2, 0x2

    const-string v3, "pipeline exception: channel is not writable"

    invoke-direct {p0, v1, v2, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 617
    .end local v1    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    return-void

    .line 599
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    iget v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 595
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeDone()V
    .locals 2

    .prologue
    .line 622
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v1

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 622
    monitor-exit v1

    .line 626
    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
