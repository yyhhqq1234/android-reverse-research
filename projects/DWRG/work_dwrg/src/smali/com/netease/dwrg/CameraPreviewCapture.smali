.class public Lcom/netease/dwrg/CameraPreviewCapture;
.super Ljava/lang/Object;
.source "CameraPreviewCapture.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFrameBuffer:[B

.field private mPreviewCallback:Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "NeoX_CameraPreviewCapture"

    sput-object v0, Lcom/netease/dwrg/CameraPreviewCapture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;)V
    .locals 0
    .param p1, "previewCallback"    # Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewCallback:Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;

    .line 36
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 135
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mFrameBuffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 148
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewCallback:Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;

    iget v1, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewWidth:I

    iget v2, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewHeight:I

    invoke-interface {v0, p1, v1, v2}, Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;->onPreviewFrame([BII)V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mFrameBuffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 140
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 141
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 143
    :cond_0
    return-void
.end method

.method public start(II)V
    .locals 26
    .param p1, "preferWidth"    # I
    .param p2, "preferHeight"    # I

    .prologue
    .line 42
    :try_start_0
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x9

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 43
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    :try_start_1
    new-instance v17, Landroid/graphics/SurfaceTexture;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/dwrg/CameraPreviewCapture;->mTexture:Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 72
    .local v5, "cameraParams":Landroid/hardware/Camera$Parameters;
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v20, v22

    .line 73
    .local v12, "preferRatio":D
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 74
    .local v10, "minDeltaRatio":D
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewWidth:I

    .line 75
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewHeight:I

    .line 76
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 78
    .local v15, "previewSize":Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    .line 79
    .local v16, "previewWidth":I
    iget v14, v15, Landroid/hardware/Camera$Size;->height:I

    .line 80
    .local v14, "previewHeight":I
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    int-to-double v0, v14

    move-wide/from16 v22, v0

    div-double v18, v20, v22

    .line 81
    .local v18, "ratio":D
    sget-object v20, Lcom/netease/dwrg/CameraPreviewCapture;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " x "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move/from16 v0, v16

    move/from16 v1, p1

    if-gt v0, v1, :cond_0

    move/from16 v0, p2

    if-gt v14, v0, :cond_0

    .line 85
    sub-double v20, v18, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 86
    .local v6, "deltaRatio":D
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    cmpl-double v20, v10, v20

    if-eqz v20, :cond_1

    cmpg-double v20, v6, v10

    if-gtz v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v0, v14, :cond_0

    .line 89
    :cond_1
    move-wide v10, v6

    .line 90
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewWidth:I

    .line 91
    move-object/from16 v0, p0

    iput v14, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewHeight:I

    goto/16 :goto_1

    .line 45
    .end local v5    # "cameraParams":Landroid/hardware/Camera$Parameters;
    .end local v6    # "deltaRatio":D
    .end local v10    # "minDeltaRatio":D
    .end local v12    # "preferRatio":D
    .end local v14    # "previewHeight":I
    .end local v15    # "previewSize":Landroid/hardware/Camera$Size;
    .end local v16    # "previewWidth":I
    .end local v18    # "ratio":D
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 47
    :catch_0
    move-exception v8

    .line 48
    .local v8, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/netease/dwrg/CameraPreviewCapture;->TAG:Ljava/lang/String;

    const-string v20, "Cant open camera!"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/CameraPreviewCapture;->stop()V

    .line 110
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 55
    :catch_1
    move-exception v8

    .line 56
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v17, Lcom/netease/dwrg/CameraPreviewCapture;->TAG:Ljava/lang/String;

    const-string v20, "Cant create surface texture!"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/CameraPreviewCapture;->stop()V

    goto :goto_2

    .line 63
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 64
    .local v8, "e":Ljava/io/IOException;
    sget-object v17, Lcom/netease/dwrg/CameraPreviewCapture;->TAG:Ljava/lang/String;

    const-string v20, "Cant set preview texture!"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/CameraPreviewCapture;->stop()V

    goto :goto_2

    .line 94
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "cameraParams":Landroid/hardware/Camera$Parameters;
    .restart local v10    # "minDeltaRatio":D
    .restart local v12    # "preferRatio":D
    :cond_3
    sget-object v17, Lcom/netease/dwrg/CameraPreviewCapture;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "prefer ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " x "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v17, Lcom/netease/dwrg/CameraPreviewCapture;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "got ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewWidth:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " x "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/16 v17, 0x1e

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewHeight:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mPreviewHeight:I

    move/from16 v20, v0

    mul-int v4, v17, v20

    .line 102
    .local v4, "bufferSize":I
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v9

    .line 103
    .local v9, "format":I
    invoke-static {v9}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v17

    mul-int v17, v17, v4

    div-int/lit8 v4, v17, 0x8

    .line 104
    new-array v0, v4, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/dwrg/CameraPreviewCapture;->mFrameBuffer:[B

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mFrameBuffer:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_2
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mFrameBuffer:[B

    if-eqz v0, :cond_0

    .line 116
    iput-object v1, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mFrameBuffer:[B

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 121
    iput-object v1, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mTexture:Landroid/graphics/SurfaceTexture;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 126
    iget-object v0, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 127
    iput-object v1, p0, Lcom/netease/dwrg/CameraPreviewCapture;->mCamera:Landroid/hardware/Camera;

    .line 129
    :cond_2
    return-void
.end method
