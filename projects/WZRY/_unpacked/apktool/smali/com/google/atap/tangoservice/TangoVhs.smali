.class public Lcom/google/atap/tangoservice/TangoVhs;
.super Ljava/lang/Object;
.source "TangoVhs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TangoVhs"


# instance fields
.field private mITangoVhs:Lcom/google/atap/tangoservice/ITangoVhs;

.field private mParent:Landroid/content/Context;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/atap/tangoservice/TangoVhs;->mParent:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/google/atap/tangoservice/TangoVhs;Lcom/google/atap/tangoservice/ITangoVhs;)Lcom/google/atap/tangoservice/ITangoVhs;
    .locals 0
    .param p0, "x0"    # Lcom/google/atap/tangoservice/TangoVhs;
    .param p1, "x1"    # Lcom/google/atap/tangoservice/ITangoVhs;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/atap/tangoservice/TangoVhs;->mITangoVhs:Lcom/google/atap/tangoservice/ITangoVhs;

    return-object p1
.end method


# virtual methods
.method public connect(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runOnTangoReady"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    const-string v1, "TangoVhs"

    const-string v2, "about to bind as vhs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.tango"

    const-string v2, "com.google.atap.tango.TangoVirtualHalService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    new-instance v1, Lcom/google/atap/tangoservice/TangoVhs$1;

    invoke-direct {v1, p0, p1}, Lcom/google/atap/tangoservice/TangoVhs$1;-><init>(Lcom/google/atap/tangoservice/TangoVhs;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/atap/tangoservice/TangoVhs;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 66
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoVhs;->mParent:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/atap/tangoservice/TangoVhs;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 67
    const-string v1, "TangoVhs"

    const-string v2, "finished bind as vhs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoVhs;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoVhs;->mParent:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoVhs;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoVhs;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 104
    :cond_0
    return-void
.end method

.method public getTrackingSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoVhs;->mITangoVhs:Lcom/google/atap/tangoservice/ITangoVhs;

    invoke-interface {v1}, Lcom/google/atap/tangoservice/ITangoVhs;->getTrackingSurface()Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMetadata(JJJJ)V
    .locals 11
    .param p1, "timestampNs"    # J
    .param p3, "exposureNs"    # J
    .param p5, "shutterSkewNs"    # J
    .param p7, "frameCount"    # J

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoVhs;->mITangoVhs:Lcom/google/atap/tangoservice/ITangoVhs;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/google/atap/tangoservice/ITangoVhs;->onMetadata(JJJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDatasetPathAndUUID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "datasetPath"    # Ljava/lang/String;
    .param p2, "datasetUUID"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoVhs;->mITangoVhs:Lcom/google/atap/tangoservice/ITangoVhs;

    invoke-interface {v1, p1, p2}, Lcom/google/atap/tangoservice/ITangoVhs;->setDatasetPathAndUUID(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const/4 v1, -0x1

    goto :goto_0
.end method
