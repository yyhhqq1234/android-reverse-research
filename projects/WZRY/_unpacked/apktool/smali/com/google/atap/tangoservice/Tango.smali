.class public Lcom/google/atap/tangoservice/Tango;
.super Ljava/lang/Object;
.source "Tango.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/atap/tangoservice/Tango$OnTangoUpdateListener;,
        Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;,
        Lcom/google/atap/tangoservice/Tango$FoiListener;,
        Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;
    }
.end annotation


# static fields
.field public static final ANDROID_PERMISSION_DATASET:Ljava/lang/String; = "com.google.tango.permission.DATASETS"

.field public static final COORDINATE_FRAME_CAMERA_DEPTH:Ljava/lang/String; = "10000000-0000-0000-0000-000000000008"

.field public static final COORDINATE_FRAME_CAMERA_FISHEYE:Ljava/lang/String; = "10000000-0000-0000-0000-000000000009"

.field public static final COORDINATE_FRAME_ID_AREA_DESCRIPTION:Ljava/lang/String; = "10000000-0000-0000-0000-000000000001"

.field public static final COORDINATE_FRAME_ID_CAMERA_COLOR:Ljava/lang/String; = "10000000-0000-0000-0000-000000000007"

.field public static final COORDINATE_FRAME_ID_DEVICE:Ljava/lang/String; = "10000000-0000-0000-0000-000000000004"

.field public static final COORDINATE_FRAME_ID_DISPLAY:Ljava/lang/String; = "10000000-0000-0000-0000-000000000006"

.field public static final COORDINATE_FRAME_ID_GLOBAL_WGS84:Ljava/lang/String; = "10000000-0000-0000-0000-000000000000"

.field public static final COORDINATE_FRAME_ID_IMU:Ljava/lang/String; = "10000000-0000-0000-0000-000000000005"

.field public static final COORDINATE_FRAME_ID_NONE:Ljava/lang/String; = "10000000-0000-0000-0000-0000000000ff"

.field public static final COORDINATE_FRAME_ID_PREVIOUS_DEVICE_POSE:Ljava/lang/String; = "10000000-0000-0000-0000-000000000003"

.field public static final COORDINATE_FRAME_ID_START_OF_SERVICE:Ljava/lang/String; = "10000000-0000-0000-0000-000000000002"

.field private static final EXTRA_KEY_DESTINATIONFILE:Ljava/lang/String; = "DESTINATION_FILE"

.field public static final EXTRA_KEY_DESTINATIONUUID:Ljava/lang/String; = "DESTINATION_UUID"

.field private static final EXTRA_KEY_PERMISSIONTYPE:Ljava/lang/String; = "PERMISSIONTYPE"

.field private static final EXTRA_KEY_SOURCEFILE:Ljava/lang/String; = "SOURCE_FILE"

.field private static final EXTRA_KEY_SOURCEUUID:Ljava/lang/String; = "SOURCE_UUID"

.field private static final INTENT_CLASSPACKAGE:Ljava/lang/String; = "com.google.tango"

.field private static final INTENT_DEPRECATED_CLASSPACKAGE:Ljava/lang/String; = "com.projecttango.tango"

.field private static final INTENT_IMPORTEXPORT_CLASSNAME:Ljava/lang/String; = "com.google.atap.tango.RequestImportExportActivity"

.field private static final INTENT_REQUESTPERMISSION_CLASSNAME:Ljava/lang/String; = "com.google.atap.tango.RequestPermissionActivity"

.field private static final MAGIC_CLOUD_UUID:Ljava/lang/String; = "use_cloud"

.field private static final MIN_VERSION:I = 0x3544

.field public static final PERMISSIONTYPE_ADF_LOAD_SAVE:Ljava/lang/String; = "ADF_LOAD_SAVE_PERMISSION"

.field public static final PERMISSIONTYPE_DATASET:Ljava/lang/String; = "DATASET_PERMISSION"

.field public static final PERMISSIONTYPE_MOTION_TRACKING:Ljava/lang/String; = "MOTION_TRACKING_PERMISSION"

.field private static final PURE_JAVA_PATH:Z

.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_INVALID:I = -0x2

.field private static final STATUS_NO_ADF_PERMISSION:I = -0x4

.field private static final STATUS_NO_CAMERA_PERMISSION:I = -0x5

.field private static final STATUS_NO_DATASET_PERMISSION:I = -0x7

.field private static final STATUS_NO_MOTION_TRACKING_PERMISSION:I = -0x3

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Tango"

.field public static final TANGO_INTENT_ACTIVITYCODE:I = 0x469


# instance fields
.field private mCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

.field private mCallbacksAllowed:Ljava/util/concurrent/Semaphore;

.field private final mFoiListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/atap/tangoservice/Tango$FoiListener;",
            ">;"
        }
    .end annotation
.end field

.field private mITango:Lcom/google/atap/tangoservice/ITango;

.field private mITangoListener:Lcom/google/atap/tangoservice/ITangoListener;

.field private mParent:Landroid/content/Context;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mTangoServiceConnected:Z

.field private volatile mTangoShouldBeDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/google/atap/tango/TangoClientLibLoader;->PURE_JAVA_PATH:Z

    sput-boolean v0, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "runOnTangoReady"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mCallbacksAllowed:Ljava/util/concurrent/Semaphore;

    .line 306
    new-instance v4, Lcom/google/atap/tangoservice/Tango$1;

    invoke-direct {v4, p0}, Lcom/google/atap/tangoservice/Tango$1;-><init>(Lcom/google/atap/tangoservice/Tango;)V

    iput-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mITangoListener:Lcom/google/atap/tangoservice/ITangoListener;

    .line 357
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    .line 360
    iput-boolean v3, p0, Lcom/google/atap/tangoservice/Tango;->mTangoServiceConnected:Z

    .line 370
    iput-object p1, p0, Lcom/google/atap/tangoservice/Tango;->mParent:Landroid/content/Context;

    .line 371
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.google.tango"

    const-string v5, "com.google.atap.tango.TangoService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 375
    .local v0, "hasJavaService":Z
    :goto_0
    if-nez v0, :cond_0

    .line 376
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 377
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.projecttango.tango"

    const-string v5, "com.google.atap.tango.TangoService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 383
    :cond_0
    :goto_1
    if-nez v0, :cond_3

    .line 384
    const-string v2, "Tango"

    const-string v3, "Java version of Tango Service not found, falling back to tangoservice_d."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {p1}, Lcom/google/atap/tango/TangoJNINative;->Initialize(Landroid/content/Context;)I

    .line 386
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 413
    :goto_2
    return-void

    .end local v0    # "hasJavaService":Z
    :cond_1
    move v0, v3

    .line 373
    goto :goto_0

    .restart local v0    # "hasJavaService":Z
    :cond_2
    move v0, v3

    .line 378
    goto :goto_1

    .line 389
    :cond_3
    sget-boolean v4, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v4, :cond_4

    .line 390
    iget-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mITangoListener:Lcom/google/atap/tangoservice/ITangoListener;

    invoke-static {p1, v4}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->initialize(Landroid/content/Context;Lcom/google/atap/tangoservice/ITangoListener;)I

    .line 392
    :cond_4
    new-instance v4, Lcom/google/atap/tangoservice/Tango$2;

    invoke-direct {v4, p0, p2}, Lcom/google/atap/tangoservice/Tango$2;-><init>(Lcom/google/atap/tangoservice/Tango;Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 411
    iget-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 412
    iput-boolean v3, p0, Lcom/google/atap/tangoservice/Tango;->mTangoShouldBeDisconnected:Z

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/google/atap/tangoservice/Tango;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/google/atap/tangoservice/Tango;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango;->mCallbacksAllowed:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/atap/tangoservice/Tango;)Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/atap/tangoservice/Tango;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango;->mCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/atap/tangoservice/Tango;Lcom/google/atap/tangoservice/fois/FoiResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/atap/tangoservice/Tango;
    .param p1, "x1"    # Lcom/google/atap/tangoservice/fois/FoiResponse;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/Tango;->handleFoiResponse(Lcom/google/atap/tangoservice/fois/FoiResponse;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/atap/tangoservice/Tango;Lcom/google/atap/tangoservice/ITango;)Lcom/google/atap/tangoservice/ITango;
    .locals 0
    .param p0, "x0"    # Lcom/google/atap/tangoservice/Tango;
    .param p1, "x1"    # Lcom/google/atap/tangoservice/ITango;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/atap/tangoservice/Tango;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/atap/tangoservice/Tango;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/atap/tangoservice/Tango;->mTangoShouldBeDisconnected:Z

    return v0
.end method

.method private clearFoiListeners()V
    .locals 2

    .prologue
    .line 1405
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    monitor-enter v1

    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1407
    monitor-exit v1

    .line 1408
    return-void

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFoiResults(Lcom/google/atap/tangoservice/fois/FoiResponse;)[Lcom/google/atap/tangoservice/TangoFoiResult;
    .locals 8
    .param p1, "response"    # Lcom/google/atap/tangoservice/fois/FoiResponse;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1362
    if-nez p1, :cond_0

    .line 1382
    :goto_0
    return-object v3

    .line 1365
    :cond_0
    sget-object v4, Lcom/google/atap/tangoservice/Tango$6;->$SwitchMap$com$google$atap$tangoservice$fois$FoiRequest$Type:[I

    iget-object v5, p1, Lcom/google/atap/tangoservice/fois/FoiResponse;->mType:Lcom/google/atap/tangoservice/fois/FoiRequest$Type;

    invoke-virtual {v5}, Lcom/google/atap/tangoservice/fois/FoiRequest$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v0, p1

    .line 1367
    check-cast v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;

    .line 1368
    .local v0, "createResponse":Lcom/google/atap/tangoservice/fois/FoiResponse$Create;
    new-array v3, v7, [I

    iget v4, v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mStatus:I

    aput v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, v0, Lcom/google/atap/tangoservice/fois/FoiResponse$Create;->mFrameId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-direct {p0, v3, v4}, Lcom/google/atap/tangoservice/Tango;->getFoiResultsFromStatusesAndIds([I[Ljava/lang/String;)[Lcom/google/atap/tangoservice/TangoFoiResult;

    move-result-object v3

    goto :goto_0

    .end local v0    # "createResponse":Lcom/google/atap/tangoservice/fois/FoiResponse$Create;
    :pswitch_1
    move-object v2, p1

    .line 1372
    check-cast v2, Lcom/google/atap/tangoservice/fois/FoiResponse$Load;

    .line 1373
    .local v2, "loadResponse":Lcom/google/atap/tangoservice/fois/FoiResponse$Load;
    iget-object v3, v2, Lcom/google/atap/tangoservice/fois/FoiResponse$Load;->mStatuses:[I

    iget-object v4, v2, Lcom/google/atap/tangoservice/fois/FoiResponse$Load;->mFrameIds:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/google/atap/tangoservice/Tango;->getFoiResultsFromStatusesAndIds([I[Ljava/lang/String;)[Lcom/google/atap/tangoservice/TangoFoiResult;

    move-result-object v3

    goto :goto_0

    .end local v2    # "loadResponse":Lcom/google/atap/tangoservice/fois/FoiResponse$Load;
    :pswitch_2
    move-object v1, p1

    .line 1377
    check-cast v1, Lcom/google/atap/tangoservice/fois/FoiResponse$Delete;

    .line 1378
    .local v1, "deleteResponse":Lcom/google/atap/tangoservice/fois/FoiResponse$Delete;
    iget-object v3, v1, Lcom/google/atap/tangoservice/fois/FoiResponse$Delete;->mStatuses:[I

    iget-object v4, v1, Lcom/google/atap/tangoservice/fois/FoiResponse$Delete;->mFrameIds:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/google/atap/tangoservice/Tango;->getFoiResultsFromStatusesAndIds([I[Ljava/lang/String;)[Lcom/google/atap/tangoservice/TangoFoiResult;

    move-result-object v3

    goto :goto_0

    .line 1365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFoiResultsFromStatusesAndIds([I[Ljava/lang/String;)[Lcom/google/atap/tangoservice/TangoFoiResult;
    .locals 6
    .param p1, "statuses"    # [I
    .param p2, "frameIds"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1348
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_2

    :cond_0
    move-object v1, v2

    .line 1358
    :cond_1
    :goto_0
    return-object v1

    .line 1351
    :cond_2
    array-length v3, p1

    new-array v1, v3, [Lcom/google/atap/tangoservice/TangoFoiResult;

    .line 1352
    .local v1, "results":[Lcom/google/atap/tangoservice/TangoFoiResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1353
    aget-object v3, p2, v0

    if-nez v3, :cond_3

    move-object v1, v2

    .line 1354
    goto :goto_0

    .line 1356
    :cond_3
    new-instance v3, Lcom/google/atap/tangoservice/TangoFoiResult;

    aget v4, p1, v0

    aget-object v5, p2, v0

    invoke-direct {v3, v4, v5}, Lcom/google/atap/tangoservice/TangoFoiResult;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v0

    .line 1352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getRequestPermissionIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "permissionType"    # Ljava/lang/String;

    .prologue
    .line 1544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1545
    .local v0, "permissionIntent":Landroid/content/Intent;
    const-string v1, "com.google.tango"

    const-string v2, "com.google.atap.tango.RequestPermissionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    const-string v1, "PERMISSIONTYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1547
    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1613
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1615
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.google.tango"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1618
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1622
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 1619
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private handleFoiRequest(Lcom/google/atap/tangoservice/fois/FoiRequest;Lcom/google/atap/tangoservice/Tango$FoiListener;)I
    .locals 5
    .param p1, "request"    # Lcom/google/atap/tangoservice/fois/FoiRequest;
    .param p2, "listener"    # Lcom/google/atap/tangoservice/Tango$FoiListener;

    .prologue
    .line 1324
    if-nez p2, :cond_1

    .line 1325
    const/4 v2, -0x2

    .line 1344
    :cond_0
    :goto_0
    return v2

    .line 1327
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1328
    .local v1, "requestId":Ljava/lang/String;
    iput-object v1, p1, Lcom/google/atap/tangoservice/fois/FoiRequest;->mId:Ljava/lang/String;

    .line 1329
    iget-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    monitor-enter v4

    .line 1330
    :try_start_0
    iget-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1334
    :try_start_1
    iget-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v3, p1}, Lcom/google/atap/tangoservice/ITango;->foiRequest(Lcom/google/atap/tangoservice/fois/FoiRequest;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 1339
    .local v2, "status":I
    :goto_1
    if-eqz v2, :cond_0

    .line 1340
    iget-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    monitor-enter v4

    .line 1341
    :try_start_2
    iget-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1331
    .end local v2    # "status":I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1337
    const/4 v2, -0x1

    .restart local v2    # "status":I
    goto :goto_1
.end method

.method private handleFoiResponse(Lcom/google/atap/tangoservice/fois/FoiResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/google/atap/tangoservice/fois/FoiResponse;

    .prologue
    .line 1387
    if-nez p1, :cond_1

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-object v1, p1, Lcom/google/atap/tangoservice/fois/FoiResponse;->mId:Ljava/lang/String;

    .line 1391
    .local v1, "requestId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1394
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/Tango;->getFoiResults(Lcom/google/atap/tangoservice/fois/FoiResponse;)[Lcom/google/atap/tangoservice/TangoFoiResult;

    move-result-object v2

    .line 1396
    .local v2, "results":[Lcom/google/atap/tangoservice/TangoFoiResult;
    iget-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    monitor-enter v4

    .line 1397
    :try_start_0
    iget-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mFoiListeners:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/atap/tangoservice/Tango$FoiListener;

    .line 1398
    .local v0, "listener":Lcom/google/atap/tangoservice/Tango$FoiListener;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1399
    invoke-interface {v0, v2}, Lcom/google/atap/tangoservice/Tango$FoiListener;->onFoiResult([Lcom/google/atap/tangoservice/TangoFoiResult;)V

    .line 1401
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "listener":Lcom/google/atap/tangoservice/Tango$FoiListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1561
    const-string v0, "MOTION_TRACKING_PERMISSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    const-string v0, "Tango"

    const-string v2, "You no longer need to request motion tracking permissions."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1571
    :goto_0
    return v0

    .line 1565
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.google.atap.tango.PermissionStatusProvider/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1567
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1568
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1569
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v7

    .line 1571
    goto :goto_0
.end method

.method private static isStringEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 734
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native nativeOnFrameAvailable(Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;I)V
.end method

.method public static throwTangoExceptionIfNeeded(I)V
    .locals 2
    .param p0, "resultCode"    # I

    .prologue
    .line 1513
    packed-switch p0, :pswitch_data_0

    .line 1528
    :pswitch_0
    new-instance v0, Lcom/google/atap/tangoservice/TangoErrorException;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoErrorException;-><init>()V

    throw v0

    .line 1517
    :pswitch_1
    new-instance v0, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v0

    .line 1519
    :pswitch_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Tango Permission Denied. No Motion Tracking permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1522
    :pswitch_3
    new-instance v0, Lcom/google/atap/tangoservice/TangoNoAdfPermissionException;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoNoAdfPermissionException;-><init>()V

    throw v0

    .line 1524
    :pswitch_4
    new-instance v0, Lcom/google/atap/tangoservice/TangoNoCameraPermissionException;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoNoCameraPermissionException;-><init>()V

    throw v0

    .line 1526
    :pswitch_5
    new-instance v0, Lcom/google/atap/tangoservice/TangoNoDatasetPermissionException;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoNoDatasetPermissionException;-><init>()V

    throw v0

    .line 1515
    :pswitch_6
    return-void

    .line 1513
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public connect(Lcom/google/atap/tangoservice/TangoConfig;)V
    .locals 10
    .param p1, "config"    # Lcom/google/atap/tangoservice/TangoConfig;

    .prologue
    .line 747
    const-string v7, "config_load_area_description_UUID"

    invoke-virtual {p1, v7}, Lcom/google/atap/tangoservice/TangoConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "adfUuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v7, "use_cloud"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 749
    const-string v7, "Tango"

    const-string v8, "The \'use_cloud\' ADF string is deprecated. This is now enabled via the TangoConfig parameter \'config_experimental_use_cloud_adf\'."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v7, Lcom/google/atap/tangoservice/TangoErrorException;

    invoke-direct {v7}, Lcom/google/atap/tangoservice/TangoErrorException;-><init>()V

    throw v7

    .line 755
    :cond_0
    iget-object v7, p0, Lcom/google/atap/tangoservice/Tango;->mParent:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 756
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 757
    .local v5, "tangoOutdated":Z
    iget-object v7, p0, Lcom/google/atap/tangoservice/Tango;->mParent:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/atap/tangoservice/Tango;->getVersion(Landroid/content/Context;)I

    move-result v6

    .line 758
    .local v6, "version":I
    const-string v7, "Tango"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.google.tango: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    if-gez v6, :cond_1

    .line 762
    new-instance v7, Lcom/google/atap/tangoservice/TangoErrorException;

    invoke-direct {v7}, Lcom/google/atap/tangoservice/TangoErrorException;-><init>()V

    throw v7

    .line 764
    :cond_1
    const/16 v7, 0x3544

    if-ge v6, v7, :cond_2

    .line 768
    const/4 v5, 0x1

    .line 771
    :cond_2
    sget-boolean v7, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v7, :cond_6

    .line 774
    :try_start_0
    const-string v7, "config_letango_load_dataset_UUID"

    invoke-virtual {p1, v7}, Lcom/google/atap/tangoservice/TangoConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "datasetUUID":Ljava/lang/String;
    const-string v7, "config_datasets_path"

    invoke-virtual {p1, v7}, Lcom/google/atap/tangoservice/TangoConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "datasetPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->isStringEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->isStringEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 778
    invoke-static {v1, v2}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->setDatasetPathAndUUID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 777
    invoke-static {v7}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 783
    :cond_3
    iget-object v7, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    iget-object v8, p0, Lcom/google/atap/tangoservice/Tango;->mITangoListener:Lcom/google/atap/tangoservice/ITangoListener;

    invoke-interface {v7, v8, p1}, Lcom/google/atap/tangoservice/ITango;->connect(Lcom/google/atap/tangoservice/ITangoListener;Lcom/google/atap/tangoservice/TangoConfig;)I

    move-result v7

    invoke-static {v7}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 784
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/atap/tangoservice/Tango;->mTangoServiceConnected:Z

    .line 785
    const-string v7, "config_enable_color_camera"

    invoke-virtual {p1, v7}, Lcom/google/atap/tangoservice/TangoConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 786
    invoke-static {}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->startCamerasIfNeeded()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 798
    .end local v1    # "datasetPath":Ljava/lang/String;
    .end local v2    # "datasetUUID":Ljava/lang/String;
    :cond_4
    :goto_0
    if-eqz v5, :cond_7

    .line 799
    new-instance v7, Lcom/google/atap/tangoservice/TangoOutOfDateException;

    invoke-direct {v7}, Lcom/google/atap/tangoservice/TangoOutOfDateException;-><init>()V

    throw v7

    .line 779
    .restart local v1    # "datasetPath":Ljava/lang/String;
    .restart local v2    # "datasetUUID":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->isStringEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->isStringEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 780
    const-string v7, "Tango"

    const-string v8, "Both dataset path and UUID must be set in config for LeTango playback"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v7, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v7}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 788
    .end local v1    # "datasetPath":Ljava/lang/String;
    .end local v2    # "datasetUUID":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 789
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 790
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 791
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 792
    new-instance v7, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v7}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v7

    .line 795
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_6
    invoke-static {p1}, Lcom/google/atap/tango/TangoJNINative;->Connect(Lcom/google/atap/tangoservice/TangoConfig;)I

    move-result v7

    invoke-static {v7}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0

    .line 801
    :cond_7
    return-void
.end method

.method public connectListener(Ljava/util/List;Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;)V
    .locals 6
    .param p2, "listener"    # Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/atap/tangoservice/TangoCoordinateFramePair;",
            ">;",
            "Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "framePairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/atap/tangoservice/TangoCoordinateFramePair;>;"
    const/4 v5, 0x0

    .line 703
    iput-object p2, p0, Lcom/google/atap/tangoservice/Tango;->mCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    .line 704
    sget-boolean v3, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v3, :cond_0

    .line 706
    :try_start_0
    iget-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v3, p1}, Lcom/google/atap/tangoservice/ITango;->setPoseListenerFrames(Ljava/util/List;)I

    move-result v3

    invoke-static {v3}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 731
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 709
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 711
    new-instance v3, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v3}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v3

    .line 714
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    const/4 v3, 0x0

    new-array v0, v3, [I

    .line 715
    .local v0, "coordinateFramePairsArray":[I
    if-eqz p1, :cond_1

    .line 716
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    .line 717
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 718
    mul-int/lit8 v4, v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;

    iget v3, v3, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->baseFrame:I

    aput v3, v0, v4

    .line 719
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;

    iget v3, v3, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->targetFrame:I

    aput v3, v0, v4

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 722
    .end local v2    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    .line 723
    new-instance v3, Lcom/google/atap/tangoservice/TangoPoseData;

    invoke-direct {v3}, Lcom/google/atap/tangoservice/TangoPoseData;-><init>()V

    new-instance v4, Lcom/google/atap/tangoservice/TangoPointCloudData;

    invoke-direct {v4}, Lcom/google/atap/tangoservice/TangoPointCloudData;-><init>()V

    new-instance v5, Lcom/google/atap/tangoservice/TangoEvent;

    invoke-direct {v5}, Lcom/google/atap/tangoservice/TangoEvent;-><init>()V

    invoke-static {v0, p2, v3, v4, v5}, Lcom/google/atap/tango/TangoJNINative;->ConnectListener([ILcom/google/atap/tangoservice/Tango$TangoUpdateCallback;Lcom/google/atap/tangoservice/TangoPoseData;Lcom/google/atap/tangoservice/TangoPointCloudData;Lcom/google/atap/tangoservice/TangoEvent;)I

    move-result v3

    invoke-static {v3}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0

    .line 727
    :cond_2
    invoke-static {v0, p2, v5, v5, v5}, Lcom/google/atap/tango/TangoJNINative;->ConnectListener([ILcom/google/atap/tangoservice/Tango$TangoUpdateCallback;Lcom/google/atap/tangoservice/TangoPoseData;Lcom/google/atap/tangoservice/TangoPointCloudData;Lcom/google/atap/tangoservice/TangoEvent;)I

    move-result v3

    invoke-static {v3}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public connectNativeOnFrameAvailableListener(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 668
    new-instance v0, Lcom/google/atap/tangoservice/Tango$5;

    invoke-direct {v0, p0}, Lcom/google/atap/tangoservice/Tango$5;-><init>(Lcom/google/atap/tangoservice/Tango;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/atap/tangoservice/Tango;->experimentalConnectOnFrameListener(ILcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;)V

    .line 674
    return-void
.end method

.method public connectOnImageAvailable(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 635
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 636
    new-instance v0, Lcom/google/atap/tangoservice/Tango$4;

    invoke-direct {v0, p0}, Lcom/google/atap/tangoservice/Tango$4;-><init>(Lcom/google/atap/tangoservice/Tango;)V

    .line 658
    .local v0, "wrappedListener":Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub;
    iget-boolean v1, p0, Lcom/google/atap/tangoservice/Tango;->mTangoServiceConnected:Z

    invoke-static {p1, v0, v1}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->connectOnImageAvailable(ILcom/google/atap/tangoservice/IOnImageAvailableListener;Z)I

    move-result v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 664
    .end local v0    # "wrappedListener":Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub;
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    .line 662
    invoke-static {p1, v1}, Lcom/google/atap/tango/TangoJNINative;->ConnectOnImageAvailable(ILcom/google/atap/tangoservice/Tango$TangoUpdateCallback;)I

    move-result v1

    .line 661
    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public connectOnTextureAvailable(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 490
    sget-boolean v0, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v0, :cond_0

    .line 491
    iget-boolean v0, p0, Lcom/google/atap/tangoservice/Tango;->mTangoServiceConnected:Z

    invoke-static {p1, v0}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->connectOnTextureAvailable(IZ)I

    move-result v0

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public connectTextureId(II)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "textureId"    # I

    .prologue
    .line 454
    sget-boolean v0, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v0, :cond_0

    .line 455
    iget-boolean v0, p0, Lcom/google/atap/tangoservice/Tango;->mTangoServiceConnected:Z

    invoke-static {p1, p2, v0}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->connectTextureId(IIZ)I

    move-result v0

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {p1, p2}, Lcom/google/atap/tango/TangoJNINative;->ConnectTextureId(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public createFrameOfInterest(DLjava/lang/String;Lcom/google/atap/tangoservice/TangoTransformation;Lcom/google/atap/tangoservice/Tango$FoiListener;)V
    .locals 3
    .param p1, "timestamp"    # D
    .param p3, "baseFrameUuid"    # Ljava/lang/String;
    .param p4, "transformation"    # Lcom/google/atap/tangoservice/TangoTransformation;
    .param p5, "listener"    # Lcom/google/atap/tangoservice/Tango$FoiListener;

    .prologue
    .line 1420
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 1421
    :cond_0
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1424
    :cond_1
    sget-boolean v2, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v2, :cond_2

    .line 1425
    new-instance v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;-><init>()V

    .line 1426
    .local v0, "request":Lcom/google/atap/tangoservice/fois/FoiRequest$Create;
    iput-wide p1, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTimestamp:D

    .line 1427
    iput-object p3, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mBaseFrameId:Ljava/lang/String;

    .line 1428
    iput-object p4, v0, Lcom/google/atap/tangoservice/fois/FoiRequest$Create;->mTransformation:Lcom/google/atap/tangoservice/TangoTransformation;

    .line 1429
    invoke-direct {p0, v0, p5}, Lcom/google/atap/tangoservice/Tango;->handleFoiRequest(Lcom/google/atap/tangoservice/fois/FoiRequest;Lcom/google/atap/tangoservice/Tango$FoiListener;)I

    move-result v1

    .line 1434
    .end local v0    # "request":Lcom/google/atap/tangoservice/fois/FoiRequest$Create;
    .local v1, "status":I
    :goto_0
    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1435
    return-void

    .line 1431
    .end local v1    # "status":I
    :cond_2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/atap/tango/TangoJNINative;->CreateFrameOfInterest2(DLjava/lang/String;Lcom/google/atap/tangoservice/TangoTransformation;Lcom/google/atap/tangoservice/Tango$FoiListener;)I

    move-result v1

    .restart local v1    # "status":I
    goto :goto_0
.end method

.method public deleteAreaDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1134
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 1136
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v1, p1}, Lcom/google/atap/tangoservice/ITango;->deleteAreaDescription(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1146
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1139
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1141
    new-instance v1, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v1

    .line 1144
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {p1}, Lcom/google/atap/tango/TangoJNINative;->DeleteAreaDescription(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public deleteFramesOfInterest([Ljava/lang/String;Lcom/google/atap/tangoservice/Tango$FoiListener;)V
    .locals 5
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/atap/tangoservice/Tango$FoiListener;

    .prologue
    const/4 v4, -0x2

    .line 1468
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1469
    :cond_0
    invoke-static {v4}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1471
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 1472
    aget-object v3, p1, v0

    if-nez v3, :cond_2

    .line 1473
    invoke-static {v4}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1471
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1477
    :cond_3
    sget-boolean v3, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v3, :cond_4

    .line 1478
    new-instance v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Delete;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/fois/FoiRequest$Delete;-><init>()V

    .line 1479
    .local v1, "request":Lcom/google/atap/tangoservice/fois/FoiRequest$Delete;
    iput-object p1, v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Delete;->mFrameIds:[Ljava/lang/String;

    .line 1480
    invoke-direct {p0, v1, p2}, Lcom/google/atap/tangoservice/Tango;->handleFoiRequest(Lcom/google/atap/tangoservice/fois/FoiRequest;Lcom/google/atap/tangoservice/Tango$FoiListener;)I

    move-result v2

    .line 1484
    .end local v1    # "request":Lcom/google/atap/tangoservice/fois/FoiRequest$Delete;
    .local v2, "status":I
    :goto_1
    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1485
    return-void

    .line 1482
    .end local v2    # "status":I
    :cond_4
    invoke-static {p1, p2}, Lcom/google/atap/tango/TangoJNINative;->DeleteFramesOfInterest([Ljava/lang/String;Lcom/google/atap/tangoservice/Tango$FoiListener;)I

    move-result v2

    .restart local v2    # "status":I
    goto :goto_1
.end method

.method public disconnect()V
    .locals 4

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 808
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mCallbacksAllowed:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly(I)V

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/atap/tangoservice/Tango;->mTangoShouldBeDisconnected:Z

    .line 810
    iput-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    .line 811
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mCallbacksAllowed:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 812
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_2

    .line 814
    :try_start_0
    invoke-static {}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->stopAllCameras()I

    .line 815
    invoke-static {}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->disconnect()V

    .line 816
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v1}, Lcom/google/atap/tangoservice/ITango;->disconnect()I

    .line 819
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/atap/tangoservice/Tango;->mTangoServiceConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    invoke-direct {p0}, Lcom/google/atap/tangoservice/Tango;->clearFoiListeners()V

    .line 824
    iput-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    .line 828
    :goto_1
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 829
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mParent:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 830
    iput-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 832
    :cond_1
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 826
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {}, Lcom/google/atap/tango/TangoJNINative;->Disconnect()V

    goto :goto_1
.end method

.method public disconnectCamera(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 1032
    sget-boolean v0, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v0, :cond_0

    .line 1033
    invoke-static {p1}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->disconnectCamera(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-static {p1}, Lcom/google/atap/tango/TangoJNINative;->DisconnectCamera(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public disconnectWithoutUnbind()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 839
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mCallbacksAllowed:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly(I)V

    .line 840
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    .line 841
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mCallbacksAllowed:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 842
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_1

    .line 844
    :try_start_0
    invoke-static {}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->stopAllCameras()I

    .line 845
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v1}, Lcom/google/atap/tangoservice/ITango;->disconnect()I

    .line 848
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/atap/tangoservice/Tango;->mTangoServiceConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    invoke-direct {p0}, Lcom/google/atap/tangoservice/Tango;->clearFoiListeners()V

    .line 856
    :goto_1
    return-void

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 854
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Lcom/google/atap/tango/TangoJNINative;->Disconnect()V

    goto :goto_1
.end method

.method public experimentalConnectOnFrameListener(ILcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "listener"    # Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;

    .prologue
    .line 601
    sget-boolean v2, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v2, :cond_0

    .line 602
    move-object v0, p2

    .line 603
    .local v0, "finalizedOnFrameAvailableListener":Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;
    new-instance v1, Lcom/google/atap/tangoservice/Tango$3;

    invoke-direct {v1, p0, v0}, Lcom/google/atap/tangoservice/Tango$3;-><init>(Lcom/google/atap/tangoservice/Tango;Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;)V

    .line 615
    .local v1, "wrappedListener":Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub;
    iget-boolean v2, p0, Lcom/google/atap/tangoservice/Tango;->mTangoServiceConnected:Z

    invoke-static {p1, v1, v2}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->connectOnFrameAvailable(ILcom/google/atap/tangoservice/IOnFrameAvailableListener;Z)I

    move-result v2

    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 621
    .end local v0    # "finalizedOnFrameAvailableListener":Lcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;
    .end local v1    # "wrappedListener":Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub;
    :goto_0
    return-void

    .line 618
    :cond_0
    new-instance v2, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;

    invoke-direct {v2}, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;-><init>()V

    invoke-static {p1, p2, v2}, Lcom/google/atap/tango/TangoJNINative;->ConnectOnFrameAvailable(ILcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;)I

    move-result v2

    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public experimentalDeleteDataset(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1237
    sget-boolean v0, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v0, :cond_0

    .line 1243
    :goto_0
    return-void

    .line 1241
    :cond_0
    invoke-static {p1}, Lcom/google/atap/tango/TangoJNINative;->DeleteDataset(Ljava/lang/String;)I

    move-result v0

    .line 1240
    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public experimentalGetCurrentDatasetUuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1194
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1195
    .local v0, "uuidHolder":[Ljava/lang/String;
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 1200
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 1198
    :cond_0
    invoke-static {v0}, Lcom/google/atap/tango/TangoJNINative;->GetCurrentDatasetUUID([Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public experimentalGetPlaneByUVCoord(ILcom/google/atap/tangoservice/TangoPoseData;[D)Lcom/google/atap/tangoservice/experimental/TangoPlaneData;
    .locals 10
    .param p1, "cameraId"    # I
    .param p2, "cameraPose"    # Lcom/google/atap/tangoservice/TangoPoseData;
    .param p3, "uvCoord"    # [D

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 989
    if-eqz p3, :cond_0

    array-length v2, p3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-wide v2, p3, v8

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    aget-wide v2, p3, v8

    cmpl-double v2, v2, v6

    if-gez v2, :cond_0

    aget-wide v2, p3, v9

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    aget-wide v2, p3, v9

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_1

    .line 991
    :cond_0
    new-instance v2, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v2}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v2

    .line 994
    :cond_1
    new-instance v1, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/experimental/TangoPlaneData;-><init>()V

    .line 995
    .local v1, "result":Lcom/google/atap/tangoservice/experimental/TangoPlaneData;
    sget-boolean v2, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v2, :cond_2

    .line 997
    :try_start_0
    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    .line 998
    invoke-interface {v2, p1, p2, p3, v1}, Lcom/google/atap/tangoservice/ITango;->getPlaneByUVCoord(ILcom/google/atap/tangoservice/TangoPoseData;[DLcom/google/atap/tangoservice/experimental/TangoPlaneData;)I

    move-result v2

    .line 997
    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :cond_2
    :goto_0
    return-object v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public experimentalGetPlanes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/atap/tangoservice/experimental/TangoPlaneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/atap/tangoservice/experimental/TangoPlaneData;>;"
    sget-boolean v2, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v2, :cond_0

    .line 1017
    :try_start_0
    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v2, v1}, Lcom/google/atap/tangoservice/ITango;->getPlanes(Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :cond_0
    :goto_0
    return-object v1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public experimentalListDatasets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 1211
    .local v1, "datasetHolder":[Ljava/lang/String;
    sget-boolean v3, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v3, :cond_0

    .line 1217
    :goto_0
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1219
    .local v0, "commaseparatedUuids":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1220
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "\\s*,\\s*"

    .line 1221
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1227
    .local v2, "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 1215
    .end local v0    # "commaseparatedUuids":Ljava/lang/String;
    .end local v2    # "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v1}, Lcom/google/atap/tango/TangoJNINative;->GetDatasets([Ljava/lang/String;)I

    move-result v3

    .line 1214
    invoke-static {v3}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0

    .line 1223
    .restart local v0    # "commaseparatedUuids":Ljava/lang/String;
    :cond_1
    const-string v3, "Tango"

    const-string v4, "No datasets were found."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public exportAreaDescriptionFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "filepathDirectory"    # Ljava/lang/String;

    .prologue
    .line 1305
    :try_start_0
    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mParent:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    .local v2, "parentActivity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1312
    .local v1, "exportIntent":Landroid/content/Intent;
    const-string v3, "com.google.tango"

    const-string v4, "com.google.atap.tango.RequestImportExportActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    iget-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mParent:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1314
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "exportIntent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1315
    .restart local v1    # "exportIntent":Landroid/content/Intent;
    const-string v3, "com.projecttango.tango"

    const-string v4, "com.google.atap.tango.RequestImportExportActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    :cond_0
    const-string v3, "SOURCE_UUID"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const-string v3, "DESTINATION_FILE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    const/16 v3, 0x469

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1321
    return-void

    .line 1306
    .end local v1    # "exportIntent":Landroid/content/Intent;
    .end local v2    # "parentActivity":Landroid/app/Activity;
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "Tango"

    const-string v4, "Error: exportAreaDescriptionFile can only be called from an Activity."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    new-instance v3, Lcom/google/atap/tangoservice/TangoErrorException;

    invoke-direct {v3}, Lcom/google/atap/tangoservice/TangoErrorException;-><init>()V

    throw v3
.end method

.method public getCameraIntrinsics(I)Lcom/google/atap/tangoservice/TangoCameraIntrinsics;
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 1495
    new-instance v1, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/TangoCameraIntrinsics;-><init>()V

    .line 1496
    .local v1, "intrinsics":Lcom/google/atap/tangoservice/TangoCameraIntrinsics;
    sget-boolean v2, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v2, :cond_0

    .line 1498
    :try_start_0
    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v2, p1, v1}, Lcom/google/atap/tangoservice/ITango;->getCameraIntrinsics(ILcom/google/atap/tangoservice/TangoCameraIntrinsics;)I

    move-result v2

    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1509
    :goto_0
    return-object v1

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1501
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1502
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1503
    new-instance v2, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v2}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v2

    .line 1507
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {p1, v1}, Lcom/google/atap/tango/TangoJNINative;->GetCameraIntrinsics(ILcom/google/atap/tangoservice/TangoCameraIntrinsics;)I

    move-result v2

    .line 1506
    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public getConfig(I)Lcom/google/atap/tangoservice/TangoConfig;
    .locals 3
    .param p1, "configType"    # I

    .prologue
    .line 426
    new-instance v0, Lcom/google/atap/tangoservice/TangoConfig;

    invoke-direct {v0}, Lcom/google/atap/tangoservice/TangoConfig;-><init>()V

    .line 427
    .local v0, "config":Lcom/google/atap/tangoservice/TangoConfig;
    sget-boolean v2, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v2, :cond_0

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v2, p1, v0}, Lcom/google/atap/tangoservice/ITango;->getConfig(ILcom/google/atap/tangoservice/TangoConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 439
    :goto_0
    return-object v0

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 432
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 434
    new-instance v2, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v2}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v2

    .line 437
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {p1, v0}, Lcom/google/atap/tango/TangoJNINative;->GetConfig(ILcom/google/atap/tangoservice/TangoConfig;)V

    goto :goto_0
.end method

.method public getPoseAtTime(DLcom/google/atap/tangoservice/TangoCoordinateFramePair;)Lcom/google/atap/tangoservice/TangoPoseData;
    .locals 5
    .param p1, "timestamp"    # D
    .param p3, "framePair"    # Lcom/google/atap/tangoservice/TangoCoordinateFramePair;

    .prologue
    .line 871
    new-instance v1, Lcom/google/atap/tangoservice/TangoPoseData;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/TangoPoseData;-><init>()V

    .line 872
    .local v1, "result":Lcom/google/atap/tangoservice/TangoPoseData;
    sget-boolean v2, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v2, :cond_0

    .line 874
    :try_start_0
    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/google/atap/tangoservice/ITango;->getPoseAtTime(DLcom/google/atap/tangoservice/TangoCoordinateFramePair;Lcom/google/atap/tangoservice/TangoPoseData;)I

    move-result v2

    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 886
    :goto_0
    return-object v1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 877
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 879
    new-instance v2, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v2}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v2

    .line 882
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    iget v2, p3, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->baseFrame:I

    iget v3, p3, Lcom/google/atap/tangoservice/TangoCoordinateFramePair;->targetFrame:I

    invoke-static {p1, p2, v2, v3, v1}, Lcom/google/atap/tango/TangoJNINative;->GetPoseAtTime(DIILcom/google/atap/tangoservice/TangoPoseData;)I

    move-result v2

    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public getPoseAtTime(DLjava/lang/String;Ljava/lang/String;)Lcom/google/atap/tangoservice/TangoPoseData;
    .locals 9
    .param p1, "timestamp"    # D
    .param p3, "baseFrameUuid"    # Ljava/lang/String;
    .param p4, "targetFrameUuid"    # Ljava/lang/String;

    .prologue
    .line 943
    new-instance v6, Lcom/google/atap/tangoservice/TangoPoseData;

    invoke-direct {v6}, Lcom/google/atap/tangoservice/TangoPoseData;-><init>()V

    .line 945
    .local v6, "result":Lcom/google/atap/tangoservice/TangoPoseData;
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/atap/tangoservice/ITango;->getPoseAtTime2(DLjava/lang/String;Ljava/lang/String;Lcom/google/atap/tangoservice/TangoPoseData;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 955
    .local v7, "status":I
    :goto_0
    invoke-static {v7}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 956
    return-object v6

    .line 948
    .end local v7    # "status":I
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 950
    const/4 v7, -0x1

    .line 951
    .restart local v7    # "status":I
    goto :goto_0

    .line 953
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "status":I
    :cond_0
    invoke-static {p1, p2, p3, p4, v6}, Lcom/google/atap/tango/TangoJNINative;->GetPoseAtTime2(DLjava/lang/String;Ljava/lang/String;Lcom/google/atap/tangoservice/TangoPoseData;)I

    move-result v7

    .restart local v7    # "status":I
    goto :goto_0
.end method

.method public importAreaDescriptionFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 1277
    :try_start_0
    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mParent:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    .local v2, "parentActivity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1283
    .local v1, "importIntent":Landroid/content/Intent;
    const-string v3, "com.google.tango"

    const-string v4, "com.google.atap.tango.RequestImportExportActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    iget-object v3, p0, Lcom/google/atap/tangoservice/Tango;->mParent:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1285
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "importIntent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1286
    .restart local v1    # "importIntent":Landroid/content/Intent;
    const-string v3, "com.projecttango.tango"

    const-string v4, "com.google.atap.tango.RequestImportExportActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1289
    :cond_0
    const-string v3, "SOURCE_FILE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1290
    const/16 v3, 0x469

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1291
    return-void

    .line 1278
    .end local v1    # "importIntent":Landroid/content/Intent;
    .end local v2    # "parentActivity":Landroid/app/Activity;
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "Tango"

    const-string v4, "Error: importAreaDescriptionFile can only be called from an Activity."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    new-instance v3, Lcom/google/atap/tangoservice/TangoErrorException;

    invoke-direct {v3}, Lcom/google/atap/tangoservice/TangoErrorException;-><init>()V

    throw v3
.end method

.method public listAreaDescriptions()Ljava/util/ArrayList;
    .locals 9
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
    .line 1156
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 1157
    .local v5, "uuidListHolder":[Ljava/lang/String;
    sget-boolean v6, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v6, :cond_0

    .line 1159
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v3, "uuidHolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    .line 1161
    invoke-interface {v6, v3}, Lcom/google/atap/tangoservice/ITango;->getAreaDescriptionUuidList(Ljava/util/List;)I

    move-result v6

    .line 1160
    invoke-static {v6}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1162
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1173
    .end local v3    # "uuidHolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 1175
    .local v1, "commaseparatedUuids":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1176
    new-instance v4, Ljava/util/ArrayList;

    const-string v6, "\\s*,\\s*"

    .line 1177
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1182
    .local v4, "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const-string v6, "Tango"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of uuids is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    return-object v4

    .line 1163
    .end local v1    # "commaseparatedUuids":Ljava/lang/String;
    .end local v4    # "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1164
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1165
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1166
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1167
    new-instance v6, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v6}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v6

    .line 1171
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {v5}, Lcom/google/atap/tango/TangoJNINative;->GetAreaDescriptionUUIDList([Ljava/lang/String;)I

    move-result v6

    .line 1170
    invoke-static {v6}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0

    .line 1179
    .restart local v1    # "commaseparatedUuids":Ljava/lang/String;
    :cond_1
    const-string v6, "Tango"

    const-string v7, "No UUIDs."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public loadAreaDescriptionMetaData(Ljava/lang/String;)Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1066
    new-instance v1, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;-><init>()V

    .line 1067
    .local v1, "result":Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;
    sget-boolean v2, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v2, :cond_0

    .line 1069
    :try_start_0
    iget-object v2, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v2, p1, v1}, Lcom/google/atap/tangoservice/ITango;->loadAreaDescriptionMetaData(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)I

    move-result v2

    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1080
    :goto_0
    return-object v1

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1072
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1073
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1074
    new-instance v2, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v2}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v2

    .line 1077
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {p1, v1}, Lcom/google/atap/tango/TangoJNINative;->GetAreaDescriptionMetadata(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)I

    move-result v2

    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public loadFramesOfInterest([Ljava/lang/String;Lcom/google/atap/tangoservice/Tango$FoiListener;)V
    .locals 5
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/atap/tangoservice/Tango$FoiListener;

    .prologue
    const/4 v4, -0x2

    .line 1443
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1444
    :cond_0
    invoke-static {v4}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1446
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 1447
    aget-object v3, p1, v0

    if-nez v3, :cond_2

    .line 1448
    invoke-static {v4}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1446
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1452
    :cond_3
    sget-boolean v3, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v3, :cond_4

    .line 1453
    new-instance v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Load;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/fois/FoiRequest$Load;-><init>()V

    .line 1454
    .local v1, "request":Lcom/google/atap/tangoservice/fois/FoiRequest$Load;
    iput-object p1, v1, Lcom/google/atap/tangoservice/fois/FoiRequest$Load;->mFrameIds:[Ljava/lang/String;

    .line 1455
    invoke-direct {p0, v1, p2}, Lcom/google/atap/tangoservice/Tango;->handleFoiRequest(Lcom/google/atap/tangoservice/fois/FoiRequest;Lcom/google/atap/tangoservice/Tango$FoiListener;)I

    move-result v2

    .line 1459
    .end local v1    # "request":Lcom/google/atap/tangoservice/fois/FoiRequest$Load;
    .local v2, "status":I
    :goto_1
    invoke-static {v2}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1460
    return-void

    .line 1457
    .end local v2    # "status":I
    :cond_4
    invoke-static {p1, p2}, Lcom/google/atap/tango/TangoJNINative;->LoadFramesOfInterest([Ljava/lang/String;Lcom/google/atap/tangoservice/Tango$FoiListener;)I

    move-result v2

    .restart local v2    # "status":I
    goto :goto_1
.end method

.method public lockCameraBuffer(I[J)D
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "bufferIdHolder"    # [J

    .prologue
    .line 535
    const/4 v1, 0x1

    new-array v0, v1, [D

    .line 536
    .local v0, "timestamp":[D
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 538
    invoke-static {p1, v0, p2}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->lockCameraBuffer(I[D[J)I

    move-result v1

    .line 537
    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 543
    :goto_0
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    return-wide v2

    .line 541
    :cond_0
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public resetMotionTracking()V
    .locals 2

    .prologue
    .line 1044
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 1046
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v1}, Lcom/google/atap/tangoservice/ITango;->resetMotionTracking()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1056
    :goto_0
    return-void

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1049
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1050
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1051
    new-instance v1, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v1

    .line 1054
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {}, Lcom/google/atap/tango/TangoJNINative;->ResetMotionTracking()V

    goto :goto_0
.end method

.method public saveAreaDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1108
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 1109
    .local v3, "uuidHolder":[Ljava/lang/String;
    sget-boolean v4, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v4, :cond_0

    .line 1111
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v2, "listHolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v4, v2}, Lcom/google/atap/tangoservice/ITango;->saveAreaDescription(Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 1113
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1123
    .end local v2    # "listHolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v3, v4

    return-object v4

    .line 1114
    :catch_0
    move-exception v1

    .line 1115
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1116
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1117
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1118
    new-instance v4, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v4}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v4

    .line 1121
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {v3}, Lcom/google/atap/tango/TangoJNINative;->SaveAreaDescription([Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public saveAreaDescriptionMetadata(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;

    .prologue
    .line 1252
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 1254
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v1, p1, p2}, Lcom/google/atap/tangoservice/ITango;->saveAreaDescriptionMetaData(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)I

    move-result v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1265
    :goto_0
    return-void

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1257
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1258
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1259
    new-instance v1, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v1

    .line 1263
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {p1, p2}, Lcom/google/atap/tango/TangoJNINative;->SaveAreaDescriptionMetadata(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)I

    move-result v1

    .line 1262
    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public setRuntimeConfig(Lcom/google/atap/tangoservice/TangoConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/google/atap/tangoservice/TangoConfig;

    .prologue
    .line 1584
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 1586
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/Tango;->mITango:Lcom/google/atap/tangoservice/ITango;

    invoke-interface {v1, p1}, Lcom/google/atap/tangoservice/ITango;->setRuntimeConfig(Lcom/google/atap/tangoservice/TangoConfig;)I

    move-result v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1596
    :goto_0
    return-void

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1589
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1590
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1591
    new-instance v1, Lcom/google/atap/tangoservice/TangoInvalidException;

    invoke-direct {v1}, Lcom/google/atap/tangoservice/TangoInvalidException;-><init>()V

    throw v1

    .line 1594
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-static {p1}, Lcom/google/atap/tango/TangoJNINative;->SetRuntimeConfig(Lcom/google/atap/tangoservice/TangoConfig;)I

    move-result v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public unlockCameraBuffer(IJ)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "bufferId"    # J

    .prologue
    .line 556
    sget-boolean v0, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-static {p1, p2, p3}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->unlockCameraBuffer(IJ)I

    move-result v0

    .line 557
    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public updateTexture(I)D
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 472
    const/4 v1, 0x1

    new-array v0, v1, [D

    .line 473
    .local v0, "timestamp":[D
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 475
    invoke-static {p1, v0}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->updateTexture(I[D)I

    move-result v1

    .line 474
    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 479
    :goto_0
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    return-wide v2

    .line 477
    :cond_0
    invoke-static {p1, v0}, Lcom/google/atap/tango/TangoJNINative;->UpdateTexture(I[D)I

    move-result v1

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public updateTextureExternalOes(II)D
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "textureId"    # I

    .prologue
    .line 509
    const/4 v1, 0x1

    new-array v0, v1, [D

    .line 510
    .local v0, "timestamp":[D
    sget-boolean v1, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v1, :cond_0

    .line 512
    invoke-static {p1, p2, v0}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->updateTextureExternalOes(II[D)I

    move-result v1

    .line 511
    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 517
    :goto_0
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    return-wide v2

    .line 515
    :cond_0
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method

.method public updateTextureExternalOesForBuffer(IIJ)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "textureId"    # I
    .param p3, "bufferId"    # J

    .prologue
    .line 577
    sget-boolean v0, Lcom/google/atap/tangoservice/Tango;->PURE_JAVA_PATH:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-static {p1, p2, p3, p4}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->updateTextureExternalOesForBuffer(IIJ)I

    move-result v0

    .line 578
    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/google/atap/tangoservice/Tango;->throwTangoExceptionIfNeeded(I)V

    goto :goto_0
.end method
