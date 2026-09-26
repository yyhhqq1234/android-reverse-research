.class public abstract Lcom/netease/codescanner/CodeScanner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/codescanner/CodeScanner$a;,
        Lcom/netease/codescanner/CodeScanner$DecodeResult;
    }
.end annotation


# instance fields
.field private mCameraManager:Lcom/netease/codescanner/camera/b;

.field private mCodeScanHandler:Lcom/netease/codescanner/a;

.field private final mConfig:Lcom/netease/codescanner/CodeScanConfig;

.field private mContext:Landroid/content/Context;

.field private mRes:Landroid/content/res/Resources;

.field private mSurfaceCallback:Lcom/netease/codescanner/CodeScanner$a;

.field private mSurfaceCreated:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mViewfinderView:Lcom/netease/codescanner/widget/ViewfinderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/codescanner/widget/ViewfinderView;Lcom/netease/codescanner/CodeScanConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/codescanner/CodeScanner;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceCreated:Z

    new-instance v0, Lcom/netease/codescanner/CodeScanner$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/codescanner/CodeScanner$a;-><init>(Lcom/netease/codescanner/CodeScanner;Lcom/netease/codescanner/CodeScanner$1;)V

    iput-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceCallback:Lcom/netease/codescanner/CodeScanner$a;

    new-instance v0, Lcom/netease/codescanner/camera/b;

    invoke-direct {v0, p1, p4}, Lcom/netease/codescanner/camera/b;-><init>(Landroid/content/Context;Lcom/netease/codescanner/CodeScanConfig;)V

    iput-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    iput-object p2, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mRes:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/netease/codescanner/CodeScanner;->mConfig:Lcom/netease/codescanner/CodeScanConfig;

    iput-object p3, p0, Lcom/netease/codescanner/CodeScanner;->mViewfinderView:Lcom/netease/codescanner/widget/ViewfinderView;

    return-void
.end method

.method static synthetic access$100(Lcom/netease/codescanner/CodeScanner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceCreated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/netease/codescanner/CodeScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netease/codescanner/CodeScanner;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/codescanner/CodeScanner;->initCamera(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Camera already opened"

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0, p1}, Lcom/netease/codescanner/camera/b;->a(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCodeScanHandler:Lcom/netease/codescanner/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/codescanner/a;

    iget-object v1, p0, Lcom/netease/codescanner/CodeScanner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    iget-object v3, p0, Lcom/netease/codescanner/CodeScanner;->mConfig:Lcom/netease/codescanner/CodeScanConfig;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/netease/codescanner/a;-><init>(Landroid/content/Context;Lcom/netease/codescanner/CodeScanner;Lcom/netease/codescanner/camera/b;Lcom/netease/codescanner/CodeScanConfig;)V

    iput-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCodeScanHandler:Lcom/netease/codescanner/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/netease/codescanner/CodeScanner;->onFatalError()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/netease/codescanner/CodeScanner;->onFatalError()V

    goto :goto_0
.end method

.method private setSurfaceHolderPushBuffers(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public getViewfinderView()Lcom/netease/codescanner/widget/ViewfinderView;
    .locals 1

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mViewfinderView:Lcom/netease/codescanner/widget/ViewfinderView;

    return-object v0
.end method

.method protected abstract handleDecodeError(Lcom/netease/codescanner/CodeScanner$DecodeResult;)V
.end method

.method protected abstract handleDecodeSuccess(Lcom/netease/codescanner/CodeScanner$DecodeResult;)V
.end method

.method public onConfigurationChanged(Landroid/view/SurfaceView;Lcom/netease/codescanner/widget/ViewfinderView;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/netease/codescanner/CodeScanner;->mViewfinderView:Lcom/netease/codescanner/widget/ViewfinderView;

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->j()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/codescanner/CodeScanner;->resume()V

    goto :goto_0
.end method

.method public abstract onFatalError()V
.end method

.method protected abstract onInitialized()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/netease/codescanner/f;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCodeScanHandler:Lcom/netease/codescanner/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCodeScanHandler:Lcom/netease/codescanner/a;

    invoke-virtual {v0}, Lcom/netease/codescanner/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCodeScanHandler:Lcom/netease/codescanner/a;

    :cond_0
    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->e()V

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->c()V

    iget-boolean v0, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceCreated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceCallback:Lcom/netease/codescanner/CodeScanner$a;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCodeScanHandler:Lcom/netease/codescanner/a;

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceCreated:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/netease/codescanner/CodeScanner;->initCamera(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Lcom/netease/codescanner/CodeScanner;->onInitialized()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/codescanner/CodeScanner;->mSurfaceCallback:Lcom/netease/codescanner/CodeScanner$a;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/codescanner/CodeScanner;->setSurfaceHolderPushBuffers(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public resumeDecode()V
    .locals 4

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCodeScanHandler:Lcom/netease/codescanner/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCodeScanHandler:Lcom/netease/codescanner/a;

    const/16 v1, 0x2715

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/codescanner/a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-static {}, Lcom/netease/codescanner/f;->a()V

    return-void
.end method

.method public setFindPreviewSizeCallback(Lcom/netease/codescanner/camera/CameraConfigurationManager$CalculatePreviewSizeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->a()Lcom/netease/codescanner/camera/CameraConfigurationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->setFindPreviewSizeCallback(Lcom/netease/codescanner/camera/CameraConfigurationManager$CalculatePreviewSizeCallback;)V

    return-void
.end method

.method public setPreviewMask(IIII)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/netease/codescanner/CodeScanner;->setPreviewMask(IIIIZ)V

    return-void
.end method

.method public setPreviewMask(IIIIZ)V
    .locals 5

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->h()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/codescanner/CodeScanner;->onFatalError()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v1}, Lcom/netease/codescanner/camera/b;->i()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/codescanner/common/Logging;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr v2, p3

    sub-int/2addr v1, p4

    invoke-direct {v0, p1, p2, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v1, v0}, Lcom/netease/codescanner/camera/b;->a(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr v2, p1

    sub-int/2addr v1, p2

    invoke-direct {v0, p3, p4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr v1, p4

    sub-int/2addr v2, p1

    invoke-direct {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr v1, p2

    sub-int/2addr v2, p3

    invoke-direct {v0, p4, p1, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1
.end method

.method public setTorch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/codescanner/CodeScanner;->mCameraManager:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0, p1}, Lcom/netease/codescanner/camera/b;->a(Z)V

    return-void
.end method

.method public setViewfinderView(Lcom/netease/codescanner/widget/ViewfinderView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/codescanner/CodeScanner;->mViewfinderView:Lcom/netease/codescanner/widget/ViewfinderView;

    return-void
.end method
