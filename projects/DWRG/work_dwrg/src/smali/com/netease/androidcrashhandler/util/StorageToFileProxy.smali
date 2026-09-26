.class public Lcom/netease/androidcrashhandler/util/StorageToFileProxy;
.super Ljava/lang/Object;
.source "StorageToFileProxy.java"


# static fields
.field private static sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;


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
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mAl:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 37
    iput-object v2, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 39
    iput-object v2, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method public static getInstances()Lcom/netease/androidcrashhandler/util/StorageToFileProxy;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    .line 49
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$2;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$2;-><init>(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 142
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/crashHunter_log.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 56
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_2
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;-><init>(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method
