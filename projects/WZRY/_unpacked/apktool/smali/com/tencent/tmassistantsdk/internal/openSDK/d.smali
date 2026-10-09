.class public Lcom/tencent/tmassistantsdk/internal/openSDK/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantsdk/internal/b/a;


# static fields
.field protected static a:Lcom/tencent/tmassistantsdk/internal/openSDK/d;


# instance fields
.field protected b:Lcom/tencent/tmassistantsdk/internal/b/b;

.field protected c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

.field d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    .line 54
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    .line 54
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->d:Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Landroid/content/Context;)V

    .line 72
    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;)Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;
    .locals 3

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 474
    :goto_0
    return-object v0

    .line 460
    :cond_0
    new-instance v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;-><init>()V

    .line 461
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->hostAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    .line 462
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskAppId:Ljava/lang/String;

    .line 463
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    .line 465
    :try_start_0
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_1
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->uin:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->uin:Ljava/lang/String;

    .line 471
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->uinType:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->uinType:Ljava/lang/String;

    .line 472
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->via:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    .line 473
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    goto :goto_0

    .line 466
    :catch_0
    move-exception v1

    .line 467
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "baseParam2QQParam Integer.valueOf(baseParam.taskVersion) NumberFormatException occur"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/tmassistantsdk/internal/openSDK/d;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/tencent/tmassistantsdk/internal/openSDK/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/d;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/d;

    .line 83
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a:Lcom/tencent/tmassistantsdk/internal/openSDK/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 412
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jceStruct = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {p0, p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_1

    .line 415
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCRequest;)[B

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 417
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return sendData length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-object v0

    .line 420
    :cond_0
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "handleUriAction sendData = null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 421
    goto :goto_0

    .line 425
    :cond_1
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "handleUriAction IPCRequest = null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 426
    goto :goto_0
.end method

.method public static b(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;
    .locals 5

    .prologue
    .line 368
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batchRequestType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",appList size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",via = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",uin = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",uinType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v3, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;

    invoke-direct {v3}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;-><init>()V

    .line 370
    iput p0, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;->batchRequestType:I

    .line 371
    if-eqz p2, :cond_0

    .line 372
    iput-object p2, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;->via:Ljava/lang/String;

    .line 374
    :cond_0
    if-eqz p3, :cond_1

    .line 375
    iput-object p3, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;->uin:Ljava/lang/String;

    .line 377
    :cond_1
    if-eqz p4, :cond_2

    .line 378
    iput-object p4, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;->uinType:Ljava/lang/String;

    .line 380
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;->batchData:Ljava/util/ArrayList;

    .line 382
    const-string v2, "appList {"

    .line 383
    if-eqz p1, :cond_4

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appList.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 386
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    .line 387
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    move-result-object v0

    .line 388
    new-instance v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;

    invoke-direct {v4}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;-><init>()V

    .line 389
    iput-object v0, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;->baseParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    .line 390
    iget-object v0, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;->batchData:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "element:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "IPCDownloadParam {IPCBaseParam {hostAppId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;->baseParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->hostAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|taskAppId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;->baseParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|taskPackageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;->baseParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|taskVersion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;->baseParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|actionFlag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;->actionFlag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|verifyType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCDownloadParam;->verifyType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 368
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 401
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-object v3
.end method

.method private static b(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;
    .locals 3

    .prologue
    .line 436
    if-nez p0, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 448
    :goto_0
    return-object v0

    .line 439
    :cond_0
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;-><init>()V

    .line 440
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->hostAppId:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskAppId:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskPackageName:Ljava/lang/String;

    .line 443
    iget v1, p0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskVersion:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->taskVersion:Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->uin:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->uin:Ljava/lang/String;

    .line 445
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->uinType:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->uinType:Ljava/lang/String;

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROIDSDK.YYB.DOWNLOAD."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->via:Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;->channelId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)Lcom/tencent/tmassistantsdk/TMAssistantCallYYBTaskInfo;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 315
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadTask param.sngAppid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|param.appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "| param.taskPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|param.taskVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    move-result-object v0

    .line 317
    new-instance v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskRequest;

    invoke-direct {v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskRequest;-><init>()V

    .line 318
    iput-object v0, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskRequest;->baseParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    .line 320
    const-string v0, ""

    invoke-static {v2, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)[B

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 324
    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 325
    invoke-virtual {p0, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Landroid/content/Context;)V

    .line 327
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-virtual {v2, v0}, Lcom/tencent/tmassistantsdk/internal/b/b;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :goto_0
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a([B)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_2

    .line 341
    invoke-static {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskResponse;

    .line 342
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryDownloadTaskResponse downloadTask state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskResponse;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget v0, v6, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskResponse;->state:I

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->assistantState2SDKState(I)I

    move-result v3

    .line 345
    if-eqz v6, :cond_3

    .line 346
    new-instance v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBTaskInfo;

    iget-object v1, v6, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskResponse;->url:Ljava/lang/String;

    iget-object v2, v6, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskResponse;->savePath:Ljava/lang/String;

    iget-wide v4, v6, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskResponse;->receivedLen:J

    iget-wide v6, v6, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/QueryDownloadTaskResponse;->totalLen:J

    const-string v8, "application/vnd.android.package-archive"

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    move-object v1, v0

    .line 353
    :goto_1
    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    const-string v2, "QQDownloaderOpenSDKDataProcessor"

    const-string v3, "getDownloadTask Exception,return null"

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 337
    :cond_0
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "getDownloadTask sendData = null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 350
    :cond_2
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "getDownloadTask IPCResponse = null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_3
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "getDownloadTask return null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const-string v4, "QQDownloaderOpenSDKDataProcessor"

    const-string v5, "appList = null,return null"

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v5, 0x0

    .line 305
    :goto_0
    return-object v5

    .line 252
    :cond_0
    const-string v4, "QQDownloaderOpenSDKDataProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBatchTaskInfos appList.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",via = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uinType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v4, v0, v1, v2, v3}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;

    move-result-object v4

    .line 257
    const-string v5, ""

    invoke-static {v4, v5}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)[B

    move-result-object v5

    .line 258
    const/4 v4, 0x0

    .line 259
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    .line 261
    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Landroid/content/Context;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    if-eqz v6, :cond_1

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-virtual {v4, v5}, Lcom/tencent/tmassistantsdk/internal/b/b;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 276
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 277
    invoke-static {v4}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a([B)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_7

    .line 279
    invoke-static {v4}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionResponse;

    .line 280
    if-eqz v13, :cond_6

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBatchTaskInfos BatchDownloadActionResponse batchRequestType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v13, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionResponse;->batchRequestType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    iget-object v6, v13, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionResponse;->batchData:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "response.batchData.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionResponse;->batchData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 284
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 285
    const/4 v4, 0x0

    move v14, v4

    :goto_2
    iget-object v4, v13, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionResponse;->batchData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_4

    .line 286
    iget-object v4, v13, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionResponse;->batchData:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCQueryDownloadInfo;

    .line 288
    iget v4, v10, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCQueryDownloadInfo;->state:I

    invoke-static {v4}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->assistantState2SDKState(I)I

    move-result v7

    .line 289
    if-eqz v10, :cond_2

    .line 290
    new-instance v4, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBTaskInfo;

    iget-object v5, v10, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCQueryDownloadInfo;->url:Ljava/lang/String;

    iget-object v6, v10, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCQueryDownloadInfo;->savePath:Ljava/lang/String;

    iget-wide v8, v10, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCQueryDownloadInfo;->receivedLen:J

    iget-wide v10, v10, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCQueryDownloadInfo;->totalLen:J

    const-string v12, "application/vnd.android.package-archive"

    invoke-direct/range {v4 .. v12}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    .line 292
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_2
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto :goto_2

    .line 268
    :catch_0
    move-exception v4

    .line 269
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 273
    :cond_3
    const-string v5, "QQDownloaderOpenSDKDataProcessor"

    const-string v6, "getBatchTaskInfos sendData = null or length = 0"

    invoke-static {v5, v6}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object v4, v15

    move-object/from16 v5, v16

    .line 298
    :goto_3
    const-string v6, "QQDownloaderOpenSDKDataProcessor"

    invoke-static {v6, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "response.batchData = null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 300
    :cond_6
    const-string v4, "QQDownloaderOpenSDKDataProcessor"

    const-string v6, "getBatchTaskInfos BatchDownloadActionResponse response = null"

    invoke-static {v4, v6}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :cond_7
    const-string v4, "QQDownloaderOpenSDKDataProcessor"

    const-string v6, "getBatchTaskInfos IPCResponse resp = null"

    invoke-static {v4, v6}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 515
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadSDKServiceInvalid callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    invoke-interface {v0}, Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;->OnQQDownloaderInvalid()V

    .line 520
    :cond_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_1

    .line 522
    invoke-static {v0}, Lcom/tencent/tmassistant/f;->a(Landroid/content/Context;)Lcom/tencent/tmassistant/f;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistant/f;->c(Ljava/lang/String;)Z

    .line 524
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    .line 525
    return-void
.end method

.method public a(Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;)V
    .locals 3

    .prologue
    .line 87
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    .line 89
    return-void
.end method

.method a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadProgressResponse;)V
    .locals 6

    .prologue
    .line 562
    iget-object v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadProgressResponse;->requestParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    invoke-direct {p0, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;)Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    if-eqz v0, :cond_0

    .line 564
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8fdb\u5ea6\u56de\u8c03\uff1aGetDownloadProgressResponse response.receivedLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadProgressResponse;->receivedLen:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",response.totalLen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadProgressResponse;->totalLen:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    iget-wide v2, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadProgressResponse;->receivedLen:J

    iget-wide v4, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadProgressResponse;->totalLen:J

    invoke-interface/range {v0 .. v5}, Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;->OnDownloadTaskProgressChanged(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;JJ)V

    .line 567
    :cond_0
    return-void
.end method

.method a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;)V
    .locals 5

    .prologue
    .line 546
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceFreed response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;->requestParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    invoke-direct {p0, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;)Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    if-eqz v1, :cond_0

    .line 549
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u72b6\u6001\u56de\u8c03\uff1aGetDownloadStateResponse param.taskAppId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",param.taskPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",response.errorCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;->state:I

    invoke-static {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->assistantState2SDKState(I)I

    move-result v2

    iget v3, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;->errorCode:I

    invoke-static {v3}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->assistantErrorCode2SDKErrorCode(I)I

    move-result v3

    iget-object v4, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;->OnDownloadTaskStateChanged(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;IILjava/lang/String;)V

    .line 554
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 5

    .prologue
    .line 482
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 483
    invoke-static {p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a([B)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;

    move-result-object v1

    .line 484
    invoke-static {v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/a;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 485
    const-string v2, "QQDownloaderOpenSDKDataProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response.head.cmdId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->head:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;

    iget v4, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->cmdId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCResponse;->head:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;

    iget v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCHead;->cmdId:I

    sparse-switch v1, :sswitch_data_0

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 488
    :sswitch_0
    if-eqz v0, :cond_0

    .line 489
    check-cast v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;

    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadStateResponse;)V

    goto :goto_0

    .line 493
    :sswitch_1
    if-eqz v0, :cond_0

    .line 494
    check-cast v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadProgressResponse;

    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/GetDownloadProgressResponse;)V

    goto :goto_0

    .line 498
    :sswitch_2
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->d()V

    goto :goto_0

    .line 504
    :cond_1
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string v1, "onActionResult reponseData = null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBatchUpdateAction batchRequestType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|appList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, "QQDownloaderOpenSDKDataProcessor"

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/BatchDownloadActionRequest;

    move-result-object v1

    .line 210
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v1, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)[B

    move-result-object v1

    .line 213
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 215
    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 216
    invoke-virtual {p0, v3}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Landroid/content/Context;)V

    .line 217
    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-virtual {v3, v1}, Lcom/tencent/tmassistantsdk/internal/b/b;->b([B)V

    .line 219
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v3, "result is true"

    invoke-static {v1, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V2_handleBatchRequestAction_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3}, Lcom/tencent/tmassistantsdk/internal/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatStdReport;

    move-result-object v1

    .line 222
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/tmassistantsdk/internal/c/b;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 224
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    .line 226
    :cond_0
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "result is false,openSDKClient is null"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "result is false"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "handleBatchUpdateAction sendData = null or length = 0"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 112
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDownloadTask requestType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  param.sngAppid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|param.appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "| param.taskPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|param.taskVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "| param.actionFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | verifyType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/OperateDownloadTaskRequest;

    invoke-direct {v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/OperateDownloadTaskRequest;-><init>()V

    .line 116
    invoke-static {p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    move-result-object v2

    .line 118
    iput p2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/OperateDownloadTaskRequest;->requestType:I

    .line 119
    iput-object v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/OperateDownloadTaskRequest;->baseParam:Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/IPCBaseParam;

    .line 120
    iput-object p4, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/OperateDownloadTaskRequest;->actionFlag:Ljava/lang/String;

    .line 121
    iput-object p5, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/OperateDownloadTaskRequest;->verifyType:Ljava/lang/String;

    .line 122
    iput-object p3, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/OperateDownloadTaskRequest;->opList:Ljava/lang/String;

    .line 123
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)[B

    move-result-object v1

    .line 126
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 128
    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 129
    invoke-virtual {p0, v3}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Landroid/content/Context;)V

    .line 130
    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-virtual {v3, v1}, Lcom/tencent/tmassistantsdk/internal/b/b;->b([B)V

    .line 132
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v3, "return true"

    invoke-static {v1, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/tmassistantsdk/internal/c/b;->a(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V2_handleDownloadTask_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/tencent/tmassistantsdk/internal/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatStdReport;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/tmassistantsdk/internal/c/b;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 137
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 139
    :cond_0
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "handleDownloadTask openSDKClient = null,return false"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    const-string v2, "QQDownloaderOpenSDKDataProcessor"

    const-string v3, "handleDownloadTask Exception,return false"

    invoke-static {v2, v3, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 150
    :cond_1
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "handleDownloadTask sendData = null,return false"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string/jumbo v1, "uri = null,return false"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return v3

    .line 166
    :cond_0
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/URIActionRequest;

    invoke-direct {v0, p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/param/jce/URIActionRequest;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->a(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)[B

    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 173
    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 174
    invoke-virtual {p0, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b(Landroid/content/Context;)V

    .line 176
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-virtual {v2, v0}, Lcom/tencent/tmassistantsdk/internal/b/b;->b([B)V

    .line 181
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v0

    const-string v2, "V2_handleUriAction"

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/tmassistantsdk/internal/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/StatStdReport;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/b;->a(Lcom/qq/taf/jce/JceStruct;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    const-string v1, "QQDownloaderOpenSDKDataProcessor"

    const-string v2, "handleUriAction Exception,return false"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 190
    :cond_2
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string v1, "handleUriAction sendData = null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    const-string/jumbo v1, "unregisterIQQDownloaderOpenSDKListener start"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    .line 94
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0}, Lcom/tencent/tmassistant/f;->a(Landroid/content/Context;)Lcom/tencent/tmassistant/f;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistant/f;->c(Ljava/lang/String;)Z

    .line 98
    :cond_0
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    .line 100
    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 581
    invoke-static {p1}, Lcom/tencent/tmassistant/f;->a(Landroid/content/Context;)Lcom/tencent/tmassistant/f;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistant/f;->b(Ljava/lang/String;)Lcom/tencent/tmassistantsdk/internal/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    .line 582
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-virtual {v0, p0}, Lcom/tencent/tmassistantsdk/internal/b/b;->a(Lcom/tencent/tmassistantsdk/internal/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_0
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 531
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseIPCClient openSDKClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    if-eqz v0, :cond_1

    .line 533
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-static {v0}, Lcom/tencent/tmassistant/f;->a(Landroid/content/Context;)Lcom/tencent/tmassistant/f;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistant/f;->c(Ljava/lang/String;)Z

    .line 537
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    .line 539
    :cond_1
    return-void
.end method

.method d()V
    .locals 3

    .prologue
    .line 573
    const-string v0, "QQDownloaderOpenSDKDataProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceFreed callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/d;->c:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    invoke-interface {v0}, Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;->OnServiceFree()V

    .line 577
    :cond_0
    return-void
.end method
