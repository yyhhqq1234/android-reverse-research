.class public final Lcom/tencent/msdk/apkchannel/ZipEocdCommentTool;
.super Ljava/lang/Object;
.source "ZipEocdCommentTool.java"


# static fields
.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final EOCD_SIG:Lcom/tencent/msdk/apkchannel/ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/tencent/msdk/apkchannel/ZipLong;

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v2, v3}, Lcom/tencent/msdk/apkchannel/ZipLong;-><init>(J)V

    sput-object v0, Lcom/tencent/msdk/apkchannel/ZipEocdCommentTool;->EOCD_SIG:Lcom/tencent/msdk/apkchannel/ZipLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static readComment(Ljava/io/RandomAccessFile;)[B
    .locals 13
    .param p0, "archive"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 107
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    sub-long v6, v8, v10

    .line 108
    .local v6, "off":J
    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 109
    sget-object v8, Lcom/tencent/msdk/apkchannel/ZipEocdCommentTool;->EOCD_SIG:Lcom/tencent/msdk/apkchannel/ZipLong;

    invoke-virtual {v8}, Lcom/tencent/msdk/apkchannel/ZipLong;->getBytes()[B

    move-result-object v5

    .line 110
    .local v5, "sig":[B
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 112
    .local v0, "curr":I
    const/4 v3, 0x0

    .line 114
    .local v3, "found":Z
    :goto_0
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    .line 115
    const/4 v8, 0x0

    aget-byte v8, v5, v8

    if-ne v0, v8, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 117
    const/4 v8, 0x1

    aget-byte v8, v5, v8

    if-ne v0, v8, :cond_1

    .line 118
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 119
    aget-byte v8, v5, v12

    if-ne v0, v8, :cond_1

    .line 120
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 121
    const/4 v8, 0x3

    aget-byte v8, v5, v8

    if-ne v0, v8, :cond_1

    .line 122
    const/4 v3, 0x1

    .line 131
    :cond_0
    if-nez v3, :cond_2

    .line 132
    new-instance v8, Ljava/util/zip/ZipException;

    const-string v9, "archive is not a ZIP archive"

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 128
    :cond_1
    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    goto :goto_0

    .line 136
    :cond_2
    const-wide/16 v8, 0x10

    add-long/2addr v8, v6

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 138
    new-array v1, v12, [B

    .line 139
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 141
    new-instance v8, Lcom/tencent/msdk/apkchannel/ZipShort;

    invoke-direct {v8, v1}, Lcom/tencent/msdk/apkchannel/ZipShort;-><init>([B)V

    invoke-virtual {v8}, Lcom/tencent/msdk/apkchannel/ZipShort;->getValue()I

    move-result v4

    .line 142
    .local v4, "length":I
    if-nez v4, :cond_3

    .line 143
    const/4 v8, 0x0

    move-object v2, v1

    .line 147
    .end local v1    # "data":[B
    .local v2, "data":[B
    :goto_1
    return-object v8

    .line 145
    .end local v2    # "data":[B
    .restart local v1    # "data":[B
    :cond_3
    new-array v1, v4, [B

    .line 146
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-object v2, v1

    .end local v1    # "data":[B
    .restart local v2    # "data":[B
    move-object v8, v1

    .line 147
    goto :goto_1
.end method

.method public static readComment(Ljava/lang/String;)[B
    .locals 6
    .param p0, "apkFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v1

    .line 49
    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v0, "archiveFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 51
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 52
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ERROR:[ZipEocdCommentTool]Your file length is zero!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v0}, Lcom/tencent/msdk/apkchannel/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object v1

    .line 56
    .local v1, "comment":[B
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0
.end method

.method public static updateComment(Ljava/lang/String;[B)Z
    .locals 10
    .param p0, "apkFilePath"    # Ljava/lang/String;
    .param p1, "newComment"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 70
    :cond_0
    const/4 v5, 0x0

    .line 95
    :goto_0
    return v5

    .line 73
    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v0, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "archiveFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 75
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 76
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Your file length is zero !!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_2
    const/4 v4, 0x0

    .line 80
    .local v4, "oldCommentLength":I
    invoke-static {v0}, Lcom/tencent/msdk/apkchannel/ZipEocdCommentTool;->readComment(Ljava/io/RandomAccessFile;)[B

    move-result-object v1

    .line 81
    .local v1, "oldComment":[B
    if-eqz v1, :cond_3

    .line 82
    array-length v4, v1

    .line 86
    :cond_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    int-to-long v8, v4

    sub-long/2addr v6, v8

    array-length v5, p1

    int-to-long v8, v5

    add-long v2, v6, v8

    .line 87
    .local v2, "newArchiveFileLength":J
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    int-to-long v8, v4

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    new-instance v5, Lcom/tencent/msdk/apkchannel/ZipShort;

    array-length v6, p1

    invoke-direct {v5, v6}, Lcom/tencent/msdk/apkchannel/ZipShort;-><init>(I)V

    invoke-virtual {v5}, Lcom/tencent/msdk/apkchannel/ZipShort;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 89
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 90
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 92
    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 95
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method
