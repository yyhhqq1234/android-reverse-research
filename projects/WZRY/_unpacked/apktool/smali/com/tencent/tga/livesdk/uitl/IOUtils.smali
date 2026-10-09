.class public Lcom/tencent/tga/livesdk/uitl/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final MAX_BUFFER_BYTES:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "conn"    # Ljava/io/Closeable;

    .prologue
    .line 1176
    if-eqz p0, :cond_0

    .line 1177
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createZeroBytes(I)[B
    .locals 3
    .param p0, "length"    # I

    .prologue
    .line 911
    if-gtz p0, :cond_0

    .line 912
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "length must be gt 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 914
    :cond_0
    new-array v0, p0, [B

    .line 915
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 916
    return-object v0
.end method

.method public static endWiths([BI[B)Z
    .locals 6
    .param p0, "all"    # [B
    .param p1, "length"    # I
    .param p2, "sub"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1094
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-ge p1, v4, :cond_1

    .line 1106
    :cond_0
    :goto_0
    return v3

    .line 1097
    :cond_1
    array-length v4, p0

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1098
    .local v0, "allLen":I
    array-length v2, p2

    .line 1100
    .local v2, "subLen":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    add-int/lit8 v4, v2, 0x1

    if-ge v1, v4, :cond_2

    .line 1102
    sub-int v4, v0, v1

    aget-byte v4, p0, v4

    sub-int v5, v2, v1

    aget-byte v5, p2, v5

    if-ne v4, v5, :cond_0

    .line 1100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1106
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static endWiths([B[B)Z
    .locals 6
    .param p0, "all"    # [B
    .param p1, "sub"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1067
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v4, p0

    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return v3

    .line 1069
    :cond_1
    array-length v0, p0

    .line 1070
    .local v0, "allLen":I
    array-length v2, p1

    .line 1072
    .local v2, "subLen":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    add-int/lit8 v4, v2, 0x1

    if-ge v1, v4, :cond_2

    .line 1074
    sub-int v4, v0, v1

    aget-byte v4, p0, v4

    sub-int v5, v2, v1

    aget-byte v5, p1, v5

    if-ne v4, v5, :cond_0

    .line 1072
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1078
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static exhaust(Ljava/io/InputStream;)J
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 717
    const-wide/16 v2, 0x0

    .line 719
    .local v2, "result":J
    if-eqz p0, :cond_2

    .line 721
    const/16 v4, 0x200

    new-array v0, v4, [B

    .line 724
    .local v0, "buf":[B
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 725
    .local v1, "read":I
    if-ne v1, v6, :cond_0

    const-wide/16 v2, -0x1

    .line 727
    :goto_0
    if-eq v1, v6, :cond_1

    .line 729
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 730
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 725
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 736
    :cond_1
    const/4 v0, 0x0

    .line 740
    .end local v0    # "buf":[B
    .end local v1    # "read":I
    :cond_2
    return-wide v2

    .line 736
    .restart local v0    # "buf":[B
    :catchall_0
    move-exception v4

    const/4 v0, 0x0

    throw v4
.end method

.method public static getChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 690
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 702
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static indexOf([BI[B)I
    .locals 7
    .param p0, "datas"    # [B
    .param p1, "start"    # I
    .param p2, "t"    # [B

    .prologue
    .line 933
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 935
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "source or target array is null!"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 938
    :cond_1
    const/4 v1, -0x1

    .line 939
    .local v1, "index":I
    array-length v3, p0

    .line 940
    .local v3, "len":I
    array-length v4, p2

    .line 942
    .local v4, "tlen":I
    if-ge p1, v3, :cond_2

    sub-int v5, v3, p1

    if-ge v5, v4, :cond_4

    .line 944
    :cond_2
    const/4 v5, -0x1

    move v2, v1

    .line 967
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    return v5

    .line 964
    .end local v2    # "index":I
    .local v0, "i":I
    .restart local v1    # "index":I
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 947
    .end local v0    # "i":I
    :cond_4
    sub-int v5, v3, v4

    if-gt p1, v5, :cond_6

    .line 949
    const/4 v0, 0x0

    .line 950
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_5

    .line 952
    add-int v5, p1, v0

    aget-byte v5, p0, v5

    aget-byte v6, p2, v0

    if-eq v5, v6, :cond_7

    .line 958
    :cond_5
    if-ne v0, v4, :cond_3

    .line 960
    move v1, p1

    .end local v0    # "i":I
    :cond_6
    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    move v5, v1

    .line 967
    goto :goto_0

    .line 950
    .end local v2    # "index":I
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static numberToBytes(JIZ)[B
    .locals 8
    .param p0, "s"    # J
    .param p2, "len"    # I
    .param p3, "big_endian"    # Z

    .prologue
    const/4 v3, -0x1

    .line 50
    new-array v0, p2, [B

    .line 51
    .local v0, "buffer":[B
    if-eqz p3, :cond_0

    add-int/lit8 v4, p2, -0x1

    .line 52
    .local v4, "start":I
    :goto_0
    if-eqz p3, :cond_1

    move v1, v3

    .line 53
    .local v1, "end":I
    :goto_1
    if-eqz p3, :cond_2

    .line 55
    .local v3, "inc":I
    :goto_2
    move v2, v4

    .local v2, "i":I
    :goto_3
    if-eq v2, v1, :cond_3

    .line 57
    const-wide/16 v6, 0xff

    and-long/2addr v6, p0

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 58
    const/16 v5, 0x8

    ushr-long/2addr p0, v5

    .line 55
    add-int/2addr v2, v3

    goto :goto_3

    .line 51
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "inc":I
    .end local v4    # "start":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "start":I
    :cond_1
    move v1, p2

    .line 52
    goto :goto_1

    .line 53
    .restart local v1    # "end":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    .line 61
    .restart local v2    # "i":I
    .restart local v3    # "inc":I
    :cond_3
    return-object v0
.end method

.method public static parseInteger([BZ)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "bigEndian"    # Z

    .prologue
    .line 981
    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->parseNumber([BIZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static parseNumber([BIZ)J
    .locals 7
    .param p0, "buf"    # [B
    .param p1, "len"    # I
    .param p2, "bigEndian"    # Z

    .prologue
    const/16 v6, 0x8

    .line 1011
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 1013
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "byte array is null or empty!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1016
    :cond_1
    array-length v4, p0

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1017
    .local v1, "mlen":I
    const-wide/16 v2, 0x0

    .line 1018
    .local v2, "r":J
    if-eqz p2, :cond_2

    .line 1019
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1021
    shl-long/2addr v2, v6

    .line 1022
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 1027
    shl-long/2addr v2, v6

    .line 1028
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 1025
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1030
    :cond_3
    return-wide v2
.end method

.method public static parseShort([BZ)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "bigEndian"    # Z

    .prologue
    .line 995
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->parseNumber([BIZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static readBytes(Ljava/io/InputStream;I)[B
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    if-gtz p1, :cond_0

    .line 213
    const/4 v3, 0x0

    .line 235
    :goto_0
    return-object v3

    .line 216
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    const/4 v2, 0x0

    .line 217
    .local v2, "recvBytes":I
    const/4 v3, 0x0

    .line 218
    .local v3, "ret":[B
    new-array v0, p1, [B

    .line 222
    .local v0, "buffer":[B
    :goto_1
    if-ge v1, p1, :cond_1

    sub-int v4, p1, v1

    .line 223
    :try_start_0
    invoke-virtual {p0, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    .line 225
    add-int/2addr v1, v2

    goto :goto_1

    .line 228
    :cond_1
    move-object v3, v0

    .line 232
    const/4 v0, 0x0

    .line 233
    goto :goto_0

    .line 232
    :catchall_0
    move-exception v4

    const/4 v0, 0x0

    throw v4
.end method

.method public static readCLenData(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1112
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 1113
    const/4 v1, 0x0

    .line 1116
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static readCString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1154
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 1155
    const/4 v1, 0x0

    .line 1157
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static readDouble(Ljava/io/InputStream;)D
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readDouble(Ljava/io/InputStream;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readDouble(Ljava/io/InputStream;Z)D
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/16 v2, 0x8

    invoke-static {p0, v2, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readNumber(Ljava/io/InputStream;IZ)J

    move-result-wide v0

    .line 150
    .local v0, "l":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static readFloat(Ljava/io/InputStream;)F
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readFloat(Ljava/io/InputStream;Z)F

    move-result v0

    return v0
.end method

.method public static readFloat(Ljava/io/InputStream;Z)F
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readInt(Ljava/io/InputStream;Z)J

    move-result-wide v2

    long-to-int v0, v2

    .line 136
    .local v0, "i":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static readInt(Ljava/io/InputStream;)J
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readNumber(Ljava/io/InputStream;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readInt(Ljava/io/InputStream;Z)J
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readNumber(Ljava/io/InputStream;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readLeft(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x200

    .line 785
    const/4 v3, 0x0

    .line 786
    .local v3, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 788
    const/4 v5, 0x0

    move-object v4, v3

    .line 813
    .end local v3    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 791
    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 792
    .local v2, "recvBytes":I
    new-array v0, v5, [B

    .line 794
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 798
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x200

    :try_start_0
    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    .line 800
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 809
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 810
    const/4 v0, 0x0

    throw v5

    .line 804
    :cond_1
    const/4 v0, 0x0

    .line 805
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 809
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 810
    const/4 v0, 0x0

    move-object v4, v3

    .end local v3    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v3

    .line 813
    goto :goto_0
.end method

.method public static readLeft(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x200

    .line 830
    const/4 v3, 0x0

    .line 831
    .local v3, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 833
    const/4 v5, 0x0

    move-object v4, v3

    .line 858
    .end local v3    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 836
    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 837
    .local v2, "recvBytes":I
    new-array v0, v5, [B

    .line 839
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 843
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x200

    :try_start_0
    invoke-virtual {p0, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    .line 845
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 854
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 855
    const/4 v0, 0x0

    throw v5

    .line 849
    :cond_1
    const/4 v0, 0x0

    .line 850
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 854
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 855
    const/4 v0, 0x0

    move-object v4, v3

    .end local v3    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v3

    .line 858
    goto :goto_0
.end method

.method public static readLeftBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    .line 873
    if-nez p0, :cond_0

    .line 875
    const/4 v3, 0x0

    .line 899
    :goto_0
    return-object v3

    .line 878
    :cond_0
    const/4 v3, 0x0

    .line 879
    .local v3, "result":[B
    const/4 v2, 0x0

    .line 880
    .local v2, "recvBytes":I
    new-array v0, v4, [B

    .line 881
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 885
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0x400

    :try_start_0
    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    .line 887
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 895
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 896
    const/4 v0, 0x0

    throw v4

    .line 890
    :cond_1
    const/4 v0, 0x0

    .line 891
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 895
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 896
    const/4 v0, 0x0

    .line 897
    goto :goto_0
.end method

.method public static readNumber(Ljava/io/InputStream;IZ)J
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "len"    # I
    .param p2, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 169
    if-lez p1, :cond_0

    if-le p1, v10, :cond_1

    .line 170
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "length must between 1 and 8."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 172
    :cond_1
    new-array v0, p1, [B

    .line 173
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 174
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 176
    :cond_2
    invoke-virtual {p0, v0, v5, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 178
    .local v1, "count":I
    if-gtz v1, :cond_4

    .line 180
    const/4 v0, 0x0

    .line 181
    const-wide/16 v6, -0x1

    .line 195
    :cond_3
    return-wide v6

    .line 184
    :cond_4
    if-eqz p2, :cond_6

    .line 185
    .local v5, "start":I
    :goto_0
    if-eqz p2, :cond_7

    move v2, v1

    .line 186
    .local v2, "end":I
    :goto_1
    if-eqz p2, :cond_5

    const/4 v4, 0x1

    .line 187
    .local v4, "inc":I
    :cond_5
    const-wide/16 v6, 0x0

    .line 189
    .local v6, "ret":J
    move v3, v5

    .local v3, "i":I
    :goto_2
    if-eq v3, v2, :cond_3

    .line 191
    shl-long/2addr v6, v10

    .line 192
    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v6, v8

    .line 189
    add-int/2addr v3, v4

    goto :goto_2

    .line 184
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "inc":I
    .end local v5    # "start":I
    .end local v6    # "ret":J
    :cond_6
    add-int/lit8 v5, v1, -0x1

    goto :goto_0

    .restart local v5    # "start":I
    :cond_7
    move v2, v4

    .line 185
    goto :goto_1
.end method

.method public static readShort(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readNumber(Ljava/io/InputStream;IZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static readShort(Ljava/io/InputStream;Z)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readNumber(Ljava/io/InputStream;IZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static readString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    .line 251
    move v2, p1

    .local v2, "leftBytes":I
    const/4 v4, 0x0

    .line 252
    .local v4, "recvBytes":I
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 254
    .local v0, "bufLen":I
    new-array v1, v0, [B

    .line 255
    .local v1, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 257
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 260
    .local v5, "result":Ljava/lang/String;
    :goto_0
    if-lez v2, :cond_0

    const/4 v6, 0x0

    .line 261
    :try_start_0
    invoke-virtual {p0, v1, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 263
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 264
    sub-int/2addr v2, v4

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 271
    const/4 v1, 0x0

    .line 272
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 275
    return-object v5

    .line 271
    :catchall_0
    move-exception v6

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v6
.end method

.method public static readString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "len"    # I
    .param p2, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/4 v7, 0x0

    .line 294
    move v2, p1

    .local v2, "leftBytes":I
    const/4 v4, 0x0

    .line 295
    .local v4, "recvBytes":I
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 297
    .local v0, "bufLen":I
    new-array v1, v0, [B

    .line 298
    .local v1, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 300
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-lez v2, :cond_0

    invoke-virtual {p0, v1, v7, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 302
    invoke-virtual {v3, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 303
    sub-int/2addr v2, v4

    goto :goto_0

    .line 306
    :cond_0
    const/4 v1, 0x0

    .line 307
    invoke-virtual {v3, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 309
    return-object v5
.end method

.method public static readWLenData(Ljava/io/InputStream;Z)[B
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    invoke-static {p0, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readShort(Ljava/io/InputStream;Z)I

    move-result v0

    .line 1134
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 1135
    const/4 v1, 0x0

    .line 1138
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static readWString(Ljava/io/InputStream;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "big_endian"    # Z
    .param p2, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {p0, p1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readShort(Ljava/io/InputStream;Z)I

    move-result v0

    .line 1163
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 1164
    const/4 v1, 0x0

    .line 1166
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0, p2}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->readString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static skip(Ljava/io/InputStream;I)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const/4 v2, 0x0

    .line 761
    .local v2, "recvBytes":I
    const/16 v3, 0x200

    new-array v0, v3, [B

    .line 764
    .local v0, "buffer":[B
    :cond_2
    array-length v3, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 765
    .local v1, "need":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 766
    if-gez v2, :cond_3

    .line 770
    :goto_1
    const/4 v0, 0x0

    .line 771
    goto :goto_0

    .line 768
    :cond_3
    sub-int/2addr p1, v2

    .line 769
    if-gtz p1, :cond_2

    goto :goto_1
.end method

.method public static startWiths([B[B)Z
    .locals 4
    .param p0, "all"    # [B
    .param p1, "sub"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1044
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return v1

    .line 1047
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 1049
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1053
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static writeCLenData(Ljava/io/OutputStream;[B)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    if-nez p1, :cond_0

    .line 1122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1127
    :goto_0
    return-void

    .line 1124
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1125
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeCString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const-string/jumbo v0, "utf-8"

    invoke-static {p0, p1, v0}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeCString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public static writeCString(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fixedLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 544
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 545
    .local v0, "bytes":[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 546
    add-int/lit8 p2, p2, -0x1

    .line 548
    if-gtz p2, :cond_0

    .line 564
    :goto_0
    return-void

    .line 551
    :cond_0
    array-length v2, v0

    if-gt p2, v2, :cond_1

    .line 553
    invoke-virtual {p0, v0, v3, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 563
    :goto_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 558
    array-length v2, v0

    sub-int v2, p2, v2

    new-array v1, v2, [B

    .line 559
    .local v1, "fillBytes":[B
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 560
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public static writeCString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 493
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 501
    :goto_0
    return-void

    .line 496
    :cond_1
    if-nez p2, :cond_2

    .line 497
    const-string/jumbo p2, "utf-8"

    .line 499
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 500
    .local v0, "bytes":[B
    invoke-static {p0, v0}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeCLenData(Ljava/io/OutputStream;[B)V

    goto :goto_0
.end method

.method public static writeCString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "characterSet"    # Ljava/lang/String;
    .param p3, "fixedLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 620
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 621
    .local v0, "bytes":[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 622
    add-int/lit8 p3, p3, -0x1

    .line 624
    if-gtz p3, :cond_0

    .line 640
    :goto_0
    return-void

    .line 627
    :cond_0
    array-length v2, v0

    if-gt p3, v2, :cond_1

    .line 629
    invoke-virtual {p0, v0, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 639
    :goto_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 634
    array-length v2, v0

    sub-int v2, p3, v2

    new-array v1, v2, [B

    .line 635
    .local v1, "fillBytes":[B
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 636
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public static writeDouble(Ljava/io/OutputStream;D)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeDouble(Ljava/io/OutputStream;DZ)V

    .line 407
    return-void
.end method

.method public static writeDouble(Ljava/io/OutputStream;DZ)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "d"    # D
    .param p3, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 413
    .local v0, "bits":J
    const/16 v2, 0x8

    invoke-static {p0, v0, v1, v2, p3}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeNumber(Ljava/io/OutputStream;JIZ)V

    .line 414
    return-void
.end method

.method public static writeFloat(Ljava/io/OutputStream;F)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "f"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeFloat(Ljava/io/OutputStream;FZ)V

    .line 394
    return-void
.end method

.method public static writeFloat(Ljava/io/OutputStream;FZ)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "f"    # F
    .param p2, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 400
    .local v0, "bits":I
    int-to-long v2, v0

    invoke-static {p0, v2, v3, p2}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeInt(Ljava/io/OutputStream;JZ)V

    .line 401
    return-void
.end method

.method public static writeInt(Ljava/io/OutputStream;J)V
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xff

    .line 363
    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 367
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 368
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 369
    const/4 v0, 0x0

    .line 370
    return-void
.end method

.method public static writeInt(Ljava/io/OutputStream;JZ)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # J
    .param p3, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0, p3}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeNumber(Ljava/io/OutputStream;JIZ)V

    .line 388
    return-void
.end method

.method public static writeNumber(Ljava/io/OutputStream;JIZ)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # J
    .param p3, "len"    # I
    .param p4, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    if-lez p3, :cond_0

    const/16 v1, 0x8

    if-le p3, v1, :cond_1

    .line 435
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "length must between 1 and 8."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->numberToBytes(JIZ)[B

    move-result-object v0

    .line 438
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 439
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 440
    return-void
.end method

.method public static writeShort(Ljava/io/OutputStream;I)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v1, 0x2

    new-array v0, v1, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 327
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 328
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 329
    const/4 v0, 0x0

    .line 331
    return-void
.end method

.method public static writeShort(Ljava/io/OutputStream;IZ)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # I
    .param p2, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    int-to-long v0, p1

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, p2}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeNumber(Ljava/io/OutputStream;JIZ)V

    .line 349
    return-void
.end method

.method public static writeWLenData(Ljava/io/OutputStream;[BZ)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # [B
    .param p2, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    if-nez p1, :cond_0

    .line 1144
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeShort(Ljava/io/OutputStream;IZ)V

    .line 1149
    :goto_0
    return-void

    .line 1146
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0, p2}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeShort(Ljava/io/OutputStream;IZ)V

    .line 1147
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeWString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    const-string/jumbo v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 472
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {p0, v1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeShort(Ljava/io/OutputStream;I)V

    .line 473
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 474
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 475
    return-void
.end method

.method public static writeWString(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fixedLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 581
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 582
    .local v0, "bytes":[B
    array-length v2, v0

    invoke-static {p0, v2}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeShort(Ljava/io/OutputStream;I)V

    .line 583
    add-int/lit8 p2, p2, -0x2

    .line 585
    if-gtz p2, :cond_0

    .line 601
    :goto_0
    return-void

    .line 588
    :cond_0
    array-length v2, v0

    if-gt p2, v2, :cond_1

    .line 590
    invoke-virtual {p0, v0, v3, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 600
    :goto_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 595
    array-length v2, v0

    sub-int v2, p2, v2

    new-array v1, v2, [B

    .line 596
    .local v1, "fillBytes":[B
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 597
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public static writeWString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "characterSet"    # Ljava/lang/String;
    .param p3, "fixedLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 659
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 660
    .local v0, "bytes":[B
    array-length v2, v0

    invoke-static {p0, v2}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeShort(Ljava/io/OutputStream;I)V

    .line 661
    add-int/lit8 p3, p3, -0x2

    .line 663
    if-gtz p3, :cond_0

    .line 679
    :goto_0
    return-void

    .line 666
    :cond_0
    array-length v2, v0

    if-gt p3, v2, :cond_1

    .line 668
    invoke-virtual {p0, v0, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 678
    :goto_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 672
    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 673
    array-length v2, v0

    sub-int v2, p3, v2

    new-array v1, v2, [B

    .line 674
    .local v1, "fillBytes":[B
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 675
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public static writeWString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "characterSet"    # Ljava/lang/String;
    .param p3, "big_endian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 519
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeShort(Ljava/io/OutputStream;I)V

    .line 527
    :goto_0
    return-void

    .line 522
    :cond_1
    if-nez p2, :cond_2

    .line 523
    const-string/jumbo p2, "utf-8"

    .line 525
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 526
    .local v0, "bytes":[B
    invoke-static {p0, v0, p3}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->writeWLenData(Ljava/io/OutputStream;[BZ)V

    goto :goto_0
.end method
