.class Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;
.super Ljava/lang/Object;
.source "DexUpdateThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mBaseDexFilePath:Ljava/io/File;

.field private mHandler:Lcom/netease/ntunisdk/base/update/common/UpdateHandler;


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/netease/ntunisdk/base/update/common/UpdateCallback;)V
    .locals 1
    .param p1, "baseDexFilePath"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/netease/ntunisdk/base/update/common/UpdateCallback;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/netease/ntunisdk/base/update/common/UpdateHandler;

    invoke-direct {v0, p2}, Lcom/netease/ntunisdk/base/update/common/UpdateHandler;-><init>(Lcom/netease/ntunisdk/base/update/common/UpdateCallback;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;->mHandler:Lcom/netease/ntunisdk/base/update/common/UpdateHandler;

    .line 23
    iput-object p1, p0, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;->mBaseDexFilePath:Ljava/io/File;

    .line 24
    return-void
.end method

.method static startDexThread(Ljava/io/File;Lcom/netease/ntunisdk/base/update/common/UpdateCallback;)V
    .locals 1
    .param p0, "baseDexFilePath"    # Ljava/io/File;
    .param p1, "callback"    # Lcom/netease/ntunisdk/base/update/common/UpdateCallback;

    .prologue
    .line 18
    new-instance v0, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;-><init>(Ljava/io/File;Lcom/netease/ntunisdk/base/update/common/UpdateCallback;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/base/update/common/TaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 28
    iget-object v1, p0, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;->mBaseDexFilePath:Ljava/io/File;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/update/dex/UniBaseUpdater;->validateDex(Ljava/io/File;)I

    move-result v0

    .line 29
    .local v0, "result":I
    iget-object v1, p0, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;->mHandler:Lcom/netease/ntunisdk/base/update/common/UpdateHandler;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/update/common/UpdateHandler;->sendEmptyMessage(I)Z

    .line 30
    iget-object v1, p0, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;->mBaseDexFilePath:Ljava/io/File;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/update/dex/UniBaseUpdater;->checkAndDownload(Ljava/io/File;)I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;->mHandler:Lcom/netease/ntunisdk/base/update/common/UpdateHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/ntunisdk/base/update/common/UpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    return-void
.end method
