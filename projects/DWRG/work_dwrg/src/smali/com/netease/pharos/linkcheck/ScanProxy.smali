.class public Lcom/netease/pharos/linkcheck/ScanProxy;
.super Ljava/lang/Object;
.source "ScanProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanProxy"

.field private static sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;


# instance fields
.field private volatile mCheckCycleTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

.field private volatile mCheckTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private mListener:Lcom/netease/pharos/link/LinkCheckListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/linkcheck/ScanProxy;->sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckCycleTypeList:Ljava/util/ArrayList;

    .line 57
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 59
    iput-object v1, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .line 74
    new-instance v0, Lcom/netease/pharos/linkcheck/ScanProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/ScanProxy$1;-><init>(Lcom/netease/pharos/linkcheck/ScanProxy;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 139
    new-instance v0, Lcom/netease/pharos/linkcheck/ScanProxy$2;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/ScanProxy$2;-><init>(Lcom/netease/pharos/linkcheck/ScanProxy;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckCycleTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/pharos/linkcheck/ScanProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/pharos/linkcheck/ScanProxy;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/netease/pharos/linkcheck/ScanProxy;->sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/netease/pharos/linkcheck/ScanProxy;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/ScanProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/linkcheck/ScanProxy;->sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;

    .line 54
    :cond_0
    sget-object v0, Lcom/netease/pharos/linkcheck/ScanProxy;->sScanProxy:Lcom/netease/pharos/linkcheck/ScanProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 351
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method


# virtual methods
.method public createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;
    .locals 6
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Lcom/netease/pharos/linkcheck/ScanCore;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/ScanCore;-><init>()V

    .line 343
    .local v0, "scanCore":Lcom/netease/pharos/linkcheck/ScanCore;
    iget-object v2, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    iget-object v3, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    iget-object v4, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    iget-object v5, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netease/pharos/linkcheck/ScanCore;->init(Ljava/lang/String;Lcom/netease/pharos/link/LinkCheckListener;Lcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/ConfigInfoListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V

    .line 344
    return-object v0
.end method

.method public getmCycleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/ConfigInfoListener;)V
    .locals 0
    .param p1, "cycleTaskStopListener"    # Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .param p2, "configInfoListener"    # Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 71
    iput-object p2, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .line 72
    return-void
.end method

.method public setmCycleList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "mCycleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public start()I
    .locals 9

    .prologue
    .line 305
    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getmResult()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getmResult()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 306
    const-string v6, "ScanProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u6a21\u62df\u7684\u6570\u636e= "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getmResult()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getmResult()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v6, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/ScanProxy;->mCheckTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 311
    const/16 v4, 0xb

    .line 312
    .local v4, "result":I
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 313
    .local v2, "exs":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    const-string v5, "nap_icmp"

    invoke-virtual {p0, v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v5, "rap_icmp"

    invoke-virtual {p0, v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v5, "rap_udp"

    invoke-virtual {p0, v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v5, "rap_transfer"

    invoke-virtual {p0, v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v5, "sap_udp"

    invoke-virtual {p0, v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v5, "sap_transfer"

    invoke-virtual {p0, v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v5, "resolve"

    invoke-virtual {p0, v5}, Lcom/netease/pharos/linkcheck/ScanProxy;->createScanCore(Ljava/lang/String;)Lcom/netease/pharos/linkcheck/ScanCore;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 336
    const/4 v4, 0x0

    .line 337
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/link/NetmonProxy;->start()I

    move-result v4

    .line 338
    return v4

    .line 306
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    .end local v2    # "exs":Ljava/util/concurrent/ExecutorService;
    .end local v4    # "result":I
    :cond_1
    const-string v5, "result is null"

    goto/16 :goto_0

    .line 325
    .restart local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    .restart local v2    # "exs":Ljava/util/concurrent/ExecutorService;
    .restart local v4    # "result":I
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 328
    .local v3, "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    const-string v6, "ScanProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u63a2\u6d4b\u7ed3\u679c="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 331
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
