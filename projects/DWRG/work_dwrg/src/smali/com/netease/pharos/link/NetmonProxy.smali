.class public Lcom/netease/pharos/link/NetmonProxy;
.super Ljava/lang/Object;
.source "NetmonProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetmonProxy"

.field private static sNetmonProxy:Lcom/netease/pharos/link/NetmonProxy;

.field private static sNetmonProxyListener:Lcom/netease/pharos/link/NetmonProxyListener;


# instance fields
.field private volatile mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/link/NetmonCore;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/netease/pharos/link/NetmonCore;",
            ">;"
        }
    .end annotation
.end field

.field private netmonCore:Lcom/netease/pharos/link/NetmonCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/link/NetmonProxy;->sNetmonProxyListener:Lcom/netease/pharos/link/NetmonProxyListener;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/link/NetmonProxy;->mList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/link/NetmonProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 62
    new-instance v0, Lcom/netease/pharos/link/NetmonCore;

    invoke-direct {v0}, Lcom/netease/pharos/link/NetmonCore;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/link/NetmonProxy;->netmonCore:Lcom/netease/pharos/link/NetmonCore;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/link/NetmonProxy;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/netease/pharos/link/NetmonProxy;->sNetmonProxy:Lcom/netease/pharos/link/NetmonProxy;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/netease/pharos/link/NetmonProxy;

    invoke-direct {v0}, Lcom/netease/pharos/link/NetmonProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/link/NetmonProxy;->sNetmonProxy:Lcom/netease/pharos/link/NetmonProxy;

    .line 90
    :cond_0
    sget-object v0, Lcom/netease/pharos/link/NetmonProxy;->sNetmonProxy:Lcom/netease/pharos/link/NetmonProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public addNetmonCore(ILjava/lang/String;IIIILcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "count"    # I
    .param p5, "time"    # I
    .param p6, "size"    # I
    .param p7, "listener"    # Lcom/netease/pharos/link/LinkCheckListener;
    .param p8, "interval"    # I
    .param p9, "cycleTaskStopListener"    # Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .param p10, "checkOverNotifyListener"    # Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;
    .param p11, "extra"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v1, Lcom/netease/pharos/link/NetmonCore;

    invoke-direct {v1}, Lcom/netease/pharos/link/NetmonCore;-><init>()V

    .local v1, "netmonCore":Lcom/netease/pharos/link/NetmonCore;
    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 41
    invoke-virtual/range {v1 .. v7}, Lcom/netease/pharos/link/NetmonCore;->init(ILjava/lang/String;IIII)V

    .line 42
    invoke-virtual {v1, p7}, Lcom/netease/pharos/link/NetmonCore;->setmListener(Lcom/netease/pharos/link/LinkCheckListener;)V

    .line 43
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V

    .line 44
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V

    .line 45
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmInterval(I)V

    .line 46
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmExtra(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/netease/pharos/link/NetmonProxy;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public addNetmonCore(ILjava/lang/String;IIIILjava/lang/String;Lcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "count"    # I
    .param p5, "time"    # I
    .param p6, "size"    # I
    .param p7, "region"    # Ljava/lang/String;
    .param p8, "listener"    # Lcom/netease/pharos/link/LinkCheckListener;
    .param p9, "interval"    # I
    .param p10, "cycleTaskStopListener"    # Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .param p11, "checkOverNotifyListener"    # Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;
    .param p12, "extra"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v1, Lcom/netease/pharos/link/NetmonCore;

    invoke-direct {v1}, Lcom/netease/pharos/link/NetmonCore;-><init>()V

    .local v1, "netmonCore":Lcom/netease/pharos/link/NetmonCore;
    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 52
    invoke-virtual/range {v1 .. v7}, Lcom/netease/pharos/link/NetmonCore;->init(ILjava/lang/String;IIII)V

    .line 53
    invoke-virtual {v1, p7}, Lcom/netease/pharos/link/NetmonCore;->setRegion(Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmListener(Lcom/netease/pharos/link/LinkCheckListener;)V

    .line 55
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V

    .line 56
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V

    .line 57
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmInterval(I)V

    .line 58
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/netease/pharos/link/NetmonCore;->setmExtra(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/netease/pharos/link/NetmonProxy;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public getNetmonProxyListener()Lcom/netease/pharos/link/NetmonProxyListener;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/netease/pharos/link/NetmonProxy;->sNetmonProxyListener:Lcom/netease/pharos/link/NetmonProxyListener;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/netease/pharos/link/NetmonProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/link/NetmonProxy$1;-><init>(Lcom/netease/pharos/link/NetmonProxy;)V

    sput-object v0, Lcom/netease/pharos/link/NetmonProxy;->sNetmonProxyListener:Lcom/netease/pharos/link/NetmonProxyListener;

    .line 81
    :cond_0
    sget-object v0, Lcom/netease/pharos/link/NetmonProxy;->sNetmonProxyListener:Lcom/netease/pharos/link/NetmonProxyListener;

    return-object v0
.end method

.method public setNetmonProxyListener(Lcom/netease/pharos/link/NetmonProxyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/netease/pharos/link/NetmonProxyListener;

    .prologue
    .line 66
    sput-object p1, Lcom/netease/pharos/link/NetmonProxy;->sNetmonProxyListener:Lcom/netease/pharos/link/NetmonProxyListener;

    .line 67
    return-void
.end method

.method public start()I
    .locals 10

    .prologue
    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, "result":I
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 98
    .local v2, "exs":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/netease/pharos/link/NetmonProxy;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 105
    iget-object v6, p0, Lcom/netease/pharos/link/NetmonProxy;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 123
    return v5

    .line 101
    :cond_1
    iget-object v6, p0, Lcom/netease/pharos/link/NetmonProxy;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Callable;

    invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v7, "NetmonProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "al \u5927\u5c0f="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", \u53c2\u6570="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/netease/pharos/link/NetmonProxy;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/pharos/link/NetmonCore;

    invoke-virtual {v6}, Lcom/netease/pharos/link/NetmonCore;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 110
    .local v3, "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    const-string v6, "NetmonProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5206\u7247\u603b\u4e0b\u8f7d\u7ed3\u679c="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    const/16 v5, 0xb

    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
