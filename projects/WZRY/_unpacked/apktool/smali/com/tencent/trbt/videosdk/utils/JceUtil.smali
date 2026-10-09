.class public Lcom/tencent/trbt/videosdk/utils/JceUtil;
.super Ljava/lang/Object;
.source "JceUtil.java"


# static fields
.field public static final ENCODE_UTF8:Ljava/lang/String; = "utf-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2JceList([BLjava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class",
            "<+",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qq/taf/jce/JceStruct;>;"
    const/4 v4, 0x0

    .line 53
    if-nez p0, :cond_0

    move-object v3, v4

    .line 66
    :goto_0
    return-object v3

    .line 59
    :cond_0
    :try_start_0
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 60
    .local v1, "is":Lcom/qq/taf/jce/JceInputStream;
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v1, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/qq/taf/jce/JceStruct;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "is":Lcom/qq/taf/jce/JceInputStream;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/qq/taf/jce/JceStruct;>;"
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 66
    goto :goto_0
.end method

.method public static bytes2JceObj([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;
    .locals 5
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class",
            "<+",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;)",
            "Lcom/qq/taf/jce/JceStruct;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qq/taf/jce/JceStruct;>;"
    const/4 v3, 0x0

    .line 100
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 112
    :goto_0
    return-object v2

    .line 105
    :cond_1
    :try_start_0
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 106
    .local v1, "is":Lcom/qq/taf/jce/JceInputStream;
    const-string/jumbo v4, "utf-8"

    invoke-virtual {v1, v4}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qq/taf/jce/JceStruct;

    .line 108
    .local v2, "struct":Lcom/qq/taf/jce/JceStruct;
    invoke-virtual {v2, v1}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "is":Lcom/qq/taf/jce/JceInputStream;
    .end local v2    # "struct":Lcom/qq/taf/jce/JceStruct;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v3

    .line 112
    goto :goto_0
.end method

.method public static jceObj2Bytes(Lcom/qq/taf/jce/JceStruct;)[B
    .locals 2
    .param p0, "struct"    # Lcom/qq/taf/jce/JceStruct;

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 130
    :goto_0
    return-object v1

    .line 127
    :cond_0
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 128
    .local v0, "os":Lcom/qq/taf/jce/JceOutputStream;
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 130
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static jcelist2Bytes(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/qq/taf/jce/JceStruct;>;"
    const/4 v1, 0x0

    .line 78
    if-nez p0, :cond_0

    .line 89
    :goto_0
    return-object v1

    .line 83
    :cond_0
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 84
    .local v0, "os":Lcom/qq/taf/jce/JceOutputStream;
    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 86
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 87
    .end local v0    # "os":Lcom/qq/taf/jce/JceOutputStream;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static ungzip([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 20
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    .line 21
    .local v4, "inflater":Ljava/util/zip/Inflater;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v5, p0

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 23
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 24
    .local v2, "count":I
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 25
    .local v1, "buffer":[B
    invoke-virtual {v4, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 26
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 27
    invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    .line 28
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 30
    .end local v1    # "buffer":[B
    :catch_0
    move-exception v3

    .line 31
    .local v3, "e":Ljava/util/zip/DataFormatException;
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/DataFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 34
    if-eqz v0, :cond_0

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 41
    .end local v3    # "e":Ljava/util/zip/DataFormatException;
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 33
    .restart local v1    # "buffer":[B
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 34
    if-eqz v0, :cond_0

    .line 36
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 37
    :catch_1
    move-exception v5

    goto :goto_1

    .line 33
    .end local v1    # "buffer":[B
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 34
    if-eqz v0, :cond_2

    .line 36
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 38
    :cond_2
    :goto_2
    throw v5

    .line 37
    .restart local v3    # "e":Ljava/util/zip/DataFormatException;
    :catch_2
    move-exception v5

    goto :goto_1

    .end local v3    # "e":Ljava/util/zip/DataFormatException;
    :catch_3
    move-exception v6

    goto :goto_2
.end method
