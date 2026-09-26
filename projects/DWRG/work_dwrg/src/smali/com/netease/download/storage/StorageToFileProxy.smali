.class public Lcom/netease/download/storage/StorageToFileProxy;
.super Ljava/lang/Object;
.source "StorageToFileProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageToFileProxy"

.field private static sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;


# instance fields
.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExs:Ljava/util/concurrent/ExecutorService;

.field private mFile:Ljava/io/File;

.field private mIsStart:Z

.field private mOut:Ljava/io/BufferedWriter;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
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
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/storage/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mAl:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 41
    iput-object v2, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 43
    iput-object v2, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mIsStart:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/download/storage/StorageToFileProxy;)Ljava/io/BufferedWriter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method public static getInstances()Lcom/netease/download/storage/StorageToFileProxy;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/netease/download/storage/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/netease/download/storage/StorageToFileProxy;

    invoke-direct {v0}, Lcom/netease/download/storage/StorageToFileProxy;-><init>()V

    sput-object v0, Lcom/netease/download/storage/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;

    .line 57
    :cond_0
    sget-object v0, Lcom/netease/download/storage/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/download/storage/StorageToFileProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/storage/StorageToFileProxy$2;

    invoke-direct {v1, p0}, Lcom/netease/download/storage/StorageToFileProxy$2;-><init>(Lcom/netease/download/storage/StorageToFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/download_result.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 65
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_2
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/netease/download/storage/StorageToFileProxy;->mFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/netease/download/storage/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :goto_1
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mIsStart:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/download/storage/StorageToFileProxy;->mIsStart:Z

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/storage/StorageToFileProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/download/storage/StorageToFileProxy$1;-><init>(Lcom/netease/download/storage/StorageToFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 138
    :cond_0
    return-void
.end method
