.class public Lcom/google/atap/tangoservice/TangoCameraNativeLoader;
.super Ljava/lang/Object;
.source "TangoCameraNativeLoader.java"


# static fields
.field private static sCamera:Lcom/google/tango/loader/ITangoCameraNative;

.field private static sRemoteContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectOnFrameAvailable(ILcom/google/atap/tangoservice/IOnFrameAvailableListener;Z)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "listener"    # Lcom/google/atap/tangoservice/IOnFrameAvailableListener;
    .param p2, "tangoServiceConnected"    # Z

    .prologue
    .line 108
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/tango/loader/ITangoCameraNative;->connectOnFrameAvailable(ILcom/google/atap/tangoservice/IOnFrameAvailableListener;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    const/4 v1, -0x1

    goto :goto_0

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static connectOnImageAvailable(ILcom/google/atap/tangoservice/IOnImageAvailableListener;Z)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "listener"    # Lcom/google/atap/tangoservice/IOnImageAvailableListener;
    .param p2, "tangoServiceConnected"    # Z

    .prologue
    .line 121
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/tango/loader/ITangoCameraNative;->connectOnImageAvailable(ILcom/google/atap/tangoservice/IOnImageAvailableListener;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 124
    const/4 v1, -0x1

    goto :goto_0

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static connectOnTextureAvailable(IZ)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "tangoServiceConnected"    # Z

    .prologue
    .line 166
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1}, Lcom/google/tango/loader/ITangoCameraNative;->connectOnTextureAvailable(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    const/4 v1, -0x1

    goto :goto_0

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static connectTextureId(IIZ)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "textureId"    # I
    .param p2, "tangoServiceConnected"    # Z

    .prologue
    .line 87
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/tango/loader/ITangoCameraNative;->connectTextureId(IIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 90
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static disconnect()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    .line 72
    return-void
.end method

.method public static disconnectCamera(I)I
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 144
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0}, Lcom/google/tango/loader/ITangoCameraNative;->disconnectCamera(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 149
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    const/4 v1, -0x1

    goto :goto_0

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/atap/tangoservice/ITangoListener;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tangoUpdateListener"    # Lcom/google/atap/tangoservice/ITangoListener;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->loadCameraApi(Landroid/content/Context;)I

    .line 61
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-static {p0}, Lcom/google/tango/loader/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/tango/loader/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/tango/loader/ITangoCameraNative;->initialize(Lcom/google/tango/loader/IObjectWrapper;Lcom/google/atap/tangoservice/ITangoListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 66
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 64
    const/4 v1, -0x1

    goto :goto_0

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method private static loadCameraApi(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    :try_start_0
    const-string v3, "com.google.tango"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sRemoteContext:Landroid/content/Context;

    .line 33
    sget-object v3, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sRemoteContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 34
    .local v2, "remoteClassLoader":Ljava/lang/ClassLoader;
    const-string v3, "com.google.tango.jni.TangoCameraNative"

    invoke-static {v2, v3}, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->newBinderInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/google/tango/loader/ITangoCameraNative$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/tango/loader/ITangoCameraNative;

    move-result-object v3

    sput-object v3, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v3, 0x0

    .line 40
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "remoteClassLoader":Ljava/lang/ClassLoader;
    :goto_0
    return v3

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 40
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static lockCameraBuffer(I[D[J)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "timestampHolder"    # [D
    .param p2, "bufferIdHolder"    # [J

    .prologue
    .line 190
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/tango/loader/ITangoCameraNative;->lockCameraBuffer(I[D[J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 195
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 193
    const/4 v1, -0x1

    goto :goto_0

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method private static newBinderInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    .line 48
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find dynamic class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to instantiate the remote class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call the default constructor of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static setDatasetPathAndUUID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "datasetPath"    # Ljava/lang/String;
    .param p1, "datasetUUID"    # Ljava/lang/String;

    .prologue
    .line 76
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1}, Lcom/google/tango/loader/ITangoCameraNative;->setDatasetPathAndUUID(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    const/4 v1, -0x1

    goto :goto_0

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static startCamerasIfNeeded()I
    .locals 2

    .prologue
    .line 133
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1}, Lcom/google/tango/loader/ITangoCameraNative;->startCamerasIfNeeded()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 136
    const/4 v1, -0x1

    goto :goto_0

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static stopAllCameras()I
    .locals 2

    .prologue
    .line 155
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1}, Lcom/google/tango/loader/ITangoCameraNative;->stopAllCameras()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 158
    const/4 v1, -0x1

    goto :goto_0

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static unlockCameraBuffer(IJ)I
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "bufferId"    # J

    .prologue
    .line 201
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/tango/loader/ITangoCameraNative;->unlockCameraBuffer(IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 204
    const/4 v1, -0x1

    goto :goto_0

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static updateTexture(I[D)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "timestampHolder"    # [D

    .prologue
    .line 96
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1}, Lcom/google/tango/loader/ITangoCameraNative;->updateTexture(I[D)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    const/4 v1, -0x1

    goto :goto_0

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static updateTextureExternalOes(II[D)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "textureId"    # I
    .param p2, "timestampHolder"    # [D

    .prologue
    .line 178
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/tango/loader/ITangoCameraNative;->updateTextureExternalOes(II[D)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    const/4 v1, -0x1

    goto :goto_0

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static updateTextureExternalOesForBuffer(IIJ)I
    .locals 2
    .param p0, "cameraId"    # I
    .param p1, "textureId"    # I
    .param p2, "bufferId"    # J

    .prologue
    .line 213
    :try_start_0
    sget-object v1, Lcom/google/atap/tangoservice/TangoCameraNativeLoader;->sCamera:Lcom/google/tango/loader/ITangoCameraNative;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/google/tango/loader/ITangoCameraNative;->updateTextureExternalOesForBuffer(IIJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 218
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    const/4 v1, -0x1

    goto :goto_0

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x2

    goto :goto_0
.end method
