.class public final Lcom/tencent/apollo/qr/zxing/CaptureActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beepManager:Lcom/tencent/apollo/qr/zxing/BeepManager;

.field private cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

.field private handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

.field private inactivityTimer:Lcom/tencent/apollo/qr/zxing/InactivityTimer;

.field private isHasSurface:Z

.field private mBackImageView:Landroid/widget/ImageView;

.field private mBackImg:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCropRect:Landroid/graphics/Rect;

.field private mScanImageView:Landroid/widget/ImageView;

.field private mScanTextView1:Landroid/widget/TextView;

.field private mScanTextView2:Landroid/widget/TextView;

.field private mTag:I

.field private scanContainer:Landroid/widget/RelativeLayout;

.field private scanCropView:Landroid/widget/RelativeLayout;

.field private scanLine:Landroid/widget/ImageView;

.field private scanPreview:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->isHasSurface:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mTag:I

    return-void
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v2, "apolloqr_scan_label"

    invoke-static {v1, v2}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Camera error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/tencent/apollo/qr/zxing/CaptureActivity$2;

    invoke-direct {v2, p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity$2;-><init>(Lcom/tencent/apollo/qr/zxing/CaptureActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/tencent/apollo/qr/zxing/CaptureActivity$3;

    invoke-direct {v1, p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity$3;-><init>(Lcom/tencent/apollo/qr/zxing/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private getStatusBarHeight()I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    const/16 v2, 0x200

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;-><init>(Lcom/tencent/apollo/qr/zxing/CaptureActivity;Lcom/tencent/apollo/qr/zxing/camera/CameraManager;I)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    :cond_2
    invoke-direct {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->initCrop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected error initializing camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private initCrop()V
    .locals 8

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/apollo/qr/utils/CameraUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-direct {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    mul-int/2addr v3, v1

    div-int/2addr v3, v6

    mul-int/2addr v2, v0

    div-int/2addr v2, v7

    mul-int/2addr v1, v4

    div-int/2addr v1, v6

    mul-int/2addr v0, v5

    div-int/2addr v0, v7

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v0, v2

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getCameraManager()Lcom/tencent/apollo/qr/zxing/camera/CameraManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->inactivityTimer:Lcom/tencent/apollo/qr/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/InactivityTimer;->onActivity()V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->beepManager:Lcom/tencent/apollo/qr/zxing/BeepManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/BeepManager;->playBeepSoundAndVibrate()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "tag"

    iget v2, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mTag:I

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "height"

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "result"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "tag"

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mTag:I

    invoke-virtual {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "com_tencent_apolloqr_capture"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "capture_preview"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "capture_container"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "capture_crop_view"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanCropView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "capture_scan_line"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanLine:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/apollo/qr/zxing/InactivityTimer;

    invoke-direct {v0, p0}, Lcom/tencent/apollo/qr/zxing/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->inactivityTimer:Lcom/tencent/apollo/qr/zxing/InactivityTimer;

    new-instance v0, Lcom/tencent/apollo/qr/zxing/BeepManager;

    invoke-direct {v0, p0}, Lcom/tencent/apollo/qr/zxing/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->beepManager:Lcom/tencent/apollo/qr/zxing/BeepManager;

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "scan_image"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/utils/GlobalManager;->getImageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "img_back"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mBackImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/utils/GlobalManager;->getBackImageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "scan_text1"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanTextView1:Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/utils/GlobalManager;->getScanText1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanTextView1:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/utils/GlobalManager;->getTextColor1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanTextView1:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "scan_text2"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanTextView2:Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/utils/GlobalManager;->getScanText2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanTextView2:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/utils/GlobalManager;->getTextColor2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mScanTextView2:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v3, "img_back"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mBackImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mBackImg:Landroid/widget/ImageView;

    new-instance v3, Lcom/tencent/apollo/qr/zxing/CaptureActivity$1;

    invoke-direct {v3, p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity$1;-><init>(Lcom/tencent/apollo/qr/zxing/CaptureActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, 0x3f666666    # 0.9f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->inactivityTimer:Lcom/tencent/apollo/qr/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/InactivityTimer;->shutdown()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    :cond_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->inactivityTimer:Lcom/tencent/apollo/qr/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/InactivityTimer;->onPause()V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->beepManager:Lcom/tencent/apollo/qr/zxing/BeepManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/BeepManager;->close()V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->closeDriver()V

    iget-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->isHasSurface:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    iget-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->isHasSurface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->inactivityTimer:Lcom/tencent/apollo/qr/zxing/InactivityTimer;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/InactivityTimer;->onResume()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->scanPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->mContext:Landroid/content/Context;

    const-string v1, "apolloqr_restart_preview"

    invoke-static {v0, v1}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handler:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->isHasSurface:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->isHasSurface:Z

    invoke-direct {p0, p1}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->isHasSurface:Z

    return-void
.end method
