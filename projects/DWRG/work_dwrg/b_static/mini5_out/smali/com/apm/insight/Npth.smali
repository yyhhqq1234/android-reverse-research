.class public final Lcom/apm/insight/Npth;
.super Ljava/lang/Object;


# static fields
.field private static sInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttachLongUserData(Lcom/apm/insight/AttachUserData;Lcom/apm/insight/CrashType;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->ee:Lgbsdk/common/host/abci;

    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/abci;->b(Lcom/apm/insight/AttachUserData;Lcom/apm/insight/CrashType;)V

    :cond_0
    return-void
.end method

.method public static addAttachUserData(Lcom/apm/insight/AttachUserData;Lcom/apm/insight/CrashType;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->ee:Lgbsdk/common/host/abci;

    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/abci;->a(Lcom/apm/insight/AttachUserData;Lcom/apm/insight/CrashType;)V

    :cond_0
    return-void
.end method

.method public static addTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->ee:Lgbsdk/common/host/abci;

    invoke-virtual {v0, p0}, Lgbsdk/common/host/abci;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static checkInnerNpth(Z)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->c(Z)V

    return-void
.end method

.method public static disableLogcat()V
    .locals 0

    invoke-static {}, Lcom/apm/insight/runtime/p;->p()V

    return-void
.end method

.method public static disableSigQuit()V
    .locals 0

    return-void
.end method

.method public static dumpHprof(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static enableALogCollector(Ljava/lang/String;Lgbsdk/common/host/abcc;Lgbsdk/common/host/abcb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/String;Lgbsdk/common/host/abcc;Lgbsdk/common/host/abcb;)V

    return-void
.end method

.method public static enableAnrInfo(Z)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->b(Z)V

    return-void
.end method

.method public static enableLoopMonitor(Z)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->a(Z)V

    return-void
.end method

.method public static enableNativeDump(Z)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->d(Z)V

    return-void
.end method

.method public static enableThreadsBoost()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lgbsdk/common/host/abge;->o:I

    return-void
.end method

.method public static getConfigManager()Lcom/apm/insight/runtime/ConfigManager;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    return-object v0
.end method

.method public static hasCrash()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->k()Z

    move-result v0

    return v0
.end method

.method public static hasCrashWhenJavaCrash()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->l()Z

    move-result v0

    return v0
.end method

.method public static hasCrashWhenNativeCrash()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->m()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized init(Landroid/app/Application;Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZZJ)V
    .locals 10

    const-class v1, Lcom/apm/insight/Npth;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/apm/insight/Npth;->sInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/apm/insight/Npth;->sInit:Z

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-static/range {v2 .. v9}, Lcom/apm/insight/runtime/p;->a(Landroid/app/Application;Landroid/content/Context;ZZZZJ)V

    invoke-static {p0, p1, p2}, Lgbsdk/common/host/abge;->a(Landroid/app/Application;Landroid/content/Context;Lcom/apm/insight/ICommonParams;)V

    invoke-static {}, Lgbsdk/common/host/abge;->ag()Lcom/apm/insight/runtime/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/d;->a()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "update_version_code"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgbsdk/common/host/abia;->a(Ljava/lang/Object;I)I

    move-result v2

    const-string v3, "aid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x115c

    invoke-static {v3, v4}, Lgbsdk/common/host/abia;->a(Ljava/lang/Object;I)I

    move-result v3

    const-string v4, "app_version"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v5, v2

    move-object v2, p1

    invoke-static {p1, v3, v5, v6, v4}, Lcom/apm/insight/MonitorCrash;->init(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Lcom/apm/insight/MonitorCrash;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v2

    invoke-static {}, Lgbsdk/common/host/abge;->ag()Lcom/apm/insight/runtime/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apm/insight/runtime/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apm/insight/MonitorCrash$Config;->setDeviceId(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v2

    const-string v3, "channel"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apm/insight/MonitorCrash$Config;->setChannel(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;)V
    .locals 3

    const-class v0, Lcom/apm/insight/Npth;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2, v2}, Lcom/apm/insight/Npth;->init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZ)V
    .locals 7

    const-class v0, Lcom/apm/insight/Npth;

    monitor-enter v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p4

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/apm/insight/Npth;->init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZZ)V
    .locals 9

    const-class v0, Lcom/apm/insight/Npth;

    monitor-enter v0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    :try_start_0
    invoke-static/range {v1 .. v8}, Lcom/apm/insight/Npth;->init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZZJ)V
    .locals 12

    move-object v0, p0

    const-class v1, Lcom/apm/insight/Npth;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    if-eqz v2, :cond_1

    sget-object v2, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    :cond_0
    :goto_0
    move-object v4, v0

    move-object v3, v2

    goto :goto_1

    :cond_1
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u521d\u59cb\u5316\u65f6\u4f20\u5165\u7684Application\u8fd8\u672aattach, \u8bf7\u5728init\u65f6\u4f20\u5165attachBaseContext\u7684\u53c2\u6570, \u5e76\u5728init\u4e4b\u524d\u624b\u52a8\u8c03\u7528Npth.setApplication(Application)."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-static/range {v3 .. v11}, Lcom/apm/insight/Npth;->init(Landroid/app/Application;Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZZJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-void

    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u521d\u59cb\u5316\u65f6\u4f20\u5165\u4e86baseContext, \u5bfc\u81f4\u65e0\u6cd5\u83b7\u53d6Application\u5b9e\u4f8b, \u8bf7\u5728init\u4e4b\u524d\u624b\u52a8\u8c03\u7528Npth.setApplication(Application)."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u521d\u59cb\u5316\u65f6\u4f20\u5165\u4e86baseContext, \u5bfc\u81f4\u65e0\u6cd5\u83b7\u53d6Application\u5b9e\u4f8b, \u8bf7\u5728init\u4e4b\u524d\u624b\u52a8\u8c03\u7528Npth.setApplication(Application)."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initMiniApp(Landroid/content/Context;Lcom/apm/insight/ICommonParams;)V
    .locals 8

    const-class v0, Lcom/apm/insight/Npth;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lgbsdk/common/host/abge;->e:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/apm/insight/Npth;->init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initMiniApp(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ILjava/lang/String;)V
    .locals 8

    const-class v0, Lcom/apm/insight/Npth;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lgbsdk/common/host/abge;->e:Z

    invoke-static {p2, p3}, Lgbsdk/common/host/abge;->d(ILjava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/apm/insight/Npth;->init(Landroid/content/Context;Lcom/apm/insight/ICommonParams;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isANREnable()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->c()Z

    move-result v0

    return v0
.end method

.method public static isInit()Z
    .locals 1

    sget-boolean v0, Lcom/apm/insight/Npth;->sInit:Z

    return v0
.end method

.method public static isJavaCrashEnable()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->b()Z

    move-result v0

    return v0
.end method

.method public static isNativeCrashEnable()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->d()Z

    move-result v0

    return v0
.end method

.method public static isRunning()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->i()Z

    move-result v0

    return v0
.end method

.method public static isStopUpload()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->n()Z

    move-result v0

    return v0
.end method

.method public static openANRMonitor()V
    .locals 0

    invoke-static {}, Lcom/apm/insight/runtime/p;->g()V

    return-void
.end method

.method public static openJavaCrashMonitor()V
    .locals 0

    invoke-static {}, Lcom/apm/insight/runtime/p;->f()V

    return-void
.end method

.method public static openNativeCrashMonitor()Z
    .locals 1

    invoke-static {}, Lcom/apm/insight/runtime/p;->h()Z

    move-result v0

    return v0
.end method

.method public static registerCrashCallback(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    return-void
.end method

.method public static registerOOMCallback(Lcom/apm/insight/IOOMCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/IOOMCallback;)V

    return-void
.end method

.method public static registerSdk(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lgbsdk/common/host/abge;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static removeAttachLongUserData(Lcom/apm/insight/AttachUserData;Lcom/apm/insight/CrashType;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->ee:Lgbsdk/common/host/abci;

    invoke-virtual {v0, p1, p0}, Lgbsdk/common/host/abci;->b(Lcom/apm/insight/CrashType;Lcom/apm/insight/AttachUserData;)V

    :cond_0
    return-void
.end method

.method public static removeAttachUserData(Lcom/apm/insight/AttachUserData;Lcom/apm/insight/CrashType;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->ee:Lgbsdk/common/host/abci;

    invoke-virtual {v0, p1, p0}, Lgbsdk/common/host/abci;->a(Lcom/apm/insight/CrashType;Lcom/apm/insight/AttachUserData;)V

    :cond_0
    return-void
.end method

.method public static reportDartError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportDartError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abif;->i(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static reportDartError(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/IUploadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apm/insight/IUploadCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportDartError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abif;->i(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2, p3}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/IUploadCallback;)V

    return-void
.end method

.method public static reportDartError(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/IUploadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apm/insight/IUploadCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportDartError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abif;->i(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/apm/insight/IUploadCallback;)V

    return-void
.end method

.method public static reportError(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setAlogFlushAddr(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/runtime/p;->a(J)V

    return-void
.end method

.method public static setAlogFlushV2Addr(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/runtime/p;->b(J)V

    return-void
.end method

.method public static setAlogLogDirAddr(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/runtime/p;->c(J)V

    return-void
.end method

.method public static setAlogWriteAddr(J)V
    .locals 0

    return-void
.end method

.method public static setAnrInfoFileObserver(Ljava/lang/String;Lgbsdk/common/host/abfn;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/String;Lgbsdk/common/host/abfn;)V

    return-void
.end method

.method public static setApplication(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    return-void
.end method

.method public static setAttachUserData(Lcom/apm/insight/AttachUserData;Lcom/apm/insight/CrashType;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->ee:Lgbsdk/common/host/abci;

    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/abci;->a(Lcom/apm/insight/AttachUserData;Lcom/apm/insight/CrashType;)V

    :cond_0
    return-void
.end method

.method public static setBusiness(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lgbsdk/common/host/abge;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setCrashFilter(Lcom/apm/insight/ICrashFilter;)V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abge;->ee:Lgbsdk/common/host/abci;

    iput-object p0, v0, Lgbsdk/common/host/abci;->cH:Lcom/apm/insight/ICrashFilter;

    return-void
.end method

.method public static setCrashWaitTime(J)V
    .locals 0

    return-void
.end method

.method public static setCurProcessName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lgbsdk/common/host/abhu;->a:Ljava/lang/String;

    return-void
.end method

.method public static setEncryptImpl(Lgbsdk/common/host/abft;)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->a(Lgbsdk/common/host/abft;)V

    return-void
.end method

.method public static setLogcatImpl(Lcom/apm/insight/runtime/k;)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/runtime/k;)V

    return-void
.end method

.method public static setOriginSignalResend(Z)V
    .locals 0

    return-void
.end method

.method public static setRequestIntercept(Lgbsdk/common/host/abez;)V
    .locals 0

    invoke-static {p0}, Lcom/apm/insight/runtime/p;->a(Lgbsdk/common/host/abez;)V

    return-void
.end method

.method public static stopAnr()V
    .locals 0

    invoke-static {}, Lcom/apm/insight/runtime/p;->j()V

    return-void
.end method

.method public static stopUpload()V
    .locals 0

    invoke-static {}, Lcom/apm/insight/runtime/p;->o()V

    return-void
.end method

.method public static unregisterCrashCallback(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/runtime/p;->b(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    return-void
.end method

.method public static unregisterOOMCallback(Lcom/apm/insight/IOOMCallback;Lcom/apm/insight/CrashType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/IOOMCallback;Lcom/apm/insight/CrashType;)V

    return-void
.end method
