.class public Lcom/tencent/component/plugin/PluginNativeHelper;
.super Ljava/lang/Object;
.source "PluginNativeHelper.java"


# static fields
.field private static final CHECKSUM:Ljava/lang/String; = ".checksum"

.field private static final CHECKSUM_BUFFER_SIZE:I = 0x80

.field private static final CRC_BUFFER_SIZE:I = 0x2000

.field private static final CRC_FAST_BLOCK_NUM:I = 0x4

.field private static final CRC_FAST_BLOCK_SIZE:J = 0x5000L

.field private static final TAG:Ljava/lang/String; = "PluginNativeHelper"

.field private static final sUniqueLock:Lcom/tencent/component/utils/UniqueLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/UniqueLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/tencent/component/utils/UniqueLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueLock;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginNativeHelper;->sUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static computeChecksum(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 101
    :goto_0
    return-object v2

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {p0}, Lcom/tencent/component/plugin/PluginNativeHelper;->fastCrc(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v0

    .line 98
    .local v0, "crc":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static computeFastCrcBlockSize(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 206
    const-wide/16 v0, 0x5000

    return-wide v0
.end method

.method private static computeFastCrcSkipSize(Ljava/io/File;)J
    .locals 12
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 211
    const/4 v0, 0x4

    .line 212
    .local v0, "blockNum":I
    const-wide/16 v2, 0x5000

    .line 213
    .local v2, "blockSize":J
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    int-to-long v10, v0

    mul-long/2addr v10, v2

    sub-long v6, v8, v10

    .line 214
    .local v6, "totalSkipSize":J
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    .line 215
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x3

    int-to-long v8, v1

    div-long v4, v6, v8

    .line 219
    .local v4, "blockSkipSize":J
    :goto_0
    return-wide v4

    .end local v4    # "blockSkipSize":J
    :cond_0
    move-wide v4, v6

    .line 215
    goto :goto_0

    .line 217
    :cond_1
    const-wide/16 v4, 0x0

    .restart local v4    # "blockSkipSize":J
    goto :goto_0
.end method

.method public static copyNativeBinariesIfNeeded(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/tencent/component/plugin/PluginNativeHelper;->isValidFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 59
    :goto_0
    return v2

    .line 42
    :cond_1
    sget-object v4, Lcom/tencent/component/plugin/PluginNativeHelper;->sUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 43
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/tencent/component/plugin/PluginNativeHelper;->computeChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "srcChecksum":Ljava/lang/String;
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginNativeHelper;->readChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "curChecksum":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    const/4 v2, 0x1

    .line 59
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 51
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginNativeHelper;->ensureDirectory(Ljava/io/File;)Z

    .line 52
    invoke-static {p0, p1}, Lcom/tencent/component/utils/NativeLibraryHelper;->copyNativeBinariesIfNeeded(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 53
    .local v2, "result":Z
    if-eqz v2, :cond_3

    .line 55
    invoke-static {p1, v3}, Lcom/tencent/component/plugin/PluginNativeHelper;->writeChecksum(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "curChecksum":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "srcChecksum":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public static copyNativeBinariesIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "sharedLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginNativeHelper;->copyNativeBinariesIfNeeded(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method private static ensureDirectory(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {p0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 231
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0
.end method

.method private static fastCrc(Ljava/io/File;)Ljava/lang/Long;
    .locals 20
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 162
    const/4 v7, 0x0

    .line 163
    .local v7, "crc":Ljava/lang/Long;
    const/4 v11, 0x0

    .line 165
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/tencent/component/plugin/PluginNativeHelper;->computeFastCrcBlockSize(Ljava/io/File;)J

    move-result-wide v2

    .line 166
    .local v2, "blockSize":J
    invoke-static/range {p0 .. p0}, Lcom/tencent/component/plugin/PluginNativeHelper;->computeFastCrcSkipSize(Ljava/io/File;)J

    move-result-wide v4

    .line 167
    .local v4, "blockSkipSize":J
    const-wide/16 v16, 0x2000

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-gtz v15, :cond_3

    const/16 v6, 0x2000

    .line 169
    .local v6, "bufferSize":I
    :goto_0
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 172
    .local v8, "crc32":Ljava/util/zip/CRC32;
    new-array v9, v6, [B

    .line 173
    .local v9, "crcBuffer":[B
    const/4 v14, 0x0

    .line 175
    .local v14, "totalBytes":I
    :cond_0
    invoke-virtual {v12, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    .local v13, "numBytes":I
    if-lez v13, :cond_1

    .line 176
    const/4 v15, 0x0

    invoke-virtual {v8, v9, v15, v13}, Ljava/util/zip/CRC32;->update([BII)V

    .line 177
    add-int/2addr v14, v13

    .line 178
    int-to-long v0, v14

    move-wide/from16 v16, v0

    cmp-long v15, v16, v2

    if-ltz v15, :cond_0

    .line 180
    const/4 v14, 0x0

    .line 181
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-lez v15, :cond_0

    invoke-virtual {v12, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v16

    cmp-long v15, v16, v4

    if-eqz v15, :cond_0

    .line 187
    :cond_1
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 194
    if-eqz v12, :cond_5

    .line 196
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v12

    .line 202
    .end local v2    # "blockSize":J
    .end local v4    # "blockSkipSize":J
    .end local v6    # "bufferSize":I
    .end local v8    # "crc32":Ljava/util/zip/CRC32;
    .end local v9    # "crcBuffer":[B
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "numBytes":I
    .end local v14    # "totalBytes":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-object v7

    .line 167
    .restart local v2    # "blockSize":J
    .restart local v4    # "blockSkipSize":J
    :cond_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v6, v0

    goto :goto_0

    .line 197
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "bufferSize":I
    .restart local v8    # "crc32":Ljava/util/zip/CRC32;
    .restart local v9    # "crcBuffer":[B
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "numBytes":I
    .restart local v14    # "totalBytes":I
    :catch_0
    move-exception v15

    move-object v11, v12

    .line 199
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 189
    .end local v2    # "blockSize":J
    .end local v4    # "blockSkipSize":J
    .end local v6    # "bufferSize":I
    .end local v8    # "crc32":Ljava/util/zip/CRC32;
    .end local v9    # "crcBuffer":[B
    .end local v13    # "numBytes":I
    .end local v14    # "totalBytes":I
    :catch_1
    move-exception v10

    .line 190
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v15, "PluginNativeHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t open file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    if-eqz v11, :cond_2

    .line 196
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 197
    :catch_2
    move-exception v15

    goto :goto_1

    .line 191
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v10

    .line 192
    .local v10, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v15, "PluginNativeHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t read file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 194
    if-eqz v11, :cond_2

    .line 196
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 197
    :catch_4
    move-exception v15

    goto :goto_1

    .line 194
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_4
    if-eqz v11, :cond_4

    .line 196
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 199
    :cond_4
    :goto_5
    throw v15

    .line 197
    :catch_5
    move-exception v16

    goto :goto_5

    .line 194
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "blockSize":J
    .restart local v4    # "blockSkipSize":J
    .restart local v6    # "bufferSize":I
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v15

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 191
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v10

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 189
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v10

    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "crc32":Ljava/util/zip/CRC32;
    .restart local v9    # "crcBuffer":[B
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "numBytes":I
    .restart local v14    # "totalBytes":I
    :cond_5
    move-object v11, v12

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static isValidChecksum(Ljava/io/File;)Z
    .locals 1
    .param p0, "checksum"    # Ljava/io/File;

    .prologue
    .line 235
    invoke-static {p0}, Lcom/tencent/component/plugin/PluginNativeHelper;->isValidFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static isValidFile(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 239
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readChecksum(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 72
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v2

    .line 75
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, ".checksum"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/tencent/component/plugin/PluginNativeHelper;->isValidChecksum(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-static {v1}, Lcom/tencent/component/plugin/PluginNativeHelper;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "checksum":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "checksum":Ljava/lang/String;
    :goto_1
    move-object v2, v0

    goto :goto_0

    .restart local v0    # "checksum":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private static readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 105
    const/4 v5, 0x0

    .line 106
    .local v5, "s":Ljava/lang/String;
    const/4 v3, 0x0

    .line 108
    .local v3, "reader":Ljava/io/Reader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v3    # "reader":Ljava/io/Reader;
    .local v4, "reader":Ljava/io/Reader;
    const/16 v7, 0x80

    :try_start_1
    new-array v0, v7, [C

    .line 110
    .local v0, "buffer":[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_1

    .line 113
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 117
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 118
    .end local v4    # "reader":Ljava/io/Reader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/Reader;
    :goto_1
    :try_start_2
    const-string v7, "PluginNativeHelper"

    const-string v8, "cannot find file to read"

    invoke-static {v7, v8, v2}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    if-eqz v3, :cond_0

    .line 124
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 130
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-object v5

    .line 115
    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v4    # "reader":Ljava/io/Reader;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 122
    if-eqz v4, :cond_3

    .line 124
    :try_start_5
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v4

    .line 127
    .end local v4    # "reader":Ljava/io/Reader;
    .restart local v3    # "reader":Ljava/io/Reader;
    goto :goto_2

    .line 125
    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v4    # "reader":Ljava/io/Reader;
    :catch_1
    move-exception v7

    move-object v3, v4

    .line 127
    .end local v4    # "reader":Ljava/io/Reader;
    .restart local v3    # "reader":Ljava/io/Reader;
    goto :goto_2

    .line 119
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "PluginNativeHelper"

    const-string v8, "error occurs while reading file"

    invoke-static {v7, v8, v2}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    if-eqz v3, :cond_0

    .line 124
    :try_start_7
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 125
    :catch_3
    move-exception v7

    goto :goto_2

    .line 122
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_2

    .line 124
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 127
    :cond_2
    :goto_5
    throw v7

    .line 125
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v7

    goto :goto_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    goto :goto_5

    .line 122
    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v4    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/Reader;
    .restart local v3    # "reader":Ljava/io/Reader;
    goto :goto_4

    .line 119
    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v4    # "reader":Ljava/io/Reader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/Reader;
    .restart local v3    # "reader":Ljava/io/Reader;
    goto :goto_3

    .line 117
    :catch_7
    move-exception v2

    goto :goto_1

    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v4    # "reader":Ljava/io/Reader;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/Reader;
    .restart local v3    # "reader":Ljava/io/Reader;
    goto :goto_2
.end method

.method public static removeNativeBinaries(Ljava/io/File;)Z
    .locals 1
    .param p0, "nativeLibraryDir"    # Ljava/io/File;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/tencent/component/utils/NativeLibraryHelper;->removeNativeBinaries(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static removeNativeBinaries(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/component/plugin/PluginNativeHelper;->removeNativeBinaries(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static writeChecksum(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "checksum"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".checksum"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/tencent/component/plugin/PluginNativeHelper;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static writeStringToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const-string p1, ""

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 138
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 141
    .local v2, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/component/plugin/PluginNativeHelper;->ensureDirectory(Ljava/io/File;)Z

    .line 142
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v2    # "writer":Ljava/io/Writer;
    .local v3, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    const/4 v1, 0x1

    .line 149
    if-eqz v3, :cond_3

    .line 151
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 157
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_1
    :goto_0
    return v1

    .line 152
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 154
    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    goto :goto_0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "PluginNativeHelper"

    const-string v5, "error occurs while writing file"

    invoke-static {v4, v5, v0}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    if-eqz v2, :cond_1

    .line 151
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 152
    :catch_2
    move-exception v4

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 151
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 154
    :cond_2
    :goto_3
    throw v4

    .line 152
    :catch_3
    move-exception v5

    goto :goto_3

    .line 149
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    goto :goto_2

    .line 146
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    goto :goto_1

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_3
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
