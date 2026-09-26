.class public Lcom/netease/cloud/nos/android/core/UploadTask;
.super Landroid/os/AsyncTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/netease/cloud/nos/android/core/CallRet;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private MD5:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private callback:Lcom/netease/cloud/nos/android/core/Callback;

.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private fileParam:Ljava/lang/Object;

.field protected volatile get:Lorg/apache/http/client/methods/HttpGet;

.field private isHttps:Z

.field private item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

.field private meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

.field private offset:J

.field protected volatile post:Lorg/apache/http/client/methods/HttpPost;

.field private token:Ljava/lang/String;

.field private volatile upCancelled:Z

.field private uploadContext:Ljava/lang/String;

.field protected volatile uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/netease/cloud/nos/android/core/UploadTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ZLcom/netease/cloud/nos/android/core/WanNOSObject;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uploadToken"    # Ljava/lang/String;
    .param p3, "bucketName"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "file"    # Ljava/io/File;
    .param p6, "fileParam"    # Ljava/lang/Object;
    .param p7, "uploadContext"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/netease/cloud/nos/android/core/Callback;
    .param p9, "isHttps"    # Z
    .param p10, "meta"    # Lcom/netease/cloud/nos/android/core/WanNOSObject;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    .line 44
    iput-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .line 56
    iput-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileName:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    .line 69
    iput-object p6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    .line 70
    iput-object p7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 71
    iput-object p8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    .line 72
    iput-boolean p9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    .line 73
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;-><init>()V

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .line 74
    iput-object p10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    .line 75
    invoke-virtual {p10}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMd5FileMaxSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 80
    invoke-static {p5}, Lcom/netease/cloud/nos/android/utils/FileDigest;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method private abort()V
    .locals 3

    .prologue
    .line 614
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v1, :cond_0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_1

    .line 624
    :try_start_1
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 629
    :cond_1
    :goto_1
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "get method abort exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 625
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 626
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "post method abort exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private buildHttpEntity([B)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "isa"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 592
    .local v0, "en":Lorg/apache/http/entity/ByteArrayEntity;
    return-object v0
.end method

.method private createCancelCallRet()Lcom/netease/cloud/nos/android/core/CallRet;
    .locals 8

    .prologue
    .line 632
    new-instance v0, Lcom/netease/cloud/nos/android/core/CallRet;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/16 v3, 0x258

    const-string v4, ""

    .line 633
    const-string v5, ""

    const-string v6, "uploading is cancelled"

    const/4 v7, 0x0

    .line 632
    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private doUpload(I)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 21
    .param p1, "chunkSize"    # I

    .prologue
    .line 205
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 206
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isPipelineEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-static {}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    const/16 v17, 0x1

    .line 208
    .local v17, "isPipelineEnabled":Z
    :goto_0
    const/16 v16, 0x0

    .line 210
    .local v16, "isFallback":Z
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file parameters: ContentMD5="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getContentMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    const-string v4, ", realMD5="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ContentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 212
    const-string v4, ", chunkSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move/from16 v0, p1

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 216
    new-instance v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    .line 217
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    move/from16 v13, p1

    move-object/from16 v14, p0

    invoke-direct/range {v2 .. v14}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;ZLcom/netease/cloud/nos/android/core/WanNOSObject;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ILcom/netease/cloud/nos/android/core/UploadTask;)V

    .line 216
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/netease/cloud/nos/android/core/UploadTask;->pipeUpload(Landroid/content/Context;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v19

    .line 220
    .local v19, "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->getUploadContext()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploadType(I)V

    .line 222
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v2, :cond_1

    .line 223
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "pipeline upload is cancelled, Don\'t fall back"

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v19    # "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_1
    return-object v19

    .line 205
    .end local v16    # "isFallback":Z
    .end local v17    # "isPipelineEnabled":Z
    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 227
    .restart local v16    # "isFallback":Z
    .restart local v17    # "isPipelineEnabled":Z
    .restart local v19    # "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v20

    .line 228
    .local v20, "result":I
    const/16 v2, 0xc8

    move/from16 v0, v20

    if-eq v0, v2, :cond_2

    .line 229
    const/16 v2, 0x193

    move/from16 v0, v20

    if-eq v0, v2, :cond_2

    .line 230
    const/16 v2, 0x208

    move/from16 v0, v20

    if-eq v0, v2, :cond_2

    .line 231
    const/16 v2, 0x2bb

    move/from16 v0, v20

    if-eq v0, v2, :cond_2

    .line 232
    const/16 v2, 0x1f4

    move/from16 v0, v20

    if-eq v0, v2, :cond_2

    .line 233
    const/16 v2, 0x190

    move/from16 v0, v20

    if-ne v0, v2, :cond_3

    .line 234
    :cond_2
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pipeline upload result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Don\'t fall back"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    :cond_3
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pipeline upload result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fall back to non pipeline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v16, 0x1

    .line 244
    .end local v19    # "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .end local v20    # "result":I
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    .line 248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    move-object/from16 v2, p0

    .line 247
    invoke-direct/range {v2 .. v8}, Lcom/netease/cloud/nos/android/core/UploadTask;->getBreakOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v18

    .line 249
    .local v18, "offsetResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_8

    .line 250
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 258
    .end local v18    # "offsetResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 260
    :cond_7
    new-instance v19, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x2bb

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 261
    new-instance v4, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "offset is invalid in server side, with offset:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", file length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-direct {v4, v5}, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 276
    :catch_0
    move-exception v15

    .line 277
    .local v15, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "offset result exception"

    invoke-static {v2, v3, v15}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    new-instance v19, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x31f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v15}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 251
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v18    # "offsetResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_8
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_9

    .line 252
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "offset"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    goto/16 :goto_2

    :cond_9
    move-object/from16 v19, v18

    .line 255
    goto/16 :goto_1

    .line 265
    .end local v18    # "offsetResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    .line 266
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    move-object/from16 v3, p0

    move/from16 v8, p1

    .line 265
    invoke-direct/range {v3 .. v13}, Lcom/netease/cloud/nos/android/core/UploadTask;->putFile(Landroid/content/Context;Ljava/io/File;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v19

    .line 268
    .restart local v19    # "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    if-eqz v16, :cond_b

    invoke-virtual/range {v19 .. v19}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_b

    .line 270
    invoke-static {}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->stop()V

    .line 274
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    if-eqz v16, :cond_c

    const/4 v2, 0x2

    :goto_3
    invoke-virtual {v3, v2}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploadType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cloud/nos/android/http/HttpResult;"
        }
    .end annotation

    .prologue
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 286
    const/4 v1, 0x0

    .line 289
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->newGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v6

    iput-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    .line 290
    if-eqz p3, :cond_0

    .line 291
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    invoke-static {v6, p3}, Lcom/netease/cloud/nos/android/utils/Util;->setHeader(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v6

    check-cast v6, Lorg/apache/http/client/methods/HttpGet;

    iput-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    .line 293
    :cond_0
    invoke-static {p2}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 294
    .local v3, "response":Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 295
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 296
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 297
    .local v5, "statusCode":I
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "result":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    .local v2, "msg":Lorg/json/JSONObject;
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 300
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http get response is correct, response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    new-instance v6, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v2, v7}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    if-eqz v1, :cond_1

    .line 315
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    :cond_1
    :goto_1
    iput-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    .line 311
    .end local v2    # "msg":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :goto_2
    return-object v6

    .line 303
    .restart local v2    # "msg":Lorg/json/JSONObject;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    :cond_2
    :try_start_2
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http get response is failed."

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 309
    .end local v2    # "msg":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http get task exception"

    invoke-static {v6, v7, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    new-instance v6, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v7, 0x31f

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v6, v7, v8, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    if-eqz v1, :cond_3

    .line 315
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    iput-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_2

    .line 316
    .restart local v2    # "msg":Lorg/json/JSONObject;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    :catch_1
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "Consume Content exception"

    invoke-static {v7, v8, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "msg":Lorg/json/JSONObject;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :cond_4
    :try_start_5
    new-instance v6, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v7, 0x383

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 313
    if-eqz v1, :cond_5

    .line 315
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 321
    :cond_5
    :goto_4
    iput-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_2

    .line 316
    :catch_2
    move-exception v0

    .line 317
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "Consume Content exception"

    invoke-static {v7, v8, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 316
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .local v0, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "Consume Content exception"

    invoke-static {v7, v8, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 313
    if-eqz v1, :cond_6

    .line 315
    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 321
    :cond_6
    :goto_5
    iput-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    .line 322
    throw v6

    .line 316
    :catch_4
    move-exception v0

    .line 317
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "Consume Content exception"

    invoke-static {v7, v8, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private failureOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 2
    .param p1, "ret"    # Lcom/netease/cloud/nos/android/core/CallRet;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 638
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    .line 639
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    invoke-interface {v0, p1}, Lcom/netease/cloud/nos/android/core/Callback;->onFailure(Lcom/netease/cloud/nos/android/core/CallRet;)V

    .line 640
    return-void
.end method

.method private getBreakOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 15
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "uploadContext"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "isHttps"    # Z

    .prologue
    .line 327
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/netease/cloud/nos/android/utils/Util;->getUploadServer(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "uploadServers":[Ljava/lang/String;
    sget-object v10, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "upload servers: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "x-nos-token"

    move-object/from16 v0, p5

    invoke-interface {v4, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const/4 v5, 0x0

    .line 333
    .local v5, "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :try_start_0
    array-length v11, v8

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v11, :cond_1

    :cond_0
    :goto_1
    move-object v6, v5

    .line 353
    .end local v5    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .local v6, "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_2
    return-object v6

    .line 333
    .end local v6    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    aget-object v7, v8, v10

    .line 334
    .local v7, "s":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v7, v0, v1, v2}, Lcom/netease/cloud/nos/android/utils/Util;->buildQueryUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 336
    .local v9, "url":Ljava/lang/String;
    sget-object v12, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "break query upload server url: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p1

    invoke-direct {p0, v9, v0, v4}, Lcom/netease/cloud/nos/android/core/UploadTask;->retryQuery(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v5

    .line 339
    iget-boolean v12, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v12, :cond_2

    move-object v6, v5

    .line 340
    .end local v5    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v6    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_2

    .line 342
    .end local v6    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    invoke-virtual {v5}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_3

    .line 343
    invoke-virtual {v5}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const/16 v13, 0x194

    if-ne v12, v13, :cond_4

    :cond_3
    move-object v6, v5

    .line 344
    .end local v5    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v6    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_2

    .line 333
    .end local v6    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 347
    .end local v7    # "s":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 348
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v10, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v11, "get break offset exception"

    invoke-static {v10, v11, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    if-nez v5, :cond_0

    .line 350
    new-instance v5, Lcom/netease/cloud/nos/android/http/HttpResult;

    .end local v5    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/16 v10, 0x31f

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const/4 v12, 0x0

    invoke-direct {v5, v10, v11, v12}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .restart local v5    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_1
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "statusCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/cloud/nos/android/constants/Code;->getDes(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pipeUpload(Landroid/content/Context;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 694
    iget-object v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setFileSize(J)V

    .line 695
    const/4 v2, 0x0

    .line 698
    .local v2, "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v3, 0x0

    .line 699
    .local v3, "ip":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    invoke-static {p1, v7, v8}, Lcom/netease/cloud/nos/android/utils/Util;->getUploadServer(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 700
    .local v6, "uploadServers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 702
    .local v1, "fails":I
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_1

    .line 734
    .end local v1    # "fails":I
    .end local v6    # "uploadServers":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 702
    .restart local v1    # "fails":I
    .restart local v6    # "uploadServers":[Ljava/lang/String;
    :cond_1
    aget-object v5, v6, v7

    .line 703
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Lcom/netease/cloud/nos/android/utils/Util;->getIPString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 704
    iget-object v9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v9, v5}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderIP(Ljava/lang/String;)V

    .line 706
    invoke-direct {p0, v3}, Lcom/netease/cloud/nos/android/core/UploadTask;->retryPipeUpload(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v2

    .line 707
    iget-boolean v9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-nez v9, :cond_0

    .line 711
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v4

    .line 712
    .local v4, "result":I
    const/16 v9, 0xc8

    if-eq v4, v9, :cond_0

    .line 713
    const/16 v9, 0x193

    if-eq v4, v9, :cond_0

    .line 714
    const/16 v9, 0x208

    if-eq v4, v9, :cond_0

    .line 715
    const/16 v9, 0x2bb

    if-eq v4, v9, :cond_0

    .line 716
    const/16 v9, 0x190

    if-eq v4, v9, :cond_0

    .line 722
    iget-object v9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploadRetryCount(I)V

    .line 723
    array-length v9, v6

    if-lt v1, v9, :cond_2

    .line 724
    sget-object v9, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v10, "pipeline upload failed with all tries"

    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_2
    sget-object v9, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http post failed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 729
    .end local v1    # "fails":I
    .end local v4    # "result":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "uploadServers":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "pipeline upload file exception"

    invoke-static {v7, v8, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    .end local v2    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/16 v7, 0x31f

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v7, v8, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .restart local v2    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_1
.end method

.method private post(Ljava/lang/String;[B)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "chunkData"    # [B

    .prologue
    const/4 v9, 0x0

    .line 539
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http post task is executing"

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v4, 0x0

    .line 541
    .local v4, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v1, 0x0

    .line 544
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    iput-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 545
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v7, "x-nos-token"

    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 547
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v7, "Content-MD5"

    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    if-eqz v6, :cond_1

    .line 550
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/Util;->addHeaders(Lorg/apache/http/client/methods/HttpPost;Lcom/netease/cloud/nos/android/core/WanNOSObject;)V

    .line 552
    :cond_1
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, p2}, Lcom/netease/cloud/nos/android/core/UploadTask;->buildHttpEntity([B)Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 553
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 554
    .local v2, "response":Lorg/apache/http/HttpResponse;
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http post task executing finished"

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 557
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 558
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 559
    .local v5, "statusCode":I
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "result":Ljava/lang/String;
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 561
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http post response is correct, response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 562
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 561
    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    new-instance v4, Lcom/netease/cloud/nos/android/http/HttpResult;

    .end local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    .end local v3    # "result":Ljava/lang/String;
    .end local v5    # "statusCode":I
    .restart local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 579
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 585
    :cond_2
    :goto_2
    iput-object v9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 587
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :goto_3
    return-object v4

    .line 565
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    :cond_3
    :try_start_2
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http post response is failed, status code: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 566
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 573
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http post exception"

    invoke-static {v6, v7, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    new-instance v4, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v6, 0x31f

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v4, v6, v7, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    .restart local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    if-eqz v1, :cond_4

    .line 579
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    iput-object v9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    goto :goto_3

    .line 571
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    :try_start_5
    new-instance v4, Lcom/netease/cloud/nos/android/http/HttpResult;

    .end local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/16 v6, 0x383

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_1

    .line 580
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 581
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "Consume Content exception"

    invoke-static {v6, v7, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 576
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :catchall_0
    move-exception v6

    .line 577
    if-eqz v1, :cond_6

    .line 579
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 585
    :cond_6
    :goto_5
    iput-object v9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 586
    throw v6

    .line 580
    :catch_2
    move-exception v0

    .line 581
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "Consume Content exception"

    invoke-static {v7, v8, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 580
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :catch_3
    move-exception v0

    .line 581
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "Consume Content exception"

    invoke-static {v6, v7, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private putFile(Landroid/content/Context;Ljava/io/File;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 29
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "f"    # Ljava/io/File;
    .param p3, "offset"    # J
    .param p5, "chunkSize"    # I
    .param p6, "bucketName"    # Ljava/lang/String;
    .param p7, "fileName"    # Ljava/lang/String;
    .param p8, "token"    # Ljava/lang/String;
    .param p9, "uploadContext"    # Ljava/lang/String;
    .param p10, "isHttps"    # Z

    .prologue
    .line 384
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 385
    .local v20, "len":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setFileSize(J)V

    .line 386
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file length is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v15, 0x1

    .line 388
    .local v15, "flag":Z
    const/16 v18, 0x0

    .line 389
    .local v18, "input":Lcom/netease/cloud/nos/android/utils/FileInput;
    const/16 v23, -0x1

    .line 390
    .local v23, "result":I
    const/16 v16, 0x0

    .line 391
    .local v16, "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 393
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/netease/cloud/nos/android/utils/Util;->fromInputStream(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/netease/cloud/nos/android/utils/FileInput;

    move-result-object v18

    .line 394
    const/4 v12, 0x0

    .line 395
    .local v12, "count":I
    :cond_0
    :goto_0
    if-eqz v15, :cond_2

    cmp-long v5, p3, v20

    if-ltz v5, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-nez v5, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v5, v20, v6

    if-nez v5, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    .line 469
    :cond_2
    if-eqz v18, :cond_3

    .line 470
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_3
    move-object/from16 v17, v16

    .line 473
    .end local v12    # "count":I
    .end local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .local v17, "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_1
    return-object v17

    .line 396
    .end local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v12    # "count":I
    .restart local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_4
    const/4 v10, 0x0

    .line 397
    .local v10, "isLast":Z
    move/from16 v0, p5

    int-to-long v6, v0

    sub-long v8, v20, p3

    :try_start_1
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v19, v0

    .line 398
    .local v19, "lg":I
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "upload block size is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move/from16 v2, p10

    invoke-static {v0, v1, v2}, Lcom/netease/cloud/nos/android/utils/Util;->getUploadServer(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v24

    .line 400
    .local v24, "uploadServers":[Ljava/lang/String;
    move-object/from16 v0, v18

    move-wide/from16 v1, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/cloud/nos/android/utils/FileInput;->read(JI)[B

    move-result-object v11

    .line 401
    .local v11, "chunkData":[B
    const/4 v14, 0x0

    .line 402
    .local v14, "fails":I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    const/4 v5, 0x0

    move/from16 v26, v5

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    aget-object v4, v24, v26

    .line 403
    .local v4, "s":Ljava/lang/String;
    move/from16 v0, v19

    int-to-long v6, v0

    add-long v6, v6, p3

    cmp-long v5, v6, v20

    if-ltz v5, :cond_5

    .line 404
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v6, "upload block is the last block"

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v10, 0x1

    .line 407
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v5, v4}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderIP(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v8, p3

    .line 408
    invoke-static/range {v4 .. v10}, Lcom/netease/cloud/nos/android/utils/Util;->buildPostDataUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v25

    .line 410
    .local v25, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p8

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/netease/cloud/nos/android/core/UploadTask;->retryPutFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v16

    .line 411
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_7

    .line 469
    if-eqz v18, :cond_6

    .line 470
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_6
    move-object/from16 v17, v16

    .line 412
    .end local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_1

    .line 414
    .end local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_7
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v23

    .line 416
    const/16 v5, 0xc8

    move/from16 v0, v23

    if-ne v0, v5, :cond_9

    .line 417
    invoke-virtual/range {v16 .. v16}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "offset"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 p3, v0

    .line 418
    invoke-virtual/range {v16 .. v16}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v5

    .line 419
    const-string v6, "context"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 420
    .local v22, "newUploadContext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    .line 422
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 421
    move-object/from16 v0, v22

    invoke-interface {v5, v6, v7, v0}, Lcom/netease/cloud/nos/android/core/Callback;->onUploadContextCreate(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_8
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 425
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/netease/cloud/nos/android/core/UploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 426
    add-int/lit8 v12, v12, 0x1

    .line 427
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http post success, offset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", this is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 429
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " block uploaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 427
    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v20, v6

    if-nez v5, :cond_0

    .line 431
    const/4 v15, 0x0

    .line 433
    goto/16 :goto_0

    .line 436
    .end local v22    # "newUploadContext":Ljava/lang/String;
    :cond_9
    sparse-switch v23, :sswitch_data_0

    .line 453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v5, v14}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploadRetryCount(I)V

    .line 454
    move-object/from16 v0, v24

    array-length v5, v0

    if-lt v14, v5, :cond_a

    .line 455
    const/4 v15, 0x0

    .line 456
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "upload block failed with all tries, offset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 457
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 456
    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_a
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http post failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    add-int/lit8 v5, v26, 0x1

    move/from16 v26, v5

    goto/16 :goto_2

    .line 438
    :sswitch_0
    const/4 v15, 0x0

    .line 439
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "token is expired, token: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 440
    const-string v7, ", offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 439
    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    if-eqz v18, :cond_b

    .line 470
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_b
    move-object/from16 v17, v16

    .line 441
    .end local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_1

    .line 443
    .end local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :sswitch_1
    const/4 v15, 0x0

    .line 444
    :try_start_3
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v6, "callback error."

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    if-eqz v18, :cond_c

    .line 470
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_c
    move-object/from16 v17, v16

    .line 445
    .end local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_1

    .line 447
    .end local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :sswitch_2
    :try_start_4
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v6, "bad request."

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 469
    if-eqz v18, :cond_d

    .line 470
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_d
    move-object/from16 v17, v16

    .line 448
    .end local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_1

    .line 466
    .end local v4    # "s":Ljava/lang/String;
    .end local v10    # "isLast":Z
    .end local v11    # "chunkData":[B
    .end local v12    # "count":I
    .end local v14    # "fails":I
    .end local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .end local v19    # "lg":I
    .end local v24    # "uploadServers":[Ljava/lang/String;
    .end local v25    # "url":Ljava/lang/String;
    .restart local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :catch_0
    move-exception v13

    .line 467
    .local v13, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v6, "upload block exception"

    invoke-static {v5, v6, v13}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 469
    if-eqz v18, :cond_e

    .line 470
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_e
    move-object/from16 v17, v16

    .line 473
    .end local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_1

    .line 468
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v16    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :catchall_0
    move-exception v5

    .line 469
    if-eqz v18, :cond_f

    .line 470
    invoke-virtual/range {v18 .. v18}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    .line 472
    :cond_f
    throw v5

    .line 436
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_2
        0x193 -> :sswitch_0
        0x208 -> :sswitch_1
    .end sparse-switch
.end method

.method private queryLBS(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 13
    .param p1, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 166
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "netease_pomelo_nos_net_type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "curNetType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 168
    :cond_0
    sget-object v8, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "network connection change for bucket "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "netease_pomelo_nos_lbs_status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/netease/cloud/nos/android/utils/Util;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 170
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "netease_pomelo_nos_net_type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, p1}, Lcom/netease/cloud/nos/android/utils/Util;->setData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "netease_pomelo_nos_lbs_status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/Util;->getBooleanData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 174
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "netease_pomelo_nos_server"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 175
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "netease_pomelo_nos_lbs_time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/Util;->getLongData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 176
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getRefreshInterval()J

    move-result-wide v10

    .line 175
    add-long/2addr v8, v10

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 177
    sget-boolean v8, Lcom/netease/cloud/nos/android/core/WanAccelerator;->isOpened:Z

    if-eqz v8, :cond_2

    .line 178
    const/4 v5, 0x0

    .line 201
    :goto_0
    return-object v5

    .line 181
    :cond_2
    sput-boolean v12, Lcom/netease/cloud/nos/android/core/WanAccelerator;->isOpened:Z

    .line 182
    sget-object v8, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v9, "get lbs address"

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 185
    .local v6, "start":J
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v8, v9, v12}, Lcom/netease/cloud/nos/android/core/IOManager;->getLBSAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v5

    .line 186
    .local v5, "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 187
    .local v2, "end":J
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    sub-long v10, v2, v6

    invoke-virtual {v8, v10, v11}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setLbsUseTime(J)V

    .line 188
    invoke-virtual {v5}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_3

    .line 189
    invoke-virtual {v5}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v4

    .line 191
    .local v4, "msg":Lorg/json/JSONObject;
    :try_start_0
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const-string v9, "lbs"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setLbsIP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    sget-object v8, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to parse LBS result: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "msg":Lorg/json/JSONObject;
    :cond_3
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v8, v12}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setLbsSucc(I)V

    .line 198
    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v5}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpCode(Lcom/netease/cloud/nos/android/http/HttpResult;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setLbsHttpCode(I)V

    goto :goto_0
.end method

.method private retryPipeUpload(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 10
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 657
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getChunkRetryCount()I

    move-result v6

    .line 658
    .local v6, "retries":I
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "user set the retry times is : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, 0x0

    .line 660
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    move v2, v1

    .line 663
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    if-ge v2, v6, :cond_0

    :try_start_0
    iget-boolean v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    move-object v5, v4

    .line 689
    .end local v4    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .local v5, "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_2
    return-object v5

    .line 664
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pipeline put file to server : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", retryTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-virtual {v7, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upload(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v4

    .line 667
    iget-boolean v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v7, :cond_2

    move-object v5, v4

    .line 668
    .end local v4    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_2

    .line 671
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v0

    .line 672
    .local v0, "code":I
    const/16 v7, 0xc8

    if-eq v0, v7, :cond_3

    .line 673
    const/16 v7, 0x193

    if-eq v0, v7, :cond_3

    .line 674
    const/16 v7, 0x208

    if-eq v0, v7, :cond_3

    .line 675
    const/16 v7, 0x1f4

    if-eq v0, v7, :cond_3

    .line 676
    const/16 v7, 0x2bb

    if-eq v0, v7, :cond_3

    .line 677
    const/16 v7, 0x190

    if-ne v0, v7, :cond_4

    .line 678
    :cond_3
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pipeline upload result: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->getErrorString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 679
    .end local v4    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_2

    .line 682
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_4
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pipeline retry server "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->getErrorString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v8}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setChunkRetryCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_0

    .line 685
    .end local v0    # "code":I
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :catch_0
    move-exception v3

    .line 686
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "put file exception"

    invoke-static {v7, v8, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    new-instance v4, Lcom/netease/cloud/nos/android/http/HttpResult;

    .end local v4    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/16 v7, 0x31f

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v4, v7, v8, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .restart local v4    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_1
.end method

.method private retryPutFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "chunkData"    # [B

    .prologue
    .line 478
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getChunkRetryCount()I

    move-result v9

    .line 479
    .local v9, "retries":I
    sget-object v10, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "user set the retry times is : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v2, 0x0

    .line 481
    .local v2, "count":I
    const/4 v8, -0x1

    .line 482
    .local v8, "result":I
    const/4 v5, 0x0

    .local v5, "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    move v3, v2

    .line 484
    .end local v2    # "count":I
    .local v3, "count":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    if-ge v3, v9, :cond_0

    :try_start_0
    iget-boolean v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v10, :cond_1

    :cond_0
    :goto_1
    move-object v6, v5

    .line 535
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .local v6, "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_2
    return-object v6

    .line 485
    .end local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    sget-object v10, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "put block to server side with url: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 486
    const-string v12, ", length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", retryTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 487
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 485
    invoke-static {v10, v11}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->post(Ljava/lang/String;[B)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v5

    .line 489
    iget-boolean v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v10, :cond_2

    move-object v6, v5

    .line 490
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_2

    .line 492
    .end local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    invoke-virtual {v5}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v1

    .line 493
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 524
    :cond_3
    :goto_3
    if-lez v8, :cond_4

    .line 525
    sget-object v10, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "retryPutFile with success result: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 525
    invoke-static {v10, v11}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 527
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_2

    .line 495
    .end local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :sswitch_0
    sget-object v10, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http post result is back, result:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", retryTime: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 495
    invoke-static {v10, v11}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v5}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v7

    .line 498
    .local v7, "msg":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    const-string v10, "context"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "offset"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 499
    invoke-virtual {v5}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "offset"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 500
    sget-object v10, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 501
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http post result success with context: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    iget-object v12, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", offset: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 501
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 500
    invoke-static {v10, v11}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 532
    .end local v1    # "code":I
    .end local v7    # "msg":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 533
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v11, "put file exception"

    invoke-static {v10, v11, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "code":I
    :sswitch_1
    move-object v6, v5

    .line 507
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_2

    .end local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :sswitch_2
    move-object v6, v5

    .line 510
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_2

    .end local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :sswitch_3
    move-object v6, v5

    .line 512
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_2

    .line 514
    .end local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :sswitch_4
    const/4 v8, -0x4

    .line 515
    goto/16 :goto_3

    .line 517
    :sswitch_5
    const/4 v8, -0x5

    .line 518
    goto/16 :goto_3

    :sswitch_6
    move-object v6, v5

    .line 521
    .end local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto/16 :goto_2

    .line 529
    .end local v6    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v5    # "httpResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v11, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v11}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setChunkRetryCount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto/16 :goto_0

    .line 493
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_3
        0x193 -> :sswitch_1
        0x1f4 -> :sswitch_6
        0x208 -> :sswitch_2
        0x31f -> :sswitch_4
        0x383 -> :sswitch_5
    .end sparse-switch
.end method

.method private retryQuery(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cloud/nos/android/http/HttpResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 358
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getQueryRetryCount()I

    move-result v5

    .line 359
    .local v5, "retries":I
    const/4 v0, 0x0

    .line 360
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    move v1, v0

    .line 361
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    if-ge v1, v5, :cond_0

    iget-boolean v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v6, :cond_1

    :cond_0
    move-object v4, v3

    .line 378
    .end local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .local v4, "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_1
    return-object v4

    .line 362
    .end local v4    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "query offset with url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 363
    const-string v8, ", retry times: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 362
    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cloud/nos/android/core/UploadTask;->executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v3

    .line 366
    invoke-virtual {v3}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2

    .line 367
    invoke-virtual {v3}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v2

    .line 368
    .local v2, "msg":Lorg/json/JSONObject;
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get break offset result:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 369
    .end local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_1

    .line 371
    .end local v2    # "msg":Lorg/json/JSONObject;
    .end local v4    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    iget-object v6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v7}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setQueryRetryCount(I)V

    .line 373
    invoke-virtual {v3}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v6

    const/16 v7, 0x194

    if-ne v6, v7, :cond_3

    .line 374
    sget-object v6, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "upload file is expired in server side."

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 375
    .end local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_1

    .end local v4    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_3
    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0
.end method

.method private successOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 2
    .param p1, "ret"    # Lcom/netease/cloud/nos/android/core/CallRet;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 644
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    .line 645
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    invoke-interface {v0, p1}, Lcom/netease/cloud/nos/android/core/Callback;->onSuccess(Lcom/netease/cloud/nos/android/core/CallRet;)V

    .line 646
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 596
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "uploading is canceling"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->cancel()V

    .line 602
    :cond_0
    iput-boolean v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    .line 603
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/core/UploadTask;->abort()V

    .line 604
    invoke-virtual {p0, v2}, Lcom/netease/cloud/nos/android/core/UploadTask;->cancel(Z)Z

    .line 605
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/core/UploadTask;->abort()V

    .line 606
    invoke-virtual {p0, v2}, Lcom/netease/cloud/nos/android/core/UploadTask;->cancel(Z)Z

    .line 607
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/netease/cloud/nos/android/core/CallRet;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 88
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getNetWorkType(Landroid/content/Context;)Lcom/netease/cloud/nos/android/utils/NetworkType;

    move-result-object v12

    .line 89
    .local v12, "netType":Lcom/netease/cloud/nos/android/utils/NetworkType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v12}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setNetEnv(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {}, Lcom/netease/cloud/nos/android/utils/Util;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setClientIP(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setBucketName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v12}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/netease/cloud/nos/android/core/UploadTask;->queryLBS(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v14

    .line 95
    .local v14, "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "netease_pomelo_nos_server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Lcom/netease/cloud/nos/android/core/CallRet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 98
    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v5

    .line 99
    const-string v6, "requestID"

    .line 98
    invoke-static {v14, v6}, Lcom/netease/cloud/nos/android/utils/Util;->getResultString(Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    const-string v7, "callbackRetMsg"

    .line 99
    invoke-static {v14, v7}, Lcom/netease/cloud/nos/android/utils/Util;->getResultString(Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 97
    invoke-direct/range {v2 .. v9}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    .end local v12    # "netType":Lcom/netease/cloud/nos/android/utils/NetworkType;
    .end local v14    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_0
    return-object v2

    .line 103
    .restart local v12    # "netType":Lcom/netease/cloud/nos/android/utils/NetworkType;
    .restart local v14    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 104
    .local v16, "start":J
    invoke-virtual {v12}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getChunkSize()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/netease/cloud/nos/android/core/UploadTask;->doUpload(I)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v13

    .line 105
    .local v13, "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    if-nez v13, :cond_1

    .line 106
    new-instance v13, Lcom/netease/cloud/nos/android/http/HttpResult;

    .end local v13    # "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/16 v2, 0x1f4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v13, v2, v3, v4}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 108
    .restart local v13    # "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 109
    .local v10, "end":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    sub-long v4, v10, v16

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v15, v2

    .line 110
    .local v15, "speed":F
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", speed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB/S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    sub-long v4, v10, v16

    invoke-virtual {v2, v4, v5}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderUseTime(J)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v13}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpCode(Lcom/netease/cloud/nos/android/http/HttpResult;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderHttpCode(I)V

    .line 115
    invoke-virtual {v13}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-nez v2, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "netease_pomelo_nos_lbs_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netease/cloud/nos/android/utils/Util;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 119
    :cond_2
    new-instance v2, Lcom/netease/cloud/nos/android/core/CallRet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 120
    invoke-virtual {v13}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v5

    .line 121
    const-string v6, "requestID"

    .line 120
    invoke-static {v13, v6}, Lcom/netease/cloud/nos/android/utils/Util;->getResultString(Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    const-string v7, "callbackRetMsg"

    .line 121
    invoke-static {v13, v7}, Lcom/netease/cloud/nos/android/utils/Util;->getResultString(Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {v13}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v8

    .line 123
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 119
    invoke-direct/range {v2 .. v9}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 124
    .end local v10    # "end":J
    .end local v12    # "netType":Lcom/netease/cloud/nos/android/utils/NetworkType;
    .end local v13    # "postResult":Lcom/netease/cloud/nos/android/http/HttpResult;
    .end local v14    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .end local v15    # "speed":F
    .end local v16    # "start":J
    :catch_0
    move-exception v9

    .line 125
    .local v9, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "upload exception"

    invoke-static {v2, v3, v9}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance v2, Lcom/netease/cloud/nos/android/core/CallRet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/16 v5, 0x31f

    .line 127
    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    .line 126
    invoke-direct/range {v2 .. v9}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->doInBackground([Ljava/lang/Object;)Lcom/netease/cloud/nos/android/core/CallRet;

    move-result-object v0

    return-object v0
.end method

.method public getUploadProgress(JJ)V
    .locals 3
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .prologue
    .line 651
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uploading Progress offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", file length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 653
    return-void
.end method

.method public isUpCancelled()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on cancelled"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 160
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderHttpCode(I)V

    .line 161
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    .line 162
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    invoke-direct {p0}, Lcom/netease/cloud/nos/android/core/UploadTask;->createCancelCallRet()Lcom/netease/cloud/nos/android/core/CallRet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/cloud/nos/android/core/Callback;->onCanceled(Lcom/netease/cloud/nos/android/core/CallRet;)V

    .line 163
    return-void
.end method

.method protected onPostExecute(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 8
    .param p1, "ret"    # Lcom/netease/cloud/nos/android/core/CallRet;

    .prologue
    .line 141
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on post executed"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Lcom/netease/cloud/nos/android/core/CallRet;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 144
    const/16 v3, 0x3e7

    const-string v4, ""

    const-string v5, ""

    const-string v6, "result is null"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V

    .line 154
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/core/CallRet;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/core/CallRet;->getHttpCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 150
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->successOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/netease/cloud/nos/android/core/CallRet;

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->onPostExecute(Lcom/netease/cloud/nos/android/core/CallRet;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 6
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 133
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on process update"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 135
    .local v2, "current":J
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 136
    .local v4, "total":J
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lcom/netease/cloud/nos/android/core/Callback;->onProcess(Ljava/lang/Object;JJ)V

    .line 137
    return-void
.end method
