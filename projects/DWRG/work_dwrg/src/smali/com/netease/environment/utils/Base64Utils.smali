.class public Lcom/netease/environment/utils/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Base64Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 4
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "decodedData":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Base64Utils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "encodedData":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 48
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "encodedData":Ljava/lang/String;
    .local v2, "encodedData":Ljava/lang/String;
    move-object v1, v2

    .line 53
    .end local v2    # "encodedData":Ljava/lang/String;
    .restart local v1    # "encodedData":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Base64Utils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static encodeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/netease/environment/utils/Base64Utils;->fileToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 63
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/netease/environment/utils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fileToByte(Ljava/lang/String;)[B
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 72
    new-array v2, v7, [B

    .line 73
    .local v2, "data":[B
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    .local v5, "fin":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x7e2

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 79
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 80
    .local v1, "cache":[B
    const/4 v6, 0x0

    .line 81
    .local v6, "read":I
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 82
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 90
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "cache":[B
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 97
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return-object v2

    .line 86
    .restart local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "cache":[B
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "read":I
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 87
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 92
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "cache":[B
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    :catch_1
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
