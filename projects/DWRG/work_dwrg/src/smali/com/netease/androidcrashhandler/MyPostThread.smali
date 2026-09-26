.class Lcom/netease/androidcrashhandler/MyPostThread;
.super Ljava/lang/Thread;
.source "MyPostThread.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "--------------------------THISISHUANGJIEFENG"

.field private static final CRLF:Ljava/lang/String;

.field private static final HTTP_CRLF:Ljava/lang/String; = "\r\n"

.field private static final MULTIPART_FORMDATA:Ljava/lang/String; = "multipart/form-data"

.field private static final TAG:Ljava/lang/String; = "MyPostThread"

.field private static final TWO_HTTP_CRLF:Ljava/lang/String; = "\r\n\r\n"

.field private static final TWO_HYPHES:Ljava/lang/String; = "--"


# instance fields
.field private clock:J

.field private networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/netease/androidcrashhandler/MyPostEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/MyPostThread;->CRLF:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    .line 52
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->clock:J

    .line 58
    invoke-static {}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getInstance()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    .line 59
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getPostEntityQueue()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->queue:Ljava/util/Queue;

    .line 60
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getWaitingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->clock:J

    .line 61
    return-void
.end method

.method private basicInfo2PostStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "basicInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v0, "basicInfoSB":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    const-string v2, "basicinfo"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 266
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 267
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private declared-synchronized countDown()V
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/MyPostThread;->getClock()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netease/androidcrashhandler/MyPostThread;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getSleepTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/netease/androidcrashhandler/MyPostThread;->setClock(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleFiles(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/io/DataOutputStream;)Z
    .locals 13
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;
    .param p2, "output"    # Ljava/io/DataOutputStream;

    .prologue
    const/4 v10, 0x0

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v6, "filesSB":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 307
    .local v2, "count":I
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 348
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 307
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 308
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    const-string v9, "--"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v9, "--------------------------THISISHUANGJIEFENG"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v9, "\r\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v9, "Content-Disposition: form-data; name=\"file"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    const-string v9, "\"; filename=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v9, "\r\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v9, "Content-Type:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;

    invoke-virtual {v9}, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->getUploadType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v9, "\r\n\r\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const/4 v7, 0x0

    .line 323
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 324
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 325
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;

    invoke-virtual {v9}, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 326
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    .line 327
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;

    invoke-virtual {v9}, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 326
    invoke-direct {v8, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v8, "in":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 329
    .local v1, "bytes":I
    const/16 v9, 0x400

    :try_start_1
    new-array v0, v9, [B

    .line 330
    .local v0, "bufferOut":[B
    :goto_2
    invoke-virtual {v8, v0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/4 v9, -0x1

    if-ne v1, v9, :cond_2

    move-object v7, v8

    .line 336
    .end local v0    # "bufferOut":[B
    .end local v1    # "bytes":I
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :goto_3
    :try_start_2
    const-string v9, "\r\n"

    invoke-virtual {p2, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 339
    if-eqz v7, :cond_1

    .line 340
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 346
    :cond_1
    const-string v12, "file"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v12, v9}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_0

    .line 331
    .end local v2    # "count":I
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "bufferOut":[B
    .restart local v1    # "bytes":I
    .restart local v3    # "count":I
    .restart local v8    # "in":Ljava/io/DataInputStream;
    :cond_2
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {p2, v0, v9, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 338
    .end local v0    # "bufferOut":[B
    :catchall_0
    move-exception v9

    move-object v7, v8

    .line 339
    .end local v1    # "bytes":I
    .end local v8    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :goto_4
    if-eqz v7, :cond_3

    .line 340
    :try_start_5
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 341
    :cond_3
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 342
    :catch_0
    move-exception v4

    .line 343
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    move v9, v10

    .line 344
    goto/16 :goto_1

    .line 334
    .end local v2    # "count":I
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "count":I
    :cond_4
    :try_start_6
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;

    invoke-virtual {v9}, Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;->getContent()Ljava/lang/String;

    move-result-object v9

    const-string v12, "UTF-8"

    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 338
    :catchall_1
    move-exception v9

    goto :goto_4
.end method

.method private handleParams(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/io/DataOutputStream;)Z
    .locals 10
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;
    .param p2, "output"    # Ljava/io/DataOutputStream;

    .prologue
    const/4 v6, 0x0

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v3, "paramsSB":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getBasicInfo()Ljava/util/Map;

    move-result-object v0

    .line 228
    .local v0, "basicInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    const-string v5, "basicinfo"

    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/MyPostThread;->basicInfo2PostStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v7, v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getUserDesc()Ljava/util/Map;

    move-result-object v4

    .line 233
    .local v4, "userDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 234
    const-string v5, "userdesc"

    invoke-direct {p0, v4}, Lcom/netease/androidcrashhandler/MyPostThread;->userDesc2PostStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v7, v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 248
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 249
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 235
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 236
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v5, "--------------------------THISISHUANGJIEFENG"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v5, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v5, "\r\n\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v8, "params"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 252
    goto :goto_1
.end method

.method private userDesc2PostStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "userDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v1, "userDescSB":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    const-string v2, "userdesc"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 285
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    sget-object v2, Lcom/netease/androidcrashhandler/MyPostThread;->CRLF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getClock()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->clock:J

    return-wide v0
.end method

.method post(Lcom/netease/androidcrashhandler/MyPostEntity;)Z
    .locals 12
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;

    .prologue
    .line 149
    const-string v9, "trace"

    const-string v10, "MyPostThread post"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v9, "trace"

    const-string v10, "--------------------------------------------------------"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v9, "trace"

    const-string v10, "post entity info\uff1a"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "URL\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Files\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Params\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "BasicInfo\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getBasicInfo()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v9, "trace"

    const-string v10, "--------------------------------------------------------"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 159
    .local v5, "output":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    .line 160
    .local v4, "input":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 163
    .local v7, "result":Z
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 164
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 165
    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 166
    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 167
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 168
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 169
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 170
    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    const-string v9, "Connection"

    const-string v10, "keep-alive"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v9, "Content-Type"

    const-string v10, "multipart/form-data; boundary=--------------------------THISISHUANGJIEFENG"

    invoke-virtual {v2, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 175
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v5    # "output":Ljava/io/DataOutputStream;
    .local v6, "output":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-direct {p0, p1, v6}, Lcom/netease/androidcrashhandler/MyPostThread;->handleParams(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/io/DataOutputStream;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, p1, v6}, Lcom/netease/androidcrashhandler/MyPostThread;->handleFiles(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/io/DataOutputStream;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 179
    const-string v9, "trace"

    const-string v10, "params correct"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v9, "----------------------------THISISHUANGJIEFENG--\r\n"

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 184
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 185
    .local v1, "code":I
    const-string v9, "statusCode"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "post result code:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    const/16 v9, 0xc8

    if-eq v1, v9, :cond_0

    const/16 v9, 0x190

    if-ne v1, v9, :cond_1

    .line 188
    :cond_0
    const/4 v7, 0x1

    .line 198
    .end local v1    # "code":I
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 199
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 201
    :cond_2
    if-eqz v4, :cond_3

    .line 202
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 204
    :cond_3
    if-eqz v2, :cond_b

    .line 205
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .line 213
    .end local v6    # "output":Ljava/io/DataOutputStream;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v5    # "output":Ljava/io/DataOutputStream;
    :cond_4
    :goto_1
    return v7

    .line 191
    .end local v5    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_5
    :try_start_3
    const-string v9, "trace"

    const-string v10, "params wrong"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    const/4 v7, 0x0

    goto :goto_0

    .line 194
    .end local v6    # "output":Ljava/io/DataOutputStream;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v5    # "output":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    if-eqz v5, :cond_6

    .line 199
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 201
    :cond_6
    if-eqz v4, :cond_7

    .line 202
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 204
    :cond_7
    if-eqz v2, :cond_4

    .line 205
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 208
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 209
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "IOException"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    const/4 v7, 0x0

    goto :goto_1

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 198
    :goto_4
    if-eqz v5, :cond_8

    .line 199
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 201
    :cond_8
    if-eqz v4, :cond_9

    .line 202
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 204
    :cond_9
    if-eqz v2, :cond_a

    .line 205
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 207
    :cond_a
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 208
    .end local v5    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "output":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 197
    .end local v5    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "output":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 194
    .end local v5    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v3

    move-object v5, v6

    .end local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "output":Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v5    # "output":Ljava/io/DataOutputStream;
    .restart local v6    # "output":Ljava/io/DataOutputStream;
    :cond_b
    move-object v5, v6

    .end local v6    # "output":Ljava/io/DataOutputStream;
    .restart local v5    # "output":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method resetClcok()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyPostThread;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getWaitingTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netease/androidcrashhandler/MyPostThread;->setClock(J)V

    .line 113
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 70
    const/4 v4, 0x1

    .line 71
    .local v4, "running":Z
    :goto_0
    if-nez v4, :cond_3

    .line 106
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/MyPostThread;->resetClcok()V

    .line 74
    iget-object v5, p0, Lcom/netease/androidcrashhandler/MyPostThread;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/androidcrashhandler/MyPostEntity;

    .line 75
    .local v2, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    if-eqz v2, :cond_2

    .line 76
    const-string v5, "URL....."

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/netease/androidcrashhandler/MyPostThread;->post(Lcom/netease/androidcrashhandler/MyPostEntity;)Z

    move-result v3

    .line 78
    .local v3, "result":Z
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "project"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    const-string v6, "posting to....."

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v7, "project"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_1
    const-string v5, "posting result....."

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->getCallBack()Lcom/netease/androidcrashhandler/MyPostCallBack;

    move-result-object v0

    .line 85
    .local v0, "callBack":Lcom/netease/androidcrashhandler/MyPostCallBack;
    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v0, v3, v2}, Lcom/netease/androidcrashhandler/MyPostCallBack;->postCallBack(ZLcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 88
    .end local v0    # "callBack":Lcom/netease/androidcrashhandler/MyPostCallBack;
    .end local v3    # "result":Z
    :cond_2
    const-string v5, "complete one post, now left : "

    iget-object v6, p0, Lcom/netease/androidcrashhandler/MyPostThread;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v2    # "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    :cond_3
    iget-object v5, p0, Lcom/netease/androidcrashhandler/MyPostThread;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/MyPostThread;->getClock()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 93
    :try_start_0
    iget-object v5, p0, Lcom/netease/androidcrashhandler/MyPostThread;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getSleepTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/MyPostThread;->countDown()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "MyPostThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 100
    const/4 v4, 0x0

    .line 102
    goto/16 :goto_0

    .line 94
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    .line 95
    :try_start_2
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/MyPostThread;->countDown()V

    .line 96
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized setClock(J)V
    .locals 1
    .param p1, "clock"    # J

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/MyPostThread;->clock:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
