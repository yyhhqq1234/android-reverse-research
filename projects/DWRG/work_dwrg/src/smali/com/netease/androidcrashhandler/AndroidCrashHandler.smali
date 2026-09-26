.class public Lcom/netease/androidcrashhandler/AndroidCrashHandler;
.super Ljava/lang/Object;
.source "AndroidCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/AndroidCrashHandler$AndroidCrashHandlerHolder;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/netease/androidcrashhandler/AndroidCrashHandler; = null

.field public static final VERSION:Ljava/lang/String; = "1.2.6(1)"

.field private static callBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

.field private static isLoadLibrarySuccess:Z

.field public static sResumeTime:J


# instance fields
.field private DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

.field private EngineVersion:Ljava/lang/String;

.field private ResVersion:Ljava/lang/String;

.field private crashID:Ljava/lang/String;

.field private defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

.field private mContext:Landroid/content/Context;

.field myConfigCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

.field private networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sResumeTime:J

    .line 81
    const/4 v1, 0x0

    sput-object v1, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    .line 89
    const/4 v1, 0x1

    sput-boolean v1, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->isLoadLibrarySuccess:Z

    .line 93
    :try_start_0
    const-string v1, "com_netease_androidcrashhandler_AndroidCrashHandler"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 94
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->isLoadLibrarySuccess:Z

    .line 97
    const-string v1, "trace"

    const-string v2, "load AndroidCrashHandler so Exception"

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    .line 75
    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    .line 78
    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    .line 83
    const-string v0, "default"

    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->crashID:Ljava/lang/String;

    .line 85
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->EngineVersion:Ljava/lang/String;

    .line 87
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->ResVersion:Ljava/lang/String;

    .line 774
    new-instance v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;-><init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->myConfigCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    .line 110
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    .line 111
    invoke-static {}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getInstance()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    .line 112
    invoke-static {}, Lcom/netease/androidcrashhandler/DeviceInfo;->getInstance()Lcom/netease/androidcrashhandler/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    .line 113
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->myConfigCallBack:Lcom/netease/androidcrashhandler/MyConfigCallBack;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/MyPostEntity;->setConfigCallBack(Lcom/netease/androidcrashhandler/MyConfigCallBack;)V

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$AndroidCrashHandlerHolder;->INSTANCE:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    return-object v0
.end method

.method public static handCallBack()V
    .locals 2

    .prologue
    .line 645
    const-string v0, "trace"

    const-string v1, "\u56de\u8c03\u5230crashHunter\u56de\u8c03\u63a5\u53e3"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    sget-object v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    invoke-interface {v0}, Lcom/netease/androidcrashhandler/MyCrashCallBack;->crashCallBack()V

    .line 647
    return-void
.end method

.method private handleJEException(Ljava/lang/Throwable;)Z
    .locals 11
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v10, 0x0

    .line 564
    const-string v4, "trace"

    const-string v5, "handleJEException-----start"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    if-nez p1, :cond_0

    .line 566
    const/4 v3, 0x1

    .line 608
    :goto_0
    return v3

    .line 569
    :cond_0
    const-string v4, "crashing"

    const-string v5, "handle Java Exception"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    .line 571
    .local v0, "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "diInfo size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v1

    .line 573
    .local v1, "exInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "exInfo size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v4, "je_md5"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 577
    .local v2, "name":Ljava/lang/String;
    iput-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->crashID:Ljava/lang/String;

    .line 578
    const-string v4, "trace"

    const-string v5, "create aci file"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    invoke-virtual {v5, v1}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".aci"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 580
    const-string v7, "text/plain"

    .line 579
    invoke-virtual {v4, v5, v6, v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v4, "trace"

    const-string v5, "create di file"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    invoke-virtual {v5, v0}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".di"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 583
    const-string v7, "text/plain"

    .line 582
    invoke-virtual {v4, v5, v6, v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "set identify\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    const-string v5, "identify"

    invoke-virtual {v4, v5, v2, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 586
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    const-string v5, "error_type"

    const-string v6, "ANDROID_JAVA_EXCEPTION"

    invoke-virtual {v4, v5, v6, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 587
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v4

    const-string v5, "client_v"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 588
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "set Version\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    const-string v5, "client_v"

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 591
    :cond_1
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    const-string v5, "crash_time"

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sResumeTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 591
    invoke-virtual {v4, v5, v6, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 594
    sget-object v4, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    if-eqz v4, :cond_2

    .line 595
    const-string v4, "trace"

    const-string v5, "callBack.crashCallBack()"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    sget-object v4, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    invoke-interface {v4}, Lcom/netease/androidcrashhandler/MyCrashCallBack;->crashCallBack()V

    .line 597
    const-string v4, "trace"

    const-string v5, "------------------------------------------------------------"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v4, "trace"

    const-string v5, "handleJEException crashCallBack"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleJEException crashCallBack entity Files:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleJEException crashCallBack entity Params:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleJEException crashCallBack entity BasicInfo:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->getBasicInfo()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v4, "trace"

    const-string v5, "------------------------------------------------------------"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_2
    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v5

    const-string v6, ".javacfg"

    invoke-virtual {v4, v5, v2, v6}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->saveParams(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 606
    .local v3, "response":Z
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create cfg files---response\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v4, "trace"

    const-string v5, "handleJEException-----end"

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private uploadANRReport()V
    .locals 34

    .prologue
    .line 299
    const-string v28, "trace"

    const-string v29, "-----------------------------------------------"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v28, "trace"

    const-string v29, "[uploadANRReport]"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 302
    .local v10, "bundleID":Ljava/lang/String;
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "[uploadANRReport] bundleID="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/16 v24, 0x0

    .line 309
    .local v24, "realPath":Ljava/lang/String;
    const-string v23, "/data/anr"

    .line 310
    .local v23, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 313
    const-string v28, "trace"

    const-string v29, "file exist"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 319
    const-string v28, "trace"

    const-string v29, "is directory"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_1
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 327
    invoke-static/range {v23 .. v23}, Lcom/netease/androidcrashhandler/MyFileUtils;->orderByDate(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v17

    .line 330
    .local v17, "files":[Ljava/io/File;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_0

    .line 331
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    .line 335
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_9

    .line 349
    .end local v17    # "files":[Ljava/io/File;
    .end local v19    # "i":I
    :cond_0
    :goto_4
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "realPath="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 351
    const-string v24, "/data/anr/traces.txt"

    .line 355
    :cond_1
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "system anr file, realPath="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 357
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v25, "realPathFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "anr_time"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInfo(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 359
    .local v8, "anrTime":J
    const/16 v18, 0x0

    .line 360
    .local v18, "hasReport":Z
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 361
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    .line 362
    .local v26, "realPathFileTime":J
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "realPathFileTime="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", anrTime="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    cmp-long v28, v26, v8

    if-gtz v28, :cond_2

    const-wide/16 v28, 0x0

    cmp-long v28, v28, v26

    if-nez v28, :cond_3

    .line 364
    :cond_2
    const/16 v18, 0x1

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "anr_time"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/netease/androidcrashhandler/MyFileUtils;->setInfo(Landroid/content/Context;Ljava/lang/String;J)V

    .line 368
    .end local v26    # "realPathFileTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "anr_time"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInfo(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 369
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "hasReport="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", anrTime="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lcom/netease/androidcrashhandler/MyFileUtils;->getANRContent(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 371
    .local v4, "ANRContent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_c

    if-eqz v18, :cond_c

    .line 372
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " has content"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 374
    .local v21, "name":Ljava/lang/String;
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 375
    .local v11, "content":Ljava/lang/String;
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "content="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/netease/androidcrashhandler/MyConfigController;->getEntity(Z)Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v13

    .line 378
    .local v13, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    if-eqz v13, :cond_b

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v12

    .line 380
    .local v12, "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v28, "is_real_time"

    const-string v29, "false"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v28, "error_type"

    const-string v29, "ANDROID_ANR"

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v13, v0, v1, v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 383
    const-string v28, "identify"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    move/from16 v2, v29

    invoke-virtual {v13, v0, v1, v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 384
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, ".anr"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v29, "text/plain"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v13, v11, v0, v1}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, ".di"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "text/plain"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v13, v0, v1, v2}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v28, "trace"

    const-string v29, "[uploadANRReport] uploadCrashReportSystem"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->uploadCrashReportSystem(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 398
    .end local v4    # "ANRContent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "anrTime":J
    .end local v11    # "content":Ljava/lang/String;
    .end local v12    # "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    .end local v18    # "hasReport":Z
    .end local v21    # "name":Ljava/lang/String;
    .end local v25    # "realPathFile":Ljava/io/File;
    :cond_4
    :goto_5
    const-string v7, "/data/anr"

    .line 399
    .local v7, "anrPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v6, "anrFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 401
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 402
    .restart local v17    # "files":[Ljava/io/File;
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    if-lez v28, :cond_5

    .line 403
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_6
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_d

    .line 419
    .end local v17    # "files":[Ljava/io/File;
    .end local v19    # "i":I
    :cond_5
    const-string v28, "trace"

    const-string v29, "-----------------------------------------------"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void

    .line 315
    .end local v6    # "anrFile":Ljava/io/File;
    .end local v7    # "anrPath":Ljava/lang/String;
    :cond_6
    const-string v28, "trace"

    const-string v29, "file not exist"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_7
    const-string v28, "trace"

    const-string v29, "is not directory"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 331
    .restart local v17    # "files":[Ljava/io/File;
    :cond_8
    aget-object v15, v17, v28

    .line 332
    .local v15, "file2":Ljava/io/File;
    const-string v30, "trace"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "file path="

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", file lastModified="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 336
    .end local v15    # "file2":Ljava/io/File;
    .restart local v19    # "i":I
    :cond_9
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "the "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "th file path="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v17, v19

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    aget-object v28, v17, v19

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 339
    .local v16, "filePath":Ljava/lang/String;
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "filePath="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 341
    move-object/from16 v24, v16

    .line 342
    goto/16 :goto_4

    .line 335
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 389
    .end local v16    # "filePath":Ljava/lang/String;
    .end local v17    # "files":[Ljava/io/File;
    .end local v19    # "i":I
    .restart local v4    # "ANRContent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "anrTime":J
    .restart local v11    # "content":Ljava/lang/String;
    .restart local v13    # "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    .restart local v18    # "hasReport":Z
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v25    # "realPathFile":Ljava/io/File;
    :cond_b
    const-string v28, "trace"

    const-string v29, "entity is null"

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 394
    .end local v11    # "content":Ljava/lang/String;
    .end local v13    # "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    .end local v21    # "name":Ljava/lang/String;
    :cond_c
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " is empty"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 404
    .end local v4    # "ANRContent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "anrTime":J
    .end local v18    # "hasReport":Z
    .end local v25    # "realPathFile":Ljava/io/File;
    .restart local v6    # "anrFile":Ljava/io/File;
    .restart local v7    # "anrPath":Ljava/lang/String;
    .restart local v17    # "files":[Ljava/io/File;
    .restart local v19    # "i":I
    :cond_d
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " file name="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v17, v19

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    aget-object v28, v17, v19

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "absolutePath":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 407
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .local v22, "pFile":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 410
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v20

    .line 411
    .local v20, "isSuccess":Z
    const-string v28, "trace"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "delete anr file, path="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", is delete success="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .end local v20    # "isSuccess":Z
    .end local v22    # "pFile":Ljava/io/File;
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6
.end method

.method private uploadCrashReport()Z
    .locals 4

    .prologue
    .line 428
    const-string v2, "trace"

    const-string v3, "--------------------------------------------------------------"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v2, "trace"

    const-string v3, "[uploadCrashReport]"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, "result":Z
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/netease/androidcrashhandler/MyConfigController;->getEntity(Z)Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v0

    .line 433
    .local v0, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    if-eqz v0, :cond_0

    .line 434
    const/4 v1, 0x1

    .line 435
    const-string v2, "trace"

    const-string v3, "[uploadCrashReport] uploadCrashReportSystem"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v2, v0}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->uploadCrashReportSystem(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 466
    :goto_0
    const-string v2, "trace"

    const-string v3, "--------------------------------------------------------------"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return v1

    .line 439
    :cond_0
    const-string v2, "trace"

    const-string v3, "entity is null"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private uploadDmpFile()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 474
    const-string v6, "trace"

    const-string v8, "[uploadDmpFile]"

    invoke-static {v6, v8}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v6, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    const-string v8, ".dmp"

    invoke-virtual {v6, v8}, Lcom/netease/androidcrashhandler/MyFileUtils;->getFilesBySuffix(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "DMPFileNames":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 477
    const/4 v3, 0x0

    .line 503
    .local v3, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    invoke-static {v7}, Lcom/netease/androidcrashhandler/MyConfigController;->getEntity(Z)Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v3

    .line 505
    const-string v6, "trace"

    const-string v8, "upload dmp file"

    invoke-static {v6, v8}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    array-length v8, v2

    move v6, v7

    :goto_0
    if-lt v6, v8, :cond_1

    .line 532
    .end local v3    # "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    :cond_0
    return-void

    .line 506
    .restart local v3    # "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    :cond_1
    aget-object v1, v2, v6

    .line 507
    .local v1, "DMPFileName":Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v5, v9, v7

    .line 508
    .local v5, "name":Ljava/lang/String;
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DMPFileName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v9, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    invoke-virtual {v9}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v4

    .line 510
    .local v4, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DIInfo.getDeviceInfo:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v9, "is_real_time"

    const-string v10, "false"

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "entity param="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "uploadDmpFile create di file---content:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v9, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    invoke-virtual {v9, v4}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".di"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text/plain"

    invoke-virtual {v3, v9, v10, v11}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v9, "trace"

    const-string v10, "uploadDmpFile create dump file"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/io/File;

    iget-object v9, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v0, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 524
    .local v0, "DMPFile":Ljava/io/File;
    const-string v9, "application/octet-stream"

    invoke-virtual {v3, v0, v1, v9}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v9, "identify"

    invoke-virtual {v3, v9, v5, v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 526
    const-string v9, "error_type"

    const-string v10, "ANDROID_NATIVE_ERROR"

    invoke-virtual {v3, v9, v10, v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 527
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MyPostEntity after files size:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " entity files content :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v9, "trace"

    const-string v10, "[uploadDmpFile] uploadCrashReportSystem"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v9, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v9, v3}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->uploadCrashReportSystem(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 506
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method native NCCrashHandler(Ljava/lang/String;)V
.end method

.method native NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCrashIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->crashID:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->EngineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionInfo(Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    const-string v5, "trace"

    const-string v6, "getExceptionInfo"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 624
    .local v1, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 625
    .local v4, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 626
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 628
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 629
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-nez v0, :cond_0

    .line 634
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 635
    .local v3, "result":Ljava/lang/String;
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "java \u5d29\u6e83\u4fe1\u606f="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 637
    const-string v5, "stack_trace"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v5, "je_md5"

    iget-object v6, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    invoke-virtual {v6, v3}, Lcom/netease/androidcrashhandler/MyFileUtils;->str2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    return-object v1

    .line 630
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 631
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileUtils()Lcom/netease/androidcrashhandler/MyFileUtils;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    return-object v0
.end method

.method public getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    return-object v0
.end method

.method public getResVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->ResVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->EngineVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->ResVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleNCCrash(Ljava/lang/String;)V
    .locals 13
    .param p1, "DMPFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 656
    const-string v5, "trace"

    const-string v6, "======================================================="

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v5, "trace"

    const-string v6, "[handleNCCrash]------jni to java"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v5, "trace"

    const-string v6, "[handleNCCrash]------start"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] DMPFilePath: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    sget-object v5, Lcom/netease/androidcrashhandler/MyFileUtils;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "DMPFilePaths":[Ljava/lang/String;
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v2, v5

    .line 662
    .local v1, "DMPFileName":Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v12

    .line 663
    .local v4, "name":Ljava/lang/String;
    iput-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->crashID:Ljava/lang/String;

    .line 664
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v3

    .line 665
    .local v3, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "is_real_time"

    const-string v6, "true"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    invoke-virtual {v6, v3}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 668
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".di"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    .line 667
    invoke-virtual {v5, v6, v7, v8}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v5, "trace"

    const-string v6, "-------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v5, "trace"

    const-string v6, "[handleNCCrash] create di file "

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] di file content: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] DefaultPostEntity() files list \uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v5, "trace"

    const-string v6, "-------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 676
    .local v0, "DMPFile":Ljava/io/File;
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v5

    .line 677
    const-string v6, "application/octet-stream"

    .line 676
    invoke-virtual {v5, v0, v1, v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v5, "trace"

    const-string v6, "-------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v5, "trace"

    const-string v6, "[handleNCCrash] create dmp file "

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] DefaultPostEntity() files list \uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v5, "trace"

    const-string v6, "-------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v5

    const-string v6, "identify"

    invoke-virtual {v5, v6, v4, v12}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 683
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v5

    const-string v6, "error_type"

    .line 684
    const-string v7, "ANDROID_NATIVE_ERROR"

    .line 683
    invoke-virtual {v5, v6, v7, v12}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 685
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "client_v"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 686
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] set version\uff1a "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v5

    const-string v6, "client_v"

    .line 688
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getVersion()Ljava/lang/String;

    move-result-object v7

    .line 687
    invoke-virtual {v5, v6, v7, v12}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 691
    :cond_0
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v5

    const-string v6, "crash_time"

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sResumeTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 691
    invoke-virtual {v5, v6, v7, v12}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 694
    sget-object v5, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    if-eqz v5, :cond_1

    .line 695
    const-string v5, "trace"

    const-string v6, "------------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v5, "trace"

    const-string v6, "[handleNCCrash] call game crashCallBack"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    sget-object v5, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    invoke-interface {v5}, Lcom/netease/androidcrashhandler/MyCrashCallBack;->crashCallBack()V

    .line 698
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] crashCallBack entity Params:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] crashCallBack entity Files:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] crashCallBack entity BasicInfo:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getBasicInfo()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v5, "trace"

    const-string v6, "------------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_1
    const-string v5, "trace"

    const-string v6, "-------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v5, "trace"

    const-string v6, "[handleNCCrash] create cfg file "

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v5, "trace"

    const-string v6, "[handleNCCrash] cfg file content\uff1a Under this"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] DefaultPostEntity() files list \uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v5, "trace"

    const-string v6, "-------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v5, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    iget-object v6, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v6

    .line 711
    const-string v7, ".javacfg"

    .line 710
    invoke-virtual {v5, v6, v4, v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->saveParams(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 713
    const-string v5, "trace"

    const-string v6, "--------------------------------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v5, "trace"

    const-string v6, "--------------------------------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v5, "trace"

    const-string v6, "[handleNCCrash] Storage DefaultPostEntity content"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] params: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] desc: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getUserDesc()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] basic info: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getBasicInfo()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[handleNCCrash] files: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v5, "trace"

    const-string v6, "[handleNCCrash]------end"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v5, "trace"

    const-string v6, "--------------------------------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 725
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 726
    return-void
.end method

.method public setCallBack(Lcom/netease/androidcrashhandler/MyCrashCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/netease/androidcrashhandler/MyCrashCallBack;

    .prologue
    .line 117
    sput-object p1, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->callBack:Lcom/netease/androidcrashhandler/MyCrashCallBack;

    .line 118
    return-void
.end method

.method public setCfgInfoToJni()V
    .locals 12

    .prologue
    .line 738
    sget-boolean v9, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->isLoadLibrarySuccess:Z

    if-eqz v9, :cond_3

    .line 739
    const/4 v2, 0x0

    .line 740
    .local v2, "configFilePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 741
    .local v1, "configFile":Ljava/io/File;
    iget-object v9, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_1

    .line 742
    const-string v9, "trace"

    const-string v10, "[setCfgInfoToJni] create_file"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v9, "CREATE_FILE"

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/cfgInfo.jnicfg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 749
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v7

    .line 750
    .local v7, "networkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v3

    .line 751
    .local v3, "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[setCfgInfoToJni] config_content:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 753
    .local v8, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 754
    .local v5, "json":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 755
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 765
    :cond_0
    const-string v9, "CONFIG_CONTENT"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCSetCfgInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .end local v0    # "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    .end local v1    # "configFile":Ljava/io/File;
    .end local v2    # "configFilePath":Ljava/lang/String;
    .end local v3    # "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v7    # "networkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    .end local v8    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 745
    .restart local v1    # "configFile":Ljava/io/File;
    .restart local v2    # "configFilePath":Ljava/lang/String;
    :cond_1
    const-string v9, "trace"

    const-string v10, "mContext == null"

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    .restart local v0    # "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    .restart local v3    # "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v7    # "networkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    .restart local v8    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 757
    .local v6, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 758
    :catch_0
    move-exception v4

    .line 760
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 770
    .end local v0    # "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    .end local v1    # "configFile":Ljava/io/File;
    .end local v2    # "configFilePath":Ljava/lang/String;
    .end local v3    # "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "networkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    .end local v8    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No setCfgInfoToJni: isLoadLibrarySuccess = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v11, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->isLoadLibrarySuccess:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->EngineVersion:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setResVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->ResVersion:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public startCrashHandle(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->startCrashHandle(Landroid/content/Context;Z)V

    .line 194
    return-void
.end method

.method public startCrashHandle(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "proguard"    # Z

    .prologue
    .line 197
    const-string v2, "trace"

    const-string v3, "======================================================="

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "trace"

    const-string v3, "[startCrashHandle]"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    .line 202
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->fileUtils:Lcom/netease/androidcrashhandler/MyFileUtils;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netease/androidcrashhandler/MyFileUtils;->setCtx(Landroid/content/Context;)V

    .line 203
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netease/androidcrashhandler/DeviceInfo;->setCtx(Landroid/content/Context;)V

    .line 204
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/DeviceInfo;->collectDeviceInfo()V

    .line 205
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 207
    new-instance v0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$2;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler$2;-><init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)V

    .line 238
    .local v0, "activityLifecycleCallbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 239
    const-string v2, "trace"

    const-string v3, "Activity context"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 250
    .end local v0    # "activityLifecycleCallbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sResumeTime:J

    .line 251
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->EngineVersion:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 254
    const/4 v4, 0x1

    .line 253
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 254
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->EngineVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    .line 262
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/DeviceInfo;->getInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "proguard"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :goto_2
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v2

    const-string v3, "os_type"

    const-string v4, "Android"

    invoke-virtual {v2, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "trace"

    const-string v3, "------------------------------------------"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "trace"

    const-string v3, "[startCrashHandle] DefaultPostEntity content\uff1a"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[startCrashHandle] DefaultPostEntity Files:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[startCrashHandle] DefaultPostEntity Params:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[startCrashHandle] DefaultPostEntity BasicInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->networkUtils:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->getBasicInfo()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "trace"

    const-string v3, "------------------------------------------"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->uploadCrashReport()Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->uploadDmpFile()V

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->uploadANRReport()V

    .line 283
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 284
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 286
    sget-boolean v2, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->isLoadLibrarySuccess:Z

    if-eqz v2, :cond_5

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->NCCrashHandler(Ljava/lang/String;)V

    .line 292
    :goto_3
    const-string v2, "CrashHunter"

    const-string v3, "regist dmp crash callback"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 243
    .restart local v0    # "activityLifecycleCallbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    :cond_3
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 244
    const-string v2, "trace"

    const-string v3, "Application context"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Application;

    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/16 :goto_0

    .line 255
    .end local v0    # "activityLifecycleCallbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 264
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    iget-object v2, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->DIInfo:Lcom/netease/androidcrashhandler/DeviceInfo;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/DeviceInfo;->getInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "proguard"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 289
    :cond_5
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " No NCCrashHandler: isLoadLibrarySuccess = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->isLoadLibrarySuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 544
    const-string v0, "trace"

    const-string v1, "uncaughtException"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "crashing"

    const-string v1, "uncaughtException"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, p2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->handleJEException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 553
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 551
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
