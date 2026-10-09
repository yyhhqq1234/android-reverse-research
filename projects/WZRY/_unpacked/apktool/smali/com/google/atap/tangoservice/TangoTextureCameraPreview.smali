.class public Lcom/google/atap/tangoservice/TangoTextureCameraPreview;
.super Landroid/view/TextureView;
.source "TangoTextureCameraPreview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TangoTextureCameraPreview"


# instance fields
.field private mCameraId:I

.field private mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

.field private mTango:Lcom/google/atap/tangoservice/Tango;

.field private mTextureId:I

.field private mTimestamp:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTextureId:I

    .line 74
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTextureId:I

    .line 85
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-virtual {p0, p0}, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTimestamp:D

    .line 96
    return-void
.end method


# virtual methods
.method public connectToTangoCamera(Lcom/google/atap/tangoservice/Tango;I)V
    .locals 3
    .param p1, "tango"    # Lcom/google/atap/tangoservice/Tango;
    .param p2, "cameraId"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/TextureRenderer;->getTextureId()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTextureId:I

    .line 162
    :goto_0
    iput p2, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mCameraId:I

    .line 163
    iput-object p1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    .line 164
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    iget v1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mCameraId:I

    iget v2, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTextureId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/atap/tangoservice/Tango;->connectTextureId(II)V

    .line 165
    return-void

    .line 160
    :cond_0
    const-string v0, "TangoTextureCameraPreview"

    const-string v1, "Renderer not available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTimestamp()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTimestamp:D

    return-wide v0
.end method

.method public declared-synchronized onFrameAvailable()V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/TextureRenderer;->onFrameAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    :try_start_1
    const-string v0, "TangoTextureCameraPreview"

    const-string v1, "Renderer not available."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/atap/tangoservice/TextureRenderer;

    invoke-direct {v0, p0}, Lcom/google/atap/tangoservice/TextureRenderer;-><init>(Lcom/google/atap/tangoservice/TangoTextureCameraPreview;)V

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    invoke-virtual {v0, p1}, Lcom/google/atap/tangoservice/TextureRenderer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 41
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/TextureRenderer;->start()V

    .line 42
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/TextureRenderer;->destroy()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/google/atap/tangoservice/TextureRenderer;->setViewport(II)V

    .line 57
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 49
    return-void
.end method

.method public updateTexture()V
    .locals 4

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTextureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TextureRenderer;

    invoke-virtual {v1}, Lcom/google/atap/tangoservice/TextureRenderer;->getTextureId()I

    move-result v1

    iput v1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTextureId:I

    .line 122
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    iget v2, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mCameraId:I

    iget v3, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTextureId:I

    invoke-virtual {v1, v2, v3}, Lcom/google/atap/tangoservice/Tango;->connectTextureId(II)V

    .line 125
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    iget v2, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/google/atap/tangoservice/Tango;->updateTexture(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/TangoTextureCameraPreview;->mTimestamp:D
    :try_end_0
    .catch Lcom/google/atap/tangoservice/TangoInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Lcom/google/atap/tangoservice/TangoInvalidException;
    const-string v1, "TangoTextureCameraPreview"

    const-string v2, "Error while updating texture."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
