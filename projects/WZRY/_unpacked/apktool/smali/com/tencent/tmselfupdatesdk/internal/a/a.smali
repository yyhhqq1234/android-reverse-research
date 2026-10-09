.class public final Lcom/tencent/tmselfupdatesdk/internal/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/tencent/tmselfupdatesdk/internal/a/b;

.field private static final b:Lcom/tencent/tmselfupdatesdk/internal/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/tencent/tmselfupdatesdk/internal/a/b;

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v2, v3}, Lcom/tencent/tmselfupdatesdk/internal/a/b;-><init>(J)V

    sput-object v0, Lcom/tencent/tmselfupdatesdk/internal/a/a;->a:Lcom/tencent/tmselfupdatesdk/internal/a/b;

    .line 134
    new-instance v0, Lcom/tencent/tmselfupdatesdk/internal/a/c;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/tencent/tmselfupdatesdk/internal/a/c;-><init>(I)V

    sput-object v0, Lcom/tencent/tmselfupdatesdk/internal/a/a;->b:Lcom/tencent/tmselfupdatesdk/internal/a/c;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 292
    const-string v1, "ApkExternalInfoTool"

    const-string v2, "enter"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    const-string v0, "ApkExternalInfoTool"

    const-string v1, "TextUtils.isEmpty(oldFilePath) || TextUtils.isEmpty(newFilePath)"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "ApkExternalInfoTool"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Your file path is empty!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    const-string v1, "ApkExternalInfoTool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldFilePath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; newFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 306
    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 307
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 308
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Your file length is zero !!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_3
    invoke-static {v1}, Lcom/tencent/tmselfupdatesdk/internal/a/a;->a(Ljava/io/RandomAccessFile;)[B

    move-result-object v3

    .line 312
    invoke-static {v2}, Lcom/tencent/tmselfupdatesdk/internal/a/a;->a(Ljava/io/RandomAccessFile;)[B

    move-result-object v4

    .line 315
    if-eqz v3, :cond_7

    .line 316
    const-string v5, "ApkExternalInfoTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old comment="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/tencent/tmassistantbase/util/MD5;->convertHashToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    array-length v5, v3

    .line 322
    if-eqz v4, :cond_4

    .line 323
    const-string v0, "ApkExternalInfoTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new comment="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/tencent/tmassistantbase/util/MD5;->convertHashToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    array-length v0, v4

    .line 327
    :cond_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    int-to-long v8, v0

    sub-long/2addr v6, v8

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 328
    const-string v4, "ApkExternalInfoTool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "oldCommentLength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newCommentLength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", oldArchiveFileLength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newArchiveFileLength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x2

    sub-long/2addr v8, v10

    int-to-long v10, v0

    sub-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 332
    new-instance v0, Lcom/tencent/tmselfupdatesdk/internal/a/c;

    invoke-direct {v0, v5}, Lcom/tencent/tmselfupdatesdk/internal/a/c;-><init>(I)V

    invoke-virtual {v0}, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 333
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 334
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 336
    if-eqz v1, :cond_5

    .line 337
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 339
    :cond_5
    if-eqz v2, :cond_6

    .line 340
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 342
    :cond_6
    const-string v0, "ApkExternalInfoTool"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 319
    :cond_7
    const-string v1, "ApkExternalInfoTool"

    const-string v2, "old comment is null"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/RandomAccessFile;)[B
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    sub-long v4, v2, v4

    .line 200
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 201
    sget-object v2, Lcom/tencent/tmselfupdatesdk/internal/a/a;->a:Lcom/tencent/tmselfupdatesdk/internal/a/b;

    invoke-virtual {v2}, Lcom/tencent/tmselfupdatesdk/internal/a/b;->a()[B

    move-result-object v3

    .line 202
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 206
    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 208
    aget-byte v6, v3, v1

    if-ne v2, v6, :cond_0

    .line 210
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 211
    aget-byte v6, v3, v0

    if-ne v2, v6, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 214
    aget-byte v6, v3, v8

    if-ne v2, v6, :cond_0

    .line 216
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 217
    const/4 v6, 0x3

    aget-byte v6, v3, v6

    if-ne v2, v6, :cond_0

    .line 228
    :goto_1
    if-nez v0, :cond_1

    .line 230
    const-string v0, "ApkExternalInfoTool"

    const-string v1, "archive is not a ZIP archive"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "archive is not a ZIP archive"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 226
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    goto :goto_0

    .line 235
    :cond_1
    const-wide/16 v0, 0x10

    add-long/2addr v0, v4

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 237
    new-array v0, v8, [B

    .line 238
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 240
    new-instance v1, Lcom/tencent/tmselfupdatesdk/internal/a/c;

    invoke-direct {v1, v0}, Lcom/tencent/tmselfupdatesdk/internal/a/c;-><init>([B)V

    invoke-virtual {v1}, Lcom/tencent/tmselfupdatesdk/internal/a/c;->b()I

    move-result v0

    .line 241
    if-nez v0, :cond_2

    .line 243
    const/4 v0, 0x0

    .line 247
    :goto_2
    return-object v0

    .line 245
    :cond_2
    new-array v0, v0, [B

    .line 246
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
