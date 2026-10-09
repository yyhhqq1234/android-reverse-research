.class Lcom/tencent/component/plugin/server/PluginInstaller;
.super Ljava/lang/Object;
.source "PluginInstaller.java"


# static fields
.field public static INSTALL_FAILED_ALREADY_EXISTS:I = 0x0

.field public static INSTALL_FAILED_COPY_FILE:I = 0x0

.field public static INSTALL_FAILED_INTERNAL:I = 0x0

.field public static INSTALL_FAILED_INVALID_DIR:I = 0x0

.field public static INSTALL_FAILED_INVALID_FILE:I = 0x0

.field public static INSTALL_FAILED_VERIFY:I = 0x0

.field public static INSTALL_SUCCEED:I = 0x0

.field public static INSTALL_SUCCEED_FAILED_COPY_LIB:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PluginInstaller"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstallLock:Lcom/tencent/component/utils/UniqueLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/UniqueLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingLock:Lcom/tencent/component/utils/UniqueLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/UniqueLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

.field private final mPluginDir:Ljava/io/File;

.field private final mPluginExternalPendingDir:Ljava/io/File;

.field private final mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

.field private final mPluginPendingDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED_FAILED_COPY_LIB:I

    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INVALID_FILE:I

    .line 32
    const/4 v0, -0x2

    sput v0, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INVALID_DIR:I

    .line 33
    const/4 v0, -0x3

    sput v0, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_VERIFY:I

    .line 34
    const/4 v0, -0x4

    sput v0, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_COPY_FILE:I

    .line 35
    const/4 v0, -0x5

    sput v0, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_ALREADY_EXISTS:I

    .line 36
    const/4 v0, -0x6

    sput v0, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INTERNAL:I

    return-void
.end method

.method constructor <init>(Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    .locals 1
    .param p1, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/tencent/component/utils/UniqueLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mInstallLock:Lcom/tencent/component/utils/UniqueLock;

    .line 45
    new-instance v0, Lcom/tencent/component/utils/UniqueLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPendingLock:Lcom/tencent/component/utils/UniqueLock;

    .line 48
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    .line 49
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginManagerServer()Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    .line 51
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getInstallDir(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginDir:Ljava/io/File;

    .line 52
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getInstallPendingDir(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginPendingDir:Ljava/io/File;

    .line 53
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getExternalInstallPendingDir(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginExternalPendingDir:Ljava/io/File;

    .line 54
    return-void
.end method

.method private broadcastPluginInstalled(Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "oldVersion"    # I
    .param p3, "version"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/component/plugin/server/PlatformServerContext;->broadcastPluginInstalled(Ljava/lang/String;II)V

    .line 210
    return-void
.end method

.method private broadcastPluginUninstalled(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->broadcastPluginUninstalled(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;

    .prologue
    .line 372
    invoke-static {p0, p1}, Lcom/tencent/component/utils/FileUtil;->copyFiles(Ljava/io/File;Ljava/io/File;)Z

    .line 373
    return-void
.end method

.method private copyFileSafely(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .prologue
    .line 315
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->isFileValid(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-static {p1, p2}, Lcom/tencent/component/plugin/server/PluginInstaller;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 324
    invoke-static {p2}, Lcom/tencent/component/plugin/server/PluginInstaller;->isFileValid(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->isInternal(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/tencent/component/plugin/server/PluginInstaller;->isInternal(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->isInternal(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/tencent/component/plugin/server/PluginInstaller;->isInternal(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    :cond_3
    invoke-static {p2}, Lcom/tencent/component/plugin/server/PluginInstaller;->isInternal(Ljava/io/File;)Z

    move-result v0

    .line 328
    .local v0, "currStorage":Z
    if-nez v0, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lcom/tencent/component/plugin/server/PluginInstaller;->generateTmpFile(Z)Ljava/io/File;

    move-result-object v1

    .line 329
    .local v1, "tmpFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 332
    invoke-static {p1, v1}, Lcom/tencent/component/plugin/server/PluginInstaller;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 333
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    .line 334
    invoke-static {v1, p2}, Lcom/tencent/component/plugin/server/PluginInstaller;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 336
    invoke-static {v1}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    goto :goto_0

    .line 328
    .end local v1    # "tmpFile":Ljava/io/File;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static ensureDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 388
    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginInstaller;->isDirValid(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-static {p0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 390
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ensureInstallDir()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginDir:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginInstaller;->ensureDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private ensurePendingDir()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginPendingDir:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginInstaller;->ensureDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private generateInstallFile(Lcom/tencent/component/plugin/PluginInfo;)Ljava/io/File;
    .locals 3
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 348
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginInstallName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "installName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generatePendingFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 357
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginPendingDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generateTmpFile(Z)Ljava/io/File;
    .locals 4
    .param p1, "external"    # Z

    .prologue
    .line 365
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, p1, v3}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginTmpDir(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private installPendingPlugins(Ljava/io/File;)V
    .locals 9
    .param p1, "pendingDir"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->isDirValid(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    :cond_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 69
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 72
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 73
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, v4, v4}, Lcom/tencent/component/plugin/server/PluginInstaller;->performInstall(Ljava/io/File;ZZ)I

    move-result v2

    .line 74
    .local v2, "result":I
    const-string v6, "PluginInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pending install result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v6, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v6, v2, v0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->broadcastPendingInstallFinish(ILjava/io/File;)V

    .line 76
    iget-object v6, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/component/plugin/server/PluginConstant;->removePendingInstallInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isAlreadyPending(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 361
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginPendingDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isDirValid(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 380
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFileValid(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 384
    if-eqz p0, :cond_0

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

.method private static isInternal(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 396
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 397
    .local v1, "path":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "internalDir":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 396
    .end local v0    # "internalDir":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 398
    .restart local v0    # "internalDir":Ljava/lang/String;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private performInstall(Ljava/io/File;ZZ)I
    .locals 14
    .param p1, "file"    # Ljava/io/File;
    .param p2, "register"    # Z
    .param p3, "installByUser"    # Z

    .prologue
    .line 109
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->isFileValid(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 110
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    .line 111
    const-string v9, "install"

    const/4 v10, 0x0

    const-string v11, "invalid file"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const-string v9, "PluginInstaller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not valid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget v8, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INVALID_FILE:I

    .line 205
    :cond_0
    :goto_0
    return v8

    .line 116
    :cond_1
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/server/PluginInstaller;->ensureInstallDir()Z

    move-result v9

    if-nez v9, :cond_2

    .line 118
    const-string v9, "install"

    const/4 v10, 0x0

    const-string v11, "invalid install dir"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const-string v9, "PluginInstaller"

    const-string v10, "cannot create install dir"

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget v8, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INVALID_DIR:I

    monitor-exit p0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    iget-object v9, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    iget-object v10, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/tencent/component/plugin/server/PluginParser;->parse(Lcom/tencent/component/plugin/server/PlatformServerContext;Landroid/content/Context;Ljava/lang/String;I)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v7

    .line 128
    .local v7, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :try_start_2
    iget-object v9, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/component/plugin/server/PluginValidator;->getInstance(Landroid/content/Context;)Lcom/tencent/component/plugin/server/PluginValidator;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v9, v7, v10}, Lcom/tencent/component/plugin/server/PluginValidator;->validate(Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    :try_end_2
    .catch Lcom/tencent/component/plugin/server/PluginValidator$ValidateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    const/4 v8, -0x7

    .line 137
    .local v8, "result":I
    iget-object v9, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mInstallLock:Lcom/tencent/component/utils/UniqueLock;

    iget-object v10, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 138
    .local v4, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 140
    :try_start_3
    invoke-direct {p0, v7}, Lcom/tencent/component/plugin/server/PluginInstaller;->generateInstallFile(Lcom/tencent/component/plugin/PluginInfo;)Ljava/io/File;

    move-result-object v3

    .line 141
    .local v3, "installFile":Ljava/io/File;
    if-nez v3, :cond_3

    .line 142
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    .line 143
    const-string v9, "install"

    const/4 v10, 0x0

    const-string v11, "cannot generate install file"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plugin:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    const-string v9, "PluginInstaller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot generate install file for plugin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget v8, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INTERNAL:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    .end local v8    # "result":I
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 129
    .end local v3    # "installFile":Ljava/io/File;
    .end local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    .line 131
    const-string v9, "install"

    const/4 v10, 0x0

    const-string/jumbo v11, "verify error"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plugin:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v11, v12, v1}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    const-string v9, "PluginInstaller"

    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    sget v8, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_VERIFY:I

    goto/16 :goto_0

    .line 149
    .end local v1    # "e":Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;
    .restart local v3    # "installFile":Ljava/io/File;
    .restart local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v8    # "result":I
    :cond_3
    const/4 v6, 0x0

    .line 152
    .local v6, "oldPluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :try_start_4
    iget-object v9, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    iget-object v10, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tencent/component/plugin/server/PluginManagerServer;->isPluginRegistered(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 153
    iget-object v9, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    iget-object v10, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v6

    .line 154
    const/4 v9, 0x1

    invoke-direct {p0, v6, v9}, Lcom/tencent/component/plugin/server/PluginInstaller;->performUninstall(Lcom/tencent/component/plugin/PluginInfo;Z)Z

    .line 155
    const/16 p2, 0x1

    .line 158
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/component/plugin/PluginFileLock;->writeLock(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 159
    .local v2, "fileLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    :try_start_5
    invoke-direct {p0, p1, v3}, Lcom/tencent/component/plugin/server/PluginInstaller;->copyFileSafely(Ljava/io/File;Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 163
    :try_start_6
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 165
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    .line 167
    invoke-static {v3}, Lcom/tencent/component/plugin/server/PluginInstaller;->isFileValid(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget v8, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED:I

    .line 169
    :goto_1
    sget v9, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED:I

    if-ne v8, v9, :cond_5

    .line 170
    iget-object v5, v7, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 171
    .local v5, "nativeLibDir":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 172
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/tencent/component/plugin/PluginNativeHelper;->copyNativeBinariesIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 174
    .local v0, "copied":Z
    if-nez v0, :cond_5

    .line 175
    sget v8, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED_FAILED_COPY_LIB:I

    .line 176
    const-string v9, "PluginInstaller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot un-pack native libraries for plugin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v0    # "copied":Z
    .end local v5    # "nativeLibDir":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    .line 183
    sget v9, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED:I

    if-ne v8, v9, :cond_6

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    .line 185
    iget-object v9, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    iget-object v10, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v9, v10, v7}, Lcom/tencent/component/plugin/server/PluginManagerServer;->registerPlugin(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z

    .line 189
    :cond_6
    if-gez v8, :cond_8

    .line 190
    const-string v9, "PluginInstaller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to install plugin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v9, "install"

    const/4 v10, 0x0

    const-string v11, "cannot copy file"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "srcFile:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dstFile:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 199
    :goto_2
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    if-eqz p3, :cond_0

    iget-object v9, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v9}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v9

    iget-boolean v9, v9, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    if-eqz v9, :cond_0

    iget-boolean v9, v7, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v9, :cond_0

    .line 203
    iget-object v9, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v9}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginLoader()Lcom/tencent/component/plugin/server/PluginLoader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/component/plugin/server/PluginLoader;->load()V

    goto/16 :goto_0

    .line 163
    :catchall_1
    move-exception v9

    :try_start_7
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 199
    .end local v2    # "fileLock":Ljava/util/concurrent/locks/Lock;
    .end local v3    # "installFile":Ljava/io/File;
    .end local v6    # "oldPluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :catchall_2
    move-exception v9

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .line 167
    .restart local v2    # "fileLock":Ljava/util/concurrent/locks/Lock;
    .restart local v3    # "installFile":Ljava/io/File;
    .restart local v6    # "oldPluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_7
    :try_start_8
    sget v8, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_COPY_FILE:I

    goto/16 :goto_1

    .line 194
    :cond_8
    const-string v9, "PluginInstaller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "succeed to install plugin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v9, "install"

    const/4 v10, 0x1

    const-string/jumbo v11, "succeed to install"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iget-object v10, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    if-nez v6, :cond_9

    const/4 v9, 0x0

    :goto_3
    iget v11, v7, Lcom/tencent/component/plugin/PluginInfo;->version:I

    invoke-direct {p0, v10, v9, v11}, Lcom/tencent/component/plugin/server/PluginInstaller;->broadcastPluginInstalled(Ljava/lang/String;II)V

    goto :goto_2

    :cond_9
    iget v9, v6, Lcom/tencent/component/plugin/PluginInfo;->version:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3
.end method

.method private performPending(Ljava/io/File;)I
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 269
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->isFileValid(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    .line 271
    const-string v3, "install"

    const-string v4, "invalid file"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v8, v4, v5, v7}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    const-string v3, "PluginInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget v2, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INVALID_FILE:I

    .line 310
    :goto_0
    return v2

    .line 276
    :cond_0
    monitor-enter p0

    .line 277
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/server/PluginInstaller;->ensurePendingDir()Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    const-string v3, "install"

    const/4 v4, 0x0

    const-string v5, "invalid pending dir"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    sget v2, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INVALID_DIR:I

    monitor-exit p0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->generatePendingFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 284
    .local v1, "pendingFile":Ljava/io/File;
    if-nez v1, :cond_2

    .line 285
    const-string v3, "install"

    const-string v4, "cannot generate pending path"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v8, v4, v5, v7}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    const-string v3, "PluginInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot generate pending file for file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget v2, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_INTERNAL:I

    goto :goto_0

    .line 291
    :cond_2
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPendingLock:Lcom/tencent/component/utils/UniqueLock;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 292
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    :try_start_2
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->isAlreadyPending(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    sget v2, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_ALREADY_EXISTS:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 298
    :cond_3
    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/tencent/component/plugin/server/PluginInstaller;->copyFileSafely(Ljava/io/File;Ljava/io/File;)V

    .line 299
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    .line 300
    invoke-static {v1}, Lcom/tencent/component/plugin/server/PluginInstaller;->isFileValid(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v2, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED:I

    .line 301
    .local v2, "result":I
    :goto_1
    if-gez v2, :cond_5

    .line 302
    const-string v3, "install"

    const/4 v4, 0x0

    const-string v5, "cannot copy file"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "srcFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dstFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 300
    .end local v2    # "result":I
    :cond_4
    :try_start_4
    sget v2, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_FAILED_COPY_FILE:I

    goto :goto_1

    .line 305
    .restart local v2    # "result":I
    :cond_5
    const-string v3, "install"

    const/4 v4, 0x1

    const-string/jumbo v5, "succeed to install"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 310
    .end local v2    # "result":I
    :catchall_1
    move-exception v3

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method private performUninstall(Lcom/tencent/component/plugin/PluginInfo;Z)Z
    .locals 10
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p2, "unregister"    # Z

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    const/4 v7, 0x0

    .line 264
    :goto_0
    return v7

    .line 220
    :cond_0
    iget-object v7, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mInstallLock:Lcom/tencent/component/utils/UniqueLock;

    iget-object v8, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 221
    .local v3, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 223
    :try_start_0
    const-string v7, "PluginInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "performUninstall id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",pluginInfo.isInternal:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tencent/component/plugin/PluginInfo;->isInternal()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",pluginInfo.corePlugin:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/tencent/component/plugin/PluginInfo;->isInternal()Z

    move-result v7

    if-nez v7, :cond_2

    .line 225
    iget-object v5, p1, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    .line 226
    .local v5, "pluginPath":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 228
    invoke-static {v5}, Lcom/tencent/component/plugin/PluginFileLock;->writeLock(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 229
    .local v2, "fileLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 236
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->dexOptimizeDir:Ljava/lang/String;

    .line 237
    .local v0, "dexDir":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 238
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginDexOptimizeName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "dexName":Ljava/lang/String;
    const-string v7, "PluginInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dexOpt :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-eqz v1, :cond_1

    .line 241
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/component/plugin/server/PluginInstaller;->removeFile(Ljava/io/File;)V

    .line 246
    .end local v0    # "dexDir":Ljava/lang/String;
    .end local v1    # "dexName":Ljava/lang/String;
    .end local v2    # "fileLock":Ljava/util/concurrent/locks/Lock;
    :cond_1
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 247
    .local v4, "nativeLibDir":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 248
    invoke-static {v4}, Lcom/tencent/component/plugin/PluginNativeHelper;->removeNativeBinaries(Ljava/lang/String;)Z

    move-result v6

    .line 249
    .local v6, "removed":Z
    if-nez v6, :cond_2

    .line 250
    const-string v7, "PluginInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot remove native libraries for plugin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v4    # "nativeLibDir":Ljava/lang/String;
    .end local v5    # "pluginPath":Ljava/lang/String;
    .end local v6    # "removed":Z
    :cond_2
    if-eqz p2, :cond_3

    .line 256
    iget-object v7, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 257
    iget-object v7, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    iget-object v8, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/tencent/component/plugin/server/PluginManagerServer;->unregisterPlugin(Ljava/lang/String;)Z

    .line 260
    :cond_3
    iget-object v7, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tencent/component/plugin/server/PluginInstaller;->broadcastPluginUninstalled(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    const/4 v7, 0x1

    .line 264
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 233
    .restart local v2    # "fileLock":Ljava/util/concurrent/locks/Lock;
    .restart local v5    # "pluginPath":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    .end local v2    # "fileLock":Ljava/util/concurrent/locks/Lock;
    .end local v5    # "pluginPath":Ljava/lang/String;
    :catchall_1
    move-exception v7

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7
.end method

.method private static removeFile(Ljava/io/File;)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 376
    invoke-static {p0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 377
    return-void
.end method


# virtual methods
.method final install(Ljava/io/File;)I
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/component/plugin/server/PluginInstaller;->performInstall(Ljava/io/File;ZZ)I

    move-result v0

    return v0
.end method

.method final install(Ljava/io/File;Z)I
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "installByUser"    # Z

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/component/plugin/server/PluginInstaller;->performInstall(Ljava/io/File;ZZ)I

    move-result v0

    return v0
.end method

.method final install()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginPendingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/server/PluginInstaller;->installPendingPlugins(Ljava/io/File;)V

    .line 61
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginInstaller;->mPluginExternalPendingDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/server/PluginInstaller;->installPendingPlugins(Ljava/io/File;)V

    .line 62
    return-void
.end method

.method final installPending(Ljava/io/File;)I
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->performPending(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method final uninstall(Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 1
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/component/plugin/server/PluginInstaller;->performUninstall(Lcom/tencent/component/plugin/PluginInfo;Z)Z

    move-result v0

    return v0
.end method
