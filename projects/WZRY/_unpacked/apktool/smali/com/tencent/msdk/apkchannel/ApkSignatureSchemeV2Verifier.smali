.class public Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME:Ljava/lang/String; = "X-Android-APK-Signed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    return-void
.end method

.method private static findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    .line 235
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 242
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit8 v7, v7, -0x18

    invoke-static {p0, v10, v7}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 244
    .local v6, "pairs":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 245
    .local v0, "entryCount":I
    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 246
    add-int/lit8 v0, v0, 0x1

    .line 247
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v10, :cond_0

    .line 248
    new-instance v7, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 251
    :cond_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 252
    .local v4, "lenLong":J
    const-wide/16 v8, 0x4

    cmp-long v7, v4, v8

    if-ltz v7, :cond_1

    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    .line 253
    :cond_1
    new-instance v7, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 257
    :cond_2
    long-to-int v2, v4

    .line 258
    .local v2, "len":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v3, v7, v2

    .line 259
    .local v3, "nextEntryPos":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v2, v7, :cond_3

    .line 260
    new-instance v7, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", available: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 262
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 264
    :cond_3
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 265
    .local v1, "id":I
    const v7, 0x7109871a

    if-ne v1, v7, :cond_4

    .line 266
    add-int/lit8 v7, v2, -0x4

    invoke-static {v6, v7}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    return-object v7

    .line 268
    :cond_4
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 271
    .end local v1    # "id":I
    .end local v2    # "len":I
    .end local v3    # "nextEntryPos":I
    .end local v4    # "lenLong":J
    :cond_5
    new-instance v7, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v8, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v7, v8}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/tencent/msdk/apkchannel/Pair;
    .locals 17
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Lcom/tencent/msdk/apkchannel/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 190
    const-wide/16 v12, 0x20

    cmp-long v11, p1, v12

    if-gez v11, :cond_0

    .line 191
    new-instance v11, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 198
    :cond_0
    const/16 v11, 0x18

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 199
    .local v3, "footer":Ljava/nio/ByteBuffer;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    sub-long v12, p1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 201
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 202
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x20676953204b5041L

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    const/16 v11, 0x10

    .line 203
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 204
    :cond_1
    new-instance v11, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v12, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v11, v12}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 208
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 209
    .local v6, "apkSigBlockSizeInFooter":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    cmp-long v11, v6, v12

    if-ltz v11, :cond_3

    const-wide/32 v12, 0x7ffffff7

    cmp-long v11, v6, v12

    if-lez v11, :cond_4

    .line 211
    :cond_3
    new-instance v11, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK Signing Block size out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 214
    :cond_4
    const-wide/16 v12, 0x8

    add-long/2addr v12, v6

    long-to-int v10, v12

    .line 215
    .local v10, "totalSize":I
    int-to-long v12, v10

    sub-long v4, p1, v12

    .line 216
    .local v4, "apkSigBlockOffset":J
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-gez v11, :cond_5

    .line 217
    new-instance v11, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK Signing Block offset out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 220
    :cond_5
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 221
    .local v2, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 223
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 224
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 225
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v11, v8, v6

    if-eqz v11, :cond_6

    .line 226
    new-instance v11, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 230
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/tencent/msdk/apkchannel/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/msdk/apkchannel/Pair;

    move-result-object v11

    return-object v11
.end method

.method static findApkSigningBlockWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 11
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .param p1, "pairId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    .line 277
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 284
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit8 v7, v7, -0x18

    invoke-static {p0, v10, v7}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 286
    .local v6, "pairs":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 287
    .local v0, "entryCount":I
    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 288
    add-int/lit8 v0, v0, 0x1

    .line 289
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v10, :cond_0

    .line 290
    new-instance v7, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 293
    :cond_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 294
    .local v4, "lenLong":J
    const-wide/16 v8, 0x4

    cmp-long v7, v4, v8

    if-ltz v7, :cond_1

    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    .line 295
    :cond_1
    new-instance v7, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 299
    :cond_2
    long-to-int v2, v4

    .line 300
    .local v2, "len":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v3, v7, v2

    .line 301
    .local v3, "nextEntryPos":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v2, v7, :cond_3

    .line 302
    new-instance v7, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", available: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 304
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 306
    :cond_3
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 307
    .local v1, "id":I
    if-ne v1, p1, :cond_4

    .line 308
    add-int/lit8 v7, v2, -0x4

    invoke-static {v6, v7}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    return-object v7

    .line 310
    :cond_4
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 313
    .end local v1    # "id":I
    .end local v2    # "len":I
    .end local v3    # "nextEntryPos":I
    .end local v4    # "lenLong":J
    :cond_5
    new-instance v7, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v8, "No Channel block in APK Signing Block"

    invoke-direct {v7, v8}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 154
    if-gez p1, :cond_0

    .line 155
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 158
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 159
    .local v2, "position":I
    add-int v0, v2, p1

    .line 160
    .local v0, "limit":I
    if-lt v0, v2, :cond_1

    if-le v0, v1, :cond_2

    .line 161
    :cond_1
    new-instance v4, Ljava/nio/BufferUnderflowException;

    invoke-direct {v4}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v4

    .line 163
    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 166
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v3

    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4
.end method

.method static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 7
    .param p0, "eocd"    # Ljava/nio/ByteBuffer;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 96
    .local v0, "centralDirOffset":J
    cmp-long v4, v0, p1

    if-ltz v4, :cond_0

    .line 97
    new-instance v4, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ZIP Central Directory offset out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". ZIP End of Central Directory offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 102
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-eqz v4, :cond_1

    .line 103
    new-instance v4, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_1
    return-wide v0
.end method

.method static getEocd(Ljava/io/RandomAccessFile;)Lcom/tencent/msdk/apkchannel/Pair;
    .locals 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Lcom/tencent/msdk/apkchannel/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    .prologue
    .line 83
    .line 84
    invoke-static {p0}, Lcom/tencent/msdk/apkchannel/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Lcom/tencent/msdk/apkchannel/Pair;

    move-result-object v0

    .line 85
    .local v0, "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 86
    new-instance v1, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    return-object v0
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .locals 13
    .param p0, "apkFile"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v10, "r"

    invoke-direct {v0, p0, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "apk":Ljava/io/RandomAccessFile;
    const/4 v12, 0x0

    .line 53
    :try_start_1
    invoke-static {v0}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/tencent/msdk/apkchannel/Pair;

    move-result-object v7

    .line 54
    .local v7, "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v6, v7, Lcom/tencent/msdk/apkchannel/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 55
    .local v6, "eocd":Ljava/nio/ByteBuffer;
    iget-object v10, v7, Lcom/tencent/msdk/apkchannel/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 56
    .local v8, "eocdOffset":J
    invoke-static {v0, v8, v9}, Lcom/tencent/msdk/apkchannel/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 57
    new-instance v10, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v11, "ZIP64 APK not supported"

    invoke-direct {v10, v11}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .end local v6    # "eocd":Ljava/nio/ByteBuffer;
    .end local v7    # "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v8    # "eocdOffset":J
    :catch_0
    move-exception v10

    :try_start_2
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :catchall_0
    move-exception v11

    move-object v12, v10

    :goto_0
    if-eqz v0, :cond_0

    if-eqz v12, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    :try_start_4
    throw v11
    :try_end_4
    .catch Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "apk":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v3

    .line 71
    .local v3, "e":Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    const/4 v10, 0x0

    .end local v3    # "e":Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    :cond_1
    :goto_2
    return v10

    .line 61
    .restart local v0    # "apk":Ljava/io/RandomAccessFile;
    .restart local v6    # "eocd":Ljava/nio/ByteBuffer;
    .restart local v7    # "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .restart local v8    # "eocdOffset":J
    :cond_2
    :try_start_5
    invoke-static {v6, v8, v9}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

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
    invoke-static {v1}, Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier;->findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 69
    const/4 v10, 0x1

    .line 70
    if-eqz v0, :cond_1

    if-eqz v12, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_2
    move-exception v11

    :try_start_7
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    .end local v1    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    .end local v2    # "apkSigningBlockAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v4    # "centralDirOffset":J
    .end local v6    # "eocd":Ljava/nio/ByteBuffer;
    .end local v7    # "eocdAndOffsetInFile":Lcom/tencent/msdk/apkchannel/Pair;, "Lcom/tencent/msdk/apkchannel/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v8    # "eocdOffset":J
    :catch_3
    move-exception v10

    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Lcom/tencent/msdk/apkchannel/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catchall_1
    move-exception v10

    move-object v11, v10

    goto :goto_0
.end method

.method static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 117
    if-gez p1, :cond_0

    .line 118
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_0
    if-ge p2, p1, :cond_1

    .line 121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end < start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 124
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le p2, v4, :cond_2

    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end > capacity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 128
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 130
    .local v2, "originalPosition":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 134
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v3

    .line 137
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4
.end method
