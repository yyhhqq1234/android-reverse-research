.class public final Lcom/tencent/tga/livesdk/uitl/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static md5:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tga/livesdk/uitl/MD5;->md5:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 142
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 144
    :cond_0
    const/4 v3, 0x0

    .line 158
    :goto_0
    return-object v3

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    .local v0, "hexValue":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 150
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 151
    .local v2, "val":I
    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 153
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "val":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static digest(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 102
    .local v2, "digest":[B
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/MD5;->encode(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 107
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 112
    :cond_0
    return-object v2

    .line 107
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw v3

    .line 107
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0
.end method

.method public static encode(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 53
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/MD5;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v3

    .line 54
    .local v3, "md":Ljava/security/MessageDigest;
    if-nez v3, :cond_0

    .line 56
    new-instance v5, Ljava/lang/IllegalAccessError;

    const-string v6, "no md5 algorithm"

    invoke-direct {v5, v6}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "dis":Ljava/security/DigestInputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 61
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 64
    .local v4, "reads":I
    :try_start_0
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, p0, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .local v2, "dis":Ljava/security/DigestInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/security/DigestInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 67
    if-gez v4, :cond_1

    .line 76
    if-eqz v2, :cond_4

    .line 79
    :try_start_2
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 87
    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    return-object v5

    .line 81
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "dis":Ljava/security/DigestInputStream;
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 83
    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    goto :goto_0

    .line 71
    :catch_1
    move-exception v5

    .line 76
    :goto_1
    if-eqz v1, :cond_2

    .line 79
    :try_start_3
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 81
    :catch_2
    move-exception v5

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v1, :cond_3

    .line 79
    :try_start_4
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 83
    :cond_3
    :goto_3
    throw v5

    .line 81
    :catch_3
    move-exception v6

    goto :goto_3

    .line 76
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "dis":Ljava/security/DigestInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    goto :goto_2

    .line 71
    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "dis":Ljava/security/DigestInputStream;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    goto :goto_1

    .end local v1    # "dis":Ljava/security/DigestInputStream;
    .restart local v2    # "dis":Ljava/security/DigestInputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "dis":Ljava/security/DigestInputStream;
    .restart local v1    # "dis":Ljava/security/DigestInputStream;
    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 5
    .param p0, "origin"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    .line 122
    :cond_1
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/MD5;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    .line 123
    .local v2, "md":Ljava/security/MessageDigest;
    if-nez v2, :cond_2

    .line 125
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string v4, "no md5 algorithm"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_2
    const/4 v3, 0x0

    new-array v0, v3, [B

    .line 130
    .local v0, "bytes":[B
    :try_start_0
    const-string/jumbo v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 188
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    .line 193
    :cond_1
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/MD5;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 194
    .local v1, "md":Ljava/security/MessageDigest;
    if-nez v1, :cond_2

    .line 196
    new-instance v2, Ljava/lang/IllegalAccessError;

    const-string v3, "no md5 algorithm"

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 200
    .local v0, "bytes":[B
    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 226
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 228
    :cond_0
    const/4 v1, 0x0

    .line 238
    :goto_0
    return-object v1

    .line 231
    :cond_1
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/MD5;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 232
    .local v0, "md":Ljava/security/MessageDigest;
    if-nez v0, :cond_2

    .line 234
    new-instance v2, Ljava/lang/IllegalAccessError;

    const-string v3, "no md5 algorithm"

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_2
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 238
    .local v1, "resultbytes":[B
    goto :goto_0
.end method

.method public static encode16(Ljava/lang/String;)[B
    .locals 7
    .param p0, "origin"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 163
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 165
    :cond_0
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    .line 168
    :cond_1
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/MD5;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v3

    .line 169
    .local v3, "md":Ljava/security/MessageDigest;
    if-nez v3, :cond_2

    .line 171
    new-instance v4, Ljava/lang/IllegalAccessError;

    const-string v5, "no md5 algorithm"

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_2
    new-array v0, v5, [B

    .line 175
    .local v0, "bytes":[B
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_1
    new-array v1, v6, [B

    .line 180
    .local v1, "dstBytes":[B
    const/4 v4, 0x4

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    const/4 v0, 0x0

    .line 182
    goto :goto_0

    .line 176
    .end local v1    # "dstBytes":[B
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static encode16(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "origin"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 206
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 208
    :cond_0
    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    .line 211
    :cond_1
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/MD5;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    .line 212
    .local v2, "md":Ljava/security/MessageDigest;
    if-nez v2, :cond_2

    .line 214
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string v4, "no md5 algorithm"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 218
    .local v0, "bytes":[B
    new-array v1, v5, [B

    .line 219
    .local v1, "dstBytes":[B
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    const/4 v0, 0x0

    .line 221
    goto :goto_0
.end method

.method public static encode16([B)[B
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x8

    .line 243
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 248
    :cond_1
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/MD5;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 249
    .local v1, "md":Ljava/security/MessageDigest;
    if-nez v1, :cond_2

    .line 251
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string v4, "no md5 algorithm"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    :cond_2
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 255
    .local v2, "resultbytes":[B
    new-array v0, v5, [B

    .line 256
    .local v0, "dstBytes":[B
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static getMd5HexStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {p0}, Lcom/tencent/tga/livesdk/uitl/MD5;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 262
    .local v0, "md5Bytes":[B
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/MD5;->bufferToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getMessageDigest()Ljava/security/MessageDigest;
    .locals 3

    .prologue
    .line 36
    const-class v2, Lcom/tencent/tga/livesdk/uitl/MD5;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tencent/tga/livesdk/uitl/MD5;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 40
    :try_start_1
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/tencent/tga/livesdk/uitl/MD5;->md5:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :cond_0
    :try_start_2
    sget-object v1, Lcom/tencent/tga/livesdk/uitl/MD5;->md5:Ljava/security/MessageDigest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    monitor-exit v2

    return-object v1

    .line 42
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
