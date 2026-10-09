.class Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;
.super Ljava/lang/Object;
.source "LogUtil.java"

# interfaces
.implements Lcom/tencent/component/utils/log/LogUtil$LogProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/log/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultLogProxy"
.end annotation


# static fields
.field private static final CACHE_NUM:I = 0x32


# instance fields
.field private final KEY_MSG:Ljava/lang/String;

.field private final KEY_TAG:Ljava/lang/String;

.field private volatile cacheIndex:I

.field private volatile isInit:Z

.field private volatile logCaches:Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/collections/MultiConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logcacheHandlerThread:Landroid/os/HandlerThread;

.field private logcatHandler:Landroid/os/Handler;

.field private volatile mTracer:Lcom/tencent/component/utils/log/AppTracer;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->isInit:Z

    .line 60
    new-instance v0, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;

    invoke-direct {v0}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logCaches:Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;

    .line 65
    const-string/jumbo v0, "tag"

    iput-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->KEY_TAG:Ljava/lang/String;

    .line 66
    const-string v0, "msg"

    iput-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->KEY_MSG:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logCaches:Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;

    invoke-virtual {v0}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->clear()V

    .line 70
    iput v1, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->cacheIndex:I

    .line 71
    invoke-direct {p0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->startLogcacheThread()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->inner()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    .prologue
    .line 57
    iget v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->cacheIndex:I

    return v0
.end method

.method static synthetic access$108(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)I
    .locals 2
    .param p0, "x0"    # Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    .prologue
    .line 57
    iget v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->cacheIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->cacheIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logCaches:Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;

    return-object v0
.end method

.method private addCache(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v2, "LogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCache before->tag["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcatHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 145
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tag"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "msg"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    const-string v2, "LogUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCache after->tag["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcatHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private declared-synchronized inner()V
    .locals 15

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/component/utils/log/AppTracer;->getLogFilePath()Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, "rootPath":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lcom/tencent/component/utils/log/LogConfig;->getInstance()Lcom/tencent/component/utils/log/LogConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/component/utils/log/LogConfig;->getMaxFolderSize()I

    move-result v2

    .line 91
    .local v2, "blockCount":I
    invoke-static {}, Lcom/tencent/component/utils/log/LogConfig;->getInstance()Lcom/tencent/component/utils/log/LogConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/component/utils/log/LogConfig;->getMaxKeepPeriod()J

    move-result-wide v10

    .line 93
    .local v10, "keepPeriod":J
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 94
    .local v12, "context":Landroid/content/Context;
    const/4 v14, 0x0

    .line 95
    .local v14, "processName":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 96
    invoke-static {v12}, Lcom/tencent/component/utils/ProcessUtils;->myProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 97
    if-eqz v14, :cond_2

    .line 98
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v6, 0x2e

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 101
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    const-string v14, "main"

    .line 104
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file.tracer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "threadName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "fileExt":Ljava/lang/String;
    new-instance v0, Lcom/tencent/component/debug/FileTracerConfig;

    const/high16 v3, 0x40000

    const/16 v4, 0x2000

    const-wide/16 v6, 0x2710

    const/16 v8, 0xa

    invoke-direct/range {v0 .. v11}, Lcom/tencent/component/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    .line 109
    .local v0, "config":Lcom/tencent/component/debug/FileTracerConfig;
    new-instance v3, Lcom/tencent/component/utils/log/AppTracer;

    invoke-direct {v3, v0}, Lcom/tencent/component/utils/log/AppTracer;-><init>(Lcom/tencent/component/debug/FileTracerConfig;)V

    iput-object v3, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    .line 110
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->isInit:Z

    .line 111
    invoke-direct {p0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->traversLogCache()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "config":Lcom/tencent/component/debug/FileTracerConfig;
    .end local v1    # "rootPath":Ljava/io/File;
    .end local v2    # "blockCount":I
    .end local v5    # "threadName":Ljava/lang/String;
    .end local v9    # "fileExt":Ljava/lang/String;
    .end local v10    # "keepPeriod":J
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 116
    .local v13, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 86
    .end local v13    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private logCache(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "logLevel"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    sparse-switch p1, :sswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 197
    :sswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :sswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :sswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :sswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :sswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private startLogcacheThread()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcacheHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcacheHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->stopLogcacheThread()V

    .line 161
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcacheHandlerThread:Landroid/os/HandlerThread;

    .line 162
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcacheHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 163
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcacheHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$2;

    invoke-direct {v2, p0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$2;-><init>(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcatHandler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method private stopLogcacheThread()V
    .locals 2

    .prologue
    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->cacheIndex:I

    .line 186
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcacheHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcacheHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logcacheHandlerThread:Landroid/os/HandlerThread;

    .line 189
    const-string v0, "LogUtil"

    const-string v1, "stopLogcacheThread is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method

.method private traversLogCache()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 121
    const-string v5, "LogUtil"

    const-string/jumbo v6, "traversLogCache is called\uff01"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logCaches:Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;

    invoke-virtual {v5}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/ConcurrentLinkedQueue<[Ljava/lang/String;>;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/ConcurrentLinkedQueue<[Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 126
    .local v3, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<[Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    .local v2, "key":I
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 129
    .local v4, "values":[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v8, :cond_1

    .line 130
    const-string v5, "LogUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logCache ->tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    aget-object v5, v4, v9

    aget-object v6, v4, v8

    invoke-direct {p0, v2, v5, v6}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logCache(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/ConcurrentLinkedQueue<[Ljava/lang/String;>;>;"
    .end local v2    # "key":I
    .end local v3    # "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<[Ljava/lang/String;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->stopLogcacheThread()V

    .line 138
    iget-object v5, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->logCaches:Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;

    invoke-virtual {v5}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->clear()V

    .line 139
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 225
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/tencent/component/utils/log/AppTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->addCache(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x10

    .line 252
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/tencent/component/utils/log/AppTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->addCache(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    invoke-virtual {v0}, Lcom/tencent/component/utils/log/AppTracer;->flush()V

    .line 264
    :cond_0
    return-void
.end method

.method public getWorkerFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    invoke-virtual {v0}, Lcom/tencent/component/utils/log/AppTracer;->getWorkerFolder()Ljava/io/File;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWorkerFolder(J)Ljava/io/File;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/component/utils/log/AppTracer;->getWorkerFolder(J)Ljava/io/File;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 234
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/tencent/component/utils/log/AppTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->addCache(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->isInit:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$1;-><init>(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)V

    invoke-static {v0}, Lcom/tencent/component/utils/thread/ThreadPool;->runOnNonUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setFileLogEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/log/AppTracer;->setFileTracerEnabled(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method public setLogcatEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/log/AppTracer;->setLogcatTracerEnabled(Z)V

    .line 278
    :cond_0
    return-void
.end method

.method public setTraceLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/log/AppTracer;->setFileTracerLevel(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/tencent/component/utils/log/AppTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->addCache(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    .line 243
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->mTracer:Lcom/tencent/component/utils/log/AppTracer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/tencent/component/utils/log/AppTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->addCache(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
