.class public Lcom/tencent/gcloud/map/MapLBSService;
.super Ljava/lang/Object;
.source "MapLBSService.java"


# static fields
.field public static Instance:Lcom/tencent/gcloud/map/MapLBSService; = null

.field private static final MSG_INIT_LOCATION:I = 0x1

.field private static final MSG_REQUEST_LOCATION:I = 0x2

.field private static final MSG_STOP_LOCATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MapLBSService"

.field private static final TIMEOUT_MS:I = 0x4e20


# instance fields
.field private mCallbackTag:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocating:Z

.field private mLocationError:I

.field private mLocationListener:Lcom/tencent/map/geolocation/TencentLocationListener;

.field private mLocationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

.field private mLocationRequest:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "tencentloc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/tencent/gcloud/map/MapLBSService;

    invoke-direct {v0}, Lcom/tencent/gcloud/map/MapLBSService;-><init>()V

    sput-object v0, Lcom/tencent/gcloud/map/MapLBSService;->Instance:Lcom/tencent/gcloud/map/MapLBSService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocating:Z

    .line 43
    new-instance v0, Lcom/tencent/gcloud/map/MapLBSService$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/map/MapLBSService$1;-><init>(Lcom/tencent/gcloud/map/MapLBSService;)V

    iput-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationListener:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 18
    return-void
.end method

.method private RemoveListener()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocating:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationListener:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationListener:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-virtual {v0, v1}, Lcom/tencent/map/geolocation/TencentLocationManager;->removeUpdates(Lcom/tencent/map/geolocation/TencentLocationListener;)V

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocating:Z

    .line 139
    :cond_1
    monitor-exit p0

    .line 147
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$0(Lcom/tencent/gcloud/map/MapLBSService;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mCallbackTag:I

    return v0
.end method

.method static synthetic access$1(Lcom/tencent/gcloud/map/MapLBSService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tencent/gcloud/map/MapLBSService;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/tencent/gcloud/map/MapLBSService;->RemoveListener()V

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/gcloud/map/MapLBSService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/gcloud/map/MapLBSService;Lcom/tencent/map/geolocation/TencentLocationManager;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

    return-void
.end method

.method static synthetic access$4(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationRequest:Lcom/tencent/map/geolocation/TencentLocationRequest;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationListener:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tencent/gcloud/map/MapLBSService;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/gcloud/map/MapLBSService;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/gcloud/map/MapLBSService;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$9(Lcom/tencent/gcloud/map/MapLBSService;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private getContext()V
    .locals 4

    .prologue
    .line 75
    :try_start_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MapLBSService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getContext error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public GetMyLocation(I)I
    .locals 2
    .param p1, "callbackTag"    # I

    .prologue
    .line 150
    const-string v0, "MapLBSService"

    const-string v1, "GetMyLoction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationError:I

    .line 152
    iput p1, p0, Lcom/tencent/gcloud/map/MapLBSService;->mCallbackTag:I

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocating:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "MapLBSService"

    const-string v1, "Locating...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit p0

    const/16 v0, 0x64

    .line 166
    :goto_0
    return v0

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocating:Z

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    :cond_1
    iget v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationError:I

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Initialize()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "MapLBSService"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/tencent/gcloud/map/MapLBSService;->getContext()V

    .line 87
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MapLBSService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mLocationRequest:Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 93
    new-instance v0, Lcom/tencent/gcloud/map/MapLBSService$2;

    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/gcloud/map/MapLBSService$2;-><init>(Lcom/tencent/gcloud/map/MapLBSService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandler:Landroid/os/Handler;

    .line 133
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    :cond_0
    return-void
.end method

.method public Uninit()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "MapLBSService"

    const-string v1, "Uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 181
    :cond_1
    return-void
.end method
