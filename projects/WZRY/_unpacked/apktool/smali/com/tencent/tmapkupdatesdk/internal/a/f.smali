.class public Lcom/tencent/tmapkupdatesdk/internal/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    return-void
.end method

.method private a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    .locals 5

    .prologue
    const/16 v1, 0x1000

    const/4 v3, 0x0

    .line 308
    invoke-static {p1, p3}, Lcom/tencent/tmapkupdatesdk/internal/a/h;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V

    .line 312
    iget v2, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    move v0, v3

    .line 316
    :cond_0
    :goto_0
    if-lez v2, :cond_2

    if-ltz v0, :cond_2

    .line 317
    if-le v2, v1, :cond_1

    move v0, v1

    .line 318
    :goto_1
    iget-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    invoke-virtual {p2, v4, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 319
    if-lez v0, :cond_0

    .line 320
    iget-object v4, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    invoke-virtual {p3, v4, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 321
    sub-int/2addr v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 317
    goto :goto_1

    .line 326
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-static {p1, p3}, Lcom/tencent/tmapkupdatesdk/internal/a/d;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V

    .line 329
    :cond_3
    return-void
.end method

.method private a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/RandomAccessFile;Lcom/tencent/tmapkupdatesdk/internal/a/i;Ljava/io/DataOutputStream;)V
    .locals 7

    .prologue
    const/16 v1, 0x1000

    const/4 v6, 0x0

    .line 250
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 253
    invoke-virtual {p3, v0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b(Ljava/lang/String;)Lcom/tencent/tmapkupdatesdk/internal/a/c;

    move-result-object v2

    .line 255
    if-nez v2, :cond_0

    .line 257
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 260
    :cond_0
    iget-short v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->d:S

    iput-short v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->d:S

    .line 261
    iget v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    iput v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    .line 262
    iget v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    iput v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    .line 264
    iget-short v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    iput-short v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    .line 265
    iget-object v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->t:[B

    iput-object v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->t:[B

    .line 267
    iget-short v3, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    iput-short v3, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    .line 268
    iget-object v2, v2, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    iput-object v2, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    .line 270
    invoke-static {p1, p4}, Lcom/tencent/tmapkupdatesdk/internal/a/h;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V

    .line 271
    iget v2, p1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    .line 274
    if-lez v2, :cond_3

    .line 276
    invoke-virtual {p3, v0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->c(Ljava/lang/String;)I

    move-result v0

    .line 277
    int-to-long v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 282
    :cond_1
    :goto_0
    if-lez v2, :cond_3

    .line 283
    if-le v2, v1, :cond_2

    move v0, v1

    .line 284
    :goto_1
    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    invoke-virtual {p2, v3, v6, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 285
    if-lez v0, :cond_1

    .line 286
    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a:[B

    invoke-virtual {p4, v3, v6, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 287
    sub-int/2addr v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 283
    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    invoke-static {p1, p4}, Lcom/tencent/tmapkupdatesdk/internal/a/d;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V

    .line 296
    :cond_4
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 333
    const-string v1, "GenNewApkV2"

    const-string v2, "enter"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "GenNewApkV2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", patchPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newGenApkPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 339
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    if-nez v2, :cond_0

    .line 347
    const-string v1, "GenNewApkV2"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_0
    return v0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 342
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 354
    new-instance v2, Lcom/tencent/tmapkupdatesdk/internal/a/f;

    invoke-direct {v2}, Lcom/tencent/tmapkupdatesdk/internal/a/f;-><init>()V

    .line 355
    invoke-virtual {v2, v0, p1, p2}, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 357
    if-nez v0, :cond_1

    .line 358
    const-string v2, "GenNewApkV2"

    const-string v3, "genNewApk succeed"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 361
    if-nez v1, :cond_2

    .line 362
    const-string v0, "GenNewApkV2"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/16 v0, -0xb

    goto :goto_0

    .line 366
    :cond_1
    const-string v1, "GenNewApkV2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genNewApk failed errcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_2
    const-string v1, "GenNewApkV2"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 76
    const-string v0, "GenNewApkV2"

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "GenNewApkV2"

    const-string v2, "start parser old apk file."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :try_start_0
    new-instance v2, Lcom/tencent/tmapkupdatesdk/internal/a/i;

    invoke-direct {v2}, Lcom/tencent/tmapkupdatesdk/internal/a/i;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_19
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_19
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :try_start_2
    const-string v0, "GenNewApkV2"

    const-string v3, "parse old apk file finished."

    invoke-static {v0, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_19
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :try_start_3
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_19
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :try_start_4
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 113
    :try_start_5
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v3, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1b
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 120
    :try_start_6
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v7

    move v0, v1

    .line 133
    :goto_0
    if-ge v0, v7, :cond_6

    .line 134
    :try_start_8
    new-instance v8, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    invoke-direct {v8}, Lcom/tencent/tmapkupdatesdk/internal/a/c;-><init>()V

    .line 135
    invoke-virtual {v8, v6}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->b(Ljava/io/DataInputStream;)V

    .line 136
    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_19
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 91
    :try_start_a
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 203
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    move v0, v7

    .line 204
    :goto_1
    :try_start_b
    const-string v1, "GenNewApkV2"

    const-string v4, "Throwable: "

    invoke-static {v1, v4, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    const-string v1, "GenNewApkV2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errcode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 208
    if-eqz v3, :cond_0

    .line 210
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13

    .line 216
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 218
    :try_start_d
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14

    .line 224
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 226
    :try_start_e
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_15

    .line 233
    :cond_2
    :goto_4
    const-string v1, "GenNewApkV2"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return v0

    .line 98
    :catch_2
    move-exception v0

    .line 99
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_19
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 100
    const/4 v0, -0x2

    .line 101
    :try_start_10
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    throw v1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 203
    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    goto :goto_1

    .line 106
    :catch_4
    move-exception v0

    .line 107
    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1a
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 108
    const/4 v0, -0x3

    .line 109
    :try_start_12
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    throw v1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 203
    :catch_5
    move-exception v1

    move-object v2, v1

    move-object v3, v4

    move-object v5, v4

    goto :goto_1

    .line 114
    :catch_6
    move-exception v0

    .line 115
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1b
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 117
    :try_start_14
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 203
    :catch_7
    move-exception v1

    move-object v2, v1

    move-object v3, v4

    move v0, v7

    goto :goto_1

    .line 126
    :catch_8
    move-exception v0

    .line 127
    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 128
    const/4 v0, -0x4

    .line 129
    :try_start_16
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    throw v1
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 203
    :catch_9
    move-exception v1

    move-object v2, v1

    goto :goto_1

    .line 138
    :catch_a
    move-exception v0

    .line 139
    :try_start_17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 140
    const/4 v0, -0x5

    .line 141
    :try_start_18
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    throw v1
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 208
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_3

    .line 210
    :try_start_19
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    .line 216
    :cond_3
    :goto_6
    if-eqz v5, :cond_4

    .line 218
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    .line 224
    :cond_4
    :goto_7
    if-eqz v6, :cond_5

    .line 226
    :try_start_1b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 208
    :cond_5
    :goto_8
    throw v0

    .line 142
    :catch_b
    move-exception v0

    .line 143
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 144
    const/4 v0, -0x6

    .line 145
    :try_start_1d
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    throw v1
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 148
    :cond_6
    :try_start_1e
    const-string v0, "GenNewApkV2"

    const-string v7, "read patch file headed finished."

    invoke-static {v0, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 152
    :try_start_1f
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    .line 153
    const/4 v8, 0x0

    iput-short v8, v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->c:S

    .line 154
    iget-boolean v8, v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->r:Z

    if-eqz v8, :cond_7

    .line 156
    invoke-direct {p0, v0, v6, v5}, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_9

    .line 162
    :catch_c
    move-exception v0

    .line 163
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 164
    const/16 v0, -0xa

    .line 165
    :try_start_21
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    throw v1
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 159
    :cond_7
    :try_start_22
    invoke-direct {p0, v0, v3, v2, v5}, Lcom/tencent/tmapkupdatesdk/internal/a/f;->a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/RandomAccessFile;Lcom/tencent/tmapkupdatesdk/internal/a/i;Ljava/io/DataOutputStream;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto :goto_9

    .line 203
    :catch_d
    move-exception v2

    move v0, v1

    goto/16 :goto_1

    .line 168
    :cond_8
    :try_start_23
    const-string v0, "GenNewApkV2"

    const-string/jumbo v2, "writeLocalFileHeaderAndData finished."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->size()I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_d
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    move-result v2

    .line 173
    :try_start_24
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    .line 174
    invoke-virtual {v0, v5}, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a(Ljava/io/DataOutputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_d
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    goto :goto_a

    .line 176
    :catch_e
    move-exception v0

    .line 177
    :try_start_25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 178
    const/4 v0, -0x7

    .line 179
    :try_start_26
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    throw v1
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_9
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 183
    :cond_9
    :try_start_27
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 184
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .line 185
    const v7, 0x504b0506

    if-ne v0, v7, :cond_d

    .line 186
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/a/e;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/e;-><init>()V

    .line 187
    invoke-virtual {v0, v6}, Lcom/tencent/tmapkupdatesdk/internal/a/e;->a(Ljava/io/DataInputStream;)V

    .line 188
    iput v2, v0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->f:I

    .line 189
    iput v4, v0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->e:I

    .line 190
    invoke-virtual {v0, v5}, Lcom/tencent/tmapkupdatesdk/internal/a/e;->a(Ljava/io/DataOutputStream;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_d
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 202
    :try_start_28
    const-string v0, "GenNewApkV2"

    const-string/jumbo v2, "write EndOfCentralDirRecord finished."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_d
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 208
    if-eqz v3, :cond_a

    .line 210
    :try_start_29
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_16

    .line 216
    :cond_a
    :goto_b
    if-eqz v5, :cond_b

    .line 218
    :try_start_2a
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_17

    .line 224
    :cond_b
    :goto_c
    if-eqz v6, :cond_c

    .line 226
    :try_start_2b
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_18

    :cond_c
    :goto_d
    move v0, v1

    .line 232
    goto/16 :goto_4

    .line 193
    :cond_d
    const/4 v1, -0x8

    .line 194
    :try_start_2c
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_d
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 196
    :catch_f
    move-exception v0

    .line 197
    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 198
    const/16 v0, -0x9

    .line 199
    :try_start_2e
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    throw v1
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_9
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 211
    :catch_10
    move-exception v1

    .line 212
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 219
    :catch_11
    move-exception v1

    .line 220
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 227
    :catch_12
    move-exception v1

    .line 228
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 211
    :catch_13
    move-exception v1

    .line 212
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 219
    :catch_14
    move-exception v1

    .line 220
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 227
    :catch_15
    move-exception v1

    .line 228
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 211
    :catch_16
    move-exception v0

    .line 212
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 219
    :catch_17
    move-exception v0

    .line 220
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 227
    :catch_18
    move-exception v0

    .line 228
    const-string v2, "GenNewApkV2"

    const-string v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    .line 208
    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto/16 :goto_5

    .line 203
    :catch_19
    move-exception v2

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    move v0, v1

    goto/16 :goto_1

    :catch_1a
    move-exception v2

    move-object v3, v4

    move-object v5, v4

    move v0, v1

    goto/16 :goto_1

    :catch_1b
    move-exception v2

    move-object v3, v4

    move v0, v1

    goto/16 :goto_1
.end method
