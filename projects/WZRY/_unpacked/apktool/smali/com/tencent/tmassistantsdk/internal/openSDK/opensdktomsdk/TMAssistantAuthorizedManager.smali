.class public Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final CLIENT_NAME:Ljava/lang/String; = "downloadSDKClient"

.field protected static final TAG:Ljava/lang/String; = "OpensdkToMsdkManager"

.field protected static mInstance:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;


# instance fields
.field protected authorizedState:I

.field protected dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

.field protected hasNotify:Z

.field protected insertActionId:J

.field protected isInstallFinished:Z

.field protected mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

.field protected mClient:Lcom/tencent/tmassistant/b;

.field protected mContext:Landroid/content/Context;

.field protected mDownloadSDKListener:Lcom/tencent/tmassistant/a;

.field protected mDownloadUrl:Ljava/lang/String;

.field protected mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

.field protected mMainMessageHandler:Landroid/os/Handler;

.field protected mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

.field protected mRequestListener:Lcom/tencent/tmassistantsdk/internal/d/b;

.field protected mSubMessageHandler:Landroid/os/Handler;

.field protected mSubMessagehandlerThread:Landroid/os/HandlerThread;

.field protected mSupportVersionCode:I

.field protected mToMsdkListener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

.field protected negativeBtnListenner:Landroid/view/View$OnClickListener;

.field protected positiveBtnListener:Landroid/view/View$OnClickListener;

.field protected retryBtnListener:Landroid/view/View$OnClickListener;

.field protected sdkChannel:Lcom/tencent/tmassistantsdk/internal/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mInstance:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 66
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mToMsdkListener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    .line 69
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    .line 72
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadUrl:Ljava/lang/String;

    .line 75
    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSupportVersionCode:I

    .line 78
    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    .line 81
    iput-boolean v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->hasNotify:Z

    .line 84
    iput-boolean v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->isInstallFinished:Z

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->insertActionId:J

    .line 90
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->sdkChannel:Lcom/tencent/tmassistantsdk/internal/a/b;

    .line 92
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    .line 95
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    .line 99
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessagehandlerThread:Landroid/os/HandlerThread;

    .line 100
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessageHandler:Landroid/os/Handler;

    .line 101
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    .line 105
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mClient:Lcom/tencent/tmassistant/b;

    .line 287
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mRequestListener:Lcom/tencent/tmassistantsdk/internal/d/b;

    .line 808
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/d;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/d;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->retryBtnListener:Landroid/view/View$OnClickListener;

    .line 826
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/e;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->negativeBtnListenner:Landroid/view/View$OnClickListener;

    .line 867
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/f;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/f;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->positiveBtnListener:Landroid/view/View$OnClickListener;

    .line 1098
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/i;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadSDKListener:Lcom/tencent/tmassistant/a;

    .line 114
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;
    .locals 2

    .prologue
    .line 123
    const-class v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mInstance:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mInstance:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    .line 126
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mInstance:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected continueDownload()V
    .locals 2

    .prologue
    .line 590
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "continueDownload"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;

    invoke-direct {v1, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/c;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    return-void
.end method

.method protected getClient()Lcom/tencent/tmassistant/b;
    .locals 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mClient:Lcom/tencent/tmassistant/b;

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmassistant/f;->a(Landroid/content/Context;)Lcom/tencent/tmassistant/f;

    move-result-object v0

    const-string v1, "downloadSDKClient"

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistant/f;->a(Ljava/lang/String;)Lcom/tencent/tmassistant/b;

    move-result-object v0

    .line 1084
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadSDKListener:Lcom/tencent/tmassistant/a;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistant/b;->a(Lcom/tencent/tmassistant/a;)Z

    .line 1085
    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mClient:Lcom/tencent/tmassistant/b;

    .line 1092
    :goto_0
    return-object v0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mClient:Lcom/tencent/tmassistant/b;

    goto :goto_0

    .line 1092
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserAuthorizedInfo(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 255
    if-eqz p2, :cond_0

    .line 256
    iput-object p2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    .line 258
    :cond_0
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "getUserAuthorizedInfo method called!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->hasNotify:Z

    .line 260
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    if-eqz v0, :cond_2

    .line 261
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "mHttpRequest != null, request didn\'t finish!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    if-eqz p1, :cond_3

    .line 266
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authorizedInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    .line 268
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    if-nez v0, :cond_1

    .line 269
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    .line 270
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/d/a;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/d/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 271
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mRequestListener:Lcom/tencent/tmassistantsdk/internal/d/b;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/d/a;->a(Lcom/tencent/tmassistantsdk/internal/d/b;)V

    .line 272
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    invoke-virtual {v0, p1}, Lcom/tencent/tmassistantsdk/internal/d/a;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)V

    goto :goto_0

    .line 275
    :cond_3
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "AuthorizedInfo object is null!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleDownloadContinue(JJ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 791
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 792
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "handleDownloading context = null!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    new-instance v0, Lcom/tencent/tmassistantbase/util/Res;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmassistantbase/util/Res;-><init>(Landroid/content/Context;)V

    .line 796
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "white_list_positive_continue"

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x64

    mul-long/2addr v4, p1

    long-to-float v3, v4

    add-float/2addr v3, v6

    long-to-float v4, p3

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 798
    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v3, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->i:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->h:Landroid/widget/ProgressBar;

    long-to-float v2, p1

    add-float/2addr v2, v6

    long-to-float v3, p3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v3, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 800
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-lez v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    const-string v2, "com_tencent_tmassistant_sdk_button_bg"

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/util/Res;->drawable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(I)V

    goto :goto_0
.end method

.method protected handleDownloadFailed()V
    .locals 4

    .prologue
    .line 754
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 755
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "handleDownloading context = null!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    new-instance v0, Lcom/tencent/tmassistantbase/util/Res;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmassistantbase/util/Res;-><init>(Landroid/content/Context;)V

    .line 759
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(Z)V

    .line 760
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "white_list_positive_retry"

    invoke-virtual {v0, v3}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-lez v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    const-string v2, "com_tencent_tmassistant_sdk_button_bg"

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/util/Res;->drawable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(I)V

    goto :goto_0
.end method

.method protected handleDownloading(JJ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 772
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 773
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "handleDownloading context = null!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :goto_0
    return-void

    .line 776
    :cond_0
    new-instance v0, Lcom/tencent/tmassistantbase/util/Res;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmassistantbase/util/Res;-><init>(Landroid/content/Context;)V

    .line 777
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "white_list_positive_downloading"

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    long-to-float v2, v2

    add-float/2addr v2, v4

    long-to-float v3, p3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->i:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->h:Landroid/widget/ProgressBar;

    long-to-float v1, p1

    add-float/2addr v1, v4

    long-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v2, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 782
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownloading : receivedlen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | totalLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleInstall(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 726
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    new-instance v0, Lcom/tencent/tmassistantbase/util/Res;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmassistantbase/util/Res;-><init>(Landroid/content/Context;)V

    .line 730
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v1, v4}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(Z)V

    .line 731
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v1, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "white_list_positive_install"

    invoke-virtual {v0, v3}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 734
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "handleDownloading context = null!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_2
    iput-boolean v4, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->isInstallFinished:Z

    .line 740
    if-eq p2, v4, :cond_0

    .line 744
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 745
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public initOpenSDK(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;)V
    .locals 3

    .prologue
    .line 135
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->getInstance()Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    .line 137
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->initTMAssistantCallYYBApi(Landroid/content/Context;)I

    .line 138
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mToMsdkListener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    .line 139
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/a/b;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->sdkChannel:Lcom/tencent/tmassistantsdk/internal/a/b;

    .line 140
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OpenSDKToMsdkManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessagehandlerThread:Landroid/os/HandlerThread;

    .line 141
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessagehandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessagehandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessageHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;

    invoke-direct {v2, p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mMainMessageHandler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method protected isExitsAction(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 696
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 697
    const-string v0, "OpensdkToMsdkManager"

    const-string v2, "actionId < 0,return false"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 717
    :goto_0
    return v0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->sdkChannel:Lcom/tencent/tmassistantsdk/internal/a/b;

    if-nez v0, :cond_1

    .line 702
    const-string v0, "OpensdkToMsdkManager"

    const-string v2, "sdkChannel == null,return false"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 703
    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->sdkChannel:Lcom/tencent/tmassistantsdk/internal/a/b;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/a/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/a/c;

    .line 708
    iget v3, v0, Lcom/tencent/tmassistantsdk/internal/a/c;->a:I

    int-to-long v4, v3

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    .line 709
    iget-wide v4, v0, Lcom/tencent/tmassistantsdk/internal/a/c;->h:J

    iget-wide v6, v0, Lcom/tencent/tmassistantsdk/internal/a/c;->g:J

    sub-long/2addr v4, v6

    .line 710
    const-wide/32 v6, 0x493e0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    .line 711
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "isExitsAction,return true"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x1

    goto :goto_0

    .line 716
    :cond_3
    const-string v0, "OpensdkToMsdkManager"

    const-string v2, "return false"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 717
    goto :goto_0
.end method

.method protected notifyAuthorizedFinished(ZLcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)V
    .locals 3

    .prologue
    .line 481
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before realy notifyAuthorizedFinished: TMOpenSDKAuthorizedInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mToMsdkListener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    if-nez v0, :cond_0

    .line 484
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "before notifyAuthorizedFinished: mToMsdkListener = null !"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mToMsdkListener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    if-eqz v0, :cond_1

    .line 487
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAuthorizedFinished: result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mToMsdkListener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-interface {v0, p1, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;->onAuthorizedFinished(ZLcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->hasNotify:Z

    .line 492
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "onDestroy start"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->dismiss()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->destroyQQDownloaderOpenSDK()V

    .line 203
    :cond_1
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mToMsdkListener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    .line 204
    iput-boolean v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->hasNotify:Z

    .line 205
    iput-boolean v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->isInstallFinished:Z

    .line 206
    iput v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    .line 207
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 208
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    .line 209
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->sdkChannel:Lcom/tencent/tmassistantsdk/internal/a/b;

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->insertActionId:J

    .line 212
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmassistant/f;->b(Landroid/content/Context;)V

    .line 215
    :cond_2
    iput-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mClient:Lcom/tencent/tmassistant/b;

    .line 216
    return-void
.end method

.method protected onNetworkException(I)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 432
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 433
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "mContext == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v1, Lcom/tencent/tmassistantbase/util/Res;

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/tencent/tmassistantbase/util/Res;-><init>(Landroid/content/Context;)V

    .line 439
    const-string v0, ""

    .line 440
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 441
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "white_list_network_not_connected"

    invoke-virtual {v1, v2}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_1
    new-instance v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;

    invoke-direct {v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;-><init>()V

    .line 448
    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "white_list_dlg_title"

    invoke-virtual {v1, v4}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->a:Ljava/lang/String;

    .line 449
    iput-object v0, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->b:Ljava/lang/String;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    new-instance v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;

    invoke-direct {v3}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;-><init>()V

    .line 453
    iput v6, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->c:I

    .line 454
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v4, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "white_list_negtive_known"

    invoke-virtual {v1, v5}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    iput-object v1, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->a:Ljava/lang/String;

    .line 457
    iput-object v1, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->b:Ljava/lang/String;

    .line 459
    iput-object v0, v2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->c:Ljava/util/ArrayList;

    .line 460
    invoke-virtual {p0, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->showDialog(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;)V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 463
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadUrl:Ljava/lang/String;

    .line 464
    iput v6, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    .line 465
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "network error happened!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    .line 471
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/qq/taf/jce/JceStruct;)V

    goto/16 :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "white_list_network_error"

    invoke-virtual {v1, v2}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected onNetworkFinishedFailed(I)V
    .locals 3

    .prologue
    .line 364
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/16 v0, 0x25e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x25a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x259

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c0

    if-ne p1, v0, :cond_1

    .line 369
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->onServerException(I)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->onNetworkException(I)V

    goto :goto_0
.end method

.method protected onNetworkFinishedSuccess(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 319
    iget-object v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadUrl:Ljava/lang/String;

    .line 320
    iget v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->e:I

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSupportVersionCode:I

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 322
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkFinishedSuccess! authorizedResult.hasAuthoried="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  listenner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mToMsdkListener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  authroizedinfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->a:I

    if-ne v0, v3, :cond_1

    .line 329
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    .line 331
    iget-object v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->b:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->b:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;

    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->showDialog(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;)V

    .line 354
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {p0, v3, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->notifyAuthorizedFinished(ZLcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)V

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    .line 344
    iget-object v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->b:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->b:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;

    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->showDialog(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;)V

    goto :goto_0

    .line 349
    :cond_2
    iget v0, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/b;->c:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->onServerException(I)V

    .line 350
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "not in white list and no tips!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "onResume start"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->tryToCloseDialog()V

    .line 233
    iget-boolean v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->hasNotify:Z

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 240
    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    if-nez v0, :cond_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->getUserAuthorizedInfo(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onServerException(I)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 379
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 380
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "mContext == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/tencent/tmassistantbase/util/Res;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmassistantbase/util/Res;-><init>(Landroid/content/Context;)V

    .line 385
    new-instance v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;

    invoke-direct {v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;-><init>()V

    .line 387
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "white_list_dlg_title"

    invoke-virtual {v0, v3}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->a:Ljava/lang/String;

    .line 388
    const/16 v2, 0x25a

    if-eq p1, v2, :cond_2

    const/16 v2, 0x259

    if-ne p1, v2, :cond_3

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "white_list_network_error"

    invoke-virtual {v0, v3}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->b:Ljava/lang/String;

    .line 395
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    new-instance v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;

    invoke-direct {v3}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;-><init>()V

    .line 399
    const/4 v4, 0x4

    iput v4, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->c:I

    .line 400
    iget-object v4, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "white_list_positive_retry_again"

    invoke-virtual {v0, v5}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 401
    iput-object v4, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->a:Ljava/lang/String;

    .line 402
    iput-object v4, v3, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->b:Ljava/lang/String;

    .line 405
    new-instance v4, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;

    invoke-direct {v4}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;-><init>()V

    .line 406
    iput v7, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->c:I

    .line 407
    iget-object v5, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "white_list_negtive"

    invoke-virtual {v0, v6}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    iput-object v0, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->a:Ljava/lang/String;

    .line 409
    iput-object v0, v4, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->b:Ljava/lang/String;

    .line 411
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iput-object v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->c:Ljava/util/ArrayList;

    .line 416
    invoke-virtual {p0, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->showDialog(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;)V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 419
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadUrl:Ljava/lang/String;

    .line 420
    iput v7, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->authorizedState:I

    .line 423
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 425
    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->networkErrorTipsCount:I

    .line 426
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/qq/taf/jce/JceStruct;)V

    goto/16 :goto_0

    .line 392
    :cond_3
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "white_list_server_error"

    invoke-virtual {v0, v3}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method protected pauseDownloadTask(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1041
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "downloadUrl = null,return"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    if-nez v0, :cond_1

    .line 1047
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "mAuthorizedInfo = null,return"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_1
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/h;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/h;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected showDialog(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;)V
    .locals 7

    .prologue
    .line 501
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 502
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "mContext == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "dialog isShowing"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is finishing!  context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_3
    new-instance v3, Lcom/tencent/tmassistantbase/util/Res;

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/tencent/tmassistantbase/util/Res;-><init>(Landroid/content/Context;)V

    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v4, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->c:Ljava/util/ArrayList;

    .line 522
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 523
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "while_list_dialog"

    invoke-virtual {v3, v2}, Lcom/tencent/tmassistantbase/util/Res;->style(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v1, v2, v5}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    .line 524
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->show()V

    .line 527
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->b(Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 533
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;

    .line 534
    iget v2, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->c:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 535
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->d(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->negativeBtnListenner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->b(Landroid/view/View$OnClickListener;)V

    .line 532
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 537
    :cond_4
    iget v2, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->c:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    .line 541
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v0, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->c(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->retryBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 546
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget v5, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSupportVersionCode:I

    invoke-virtual {v2, v5}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->checkQQDownloaderInstalled(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 547
    packed-switch v2, :pswitch_data_0

    .line 576
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v2, v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;)V

    .line 577
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->positiveBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 550
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v5, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->c(Ljava/lang/String;)V

    .line 552
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v2, v5}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v2

    .line 553
    if-eqz v2, :cond_6

    .line 554
    iget v5, v2, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedTipsCount:I

    .line 555
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/qq/taf/jce/JceStruct;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 572
    :catch_0
    move-exception v2

    .line 573
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 560
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v5, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "white_list_positive_update"

    invoke-virtual {v3, v6}, Lcom/tencent/tmassistantbase/util/Res;->string(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->c(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->continueDownload()V

    goto :goto_3

    .line 565
    :pswitch_2
    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    iget-object v5, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->c(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->continueDownload()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected startDownloadTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 950
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "downloadUrl = null,return"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :goto_0
    return-void

    .line 954
    :cond_0
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",jumpUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->a(Z)V

    .line 963
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSubMessageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/g;-><init>(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected startToQQDownloaderAuthorized(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 918
    const-string v0, "OpensdkToMsdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->dismiss()V

    .line 923
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->isInstallFinished:Z

    .line 925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    :cond_1
    :goto_0
    return-void

    .line 930
    :cond_2
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mAuthorizedInfo:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    move-result-object v0

    .line 931
    if-eqz v0, :cond_3

    .line 932
    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->authorizedBtnClickCount:I

    .line 933
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/h;->h()Lcom/tencent/tmassistantsdk/internal/c/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmassistantsdk/internal/c/h;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->startToAuthorized(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected tryToCloseDialog()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    if-nez v0, :cond_1

    .line 653
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "mOpenSDK == null,return"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 658
    const-string v0, "OpensdkToMsdkManager"

    const-string v1, "mContext == null,return"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_2
    const-string v0, "OpensdkToMsdkManager"

    const-string/jumbo v1, "tryToCloseDialog"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mSupportVersionCode:I

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->checkQQDownloaderInstalled(I)I

    move-result v0

    .line 666
    iget-boolean v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->isInstallFinished:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mHttpRequest:Lcom/tencent/tmassistantsdk/internal/d/a;

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->isInstallFinished:Z

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mDownloadUrl:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->dialog:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/a/a;->dismiss()V

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmassistant/f;->b(Landroid/content/Context;)V

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mClient:Lcom/tencent/tmassistant/b;

    .line 678
    iget-wide v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->insertActionId:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->isExitsAction(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mOpenSDK:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->startQQDownloader(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
