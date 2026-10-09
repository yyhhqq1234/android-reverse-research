.class public Lcom/tencent/msdk/apkchannel/ApkSignatureV2ChannelTool;
.super Ljava/lang/Object;
.source "ApkSignatureV2ChannelTool.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final MSDK_COMMENT_BLOCK_ID:I = 0x71717874


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genApkSigningBlockWithNewPair(Ljava/nio/ByteBuffer;I[B)Lcom/tencent/msdk/apkchannel/Pair;
    .locals 22
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .param p1, "pairId"    # I
    .param p2, "pairValue"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I[B)",
            "Lcom/tencent/msdk/apkchannel/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static/range {p0 .. p0}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 94
    const/16 v19, 0x8

    .line 95
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v20

    add-int/lit8 v20, v20, -0x18

    .line 94
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 97
    .local v18, "pairs":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v15, v19, 0xc

    .line 98
    .local v15, "pairSize":I
    const-wide/16 v4, 0x0

    .line 99
    .local v4, "changeSize":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v19

    add-int v19, v19, v15

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 100
    .local v9, "newApkSigningBlock":Ljava/nio/ByteBuffer;
    sget-object v19, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    const/4 v6, 0x0

    .line 104
    .local v6, "entryCount":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 107
    new-instance v19, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 110
    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 111
    .local v10, "lenLong":J
    const-wide/16 v20, 0x4

    cmp-long v19, v10, v20

    if-ltz v19, :cond_1

    const-wide/32 v20, 0x7fffffff

    cmp-long v19, v10, v20

    if-lez v19, :cond_2

    .line 112
    :cond_1
    new-instance v19, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "APK Signing Block entry #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " size out of range: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 116
    :cond_2
    long-to-int v8, v10

    .line 117
    .local v8, "len":I
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v19

    add-int v14, v19, v8

    .line 118
    .local v14, "nextEntryPos":I
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v19

    move/from16 v0, v19

    if-le v8, v0, :cond_3

    .line 119
    new-instance v19, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "APK Signing Block entry #"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " size out of range: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", available: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 120
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 123
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 124
    .local v7, "id":I
    move/from16 v0, p1

    if-ne v7, v0, :cond_6

    .line 125
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x4

    sub-int v19, v19, v8

    move/from16 v0, v19

    int-to-long v4, v0

    .line 126
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 128
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 129
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v20

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    .end local v7    # "id":I
    .end local v8    # "len":I
    .end local v10    # "lenLong":J
    .end local v14    # "nextEntryPos":I
    :cond_4
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-nez v19, :cond_5

    .line 142
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 143
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 144
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 145
    int-to-long v4, v15

    .line 148
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v16

    .line 149
    .local v16, "oldSize":J
    add-long v12, v16, v4

    .line 150
    .local v12, "newSize":J
    invoke-virtual {v9, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x10

    const/16 v21, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 153
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    invoke-virtual {v9, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 156
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    long-to-int v0, v12

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/tencent/msdk/apkchannel/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/msdk/apkchannel/Pair;

    move-result-object v19

    return-object v19

    .line 134
    .end local v12    # "newSize":J
    .end local v16    # "oldSize":J
    .restart local v7    # "id":I
    .restart local v8    # "len":I
    .restart local v10    # "lenLong":J
    .restart local v14    # "nextEntryPos":I
    :cond_6
    invoke-virtual {v9, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    add-int/lit8 v19, v8, -0x4

    invoke-static/range {v18 .. v19}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 137
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0
.end method

.method private static getCdfh(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .param p3, "centralDirSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    .local v0, "cdfh":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 82
    return-object v0
.end method

.method public static isSignatureV2Apk(Ljava/lang/String;)Z
    .locals 1
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readMsdkComment(Ljava/lang/String;)[B
    .locals 1
    .param p0, "apkV2FilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 35
    const v0, 0x71717874

    invoke-static {p0, v0}, Lcom/tencent/msdk/apkchannel/ApkSignatureV2ChannelTool;->readPairValueWithId(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static readPairValueWithId(Ljava/lang/String;I)[B
    .locals 14
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v0, p0, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v13, 0x0

    .line 52
    :try_start_0
    invoke-static {v0}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/tencent/msdk/apkchannel/Pair;

    move-result-object v8

    .line 53
    .local v8, "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v7, v8, Lcom/tencent/msdk/apkchannel/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 54
    .local v7, "eocd":Ljava/nio/ByteBuffer;
    iget-object v9, v8, Lcom/tencent/msdk/apkchannel/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 55
    .local v10, "eocdOffset":J
    invoke-static {v0, v10, v11}, Lcom/tencent/msdk/apkchannel/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 56
    new-instance v9, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v12, "ZIP64 APK not supported"

    invoke-direct {v9, v12}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    .end local v7    # "eocd":Ljava/nio/ByteBuffer;
    .end local v8    # "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v10    # "eocdOffset":J
    :catch_0
    move-exception v9

    :try_start_1
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :catchall_0
    move-exception v12

    move-object v13, v9

    :goto_0
    if-eqz v0, :cond_0

    if-eqz v13, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    throw v12

    .line 61
    .restart local v7    # "eocd":Ljava/nio/ByteBuffer;
    .restart local v8    # "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .restart local v10    # "eocdOffset":J
    :cond_1
    :try_start_3
    invoke-static {v7, v10, v11}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 63
    .local v4, "centralDirOffset":J
    invoke-static {v0, v4, v5}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/tencent/msdk/apkchannel/Pair;

    move-result-object v2

    .line 64
    .local v2, "apkSigningBlockAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v1, v2, Lcom/tencent/msdk/apkchannel/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 67
    .local v1, "apkSigningBlock":Ljava/nio/ByteBuffer;
    invoke-static {v1, p1}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->findApkSigningBlockWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 69
    .local v6, "channelBlock":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    new-array v3, v9, [B

    .line 70
    .local v3, "bytes":[B
    const/4 v9, 0x0

    array-length v12, v3

    invoke-virtual {v6, v3, v9, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    if-eqz v0, :cond_2

    if-eqz v13, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    return-object v3

    :catch_1
    move-exception v9

    invoke-virtual {v13, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    .end local v1    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    .end local v2    # "apkSigningBlockAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v3    # "bytes":[B
    .end local v4    # "centralDirOffset":J
    .end local v6    # "channelBlock":Ljava/nio/ByteBuffer;
    .end local v7    # "eocd":Ljava/nio/ByteBuffer;
    .end local v8    # "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v10    # "eocdOffset":J
    :catch_2
    move-exception v9

    invoke-virtual {v13, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    :catchall_1
    move-exception v9

    move-object v12, v9

    goto :goto_0
.end method
