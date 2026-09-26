.class public Lcom/netease/download/util/HashUtil;
.super Ljava/lang/Object;
.source "HashUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/util/HashUtil$Algorithm;
    }
.end annotation


# static fields
.field private static sDigestAlgorithm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/netease/download/util/HashUtil;->sDigestAlgorithm:Ljava/util/Map;

    .line 33
    :try_start_0
    sget-object v1, Lcom/netease/download/util/HashUtil;->sDigestAlgorithm:Ljava/util/Map;

    const-string v2, "MD5"

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/netease/download/util/HashUtil;->sDigestAlgorithm:Ljava/util/Map;

    const-string v2, "SHA1"

    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/netease/download/util/HashUtil;->sDigestAlgorithm:Ljava/util/Map;

    const-string v2, "SHA256"

    const-string v3, "SHA256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void

    .line 36
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v0

    .line 37
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized calculateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v10, Lcom/netease/download/util/HashUtil;

    monitor-enter v10

    if-nez p0, :cond_1

    .line 66
    const/4 v9, 0x0

    .line 110
    :cond_0
    :goto_0
    monitor-exit v10

    return-object v9

    .line 69
    :cond_1
    :try_start_0
    sget-object v9, Lcom/netease/download/util/HashUtil;->sDigestAlgorithm:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/MessageDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .local v4, "md":Ljava/security/MessageDigest;
    if-nez v4, :cond_2

    .line 72
    const/4 v9, 0x0

    goto :goto_0

    .line 74
    :cond_2
    const/4 v2, 0x0

    .line 76
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    const v9, 0x8000

    :try_start_2
    new-array v0, v9, [B

    .line 80
    .local v0, "dataBytes":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "nread":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    .line 84
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 85
    .local v6, "mdbytes":[B
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v8, "sb":Ljava/lang/StringBuilder;
    array-length v11, v6

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v11, :cond_5

    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    .line 98
    if-eqz v3, :cond_0

    .line 100
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "dataBytes":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v6    # "mdbytes":[B
    .end local v7    # "nread":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 81
    .restart local v0    # "dataBytes":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "md":Ljava/security/MessageDigest;
    .restart local v7    # "nread":I
    :cond_3
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v4, v0, v9, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 95
    .end local v0    # "dataBytes":[B
    .end local v7    # "nread":I
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 96
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 98
    if-eqz v2, :cond_4

    .line 100
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 110
    :cond_4
    :goto_4
    const/4 v9, 0x0

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "dataBytes":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "mdbytes":[B
    .restart local v7    # "nread":I
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_8
    aget-byte v5, v6, v9

    .line 88
    .local v5, "mdbyte":B
    and-int/lit16 v12, v5, 0xff

    add-int/lit16 v12, v12, 0x100

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 87
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 101
    .end local v0    # "dataBytes":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "mdbyte":B
    .end local v6    # "mdbytes":[B
    .end local v7    # "nread":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 103
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 98
    :goto_5
    if-eqz v2, :cond_6

    .line 100
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 106
    :cond_6
    :goto_6
    :try_start_b
    throw v9

    .line 101
    :catch_3
    move-exception v1

    .line 103
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 97
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 95
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public static varargs getCrc([Ljava/lang/String;)I
    .locals 5
    .param p0, "pContents"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return v2

    .line 47
    :cond_0
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 49
    .local v1, "crc":Ljava/util/zip/CRC32;
    array-length v3, p0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 53
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 49
    :cond_1
    aget-object v0, p0, v2

    .line 50
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method
