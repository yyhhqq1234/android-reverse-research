.class public Lcom/tencent/component/utils/log/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;,
        Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    }
.end annotation


# static fields
.field private static final DEFAULT_PROXY:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

.field private static volatile logcatEnable:Z

.field private static volatile sProxy:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

.field private static volatile traceLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    invoke-direct {v0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/log/LogUtil;->DEFAULT_PROXY:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    .line 386
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/component/utils/log/LogUtil;->logcatEnable:Z

    .line 387
    const/16 v0, 0x3f

    sput v0, Lcom/tencent/component/utils/log/LogUtil;->traceLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 325
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    invoke-interface {v0, p0, p1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 330
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 331
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/tencent/component/utils/log/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 367
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    invoke-interface {v0, p0, p1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 372
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 373
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/tencent/component/utils/log/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static flush()V
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 378
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    invoke-interface {v0}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->flush()V

    .line 379
    return-void
.end method

.method private static getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/tencent/component/utils/log/LogUtil;->sProxy:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Lcom/tencent/component/utils/log/LogUtil;->DEFAULT_PROXY:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    sput-object v0, Lcom/tencent/component/utils/log/LogUtil;->sProxy:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    .line 408
    :cond_0
    sget-object v0, Lcom/tencent/component/utils/log/LogUtil;->sProxy:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    instance-of v0, v0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    if-eqz v0, :cond_1

    .line 409
    sget-object v0, Lcom/tencent/component/utils/log/LogUtil;->sProxy:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    invoke-interface {v0}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->init()V

    .line 411
    :cond_1
    sget-object v0, Lcom/tencent/component/utils/log/LogUtil;->sProxy:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    return-object v0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 416
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkerFolder()Ljava/io/File;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->getWorkerFolder()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkerFolder(J)Ljava/io/File;
    .locals 2
    .param p0, "time"    # J
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x258
    .end annotation

    .prologue
    .line 426
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->getWorkerFolder(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 337
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    invoke-interface {v0, p0, p1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 343
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/tencent/component/utils/log/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public static setFileLogEnable(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 395
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->setFileLogEnable(Z)V

    .line 396
    return-void
.end method

.method public static setLogcatEnable(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 390
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->setLogcatEnable(Z)V

    .line 391
    sput-boolean p0, Lcom/tencent/component/utils/log/LogUtil;->logcatEnable:Z

    .line 392
    return-void
.end method

.method public static setProxy(Lcom/tencent/component/utils/log/LogUtil$LogProxy;)V
    .locals 2
    .param p0, "proxy"    # Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    .prologue
    .line 399
    const-class v1, Lcom/tencent/component/utils/log/LogUtil;

    monitor-enter v1

    .line 400
    :try_start_0
    sput-object p0, Lcom/tencent/component/utils/log/LogUtil;->sProxy:Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setTraceLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 382
    sput p0, Lcom/tencent/component/utils/log/LogUtil;->traceLevel:I

    .line 383
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->setTraceLevel(I)V

    .line 384
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 311
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 312
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    invoke-interface {v0, p0, p1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 319
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/tencent/component/utils/log/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 349
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    invoke-interface {v0, p0, p1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 355
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/tencent/component/utils/log/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Lcom/tencent/component/utils/log/LogUtil;->getProxy()Lcom/tencent/component/utils/log/LogUtil$LogProxy;

    move-result-object v0

    .line 361
    .local v0, "proxy":Lcom/tencent/component/utils/log/LogUtil$LogProxy;
    invoke-static {p1}, Lcom/tencent/component/utils/log/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/tencent/component/utils/log/LogUtil$LogProxy;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method
