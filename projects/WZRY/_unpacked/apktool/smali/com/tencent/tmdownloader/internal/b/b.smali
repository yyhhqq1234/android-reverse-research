.class public Lcom/tencent/tmdownloader/internal/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/io/FileOutputStream;

.field protected d:[B

.field protected e:J

.field protected f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    .line 35
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    .line 50
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    .line 54
    return-void
.end method

.method private a(Ljava/io/FileOutputStream;[BIIJ)Z
    .locals 7

    .prologue
    const/16 v4, 0x4000

    const/4 v0, 0x0

    .line 415
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 417
    :cond_0
    const-string v1, "TMAssistantFile"

    const-string v2, "fileOutputStream == null || buffer == null"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "TMAssistantFile"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :goto_0
    return v0

    .line 422
    :cond_1
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    cmp-long v1, p5, v2

    if-eqz v1, :cond_2

    .line 424
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeData0 failed,filelen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",filename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "TMAssistantFile"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_2
    if-lt p4, v4, :cond_4

    .line 435
    :try_start_0
    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    if-lez v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 438
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    .line 442
    :cond_3
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 443
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    int-to-long v4, p4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 445
    :catch_0
    move-exception v1

    .line 447
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 448
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeData1 failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_4
    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    add-int/2addr v1, p4

    if-le v1, v4, :cond_5

    .line 458
    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    if-lez v1, :cond_5

    .line 462
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 463
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    iget v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    .line 476
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    goto :goto_1

    .line 465
    :catch_1
    move-exception v1

    .line 467
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 468
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeData2 failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 484
    const-string v0, "TMAssistantFile"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 487
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 490
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 492
    if-eqz v0, :cond_0

    .line 494
    invoke-static {p2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->updateFilePathAuthorized(Ljava/lang/String;)V

    .line 496
    :cond_0
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveFileFromTmpToSavaPath result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_0
    return v0

    .line 500
    :cond_1
    const-string v0, "TMAssistantFile"

    const-string v1, "moveFileFromTmpToSavaPath failed "

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "TMAssistantFile"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 306
    if-nez p0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 353
    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-object v1

    .line 359
    :cond_0
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/tencent/TMAssistantSDK/Download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 370
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 381
    :goto_1
    if-eqz v0, :cond_3

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 392
    goto :goto_0

    .line 374
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 375
    const-string v4, "getExternalFilesDir"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 376
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    const-string v3, "TMAssistantFile"

    const-string v4, "getExternalFilesDir Exception"

    invoke-static {v3, v4, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 387
    :cond_2
    const-string v1, "/TMAssistantSDK/Download"

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 408
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile 1 tmpFilePathString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile 2 file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 87
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",filename:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v0, "TMAssistantFile"

    const-string v1, "deleteFile 3"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 143
    const-string v1, "TMAssistantFile"

    const-string v2, "enter"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileFullPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string v0, "TMAssistantFile"

    const-string v1, "fileFullPath is null or the filename.size is zero."

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "fileFullPath is null or the filename.size is zero."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 152
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 154
    :cond_1
    const-string v0, "TMAssistantFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFullPath is not a valid full path. fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFullPath is not a valid full path. fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    if-lez v1, :cond_3

    .line 161
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 173
    :cond_4
    if-nez v0, :cond_5

    .line 175
    const-string v0, "TMAssistantFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory. dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory. dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_5
    const-string v0, "TMAssistantFile"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public declared-synchronized a([BIIJZ)Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    if-nez v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 198
    if-eqz v3, :cond_2

    .line 203
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/tencent/tmdownloader/internal/b/b;->a(Ljava/lang/String;)V

    .line 204
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    if-nez v2, :cond_1

    .line 223
    const/16 v2, 0x4000

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    .line 224
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    .line 228
    :cond_1
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/tencent/tmdownloader/internal/b/b;->a(Ljava/io/FileOutputStream;[BIIJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 229
    if-nez v2, :cond_3

    .line 245
    :goto_0
    monitor-exit p0

    return v2

    .line 206
    :catch_0
    move-exception v3

    .line 208
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const-string v4, "TMAssistantFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "write failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 215
    :cond_2
    :try_start_4
    const-string v3, "TMAssistantFile"

    const-string/jumbo v4, "write failed tmpFilePathString is null"

    invoke-static {v3, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "TMAssistantFile"

    const-string v4, "exit"

    invoke-static {v3, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_3
    move/from16 v0, p6

    if-ne v0, v10, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/b;->c()Z

    move-result v2

    if-ne v2, v10, :cond_4

    .line 240
    const-string v2, "TMAssistantFile"

    const-string v3, "moveFileFromTmpToSavaPath"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v2, "TMAssistantFile"

    const-string v3, "exit"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/tencent/tmdownloader/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v10

    .line 245
    goto :goto_0
.end method

.method public b()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 104
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_1

    .line 107
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_0

    .line 114
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    .line 130
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    .line 132
    :cond_1
    return-wide v0

    .line 121
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 329
    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.tmp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized c()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 255
    iget v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 259
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 260
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->f:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    const/4 v0, 0x1

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 264
    :catch_0
    move-exception v1

    .line 266
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    const-string v2, "TMAssistantFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 4

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/b;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->c:Ljava/io/FileOutputStream;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->d:[B

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 290
    :try_start_3
    const-string v1, "TMAssistantFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/b/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmdownloader/internal/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/b/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tmdownloader/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    return-void
.end method
