.class public Lcom/netease/download/storage/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canStore(Ljava/lang/String;J)Z
    .locals 3
    .param p0, "pStoragePath"    # Ljava/lang/String;
    .param p1, "pNeedSize"    # J

    .prologue
    .line 22
    invoke-static {p0}, Lcom/netease/download/storage/StorageUtil;->getFreeSpaceSize(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getFreeSpaceSize(Ljava/lang/String;)J
    .locals 10
    .param p0, "pStoragePath"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v5, "path":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 32
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 36
    :cond_1
    const/4 v6, 0x0

    .line 39
    .local v6, "sf":Landroid/os/StatFs;
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v6    # "sf":Landroid/os/StatFs;
    .local v7, "sf":Landroid/os/StatFs;
    const/16 v8, 0x12

    :try_start_1
    invoke-static {v8}, Lcom/netease/download/storage/StorageUtil;->isVersionOrGreaterThan(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 44
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 45
    .local v2, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 52
    .local v0, "availableBlocks":J
    :goto_0
    mul-long v8, v2, v0

    move-object v6, v7

    .line 57
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v7    # "sf":Landroid/os/StatFs;
    .restart local v6    # "sf":Landroid/os/StatFs;
    :goto_1
    return-wide v8

    .line 48
    .end local v6    # "sf":Landroid/os/StatFs;
    .restart local v7    # "sf":Landroid/os/StatFs;
    :cond_2
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 49
    .restart local v2    # "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    int-to-long v0, v8

    .restart local v0    # "availableBlocks":J
    goto :goto_0

    .line 54
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v7    # "sf":Landroid/os/StatFs;
    .restart local v6    # "sf":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 56
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 54
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "sf":Landroid/os/StatFs;
    .restart local v7    # "sf":Landroid/os/StatFs;
    :catch_1
    move-exception v4

    move-object v6, v7

    .end local v7    # "sf":Landroid/os/StatFs;
    .restart local v6    # "sf":Landroid/os/StatFs;
    goto :goto_2
.end method

.method private static isVersionOrGreaterThan(I)Z
    .locals 1
    .param p0, "version"    # I

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
