.class public final Lcom/tencent/msdk/pf/ApkExternalInfoTool;
.super Ljava/lang/Object;
.source "ApkExternalInfoTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;
    }
.end annotation


# static fields
.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CHANNELID:Ljava/lang/String; = "channelId"

.field protected static final EOCD_SIG:Lcom/tencent/msdk/pf/ZipLong;

.field private static final MIN_EOCD_SIZE:I = 0x16

.field private static protoHead:Lcom/tencent/msdk/pf/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/tencent/msdk/pf/ZipLong;

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v2, v3}, Lcom/tencent/msdk/pf/ZipLong;-><init>(J)V

    sput-object v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->EOCD_SIG:Lcom/tencent/msdk/pf/ZipLong;

    .line 87
    new-instance v0, Lcom/tencent/msdk/pf/ZipShort;

    const v1, 0x96fa

    invoke-direct {v0, v1}, Lcom/tencent/msdk/pf/ZipShort;-><init>(I)V

    sput-object v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->protoHead:Lcom/tencent/msdk/pf/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/msdk/pf/ZipShort;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->protoHead:Lcom/tencent/msdk/pf/ZipShort;

    return-object v0
.end method

.method public static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "archive":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "archive":Ljava/io/RandomAccessFile;
    .local v2, "archive":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v2}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->readComment(Ljava/io/RandomAccessFile;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 102
    .local v3, "readComment":[B
    if-nez v3, :cond_1

    .line 109
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    :goto_0
    return-object v4

    .line 105
    :cond_1
    :try_start_2
    new-instance v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;-><init>(Lcom/tencent/msdk/pf/ApkExternalInfoTool$1;)V

    .line 106
    .local v0, "apkExternalInfo":Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;
    invoke-virtual {v0, v3}, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->decode([B)V

    .line 107
    iget-object v4, v0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    invoke-virtual {v4, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 109
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 109
    .end local v0    # "apkExternalInfo":Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;
    .end local v2    # "archive":Ljava/io/RandomAccessFile;
    .end local v3    # "readComment":[B
    .restart local v1    # "archive":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    throw v4

    .line 109
    .end local v1    # "archive":Ljava/io/RandomAccessFile;
    .restart local v2    # "archive":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "archive":Ljava/io/RandomAccessFile;
    .restart local v1    # "archive":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public static readChannelId(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "channelId"

    invoke-static {p0, v0}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 137
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    sub-long v6, v8, v10

    .line 138
    .local v6, "off":J
    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    sget-object v8, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->EOCD_SIG:Lcom/tencent/msdk/pf/ZipLong;

    invoke-virtual {v8}, Lcom/tencent/msdk/pf/ZipLong;->getBytes()[B

    move-result-object v5

    .line 140
    .local v5, "sig":[B
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 142
    .local v0, "curr":I
    const/4 v3, 0x0

    .line 144
    .local v3, "found":Z
    :goto_0
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    .line 145
    const/4 v8, 0x0

    aget-byte v8, v5, v8

    if-ne v0, v8, :cond_1

    .line 146
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 147
    const/4 v8, 0x1

    aget-byte v8, v5, v8

    if-ne v0, v8, :cond_1

    .line 148
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 149
    aget-byte v8, v5, v12

    if-ne v0, v8, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 151
    const/4 v8, 0x3

    aget-byte v8, v5, v8

    if-ne v0, v8, :cond_1

    .line 152
    const/4 v3, 0x1

    .line 161
    :cond_0
    if-nez v3, :cond_2

    .line 162
    new-instance v8, Ljava/util/zip/ZipException;

    const-string v9, "archive is not a ZIP archive"

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 158
    :cond_1
    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 159
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    goto :goto_0

    .line 166
    :cond_2
    const-wide/16 v8, 0x10

    add-long/2addr v8, v6

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 168
    new-array v1, v12, [B

    .line 169
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 171
    new-instance v8, Lcom/tencent/msdk/pf/ZipShort;

    invoke-direct {v8, v1}, Lcom/tencent/msdk/pf/ZipShort;-><init>([B)V

    invoke-virtual {v8}, Lcom/tencent/msdk/pf/ZipShort;->getValue()I

    move-result v4

    .line 172
    .local v4, "length":I
    if-nez v4, :cond_3

    .line 173
    const/4 v8, 0x0

    move-object v2, v1

    .line 177
    .end local v1    # "data":[B
    .local v2, "data":[B
    :goto_1
    return-object v8

    .line 175
    .end local v2    # "data":[B
    .restart local v1    # "data":[B
    :cond_3
    new-array v1, v4, [B

    .line 176
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-object v2, v1

    .end local v1    # "data":[B
    .restart local v2    # "data":[B
    move-object v8, v1

    .line 177
    goto :goto_1
.end method
