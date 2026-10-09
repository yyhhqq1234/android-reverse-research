.class public Lcom/google/atap/tangoservice/TangoCameraPreview;
.super Landroid/opengl/GLSurfaceView;
.source "TangoCameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TangoCameraPreview"


# instance fields
.field private mCameraId:I

.field private mParent:Landroid/content/Context;

.field private mRenderer:Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

.field private mTango:Lcom/google/atap/tangoservice/Tango;

.field private mTextureId:I

.field private mTimestamp:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 210
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTextureId:I

    .line 42
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mCameraId:I

    .line 211
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoCameraPreview;->init(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTextureId:I

    .line 42
    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mCameraId:I

    .line 222
    invoke-direct {p0, p1}, Lcom/google/atap/tangoservice/TangoCameraPreview;->init(Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mParent:Landroid/content/Context;

    .line 232
    new-instance v0, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

    invoke-direct {v0, p0, p0}, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;-><init>(Lcom/google/atap/tangoservice/TangoCameraPreview;Lcom/google/atap/tangoservice/TangoCameraPreview;)V

    iput-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

    .line 233
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/TangoCameraPreview;->setEGLContextClientVersion(I)V

    .line 234
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/TangoCameraPreview;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/atap/tangoservice/TangoCameraPreview;->setRenderMode(I)V

    .line 236
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTimestamp:D

    .line 237
    return-void
.end method


# virtual methods
.method public connectToTangoCamera(Lcom/google/atap/tangoservice/Tango;I)V
    .locals 3
    .param p1, "tango"    # Lcom/google/atap/tangoservice/Tango;
    .param p2, "cameraId"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->getTextureId()I

    move-result v0

    iput v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTextureId:I

    .line 297
    iput p2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mCameraId:I

    .line 298
    iput-object p1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    .line 299
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    iget v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mCameraId:I

    iget v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTextureId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/atap/tangoservice/Tango;->connectTextureId(II)V

    .line 300
    return-void
.end method

.method public disconnectFromTangoCamera()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    iget v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/google/atap/tangoservice/Tango;->disconnectCamera(I)V

    .line 313
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->close()V

    .line 317
    :cond_0
    return-void
.end method

.method public getTimestamp()D
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTimestamp:D

    return-wide v0
.end method

.method public declared-synchronized onFrameAvailable()V
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

    invoke-virtual {v0}, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->onFrameAvailable()V

    .line 282
    invoke-virtual {p0}, Lcom/google/atap/tangoservice/TangoCameraPreview;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateTexture()V
    .locals 4

    .prologue
    .line 261
    iget v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTextureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 262
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mRenderer:Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;

    invoke-virtual {v1}, Lcom/google/atap/tangoservice/TangoCameraPreview$MainRenderer;->getTextureId()I

    move-result v1

    iput v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTextureId:I

    .line 263
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    iget v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mCameraId:I

    iget v3, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTextureId:I

    invoke-virtual {v1, v2, v3}, Lcom/google/atap/tangoservice/Tango;->connectTextureId(II)V

    .line 266
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTango:Lcom/google/atap/tangoservice/Tango;

    iget v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/google/atap/tangoservice/Tango;->updateTexture(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/atap/tangoservice/TangoCameraPreview;->mTimestamp:D
    :try_end_0
    .catch Lcom/google/atap/tangoservice/TangoInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Lcom/google/atap/tangoservice/TangoInvalidException;
    const-string v1, "TangoCameraPreview"

    const-string v2, "Error updating texture."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
