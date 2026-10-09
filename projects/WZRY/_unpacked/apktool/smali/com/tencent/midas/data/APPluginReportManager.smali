.class public Lcom/tencent/midas/data/APPluginReportManager;
.super Ljava/lang/Object;
.source "APPluginReportManager.java"


# static fields
.field public static final MIDASPLUGIN_FORMAT_APKLOAD_ERROR:Ljava/lang/String; = "sdk.loadapk_error"

.field public static final MIDASPLUGIN_FORMAT_APKLOAD_FAIL:Ljava/lang/String; = "sdk.loadapk_fail"

.field public static final MIDASPLUGIN_FORMAT_TIME:Ljava/lang/String; = "sdk.plugin.time"

.field public static final MIDASPLUGIN_LAUNCH_PURE_H5_ERROR_REASON:Ljava/lang/String; = "sdk.plugin.pureH5.error.reason"

.field public static final MIDASPLUGIN_NAME_LAUNCH_ERROR:Ljava/lang/String; = "sdk.plugin.launch.error"

.field public static final MIDASPLUGIN_TIMENAME_GET_FILELIST_FROM_ASSETS:Ljava/lang/String; = "sdk.plugin.init.getFileListFromAssets.time"

.field public static final MIDASPLUGIN_TIMENAME_INIT:Ljava/lang/String; = "timename.init"

.field public static final MIDASPLUGIN_TIMENAME_INIT_KERNEL:Ljava/lang/String; = "sdk.plugin.init.kernel.totaltime"

.field public static final MIDASPLUGIN_TIMENAME_INIT_TOTALTIME:Ljava/lang/String; = "sdk.plugin.init.totaltime"

.field public static final MIDASPLUGIN_TIMENAME_INSTALL_FROM_ASSETS:Ljava/lang/String; = "sdk.plugin.init.installFromAssets.time"

.field public static final MIDASPLUGIN_TIMENAME_INSTALL_FROM_LOCAL:Ljava/lang/String; = "sdk.plugin.init.installFromLocal.time"

.field public static final MIDASPLUGIN_TIMENAME_IS_NEED_ASSETS_UPDATE:Ljava/lang/String; = "sdk.plugin.init.isNeedAssetsUpdate.time"

.field public static final MIDASPLUGIN_TIMENAME_IS_NEED_LOCAL_UPDATE:Ljava/lang/String; = "sdk.plugin.init.isNeedLocalUpdate.time"

.field public static final MIDASPLUGIN_TIMENAME_LAUNCHINFO:Ljava/lang/String; = "timename.launchinfo"

.field public static final MIDASPLUGIN_TIMENAME_LAUNCHNET:Ljava/lang/String; = "timename.launchnet"

.field public static final MIDASPLUGIN_TIMENAME_LAUNCHPAY:Ljava/lang/String; = "timename.launchpay"

.field public static final MIDASPLUGIN_TIMENAME_LAUNCHPAY_WAIT_INIT:Ljava/lang/String; = "sdk.plugin.launchPay.wait.init.time"

.field public static final MIDASPLUGIN_TIMENAME_LAUNCHWEB:Ljava/lang/String; = "timename.launchweb"

.field public static final MIDASPLUGIN_TIMENAME_LOAD_DEX:Ljava/lang/String; = "sdk.plugin.init.loadDex.time"

.field public static final MIDASPLUGIN_TIMENAME_PLUGIN_VALID:Ljava/lang/String; = "sdk.plugin.init.pluginvalid.time"

.field public static final MIDASPLUGIN_TIMENAME_READ_FILE_FROM_ASSETS:Ljava/lang/String; = "sdk.plugin.init.readFileFromAssets.time"

.field public static final MIDASPLUGIN_TIMENAME_UNZIP_SO:Ljava/lang/String; = "sdk.plugin.init.unzip.so.time"

.field public static final MIDASPLUGIN_TIMENAME_WRITE_FILE_TO_DATA:Ljava/lang/String; = "sdk.plugin.init.writeFileToData.time"

.field public static final MIDASPLUGIN_WEBPAGE_INIT:Ljava/lang/String; = "sdk.plugin.webpage.init"

.field public static final MIDASPLUGIN_WEBPAGE_SYSTEM:Ljava/lang/String; = "sdk.plugin.webpage.system"

.field public static final MIDASPLUGIN_WEBPAGE_X5:Ljava/lang/String; = "sdk.plugin.webpage.x5"

.field public static final MIDASPLUGIN_X5_INIT:Ljava/lang/String; = "sdk.plugin.x5.init"

.field public static final MIDASPLUGIN_X5_INIT_FAIL:Ljava/lang/String; = "sdk.plugin.x5.init.fail"

.field public static final MIDASPLUGIN_X5_INIT_SUCCESS:Ljava/lang/String; = "sdk.plugin.x5.init.success"

.field private static gInstance:Lcom/tencent/midas/data/APPluginReportManager;


# instance fields
.field initDataReport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/data/APClickStreamParams;",
            ">;"
        }
    .end annotation
.end field

.field payDataReport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/data/APClickStreamParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/midas/data/APPluginReportManager;->gInstance:Lcom/tencent/midas/data/APPluginReportManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/tencent/midas/data/APPluginReportManager;->initDataReport:Ljava/util/ArrayList;

    .line 75
    iput-object v0, p0, Lcom/tencent/midas/data/APPluginReportManager;->payDataReport:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginReportManager;->initDataReport:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginReportManager;->payDataReport:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method private constructTimeReport(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "timeName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 614
    .local v0, "strBuffer":Ljava/lang/StringBuffer;
    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string/jumbo v1, "times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 621
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAllReportRecord(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/data/APClickStreamParams;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "dataRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/data/APClickStreamParams;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 438
    .local v3, "recordCount":I
    if-gtz v3, :cond_0

    .line 439
    const/4 v5, 0x0

    .line 469
    :goto_0
    return-object v5

    .line 442
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    .local v4, "strBuff":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 445
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 447
    add-int/lit8 v2, v2, 0x1

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/midas/data/APClickStreamParams;

    invoke-direct {p0, v5}, Lcom/tencent/midas/data/APPluginReportManager;->reportParams2Str(Lcom/tencent/midas/data/APClickStreamParams;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 453
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 458
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 459
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 462
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 463
    .local v0, "allRecord":Ljava/lang/StringBuffer;
    const-string v5, "num="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 465
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/midas/data/APPluginReportManager;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/tencent/midas/data/APPluginReportManager;->gInstance:Lcom/tencent/midas/data/APPluginReportManager;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/tencent/midas/data/APPluginReportManager;

    invoke-direct {v0}, Lcom/tencent/midas/data/APPluginReportManager;-><init>()V

    sput-object v0, Lcom/tencent/midas/data/APPluginReportManager;->gInstance:Lcom/tencent/midas/data/APPluginReportManager;

    .line 86
    :cond_0
    sget-object v0, Lcom/tencent/midas/data/APPluginReportManager;->gInstance:Lcom/tencent/midas/data/APPluginReportManager;

    return-object v0
.end method

.method public static initDataRelease()V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    sget-object v0, Lcom/tencent/midas/data/APPluginReportManager;->gInstance:Lcom/tencent/midas/data/APPluginReportManager;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/tencent/midas/data/APPluginReportManager;->gInstance:Lcom/tencent/midas/data/APPluginReportManager;

    iget-object v0, v0, Lcom/tencent/midas/data/APPluginReportManager;->initDataReport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private insertOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "extend"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Lcom/tencent/midas/data/APClickStreamParams;

    invoke-direct {v0}, Lcom/tencent/midas/data/APClickStreamParams;-><init>()V

    .line 360
    .local v0, "params":Lcom/tencent/midas/data/APClickStreamParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android_v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/midas/api/APMidasPayAPI;->getMidasPluginVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->device:Ljava/lang/String;

    .line 363
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getOpenId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->openid:Ljava/lang/String;

    .line 366
    iput-object p2, v0, Lcom/tencent/midas/data/APClickStreamParams;->format:Ljava/lang/String;

    .line 369
    iput-object p3, v0, Lcom/tencent/midas/data/APClickStreamParams;->from:Ljava/lang/String;

    .line 372
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->offerid:Ljava/lang/String;

    .line 375
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getPf()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->pf:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getSessionId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->SessionId:Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getSessionType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->SessionType:Ljava/lang/String;

    .line 383
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    const/4 v2, 0x3

    invoke-static {p4, v2}, Lcom/pay/tool/APMidasTools;->urlEncode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    .line 385
    iput-object p4, v0, Lcom/tencent/midas/data/APClickStreamParams;->extend:Ljava/lang/String;

    .line 389
    :cond_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getSaveType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 407
    const-string v2, "game"

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    .line 411
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->currentTimeMillis:Ljava/lang/String;

    .line 413
    const-string v2, "init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    invoke-static {}, Lcom/tencent/midas/data/APInitData;->getInitdataCount()I

    move-result v2

    iput v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->dataId:I

    .line 418
    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APInitData;->getInitGUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->VipFlags:Ljava/lang/String;

    .line 419
    iget-object v2, p0, Lcom/tencent/midas/data/APPluginReportManager;->initDataReport:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :goto_1
    return-void

    .line 391
    :pswitch_0
    const-string v2, "game"

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 394
    :pswitch_1
    const-string v2, "goods"

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 398
    :pswitch_2
    const-string v2, "acct"

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 401
    :pswitch_3
    const-string v2, "month"

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 404
    :pswitch_4
    const-string/jumbo v2, "subscribe"

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 422
    :cond_1
    invoke-static {}, Lcom/tencent/midas/data/APDataId;->getDataId()I

    move-result v2

    iput v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->dataId:I

    .line 425
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getProcessData()Lcom/tencent/midas/data/APMultiProcessData;

    move-result-object v1

    .line 426
    .local v1, "processData":Lcom/tencent/midas/data/APMultiProcessData;
    if-eqz v1, :cond_2

    .line 427
    invoke-virtual {v1}, Lcom/tencent/midas/data/APMultiProcessData;->getGuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/midas/data/APClickStreamParams;->VipFlags:Ljava/lang/String;

    .line 429
    :cond_2
    iget-object v2, p0, Lcom/tencent/midas/data/APPluginReportManager;->payDataReport:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private invokeAPKReportManager(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "saveType"    # I
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "sToken"    # Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "sExtend"    # Ljava/lang/String;

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 630
    .local v0, "apDataReportManagerCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "com.pay.data.report.APDataReportManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 632
    if-eqz v0, :cond_0

    .line 634
    const/4 v3, 0x0

    .line 636
    .local v3, "getInstance":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v5, "getInstance"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 642
    :goto_0
    const/4 v1, 0x0

    .line 644
    .local v1, "apReportManagerObj":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 651
    .end local v1    # "apReportManagerObj":Ljava/lang/Object;
    :goto_1
    const/4 v4, 0x0

    .line 653
    .local v4, "insertData":Ljava/lang/reflect/Method;
    :try_start_3
    const-string v5, "insertData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 660
    :goto_2
    const/4 v5, 0x6

    :try_start_4
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 672
    .end local v3    # "getInstance":Ljava/lang/reflect/Method;
    .end local v4    # "insertData":Ljava/lang/reflect/Method;
    :cond_0
    :goto_3
    return-void

    .line 637
    .restart local v3    # "getInstance":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_5
    const-string v5, "APPluginReportManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeAPKReportManager error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 667
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "getInstance":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 668
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "APPluginReportManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeAPKReportManager error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 645
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "apReportManagerObj":Ljava/lang/Object;
    .restart local v3    # "getInstance":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v2

    .line 646
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v5, "APPluginReportManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeAPKReportManager error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 654
    .end local v1    # "apReportManagerObj":Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "insertData":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 655
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "APPluginReportManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeAPKReportManager error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 661
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 662
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "APPluginReportManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invokeAPKReportManager error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3
.end method

.method public static payDataRelease()V
    .locals 1

    .prologue
    .line 102
    :try_start_0
    sget-object v0, Lcom/tencent/midas/data/APPluginReportManager;->gInstance:Lcom/tencent/midas/data/APPluginReportManager;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/tencent/midas/data/APPluginReportManager;->gInstance:Lcom/tencent/midas/data/APPluginReportManager;

    iget-object v0, v0, Lcom/tencent/midas/data/APPluginReportManager;->payDataReport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private reportParams2Str(Lcom/tencent/midas/data/APClickStreamParams;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "params"    # Lcom/tencent/midas/data/APClickStreamParams;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v0, "strBuff":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->openid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string/jumbo v1, "|7=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|13="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->dataId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|24="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->offerid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    iget-object v1, p1, Lcom/tencent/midas/data/APClickStreamParams;->payid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->payid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_0
    iget-object v1, p1, Lcom/tencent/midas/data/APClickStreamParams;->isBindQQ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|55="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->isBindQQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|21="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|26="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget-object v1, p1, Lcom/tencent/midas/data/APClickStreamParams;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|56="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_2
    const-string v1, "getLogRecord extend pre"

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->extend:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p1, Lcom/tencent/midas/data/APClickStreamParams;->extend:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|8="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->extend:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_3
    iget-object v1, p1, Lcom/tencent/midas/data/APClickStreamParams;->from:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|20="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->from:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_4
    iget-object v1, p1, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|47="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|29="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|31="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->device:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|38="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->currentTimeMillis:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|34="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->uinTypeFromSvr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|35="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->uinFromSvr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|37="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->SessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|43="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->SessionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v1, p1, Lcom/tencent/midas/data/APClickStreamParams;->PayLevel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|54="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->PayLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_6
    iget-object v1, p1, Lcom/tencent/midas/data/APClickStreamParams;->VipFlags:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "|53="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/midas/data/APClickStreamParams;->VipFlags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_7
    return-object v0
.end method


# virtual methods
.method public declared-synchronized dataReport(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 578
    .local v0, "reportData":Ljava/lang/String;
    const-string v1, "init"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/tencent/midas/data/APPluginReportManager;->initDataReport:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/tencent/midas/data/APPluginReportManager;->getAllReportRecord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    :goto_1
    monitor-exit p0

    return-void

    .line 581
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/midas/data/APPluginReportManager;->payDataReport:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/tencent/midas/data/APPluginReportManager;->getAllReportRecord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_1
    invoke-static {}, Lcom/pay/http/APNetworkManager;->getInstance()Lcom/pay/http/APNetworkManager;

    move-result-object v1

    new-instance v2, Lcom/tencent/midas/data/APPluginReportManager$2;

    invoke-direct {v2, p0}, Lcom/tencent/midas/data/APPluginReportManager$2;-><init>(Lcom/tencent/midas/data/APPluginReportManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/pay/http/APNetworkManager;->dataReport(Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 577
    .end local v0    # "reportData":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public initInterfaceInit(Ljava/lang/String;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 4
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 114
    invoke-static {}, Lcom/tencent/midas/data/APInitData;->init()V

    .line 116
    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    move-result-object v0

    invoke-static {}, Lcom/pay/tool/APMidasTools;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/midas/data/APInitData;->setInitGUID(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/midas/data/APInitData;->setInitInterfaceTime(J)V

    .line 121
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->init()V

    .line 124
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/midas/data/APPluginDataInterface;->setLaunchInterface(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/tencent/midas/data/APMidasAnalyzeParams;->getInstance()Lcom/tencent/midas/data/APMidasAnalyzeParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/midas/data/APMidasAnalyzeParams;->AnalyzeParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 127
    return-void
.end method

.method public insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "extend"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "insertTimeData interfaceName="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/midas/data/APPluginReportManager;->insertOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public insertTimeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "timeName"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v5, "insertTimeData interfaceName="

    invoke-static {v5, p1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v5, "insertTimeData timeName="

    invoke-static {v5, p2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v5, "init"

    if-ne p1, v5, :cond_1

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APInitData;->getInitInterfaceTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 259
    .local v0, "initTime":J
    const-string/jumbo v5, "\u65f6\u8017"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertTimeData timeName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",initTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v5, "sdk.plugin.time"

    const-string v6, ""

    invoke-direct {p0, p2, v0, v1}, Lcom/tencent/midas/data/APPluginReportManager;->constructTimeReport(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/tencent/midas/data/APPluginReportManager;->insertOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v0    # "initTime":J
    :cond_1
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getProcessData()Lcom/tencent/midas/data/APMultiProcessData;

    move-result-object v4

    .line 266
    .local v4, "processData":Lcom/tencent/midas/data/APMultiProcessData;
    const-wide/16 v2, 0x0

    .line 267
    .local v2, "payTime":J
    if-eqz v4, :cond_2

    .line 268
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getProcessData()Lcom/tencent/midas/data/APMultiProcessData;

    move-result-object v4

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/tencent/midas/data/APMultiProcessData;->getPayInterfaceTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 271
    :cond_2
    const-string/jumbo v5, "\u65f6\u8017"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertTimeData timeName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",payTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v5, "sdk.plugin.time"

    const-string v6, ""

    invoke-direct {p0, p2, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->constructTimeReport(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/tencent/midas/data/APPluginReportManager;->insertOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public insertTimeData(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "timeName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 287
    const-string v0, "insertTimeData interfaceName="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 296
    :cond_0
    const-string v0, "init"

    if-ne p1, v0, :cond_1

    .line 298
    const-string v0, "sdk.plugin.time"

    const-string v1, ""

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/midas/data/APPluginReportManager;->constructTimeReport(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/midas/data/APPluginReportManager;->insertOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    const-string v0, "sdk.plugin.time"

    const-string v1, ""

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/midas/data/APPluginReportManager;->constructTimeReport(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/midas/data/APPluginReportManager;->insertOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "timeName"    # Ljava/lang/String;
    .param p3, "dateStart"    # J

    .prologue
    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    .local v0, "dateEnd":J
    invoke-static {p3, p4, v0, v1}, Lcom/pay/tool/APMidasTools;->getTimeInterval(JJ)J

    move-result-wide v2

    .line 316
    .local v2, "time":J
    const-string v4, "insertTimeDataEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeData(Ljava/lang/String;Ljava/lang/String;J)V

    .line 318
    return-void
.end method

.method public payInterfaceInit(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;)V
    .locals 8
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->init()V

    .line 143
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/tencent/midas/data/APPluginDataInterface;->setLaunchInterface(Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/tencent/midas/data/APMultiProcessData;

    invoke-direct {v0}, Lcom/tencent/midas/data/APMultiProcessData;-><init>()V

    .line 147
    .local v0, "processData":Lcom/tencent/midas/data/APMultiProcessData;
    invoke-static {}, Lcom/pay/tool/APMidasTools;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/midas/data/APMultiProcessData;->setGuid(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 150
    .local v2, "ptime":J
    const-string v4, "showFirstPageInsertDB====="

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "all:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v2, v3}, Lcom/tencent/midas/data/APMultiProcessData;->setPayInterfaceTime(J)V

    .line 154
    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/midas/data/APInitData;->getInitInterfaceTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 155
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/tencent/midas/data/APMultiProcessData;->setIntervalTime(I)V

    .line 162
    :goto_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/midas/data/APPluginDataInterface;->setProcessData(Lcom/tencent/midas/data/APMultiProcessData;)V

    .line 165
    invoke-static {}, Lcom/tencent/midas/data/APMidasAnalyzeParams;->getInstance()Lcom/tencent/midas/data/APMidasAnalyzeParams;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/tencent/midas/data/APMidasAnalyzeParams;->setSaveType(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 168
    invoke-static {}, Lcom/tencent/midas/data/APMidasAnalyzeParams;->getInstance()Lcom/tencent/midas/data/APMidasAnalyzeParams;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/tencent/midas/data/APMidasAnalyzeParams;->AnalyzeParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 169
    return-void

    .line 157
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/midas/data/APInitData;->getInitInterfaceTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 158
    .local v1, "time":I
    invoke-virtual {v0, v1}, Lcom/tencent/midas/data/APMultiProcessData;->setIntervalTime(I)V

    goto :goto_0
.end method

.method public reportImmediatelyOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "iFormat"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 480
    new-instance v2, Lcom/tencent/midas/data/APClickStreamParams;

    invoke-direct {v2}, Lcom/tencent/midas/data/APClickStreamParams;-><init>()V

    .line 482
    .local v2, "params":Lcom/tencent/midas/data/APClickStreamParams;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android_v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tencent/midas/api/APMidasPayAPI;->getMidasPluginVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->device:Ljava/lang/String;

    .line 485
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getOpenId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->openid:Ljava/lang/String;

    .line 488
    iput-object p2, v2, Lcom/tencent/midas/data/APClickStreamParams;->format:Ljava/lang/String;

    .line 491
    const-string v5, ""

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->from:Ljava/lang/String;

    .line 494
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->offerid:Ljava/lang/String;

    .line 497
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getPf()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->pf:Ljava/lang/String;

    .line 500
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getSessionId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->SessionId:Ljava/lang/String;

    .line 503
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getSessionType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->SessionType:Ljava/lang/String;

    .line 505
    move-object v1, p3

    .line 506
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 507
    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/pay/tool/APMidasTools;->urlEncode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 508
    iput-object v1, v2, Lcom/tencent/midas/data/APClickStreamParams;->extend:Ljava/lang/String;

    .line 512
    :cond_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getSaveType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 530
    const-string v5, "game"

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    .line 534
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->currentTimeMillis:Ljava/lang/String;

    .line 535
    const-string v5, "init"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    invoke-static {}, Lcom/tencent/midas/data/APInitData;->getInitdataCount()I

    move-result v5

    iput v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->dataId:I

    .line 538
    invoke-static {}, Lcom/tencent/midas/data/APInitData;->singleton()Lcom/tencent/midas/data/APInitData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APInitData;->getInitGUID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->VipFlags:Ljava/lang/String;

    .line 549
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/data/APClickStreamParams;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-direct {p0, v0}, Lcom/tencent/midas/data/APPluginReportManager;->getAllReportRecord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "reportData":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 573
    :goto_2
    return-void

    .line 514
    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/data/APClickStreamParams;>;"
    .end local v4    # "reportData":Ljava/lang/String;
    :pswitch_0
    const-string v5, "game"

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 517
    :pswitch_1
    const-string v5, "goods"

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 521
    :pswitch_2
    const-string v5, "acct"

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 524
    :pswitch_3
    const-string v5, "month"

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 527
    :pswitch_4
    const-string/jumbo v5, "subscribe"

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->savetype:Ljava/lang/String;

    goto :goto_0

    .line 541
    :cond_2
    invoke-static {}, Lcom/tencent/midas/data/APDataId;->getDataId()I

    move-result v5

    iput v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->dataId:I

    .line 543
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/midas/data/APPluginDataInterface;->getProcessData()Lcom/tencent/midas/data/APMultiProcessData;

    move-result-object v3

    .line 544
    .local v3, "processData":Lcom/tencent/midas/data/APMultiProcessData;
    if-eqz v3, :cond_1

    .line 545
    invoke-virtual {v3}, Lcom/tencent/midas/data/APMultiProcessData;->getGuid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/midas/data/APClickStreamParams;->VipFlags:Ljava/lang/String;

    goto :goto_1

    .line 558
    .end local v3    # "processData":Lcom/tencent/midas/data/APMultiProcessData;
    .restart local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/data/APClickStreamParams;>;"
    .restart local v4    # "reportData":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/pay/http/APNetworkManager;->getInstance()Lcom/pay/http/APNetworkManager;

    move-result-object v5

    new-instance v6, Lcom/tencent/midas/data/APPluginReportManager$1;

    invoke-direct {v6, p0}, Lcom/tencent/midas/data/APPluginReportManager$1;-><init>(Lcom/tencent/midas/data/APPluginReportManager;)V

    invoke-virtual {v5, v4, v6}, Lcom/pay/http/APNetworkManager;->dataReport(Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V

    goto :goto_2

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
