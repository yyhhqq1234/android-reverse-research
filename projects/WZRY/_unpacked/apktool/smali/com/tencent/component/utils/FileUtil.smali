.class public Lcom/tencent/component/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/FileUtil$InnerEnvironment;,
        Lcom/tencent/component/utils/FileUtil$FileComparator;
    }
.end annotation


# static fields
.field public static final SIMPLE_COMPARATOR:Lcom/tencent/component/utils/FileUtil$FileComparator;

.field public static final ZIP_BUFFER_SIZE:I = 0x1000

.field private static volatile mSdcardState:Ljava/lang/String;

.field private static mSdcardStateReceiver:Landroid/content/BroadcastReceiver;

.field private static final sCacheDirLock:Ljava/lang/Object;

.field private static volatile sHasRegister:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/tencent/component/utils/FileUtil$1;

    invoke-direct {v0}, Lcom/tencent/component/utils/FileUtil$1;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/FileUtil;->SIMPLE_COMPARATOR:Lcom/tencent/component/utils/FileUtil$FileComparator;

    .line 691
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/FileUtil;->sCacheDirLock:Ljava/lang/Object;

    .line 987
    new-instance v0, Lcom/tencent/component/utils/FileUtil$2;

    invoke-direct {v0}, Lcom/tencent/component/utils/FileUtil$2;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/FileUtil;->mSdcardStateReceiver:Landroid/content/BroadcastReceiver;

    .line 995
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/component/utils/FileUtil;->sHasRegister:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/tencent/component/utils/FileUtil;->mSdcardState:Ljava/lang/String;

    return-object p0
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {p2}, Lcom/tencent/component/utils/FileUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 285
    :cond_0
    return-void

    .line 249
    :cond_1
    if-nez p1, :cond_2

    .line 250
    const-string p1, ""

    .line 252
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 253
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 255
    .local v3, "files":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 266
    :cond_3
    :goto_0
    if-eqz v3, :cond_0

    .line 270
    array-length v6, v3

    if-nez v6, :cond_4

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 273
    invoke-static {p0, p1, p2}, Lcom/tencent/component/utils/FileUtil;->performCopyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_4
    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6

    .line 278
    .local v2, "file":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/component/utils/FileUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 277
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 256
    .end local v2    # "file":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 259
    invoke-static {p0, p1, p2}, Lcom/tencent/component/utils/FileUtil;->performCopyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 263
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    move-object v4, v2

    .line 282
    .local v4, "newAssetDir":Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "newDestDir":Ljava/lang/String;
    invoke-static {p0, v4, v5}, Lcom/tencent/component/utils/FileUtil;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 281
    .end local v4    # "newAssetDir":Ljava/lang/String;
    .end local v5    # "newDestDir":Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "srcFilename"    # Ljava/lang/String;
    .param p1, "destFilename"    # Ljava/lang/String;
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v7, "srcFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 124
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find the source file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 125
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 128
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_1

    .line 129
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read the source file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 130
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 132
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "destFile":Ljava/io/File;
    if-nez p2, :cond_3

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 139
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_5

    .line 141
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot write the destination file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_5

    .line 147
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot write the destination file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 152
    :cond_5
    const/4 v2, 0x0

    .line 153
    .local v2, "inputStream":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 154
    .local v4, "outputStream":Ljava/io/BufferedOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 156
    .local v0, "block":[B
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .local v3, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 160
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v5, "outputStream":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 161
    .local v6, "readLength":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_7

    .line 166
    if-eqz v3, :cond_6

    .line 168
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 173
    :cond_6
    :goto_2
    if-eqz v5, :cond_2

    .line 175
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v8

    goto :goto_0

    .line 163
    :cond_7
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v5, v0, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 166
    .end local v6    # "readLength":I
    :catchall_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v2, :cond_8

    .line 168
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 173
    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 175
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 178
    :cond_9
    :goto_5
    throw v8

    .line 169
    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "readLength":I
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .end local v6    # "readLength":I
    .restart local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v9

    goto :goto_4

    .line 176
    :catch_3
    move-exception v9

    goto :goto_5

    .line 166
    :catchall_1
    move-exception v8

    goto :goto_3

    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public static copyFiles(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/FileUtil;->copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method public static copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 71
    sget-object v0, Lcom/tencent/component/utils/FileUtil;->SIMPLE_COMPARATOR:Lcom/tencent/component/utils/FileUtil$FileComparator;

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/component/utils/FileUtil;->copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/component/utils/FileUtil$FileComparator;)Z

    move-result v0

    return v0
.end method

.method public static copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/component/utils/FileUtil$FileComparator;)Z
    .locals 7
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .param p3, "comparator"    # Lcom/tencent/component/utils/FileUtil$FileComparator;

    .prologue
    const/4 v3, 0x0

    .line 85
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v3

    .line 107
    :cond_1
    :goto_0
    return v1

    .line 89
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v3

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/component/utils/FileUtil;->performCopyFile(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/component/utils/FileUtil$FileComparator;)Z

    move-result v1

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "paths":[Ljava/io/File;
    if-nez v0, :cond_5

    move v1, v3

    .line 98
    goto :goto_0

    .line 101
    :cond_5
    const/4 v1, 0x1

    .line 102
    .local v1, "result":Z
    array-length v4, v0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 103
    .local v2, "sub":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v5, p2}, Lcom/tencent/component/utils/FileUtil;->copyFiles(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 104
    const/4 v1, 0x0

    .line 102
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static delete(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;Z)V

    .line 371
    return-void
.end method

.method public static delete(Ljava/io/File;Z)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "ignoreDir"    # Z

    .prologue
    .line 380
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 389
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 393
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 394
    .local v0, "f":Ljava/io/File;
    invoke-static {v0, p1}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;Z)V

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "f":Ljava/io/File;
    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static doZip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V
    .locals 10
    .param p0, "zos"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 562
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 563
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "I/O Object got NullPointerException"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 566
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 567
    new-instance v7, Ljava/io/FileNotFoundException;

    const-string v8, "Target File is missing"

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 570
    :cond_2
    const/4 v0, 0x0

    .line 572
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 574
    .local v3, "readLen":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, "rootName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 579
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 581
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 583
    :goto_1
    const/4 v7, -0x1

    const/4 v8, 0x0

    array-length v9, p3

    invoke-virtual {v1, p3, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-eq v7, v3, :cond_4

    .line 584
    const/4 v7, 0x0

    invoke-virtual {p0, p3, v7, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 588
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 589
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v0}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 591
    throw v2

    .line 574
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "rootName":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 587
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "rootName":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-static {v1}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 602
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :cond_5
    return-void

    .line 595
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 596
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 598
    .local v6, "subFiles":[Ljava/io/File;
    array-length v8, v6

    :goto_3
    if-ge v7, v8, :cond_5

    aget-object v5, v6, v7

    .line 599
    .local v5, "subFile":Ljava/io/File;
    invoke-static {p0, v5, v4, p3}, Lcom/tencent/component/utils/FileUtil;->doZip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V

    .line 598
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 588
    .end local v5    # "subFile":Ljava/io/File;
    .end local v6    # "subFiles":[Ljava/io/File;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 777
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/FileUtil;->getCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 789
    invoke-static {p0, p1, p2}, Lcom/tencent/component/utils/FileUtil;->getExternalCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "dir":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "dir":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "dir":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/component/utils/FileUtil;->getInternalCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 797
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/FileUtil;->getExternalCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 806
    invoke-static {p0, p2}, Lcom/tencent/component/utils/FileUtil;->getExternalCacheDir(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "dir":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 808
    const/4 v0, 0x0

    .line 824
    .end local v0    # "dir":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 810
    .restart local v0    # "dir":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/tencent/component/utils/FileUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 813
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    .line 815
    :cond_2
    sget-object v3, Lcom/tencent/component/utils/FileUtil;->sCacheDirLock:Ljava/lang/Object;

    monitor-enter v3

    .line 816
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_5

    .line 817
    invoke-static {v1}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 818
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 822
    :cond_3
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 819
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 820
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 822
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getExternalCacheDir(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "persist"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 860
    invoke-static {}, Lcom/tencent/component/utils/FileUtil;->isExternalAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-object v1

    .line 863
    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0, v3}, Lcom/tencent/component/utils/FileUtil$InnerEnvironment;->getExternalCacheDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 865
    .local v0, "externalDir":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 863
    .end local v0    # "externalDir":Ljava/io/File;
    :cond_2
    const-string v2, "cache"

    .line 864
    invoke-static {p0, v2, v3}, Lcom/tencent/component/utils/FileUtil$InnerEnvironment;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method

.method public static getExternalCacheDirExt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/FileUtil;->getExternalCacheDirExt(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalCacheDirExt(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 883
    invoke-static {p0, p2}, Lcom/tencent/component/utils/FileUtil;->getExternalCacheDirExt(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "dir":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 885
    const/4 v0, 0x0

    .line 901
    .end local v0    # "dir":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 887
    .restart local v0    # "dir":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/tencent/component/utils/FileUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 890
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 891
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    .line 892
    :cond_2
    sget-object v3, Lcom/tencent/component/utils/FileUtil;->sCacheDirLock:Ljava/lang/Object;

    monitor-enter v3

    .line 893
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_5

    .line 894
    invoke-static {v1}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 895
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 899
    :cond_3
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 896
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 897
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 899
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static getExternalCacheDirExt(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "persist"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 905
    invoke-static {}, Lcom/tencent/component/utils/FileUtil;->isExternalAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-object v1

    .line 908
    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0, v3}, Lcom/tencent/component/utils/FileUtil$InnerEnvironment;->getExternalCacheDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 910
    .local v0, "externalDir":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 908
    .end local v0    # "externalDir":Ljava/io/File;
    :cond_2
    const-string v2, "cache"

    .line 909
    invoke-static {p0, v2, v3}, Lcom/tencent/component/utils/FileUtil$InnerEnvironment;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method

.method public static getExternalGameJoyRecorderDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 828
    invoke-static {}, Lcom/tencent/component/utils/FileUtil;->isExternalAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v3

    .line 854
    :cond_0
    :goto_0
    return-object v0

    .line 831
    :cond_1
    const-string v4, "GameJoyRecorder"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/tencent/component/utils/FileUtil$InnerEnvironment;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 832
    .local v1, "externalDir":Ljava/io/File;
    const/4 v0, 0x0

    .line 833
    .local v0, "dir":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 834
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 836
    :cond_2
    if-nez v0, :cond_3

    move-object v0, v3

    .line 837
    goto :goto_0

    .line 840
    :cond_3
    invoke-static {p1}, Lcom/tencent/component/utils/FileUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 843
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 844
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    .line 845
    :cond_4
    sget-object v4, Lcom/tencent/component/utils/FileUtil;->sCacheDirLock:Ljava/lang/Object;

    monitor-enter v4

    .line 846
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_7

    .line 847
    invoke-static {v2}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 848
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 852
    :cond_5
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 850
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 852
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static getInternalCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 917
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/component/utils/FileUtil;->getInternalCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 926
    invoke-static {p0, p2}, Lcom/tencent/component/utils/FileUtil;->getInternalCacheDir(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "dir":Ljava/lang/String;
    invoke-static {p1}, Lcom/tencent/component/utils/FileUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    .end local v0    # "dir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 930
    .restart local v0    # "dir":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 932
    :cond_1
    sget-object v3, Lcom/tencent/component/utils/FileUtil;->sCacheDirLock:Ljava/lang/Object;

    monitor-enter v3

    .line 933
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    .line 934
    invoke-static {v1}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 935
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 939
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 936
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 937
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 939
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getInternalCacheDir(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "persist"    # Z

    .prologue
    .line 945
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 946
    :goto_0
    return-object v0

    .line 945
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInternalFileDir(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "persist"    # Z

    .prologue
    .line 950
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 951
    :goto_0
    return-object v0

    .line 950
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParentFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1034
    if-nez p0, :cond_0

    .line 1035
    const-string v2, "FileUtil"

    const-string v3, "filePath is null"

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :goto_0
    return-object v1

    .line 1038
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1040
    const-string v2, "FileUtil"

    const-string v3, "file is not exist"

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1043
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1016
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1017
    invoke-static {p0}, Lcom/tencent/component/utils/FileUtil;->registerSdcardReceiver(Landroid/content/Context;)V

    .line 1018
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 401
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExistFile(Ljava/lang/String;)Z
    .locals 8
    .param p0, "uploadFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 671
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v2

    .line 676
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 686
    const/4 v2, 0x1

    goto :goto_0

    .line 681
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UploadTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isExternal(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 958
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "externalCacheDir":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isExternalAvailable()Z
    .locals 2

    .prologue
    .line 975
    sget-object v0, Lcom/tencent/component/utils/FileUtil;->mSdcardState:Ljava/lang/String;

    .line 976
    .local v0, "state":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 977
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 978
    sput-object v0, Lcom/tencent/component/utils/FileUtil;->mSdcardState:Ljava/lang/String;

    .line 980
    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isInternal(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 966
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "internalCacheDir":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static performCopyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static/range {p1 .. p1}, Lcom/tencent/component/utils/FileUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/tencent/component/utils/FileUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 293
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v4, "dstFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 296
    .local v7, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 298
    .local v9, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v14

    if-eqz v14, :cond_8

    .line 300
    const/4 v13, 0x0

    .line 302
    .local v13, "tryStream":Z
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 303
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    .line 356
    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 357
    :cond_2
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v14

    goto :goto_0

    .line 307
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 308
    invoke-static {v4}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    .end local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_4
    :goto_1
    if-eqz v13, :cond_8

    .line 317
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v12

    .line 319
    .local v12, "tmpIn":Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_6

    .line 329
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 356
    if-eqz v7, :cond_5

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 357
    :cond_5
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 358
    :catch_1
    move-exception v14

    goto :goto_0

    .line 311
    .end local v12    # "tmpIn":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    .line 313
    .local v5, "e":Ljava/io/IOException;
    const/4 v13, 0x1

    goto :goto_1

    .line 322
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v12    # "tmpIn":Ljava/io/InputStream;
    :cond_6
    :try_start_8
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 323
    invoke-static {v4}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 329
    :cond_7
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 334
    .end local v12    # "tmpIn":Ljava/io/InputStream;
    .end local v13    # "tryStream":Z
    :cond_8
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 335
    .local v11, "parent":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 336
    invoke-static {v11}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 338
    :cond_9
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v14

    if-nez v14, :cond_e

    .line 356
    if-eqz v7, :cond_a

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 357
    :cond_a
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 358
    :catch_3
    move-exception v14

    goto/16 :goto_0

    .line 326
    .end local v11    # "parent":Ljava/io/File;
    .restart local v12    # "tmpIn":Ljava/io/InputStream;
    .restart local v13    # "tryStream":Z
    :catch_4
    move-exception v14

    .line 329
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 350
    .end local v12    # "tmpIn":Ljava/io/InputStream;
    .end local v13    # "tryStream":Z
    :catch_5
    move-exception v5

    .line 351
    .local v5, "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    invoke-static {v4}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 356
    if-eqz v7, :cond_b

    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 357
    :cond_b
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 358
    :catch_6
    move-exception v14

    goto/16 :goto_0

    .line 329
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v12    # "tmpIn":Ljava/io/InputStream;
    .restart local v13    # "tryStream":Z
    :catchall_0
    move-exception v14

    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    throw v14
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 355
    .end local v12    # "tmpIn":Ljava/io/InputStream;
    .end local v13    # "tryStream":Z
    :catchall_1
    move-exception v14

    .line 356
    :goto_4
    if-eqz v7, :cond_c

    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 357
    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 360
    :cond_d
    :goto_5
    throw v14

    .line 342
    .restart local v11    # "parent":Ljava/io/File;
    :cond_e
    :try_start_10
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 343
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 344
    .end local v9    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    const/16 v14, 0x400

    :try_start_11
    new-array v3, v14, [B

    .line 346
    .local v3, "buf":[B
    :goto_6
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    if-lez v8, :cond_f

    .line 347
    const/4 v14, 0x0

    invoke-virtual {v10, v3, v14, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_6

    .line 350
    .end local v3    # "buf":[B
    .end local v8    # "len":I
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 356
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v3    # "buf":[B
    .restart local v8    # "len":I
    .restart local v10    # "out":Ljava/io/OutputStream;
    :cond_f
    if-eqz v7, :cond_10

    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 357
    :cond_10
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    :cond_11
    move-object v9, v10

    .line 360
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 358
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    :catch_8
    move-exception v14

    move-object v9, v10

    .line 361
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 358
    .end local v3    # "buf":[B
    .end local v8    # "len":I
    .end local v11    # "parent":Ljava/io/File;
    :catch_9
    move-exception v15

    goto :goto_5

    .line 355
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/OutputStream;
    .restart local v11    # "parent":Ljava/io/File;
    :catchall_2
    move-exception v14

    move-object v9, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method private static performCopyFile(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/component/utils/FileUtil$FileComparator;)Z
    .locals 10
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FileFilter;
    .param p3, "comparator"    # Lcom/tencent/component/utils/FileUtil$FileComparator;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v8

    .line 234
    :goto_0
    return v2

    .line 187
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v8

    .line 188
    goto :goto_0

    .line 191
    :cond_2
    const/4 v1, 0x0

    .line 192
    .local v1, "inc":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 194
    .local v0, "ouc":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 228
    :cond_3
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 229
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    :cond_5
    :goto_1
    move v2, v8

    .line 232
    goto :goto_0

    .line 198
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 199
    if-eqz p3, :cond_9

    invoke-interface {p3, p0, p1}, Lcom/tencent/component/utils/FileUtil$FileComparator;->equals(Ljava/io/File;Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    .line 228
    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 229
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :cond_8
    :goto_2
    move v2, v9

    .line 232
    goto :goto_0

    .line 204
    :cond_9
    :try_start_4
    invoke-static {p1}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 208
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 209
    .local v7, "toParent":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 210
    invoke-static {v7}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 212
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-nez v2, :cond_e

    .line 228
    if-eqz v1, :cond_c

    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 229
    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_d
    :goto_3
    move v2, v8

    .line 232
    goto :goto_0

    .line 216
    :cond_e
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 217
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 219
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 228
    if-eqz v1, :cond_f

    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 229
    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_10
    :goto_4
    move v2, v9

    .line 234
    goto/16 :goto_0

    .line 221
    .end local v7    # "toParent":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 222
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    invoke-static {p1}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 228
    if-eqz v1, :cond_11

    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 229
    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    :cond_12
    :goto_5
    move v2, v8

    .line 232
    goto/16 :goto_0

    .line 227
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 228
    if-eqz v1, :cond_13

    :try_start_a
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 229
    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 232
    :cond_14
    :goto_6
    throw v2

    .line 230
    :catch_1
    move-exception v3

    goto :goto_6

    .restart local v6    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    goto :goto_5

    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v7    # "toParent":Ljava/io/File;
    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    .end local v7    # "toParent":Ljava/io/File;
    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto/16 :goto_1
.end method

.method private static registerSdcardReceiver(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 999
    :try_start_0
    sget-boolean v2, Lcom/tencent/component/utils/FileUtil;->sHasRegister:Z

    if-nez v2, :cond_0

    .line 1000
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1001
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1002
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1007
    sget-object v2, Lcom/tencent/component/utils/FileUtil;->mSdcardStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1008
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/component/utils/FileUtil;->sHasRegister:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "FileUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "regist sdcard receiver failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 1022
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1023
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v0, "fromFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v1, "toFile":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1030
    .end local v0    # "fromFile":Ljava/io/File;
    .end local v1    # "toFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static unjar(Ljava/io/File;Ljava/io/File;)Z
    .locals 14
    .param p0, "src"    # Ljava/io/File;
    .param p1, "destFolder"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 605
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_1

    .line 661
    :cond_0
    :goto_0
    return v7

    .line 609
    :cond_1
    const/4 v7, 0x0

    .line 611
    .local v7, "resu":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 612
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 615
    :cond_2
    const/4 v8, 0x0

    .line 617
    .local v8, "zis":Ljava/util/jar/JarInputStream;
    const/4 v0, 0x0

    .line 619
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    .line 621
    .local v4, "entry":Ljava/util/jar/JarEntry;
    const/16 v10, 0x2000

    new-array v2, v10, [B

    .line 623
    .local v2, "buffer":[B
    const/4 v6, 0x0

    .line 626
    .local v6, "readLen":I
    :try_start_0
    new-instance v9, Ljava/util/jar/JarInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "zis":Ljava/util/jar/JarInputStream;
    .local v9, "zis":Ljava/util/jar/JarInputStream;
    move-object v1, v0

    .line 628
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 629
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 630
    .local v5, "entryName":Ljava/lang/String;
    const-string v10, "../"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 631
    new-instance v10, Ljava/lang/Exception;

    const-string/jumbo v11, "unsecurity zipFile!"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 652
    .end local v5    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 653
    .end local v9    # "zis":Ljava/util/jar/JarInputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v8    # "zis":Ljava/util/jar/JarInputStream;
    :goto_2
    const/4 v7, 0x0

    .line 657
    invoke-static {v0}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 658
    invoke-static {v8}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    goto :goto_0

    .line 634
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "entryName":Ljava/lang/String;
    .restart local v9    # "zis":Ljava/util/jar/JarInputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 635
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_3
    move-object v1, v0

    .line 646
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 637
    :cond_4
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 639
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :goto_4
    const/4 v10, -0x1

    const/4 v11, 0x0

    :try_start_3
    array-length v12, v2

    invoke-virtual {v9, v2, v11, v12}, Ljava/util/jar/JarInputStream;->read([BII)I

    move-result v6

    if-eq v10, v6, :cond_5

    .line 640
    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_4

    .line 652
    :catch_1
    move-exception v3

    move-object v8, v9

    .end local v9    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v8    # "zis":Ljava/util/jar/JarInputStream;
    goto :goto_2

    .line 643
    .end local v8    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v9    # "zis":Ljava/util/jar/JarInputStream;
    :cond_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 644
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 654
    :catch_2
    move-exception v3

    move-object v8, v9

    .line 655
    .end local v5    # "entryName":Ljava/lang/String;
    .end local v9    # "zis":Ljava/util/jar/JarInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v8    # "zis":Ljava/util/jar/JarInputStream;
    :goto_5
    const/4 v7, 0x0

    .line 657
    invoke-static {v0}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 658
    invoke-static {v8}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    goto/16 :goto_0

    .line 648
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "zis":Ljava/util/jar/JarInputStream;
    :cond_6
    :try_start_4
    invoke-virtual {v9}, Ljava/util/jar/JarInputStream;->closeEntry()V

    .line 649
    invoke-virtual {v9}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 651
    const/4 v7, 0x1

    .line 657
    invoke-static {v1}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 658
    invoke-static {v9}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 659
    .end local v9    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v8    # "zis":Ljava/util/jar/JarInputStream;
    goto/16 :goto_0

    .line 657
    :catchall_0
    move-exception v10

    :goto_6
    invoke-static {v0}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 658
    invoke-static {v8}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    throw v10

    .line 657
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "zis":Ljava/util/jar/JarInputStream;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v8    # "zis":Ljava/util/jar/JarInputStream;
    goto :goto_6

    .end local v8    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v5    # "entryName":Ljava/lang/String;
    .restart local v9    # "zis":Ljava/util/jar/JarInputStream;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v8    # "zis":Ljava/util/jar/JarInputStream;
    goto :goto_6

    .line 654
    .end local v5    # "entryName":Ljava/lang/String;
    :catch_3
    move-exception v3

    goto :goto_5

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "zis":Ljava/util/jar/JarInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "zis":Ljava/util/jar/JarInputStream;
    .restart local v8    # "zis":Ljava/util/jar/JarInputStream;
    goto :goto_5

    .line 652
    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 18
    .param p0, "src"    # Ljava/io/File;
    .param p1, "destFolder"    # Ljava/io/File;

    .prologue
    .line 481
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmp-long v13, v14, v16

    if-ltz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canRead()Z

    move-result v13

    if-nez v13, :cond_1

    .line 482
    :cond_0
    const/4 v10, 0x0

    .line 541
    :goto_0
    return v10

    .line 485
    :cond_1
    const/4 v10, 0x0

    .line 487
    .local v10, "resu":Z
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 488
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    .line 491
    :cond_2
    const/4 v11, 0x0

    .line 493
    .local v11, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 495
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 497
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    const/16 v13, 0x2000

    new-array v4, v13, [B

    .line 499
    .local v4, "buffer":[B
    const/4 v9, 0x0

    .line 502
    .local v9, "readLen":I
    :try_start_0
    new-instance v12, Ljava/util/zip/ZipInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .local v12, "zis":Ljava/util/zip/ZipInputStream;
    move-object v3, v2

    .line 504
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 505
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, "entryName":Ljava/lang/String;
    const-string v13, "../"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 507
    new-instance v13, Ljava/lang/Exception;

    const-string/jumbo v14, "unsecurity zipFile!"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    .end local v8    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .line 533
    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_2
    const/4 v10, 0x0

    .line 537
    invoke-static {v2}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 538
    invoke-static {v11}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    goto :goto_0

    .line 510
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "entryName":Ljava/lang/String;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 511
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :goto_3
    move-object v3, v2

    .line 526
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 513
    :cond_4
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 515
    .local v7, "entryFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 517
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 519
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :goto_4
    const/4 v13, -0x1

    const/4 v14, 0x0

    :try_start_3
    array-length v15, v4

    invoke-virtual {v12, v4, v14, v15}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v9

    if-eq v13, v9, :cond_5

    .line 520
    const/4 v13, 0x0

    invoke-virtual {v2, v4, v13, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_4

    .line 532
    :catch_1
    move-exception v5

    move-object v11, v12

    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .line 523
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 524
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 534
    :catch_2
    move-exception v5

    move-object v11, v12

    .line 535
    .end local v7    # "entryFile":Ljava/io/File;
    .end local v8    # "entryName":Ljava/lang/String;
    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_5
    const/4 v10, 0x0

    .line 537
    invoke-static {v2}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 538
    invoke-static {v11}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    goto/16 :goto_0

    .line 528
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_6
    :try_start_4
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 529
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 531
    const/4 v10, 0x1

    .line 537
    invoke-static {v3}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 538
    invoke-static {v12}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .line 539
    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 537
    :catchall_0
    move-exception v13

    :goto_6
    invoke-static {v2}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 538
    invoke-static {v11}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    throw v13

    .line 537
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v13

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "entryFile":Ljava/io/File;
    .restart local v8    # "entryName":Ljava/lang/String;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_2
    move-exception v13

    move-object v11, v12

    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .line 534
    .end local v7    # "entryFile":Ljava/io/File;
    .end local v8    # "entryName":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_5

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v12    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_5

    .line 532
    :catch_5
    move-exception v5

    goto :goto_2
.end method

.method public static zip(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 468
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/tencent/component/utils/FileUtil;->zip([Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static zip([Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p0, "srcFiles"    # [Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 451
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v1}, Lcom/tencent/component/utils/FileUtil;->zip([Ljava/io/File;Ljava/io/FileOutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 455
    :goto_0
    return v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "FileUtil"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static zip([Ljava/io/File;Ljava/io/FileOutputStream;)Z
    .locals 9
    .param p0, "srcFiles"    # [Ljava/io/File;
    .param p1, "dest"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v6, 0x0

    .line 407
    if-eqz p0, :cond_0

    array-length v7, p0

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v6

    .line 437
    :goto_0
    return v2

    .line 411
    :cond_1
    const/4 v2, 0x0

    .line 413
    .local v2, "resu":Z
    const/4 v4, 0x0

    .line 416
    .local v4, "zos":Ljava/util/zip/ZipOutputStream;
    const/16 v7, 0x1000

    :try_start_0
    new-array v0, v7, [B

    .line 418
    .local v0, "buffer":[B
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v5, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    array-length v7, p0

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v3, p0, v6

    .line 422
    .local v3, "src":Ljava/io/File;
    const/4 v8, 0x0

    invoke-static {v5, v3, v8, v0}, Lcom/tencent/component/utils/FileUtil;->doZip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;[B)V

    .line 421
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 425
    .end local v3    # "src":Ljava/io/File;
    :cond_2
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 426
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 428
    const/4 v2, 0x1

    .line 434
    invoke-static {v5}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    move-object v4, v5

    .line 435
    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 429
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const/4 v2, 0x0

    .line 434
    invoke-static {v4}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v4}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    throw v6

    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_3

    .line 429
    .end local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_2
.end method
