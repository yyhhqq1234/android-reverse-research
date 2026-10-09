.class public Lcom/tencent/msdk/tools/ZipCommentReader;
.super Ljava/lang/Object;
.source "ZipCommentReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;,
        Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;
    }
.end annotation


# static fields
.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field protected static final EOCD_SIG:Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v2, v3}, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;-><init>(J)V

    sput-object v0, Lcom/tencent/msdk/tools/ZipCommentReader;->EOCD_SIG:Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "D:\\lab.zip"

    invoke-static {v0}, Lcom/tencent/msdk/tools/ZipCommentReader;->positionAtCentralDirectory(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    return-void
.end method

.method public static positionAtCentralDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p0, :cond_0

    const-string v10, ""

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 201
    :cond_0
    const-string v10, ""

    .line 254
    :goto_0
    return-object v10

    .line 203
    :cond_1
    const/4 v0, 0x0

    .line 205
    .local v0, "archive":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v11, "r"

    invoke-direct {v1, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    .end local v0    # "archive":Ljava/io/RandomAccessFile;
    .local v1, "archive":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x16

    sub-long v6, v10, v12

    .line 208
    .local v6, "off":J
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 209
    sget-object v10, Lcom/tencent/msdk/tools/ZipCommentReader;->EOCD_SIG:Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;

    invoke-virtual {v10}, Lcom/tencent/msdk/tools/ZipCommentReader$ZipLong;->getBytes()[B

    move-result-object v8

    .line 210
    .local v8, "sig":[B
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 212
    .local v3, "curr":I
    const/4 v5, 0x0

    .line 214
    .local v5, "found":Z
    :goto_1
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 215
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    if-ne v3, v10, :cond_3

    .line 216
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 217
    const/4 v10, 0x1

    aget-byte v10, v8, v10

    if-ne v3, v10, :cond_3

    .line 218
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 219
    const/4 v10, 0x2

    aget-byte v10, v8, v10

    if-ne v3, v10, :cond_3

    .line 220
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 221
    const/4 v10, 0x3

    aget-byte v10, v8, v10

    if-ne v3, v10, :cond_3

    .line 222
    const/4 v5, 0x1

    .line 231
    :cond_2
    if-nez v5, :cond_4

    .line 232
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 233
    new-instance v10, Ljava/util/zip/ZipException;

    const-string v11, "archive is not a ZIP archive"

    invoke-direct {v10, v11}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    .end local v3    # "curr":I
    .end local v5    # "found":Z
    .end local v6    # "off":J
    .end local v8    # "sig":[B
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 252
    .end local v1    # "archive":Ljava/io/RandomAccessFile;
    .restart local v0    # "archive":Ljava/io/RandomAccessFile;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    const-string v10, "ZipCommentReader read file error"

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 254
    const-string v10, ""

    goto :goto_0

    .line 228
    .end local v0    # "archive":Ljava/io/RandomAccessFile;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "archive":Ljava/io/RandomAccessFile;
    .restart local v3    # "curr":I
    .restart local v5    # "found":Z
    .restart local v6    # "off":J
    .restart local v8    # "sig":[B
    :cond_3
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    :try_start_2
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 229
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    goto :goto_1

    .line 237
    :cond_4
    const-wide/16 v10, 0x10

    add-long/2addr v10, v6

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 239
    const/4 v10, 0x2

    new-array v2, v10, [B

    .line 240
    .local v2, "cfdOffset":[B
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 241
    new-instance v10, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;

    invoke-direct {v10, v2}, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;-><init>([B)V

    invoke-virtual {v10}, Lcom/tencent/msdk/tools/ZipCommentReader$ZipShort;->getValue()I

    move-result v9

    .line 244
    .local v9, "value":I
    new-array v2, v9, [B

    .line 245
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 247
    if-eqz v1, :cond_5

    .line 248
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 250
    :cond_5
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 251
    .end local v1    # "archive":Ljava/io/RandomAccessFile;
    .end local v2    # "cfdOffset":[B
    .end local v3    # "curr":I
    .end local v5    # "found":Z
    .end local v6    # "off":J
    .end local v8    # "sig":[B
    .end local v9    # "value":I
    .restart local v0    # "archive":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    goto :goto_2
.end method
