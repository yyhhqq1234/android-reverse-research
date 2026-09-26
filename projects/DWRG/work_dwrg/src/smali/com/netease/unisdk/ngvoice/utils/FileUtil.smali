.class public Lcom/netease/unisdk/ngvoice/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "byteArray"    # [B

    .prologue
    .line 99
    const/16 v5, 0x10

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    .line 100
    .local v1, "hexDigits":[C
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v4, v5, [C

    .line 101
    .local v4, "resultCharArray":[C
    const/4 v2, 0x0

    .line 102
    .local v2, "index":I
    array-length v6, p0

    const/4 v5, 0x0

    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, p0, v5

    .line 103
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v1, v7

    aput-char v7, v4, v3

    .line 104
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    and-int/lit8 v7, v0, 0xf

    aget-char v7, v1, v7

    aput-char v7, v4, v2

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "b":B
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 99
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 111
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 112
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 114
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 115
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 117
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 118
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static createDir(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 58
    if-nez p0, :cond_1

    move-object p0, v1

    .line 72
    .end local p0    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    return-object p0

    .line 61
    .restart local p0    # "dir":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move-object p0, v1

    .line 72
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static createFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_1

    move-object p0, v1

    .line 39
    .end local p0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object p0

    .line 28
    .restart local p0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move-object p0, v1

    .line 39
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "filePath":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static fileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "inputFile"    # Ljava/lang/String;

    .prologue
    .line 76
    const/high16 v1, 0x40000

    .line 77
    .local v1, "bufferSize":I
    const/4 v5, 0x0

    .line 78
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 80
    .local v2, "digestInputStream":Ljava/security/DigestInputStream;
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 81
    .local v7, "messageDigest":Ljava/security/MessageDigest;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v6, v7}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .local v3, "digestInputStream":Ljava/security/DigestInputStream;
    :try_start_2
    new-array v0, v1, [B

    .line 84
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_0

    .line 85
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v7

    .line 86
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 87
    .local v8, "resultByteArray":[B
    invoke-static {v8}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->byteArrayToHex([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    .line 92
    :try_start_3
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 93
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :goto_0
    move-object v2, v3

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v5, v6

    .line 89
    .end local v0    # "buffer":[B
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "messageDigest":Ljava/security/MessageDigest;
    .end local v8    # "resultByteArray":[B
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    return-object v9

    .line 88
    :catch_0
    move-exception v4

    .line 89
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v9, 0x0

    .line 92
    :try_start_4
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    .line 93
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 94
    :catch_1
    move-exception v10

    goto :goto_1

    .line 91
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 92
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->close()V

    .line 93
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 94
    :goto_4
    throw v9

    :catch_2
    move-exception v10

    goto :goto_4

    .line 91
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

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
    goto :goto_3

    .line 88
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 94
    .end local v2    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "resultByteArray":[B
    :catch_5
    move-exception v10

    goto :goto_0
.end method
