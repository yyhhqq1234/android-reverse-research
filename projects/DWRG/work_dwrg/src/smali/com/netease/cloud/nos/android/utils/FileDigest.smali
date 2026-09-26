.class public Lcom/netease/cloud/nos/android/utils/FileDigest;
.super Ljava/lang/Object;
.source "FileDigest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "hashBytes"    # [B

    .prologue
    .line 16
    const-string v1, ""

    .line 17
    .local v1, "returnVal":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 18
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 26
    const/high16 v1, 0x80000

    .line 27
    .local v1, "bufferSize":I
    const/4 v5, 0x0

    .line 28
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 32
    .local v2, "digestInputStream":Ljava/security/DigestInputStream;
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 34
    .local v7, "messageDigest":Ljava/security/MessageDigest;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v6, v7}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .local v3, "digestInputStream":Ljava/security/DigestInputStream;
    :try_start_2
    new-array v0, v1, [B

    .line 39
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_0

    .line 43
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v7

    .line 46
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 49
    .local v8, "resultByteArray":[B
    invoke-static {v8}, Lcom/netease/cloud/nos/android/utils/FileDigest;->byteArrayToHex([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    .line 55
    if-eqz v3, :cond_1

    .line 56
    :try_start_3
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 58
    :cond_1
    if-eqz v6, :cond_2

    .line 59
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_0
    move-object v2, v3

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v5, v6

    .line 52
    .end local v0    # "buffer":[B
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "messageDigest":Ljava/security/MessageDigest;
    .end local v8    # "resultByteArray":[B
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    return-object v9

    .line 60
    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v8    # "resultByteArray":[B
    :catch_0
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0    # "buffer":[B
    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "messageDigest":Ljava/security/MessageDigest;
    .end local v8    # "resultByteArray":[B
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 51
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    if-eqz v2, :cond_3

    .line 56
    :try_start_5
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    .line 58
    :cond_3
    if-eqz v5, :cond_4

    .line 59
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 52
    :cond_4
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 60
    :catch_2
    move-exception v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 53
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 55
    :goto_4
    if-eqz v2, :cond_5

    .line 56
    :try_start_6
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    .line 58
    :cond_5
    if-eqz v5, :cond_6

    .line 59
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 63
    :cond_6
    :goto_5
    throw v9

    .line 60
    :catch_3
    move-exception v4

    .line 61
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 53
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 50
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method
