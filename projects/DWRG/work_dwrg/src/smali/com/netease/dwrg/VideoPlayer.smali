.class public Lcom/netease/dwrg/VideoPlayer;
.super Landroid/app/Activity;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final KITKAT_UI_OPTION:I = 0xf06

.field private static final OTHER_UI_OPTION:I = 0x505


# instance fields
.field private mInAsset:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mVideoControlMode:I

.field private mVideoHeight:I

.field private mVideoPath:Ljava/lang/String;

.field private mVideoScaleMode:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 38
    iput-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/dwrg/VideoPlayer;->mInAsset:Z

    return-void
.end method

.method private Play(Ljava/lang/String;)Z
    .locals 10
    .param p1, "inVideoPath"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 243
    iget-boolean v0, p0, Lcom/netease/dwrg/VideoPlayer;->mInAsset:Z

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 248
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 249
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 250
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 252
    :catch_0
    move-exception v8

    .line 255
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 256
    const-string v0, "NeoX:MediaPlayer "

    const-string v1, "play video in asset error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    .end local v8    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 263
    .local v9, "fileStream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 264
    .local v7, "descriptor":Ljava/io/FileDescriptor;
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 265
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 266
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 267
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 268
    .end local v7    # "descriptor":Ljava/io/FileDescriptor;
    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    .line 270
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    const-string v0, "NeoX:MediaPlayer "

    const-string v1, "play video error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFitToFillAspectRatio(Landroid/media/MediaPlayer;II)V
    .locals 11
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I

    .prologue
    .line 281
    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v8

    iput v8, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoWidth:I

    .line 284
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v8

    iput v8, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoHeight:I

    .line 286
    iget v8, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoWidth:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoHeight:I

    if-nez v8, :cond_2

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->stopVideo()V

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 293
    .local v2, "p":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 294
    .local v0, "display":Landroid/view/Display;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_3

    .line 296
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 306
    :goto_1
    iget v8, v2, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 307
    .local v5, "screenWidth":Ljava/lang/Integer;
    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 310
    .local v4, "screenHeight":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 312
    .local v7, "videoParams":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoHeight:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 313
    .local v6, "videoAspec":F
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 315
    .local v3, "screenAspec":F
    iget v8, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoScaleMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 318
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_5

    .line 321
    cmpl-float v8, v3, v6

    if-lez v8, :cond_4

    .line 323
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    iget v8, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoWidth:I

    int-to-float v8, v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    :goto_2
    const-string v8, "NeoX:MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screen width : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v8, "NeoX:MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "video play width : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v8, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v7}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 300
    .end local v3    # "screenAspec":F
    .end local v4    # "screenHeight":Ljava/lang/Integer;
    .end local v5    # "screenWidth":Ljava/lang/Integer;
    .end local v6    # "videoAspec":F
    .end local v7    # "videoParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 301
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 302
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 303
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 328
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v3    # "screenAspec":F
    .restart local v4    # "screenHeight":Ljava/lang/Integer;
    .restart local v5    # "screenWidth":Ljava/lang/Integer;
    .restart local v6    # "videoAspec":F
    .restart local v7    # "videoParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 329
    iget v8, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoHeight:I

    int-to-float v8, v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 335
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 336
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 342
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 343
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoControlMode:I

    if-eqz v0, :cond_0

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 198
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->stopVideo()V

    .line 236
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 64
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "videoview"

    const-string v4, "layout"

    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "res_id":I
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/VideoPlayer;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    .local v1, "videoIntent":Landroid/content/Intent;
    const-string v2, "videoPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoPath:Ljava/lang/String;

    .line 69
    const-string v2, "videoScaleMode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoScaleMode:I

    .line 70
    const-string v2, "videoControlMode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoControlMode:I

    .line 71
    const-string v2, "inAsset"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/dwrg/VideoPlayer;->mInAsset:Z

    .line 72
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "surfaceView1"

    const-string v4, "id"

    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 75
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 77
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v7}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 78
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->requestFocus()Z

    .line 79
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v7}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 81
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 82
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 84
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/netease/dwrg/VideoPlayer;->setRequestedOrientation(I)V

    .line 86
    iget v2, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoControlMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 88
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v3, Lcom/netease/dwrg/VideoPlayer$1;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/VideoPlayer$1;-><init>(Lcom/netease/dwrg/VideoPlayer;)V

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 107
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    .line 109
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v3, 0xf06

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v3, 0x505

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 222
    iget v0, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "NeoX:MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 226
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v0, "NeoX:MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video is invaild , width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 142
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->stopVideo()V

    .line 143
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/dwrg/VideoPlayer;->setFitToFillAspectRatio(Landroid/media/MediaPlayer;II)V

    .line 189
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 122
    if-eqz p1, :cond_0

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x505

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 205
    iget-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 209
    :cond_0
    const-string v0, "NeoX:MediaPlayer "

    const-string v1, "play video stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnStopVideoCallBack()V

    .line 214
    invoke-virtual {p0}, Lcom/netease/dwrg/VideoPlayer;->finish()V

    .line 215
    invoke-virtual {p0, v2, v2}, Lcom/netease/dwrg/VideoPlayer;->overridePendingTransition(II)V

    .line 216
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 156
    const-string v0, "NeoX:MediaPlayer"

    const-string v1, "surface changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 161
    const-string v1, "NeoX:MediaPlayer"

    const-string v2, "surface creaed start!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 164
    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/netease/dwrg/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 165
    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 166
    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 167
    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 168
    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    const-string v1, "NeoX:MediaPlayer"

    const-string v2, "surface creaed end!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/netease/dwrg/VideoPlayer;->mVideoPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/netease/dwrg/VideoPlayer;->Play(Ljava/lang/String;)Z

    .line 177
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string v1, "NeoX:MediaPlayer"

    const-string v2, "surface create error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 182
    const-string v0, "NeoX:MediaPlayer"

    const-string v1, "surface destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method
