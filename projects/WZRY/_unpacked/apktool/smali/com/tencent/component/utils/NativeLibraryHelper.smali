.class public Lcom/tencent/component/utils/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/NativeLibraryHelper$IterateHandler;
    }
.end annotation


# static fields
.field private static final APK_LIB:Ljava/lang/String; = "lib/"

.field private static final APK_LIB_LEN:I

.field private static final LIB_PREFIX:Ljava/lang/String; = "/lib"

.field private static final LIB_PREFIX_LEN:I

.field private static final LIB_SUFFIX:Ljava/lang/String; = ".so"

.field private static final LIB_SUFFIX_LEN:I

.field private static final TAG:Ljava/lang/String; = "NativeLibraryHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "lib/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/tencent/component/utils/NativeLibraryHelper;->APK_LIB_LEN:I

    .line 27
    const-string v0, "/lib"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/tencent/component/utils/NativeLibraryHelper;->LIB_PREFIX_LEN:I

    .line 30
    const-string v0, ".so"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/tencent/component/utils/NativeLibraryHelper;->LIB_SUFFIX_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Ljava/util/zip/ZipEntry;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/component/utils/NativeLibraryHelper;->copyFileIfChanged(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static copyFileIfChanged(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;
    .param p2, "dstDir"    # Ljava/lang/String;
    .param p3, "dstName"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/component/utils/NativeLibraryHelper;->ensureDirectory(Ljava/io/File;)Z

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "dstPath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    invoke-static/range {v3 .. v9}, Lcom/tencent/component/utils/NativeLibraryHelper;->isFileDifferent(Ljava/lang/String;JJJ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    const/4 v4, 0x1

    .line 240
    :cond_0
    :goto_0
    return v4

    .line 211
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v10, "dstFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 214
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    :try_start_1
    new-array v2, v4, [B

    .line 218
    .local v2, "buffer":[B
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "numBytes":I
    if-lez v14, :cond_2

    .line 219
    const/4 v4, 0x0

    invoke-virtual {v13, v2, v4, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 221
    .end local v2    # "buffer":[B
    .end local v14    # "numBytes":I
    :catch_0
    move-exception v11

    move-object v12, v13

    .line 222
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v11, "e":Ljava/io/IOException;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string v4, "NativeLibraryHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t write dst file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    invoke-static {v10}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    const/4 v4, 0x0

    .line 226
    if-eqz v12, :cond_0

    .line 228
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 229
    :catch_1
    move-exception v5

    goto :goto_0

    .line 226
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "numBytes":I
    :cond_2
    if-eqz v13, :cond_3

    .line 228
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 236
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    move-result v4

    if-nez v4, :cond_4

    .line 237
    const-string v4, "NativeLibraryHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t set time for dst file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "buffer":[B
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "numBytes":I
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v12, :cond_5

    .line 228
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 231
    :cond_5
    :goto_5
    throw v4

    .line 229
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "numBytes":I
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v2    # "buffer":[B
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "numBytes":I
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    goto :goto_5

    .line 226
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 221
    :catch_4
    move-exception v11

    goto :goto_2
.end method

.method public static copyNativeBinariesIfNeeded(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/NativeLibraryHelper;->copyNativeBinariesIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static copyNativeBinariesIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "sharedLibraryDir"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 53
    .local v0, "cpuAbi":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 55
    .local v1, "cpuAbi2":Ljava/lang/String;
    :goto_0
    const-string v3, "ro.product.cpu.upgradeabi"

    const-string v4, "armeabi"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/PropertyUtils;->getQuickly(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "cpuAbi3":Ljava/lang/String;
    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/component/utils/NativeLibraryHelper;->copyNativeBinariesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 53
    .end local v1    # "cpuAbi2":Ljava/lang/String;
    .end local v2    # "cpuAbi3":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static copyNativeBinariesIfNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "sharedLibraryPath"    # Ljava/lang/String;
    .param p2, "cpuAbi"    # Ljava/lang/String;
    .param p3, "cpuAbi2"    # Ljava/lang/String;
    .param p4, "cpuAbi3"    # Ljava/lang/String;

    .prologue
    .line 61
    move-object v0, p1

    .line 62
    .local v0, "dstDir":Ljava/lang/String;
    new-instance v1, Lcom/tencent/component/utils/NativeLibraryHelper$1;

    invoke-direct {v1, v0}, Lcom/tencent/component/utils/NativeLibraryHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p3, p4, v1}, Lcom/tencent/component/utils/NativeLibraryHelper;->iterateOverNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/utils/NativeLibraryHelper$IterateHandler;)Z

    move-result v1

    return v1
.end method

.method private static ensureDirectory(Ljava/io/File;)Z
    .locals 1
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-static {p0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 299
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    .line 301
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isFileDifferent(Ljava/lang/String;JJJ)Z
    .locals 17
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileSize"    # J
    .param p3, "modifiedTime"    # J
    .param p5, "zipCrc"    # J

    .prologue
    .line 244
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v11, v12, p1

    if-eqz v11, :cond_1

    .line 247
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file size doesn\'t match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v11, 0x1

    .line 291
    :cond_0
    :goto_0
    return v11

    .line 252
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v11, v12, p3

    if-eqz v11, :cond_2

    .line 253
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mod time doesn\'t match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v11, 0x1

    goto :goto_0

    .line 258
    :cond_2
    const/4 v8, 0x0

    .line 260
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 263
    .local v4, "crc32":Ljava/util/zip/CRC32;
    const/16 v11, 0x2000

    new-array v5, v11, [B

    .line 265
    .local v5, "crcBuffer":[B
    :goto_1
    invoke-virtual {v9, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .local v10, "numBytes":I
    if-lez v10, :cond_3

    .line 266
    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11, v10}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 275
    .end local v4    # "crc32":Ljava/util/zip/CRC32;
    .end local v5    # "crcBuffer":[B
    .end local v10    # "numBytes":I
    :catch_0
    move-exception v6

    move-object v8, v9

    .line 276
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t open file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    const/4 v11, 0x1

    .line 282
    if-eqz v8, :cond_0

    .line 284
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 285
    :catch_1
    move-exception v12

    goto :goto_0

    .line 268
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "crc32":Ljava/util/zip/CRC32;
    .restart local v5    # "crcBuffer":[B
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "numBytes":I
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 270
    .local v2, "crc":J
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": crc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", zipCrc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p5

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    cmp-long v11, v2, p5

    if-eqz v11, :cond_4

    .line 272
    const/4 v11, 0x1

    .line 282
    if-eqz v9, :cond_0

    .line 284
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 285
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 282
    :cond_4
    if-eqz v9, :cond_5

    .line 284
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 291
    :cond_5
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 278
    .end local v2    # "crc":J
    .end local v4    # "crc32":Ljava/util/zip/CRC32;
    .end local v5    # "crcBuffer":[B
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "numBytes":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    .line 279
    .local v6, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t read file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 280
    const/4 v11, 0x1

    .line 282
    if-eqz v8, :cond_0

    .line 284
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 285
    :catch_4
    move-exception v12

    goto/16 :goto_0

    .line 282
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v8, :cond_6

    .line 284
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 287
    :cond_6
    :goto_6
    throw v11

    .line 285
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "crc":J
    .restart local v4    # "crc32":Ljava/util/zip/CRC32;
    .restart local v5    # "crcBuffer":[B
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "numBytes":I
    :catch_5
    move-exception v11

    goto :goto_3

    .end local v2    # "crc":J
    .end local v4    # "crc32":Ljava/util/zip/CRC32;
    .end local v5    # "crcBuffer":[B
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "numBytes":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v12

    goto :goto_6

    .line 282
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 278
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 275
    :catch_8
    move-exception v6

    goto/16 :goto_2
.end method

.method private static iterateOverNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/utils/NativeLibraryHelper$IterateHandler;)Z
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "cpuAbi"    # Ljava/lang/String;
    .param p2, "cpuAbi2"    # Ljava/lang/String;
    .param p3, "cpuAbi3"    # Ljava/lang/String;
    .param p4, "handler"    # Lcom/tencent/component/utils/NativeLibraryHelper$IterateHandler;

    .prologue
    .line 104
    const/4 v9, 0x0

    .line 106
    .local v9, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .local v10, "zf":Ljava/util/zip/ZipFile;
    const/4 v4, 0x0

    .line 109
    .local v4, "hasPrimaryAbi":Z
    const/4 v5, 0x0

    .line 110
    .local v5, "hasSecondaryAbi":Z
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 111
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 112
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 113
    .local v8, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "fileName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 119
    const-string v11, "../"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 123
    const-string v11, "lib/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    sget v12, Lcom/tencent/component/utils/NativeLibraryHelper;->APK_LIB_LEN:I

    add-int/lit8 v12, v12, 0x2

    sget v13, Lcom/tencent/component/utils/NativeLibraryHelper;->LIB_PREFIX_LEN:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    sget v13, Lcom/tencent/component/utils/NativeLibraryHelper;->LIB_SUFFIX_LEN:I

    add-int/2addr v12, v13

    if-lt v11, v12, :cond_0

    .line 133
    const/16 v11, 0x2f

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "nameWithSlash":Ljava/lang/String;
    const-string v11, ".so"

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "/lib"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 139
    sget v11, Lcom/tencent/component/utils/NativeLibraryHelper;->APK_LIB_LEN:I

    const/4 v12, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v3, v11, p1, v12, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_4

    sget v11, Lcom/tencent/component/utils/NativeLibraryHelper;->APK_LIB_LEN:I

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_4

    .line 141
    const/4 v4, 0x1

    .line 173
    :goto_1
    invoke-virtual {v10, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 175
    .local v6, "is":Ljava/io/InputStream;
    const/4 v11, 0x1

    :try_start_2
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v6, v8, v11}, Lcom/tencent/component/utils/NativeLibraryHelper$IterateHandler;->handleEntry(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 176
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure for handle match entry "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    const/4 v11, 0x0

    .line 180
    if-eqz v6, :cond_1

    .line 181
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :cond_1
    if-eqz v10, :cond_2

    .line 192
    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v9, v10

    .line 199
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "hasPrimaryAbi":Z
    .end local v5    # "hasSecondaryAbi":Z
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "nameWithSlash":Ljava/lang/String;
    .end local v8    # "ze":Ljava/util/zip/ZipEntry;
    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    :cond_3
    :goto_3
    return v11

    .line 142
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "hasPrimaryAbi":Z
    .restart local v5    # "hasSecondaryAbi":Z
    .restart local v7    # "nameWithSlash":Ljava/lang/String;
    .restart local v8    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zf":Ljava/util/zip/ZipFile;
    :cond_4
    if-eqz p2, :cond_7

    :try_start_5
    sget v11, Lcom/tencent/component/utils/NativeLibraryHelper;->APK_LIB_LEN:I

    const/4 v12, 0x0

    .line 143
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v3, v11, v0, v12, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_7

    sget v11, Lcom/tencent/component/utils/NativeLibraryHelper;->APK_LIB_LEN:I

    .line 144
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_7

    .line 146
    const/4 v5, 0x1

    .line 151
    if-eqz v4, :cond_5

    .line 152
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already saw primary ABI, skipping secondary ABI "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 186
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "nameWithSlash":Ljava/lang/String;
    .end local v8    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    move-object v9, v10

    .line 187
    .end local v4    # "hasPrimaryAbi":Z
    .end local v5    # "hasSecondaryAbi":Z
    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/io/IOException;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_6
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t open APK "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    const/4 v11, 0x0

    .line 190
    if-eqz v9, :cond_3

    .line 192
    :try_start_7
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 193
    :catch_1
    move-exception v12

    goto :goto_3

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "hasPrimaryAbi":Z
    .restart local v5    # "hasSecondaryAbi":Z
    .restart local v7    # "nameWithSlash":Ljava/lang/String;
    .restart local v8    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zf":Ljava/util/zip/ZipFile;
    :cond_5
    :try_start_8
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Using secondary ABI "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 190
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "nameWithSlash":Ljava/lang/String;
    .end local v8    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v11

    move-object v9, v10

    .end local v4    # "hasPrimaryAbi":Z
    .end local v5    # "hasSecondaryAbi":Z
    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    :goto_5
    if-eqz v9, :cond_6

    .line 192
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 195
    :cond_6
    :goto_6
    throw v11

    .line 157
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "hasPrimaryAbi":Z
    .restart local v5    # "hasSecondaryAbi":Z
    .restart local v7    # "nameWithSlash":Ljava/lang/String;
    .restart local v8    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zf":Ljava/util/zip/ZipFile;
    :cond_7
    if-eqz p3, :cond_a

    :try_start_a
    sget v11, Lcom/tencent/component/utils/NativeLibraryHelper;->APK_LIB_LEN:I

    const/4 v12, 0x0

    .line 158
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p3

    invoke-virtual {v3, v11, v0, v12, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_a

    sget v11, Lcom/tencent/component/utils/NativeLibraryHelper;->APK_LIB_LEN:I

    .line 159
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_a

    .line 161
    if-nez v4, :cond_8

    if-eqz v5, :cond_9

    .line 162
    :cond_8
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already saw primary or secondary ABI, skipping third ABI "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_9
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Using third ABI "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 168
    :cond_a
    const-string v11, "NativeLibraryHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "abi didn\'t match anything entry "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ABI is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ABI2 is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ABI3 is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_b
    if-eqz v6, :cond_0

    .line 181
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 180
    :catchall_1
    move-exception v11

    if-eqz v6, :cond_c

    .line 181
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_c
    throw v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 190
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "nameWithSlash":Ljava/lang/String;
    .end local v8    # "ze":Ljava/util/zip/ZipEntry;
    :cond_d
    if-eqz v10, :cond_e

    .line 192
    :try_start_b
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 199
    :cond_e
    :goto_7
    const/4 v11, 0x1

    move-object v9, v10

    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    goto/16 :goto_3

    .line 193
    .end local v9    # "zf":Ljava/util/zip/ZipFile;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "nameWithSlash":Ljava/lang/String;
    .restart local v8    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zf":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v12

    goto/16 :goto_2

    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "nameWithSlash":Ljava/lang/String;
    .end local v8    # "ze":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v11

    goto :goto_7

    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "hasPrimaryAbi":Z
    .end local v5    # "hasSecondaryAbi":Z
    .end local v10    # "zf":Ljava/util/zip/ZipFile;
    .restart local v9    # "zf":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v12

    goto/16 :goto_6

    .line 190
    :catchall_2
    move-exception v11

    goto/16 :goto_5

    .line 186
    :catch_5
    move-exception v1

    goto/16 :goto_4
.end method

.method public static removeNativeBinaries(Ljava/io/File;)Z
    .locals 6
    .param p0, "nativeLibraryDir"    # Ljava/io/File;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 85
    .local v1, "deletedFiles":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "binaries":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 88
    const/4 v2, 0x0

    .local v2, "nn":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 89
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    const-string v3, "NativeLibraryHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete native binary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "binaries":[Ljava/io/File;
    .end local v2    # "nn":I
    :cond_1
    return v1
.end method

.method public static removeNativeBinaries(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/component/utils/NativeLibraryHelper;->removeNativeBinaries(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
