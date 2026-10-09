.class public Lcom/netease/loginapi/qrcode/URSCaptureActivity;
.super Lcom/netease/loginapi/qrcode/URSBaseQRActivity;
.source "Proguard"

# interfaces
.implements Lcom/netease/loginapi/qrcode/CaptureViewDelegate;
.implements Lcom/netease/loginapi/expose/URSAPICallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;
    }
.end annotation


# static fields
.field public static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x233

.field public static final PRODUCT_FLAG:Ljava/lang/String; = "product_flag"

.field public static final TAG:Ljava/lang/Class;


# instance fields
.field public captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

.field public lastResult:Lcom/google/zxing/Result;

.field public listener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

.field public mCaptureConfig:Lcom/netease/loginapi/qrcode/QRAuthConfig;

.field public mErrorMessageMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHasPermission:Z

.field public mStatusViewManager:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

.field public mTokenBundles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/loginapi/qrcode/TokenBundle;",
            ">;"
        }
    .end annotation
.end field

.field public product:Ljava/lang/String;

.field public surfaceView:Landroid/view/SurfaceView;

.field public viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    sput-object v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$1;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->listener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mHasPermission:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/Result;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->doVerify(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mStatusViewManager:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Lcom/netease/loginapi/qrcode/ViewfinderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Lcom/netease/loginapi/qrcode/CaptureInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mErrorMessageMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mTokenBundles:Ljava/util/ArrayList;

    return-object p0
.end method

.method private doVerify(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->TAG:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Start QR Auth:%s"

    invoke-static {v0, v2, v1}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->product:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/netease/loginapi/URSdk;->customize(Ljava/lang/String;Lcom/netease/loginapi/expose/URSAPICallback;)Lcom/netease/loginapi/expose/URSAPIBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v2, v1}, Lcom/netease/loginapi/expose/URSAPIBuilder;->setMinInterval(ILjava/util/concurrent/TimeUnit;)Lcom/netease/loginapi/expose/URSAPIBuilder;

    move-result-object v0

    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$2;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$2;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/loginapi/expose/URSAPIBuilder;->setProgress(Lcom/netease/loginapi/expose/Progress;)Lcom/netease/loginapi/expose/URSAPIBuilder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/netease/loginapi/expose/URSAPIBuilder;->setTag(Ljava/lang/Object;)Lcom/netease/loginapi/expose/URSAPIBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/loginapi/expose/URSAPIBuilder;->build()Lcom/netease/loginapi/INELoginAPI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/loginapi/INELoginAPI;->qrVerify(Ljava/lang/String;)I

    return-void
.end method

.method public static getAnimation(Z)Landroid/view/animation/Animation;
    .locals 12

    .line 1
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p0, :cond_0

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p0, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    :goto_1
    if-eqz p0, :cond_2

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_2
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_2
    if-eqz p0, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/high16 v7, 0x3f000000    # 0.5f

    .line 9
    :goto_3
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const v3, 0x3e99999a    # 0.3f

    if-eqz p0, :cond_4

    const v4, 0x3e99999a    # 0.3f

    goto :goto_4

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_4
    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    const v1, 0x3e99999a    # 0.3f

    .line 13
    :goto_5
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x12c

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    if-eqz p0, :cond_6

    .line 19
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f99999a    # 1.2f

    invoke-direct {p0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_6
    return-object v0
.end method

.method private initData()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    sget v1, Lcom/netease/loginapi/R$array;->qr_verfiy_errors:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/netease/loginapi/R$array;->qr_common_errors:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {p0, v0}, Lcom/netease/loginapi/util/Commons;->errorMessageMap(Landroid/content/Context;[I)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mErrorMessageMap:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/netease/loginapi/qrcode/QRAuthConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/loginapi/qrcode/QRAuthConfig;

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mCaptureConfig:Lcom/netease/loginapi/qrcode/QRAuthConfig;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/netease/loginapi/qrcode/QRAuthConfig;

    invoke-direct {v0}, Lcom/netease/loginapi/qrcode/QRAuthConfig;-><init>()V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mCaptureConfig:Lcom/netease/loginapi/qrcode/QRAuthConfig;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mCaptureConfig:Lcom/netease/loginapi/qrcode/QRAuthConfig;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/QRAuthConfig;->getTokenBundles()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mTokenBundles:Ljava/util/ArrayList;

    .line 7
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mCaptureConfig:Lcom/netease/loginapi/qrcode/QRAuthConfig;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/QRAuthConfig;->getTokenSource()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->product:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/loginapi/f;->a(Ljava/lang/String;)Lcom/netease/loginapi/f;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/netease/loginapi/f;->e:Lcom/netease/loginapi/NEConfig;

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 12
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mTokenBundles:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/netease/loginapi/util/Commons;->isCollectionEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/netease/loginapi/NEConfig;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mTokenBundles:Ljava/util/ArrayList;

    .line 15
    new-instance v2, Lcom/netease/loginapi/qrcode/TokenBundle;

    invoke-virtual {v1}, Lcom/netease/loginapi/NEConfig;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/netease/loginapi/NEConfig;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/netease/loginapi/qrcode/TokenBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->removeInvalidTokens()V

    return-void
.end method

.method private removeInvalidTokens()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mTokenBundles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mTokenBundles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/loginapi/qrcode/TokenBundle;

    .line 7
    invoke-virtual {v2}, Lcom/netease/loginapi/qrcode/TokenBundle;->verify()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mTokenBundles:Ljava/util/ArrayList;

    return-void
.end method

.method private resetStatusView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mStatusViewManager:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onStartCapture()V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    return-void
.end method

.method private showSuccessDialog(Lcom/google/zxing/Result;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$5;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$5;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    const-string v2, "Ok"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$4;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Lcom/google/zxing/Result;)V

    const-string p1, "Auth"

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/netease/loginapi/qrcode/URSCaptureActivity$3;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$3;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getAccountSelectActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/netease/loginapi/qrcode/URSAccountSelectActivity;

    return-object v0
.end method

.method public getAuthActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netease/loginapi/qrcode/URSQRAuthActivity;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;

    return-object v0
.end method

.method public final getCaptureConfig()Lcom/netease/loginapi/qrcode/QRAuthConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mCaptureConfig:Lcom/netease/loginapi/qrcode/QRAuthConfig;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public final getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/loginapi/qrcode/ViewfinderResultPointCallback;

    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;

    invoke-direct {v0, v1}, Lcom/netease/loginapi/qrcode/ViewfinderResultPointCallback;-><init>(Lcom/netease/loginapi/qrcode/ViewfinderView;)V

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/netease/loginapi/R$string;->text_scan:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitlebarColor()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->getTitlebarColor()I

    move-result v0

    const v1, -0x44000001

    and-int/2addr v0, v1

    return v0
.end method

.method public final hasCameraPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mHasPermission:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "product_flag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->product:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->initData()V

    .line 8
    sget p1, Lcom/netease/loginapi/R$layout;->activity_capture:I

    invoke-virtual {p0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->setContentView(I)V

    .line 9
    sget p1, Lcom/netease/loginapi/R$id;->preview_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 10
    new-instance p1, Lcom/netease/loginapi/qrcode/CaptureInterface;

    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->listener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

    invoke-direct {p1, p0, v0}, Lcom/netease/loginapi/qrcode/CaptureInterface;-><init>(Lcom/netease/loginapi/qrcode/CaptureViewDelegate;Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;)V

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    .line 11
    new-instance p1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->product:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mStatusViewManager:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    .line 12
    sget p1, Lcom/netease/loginapi/R$id;->viewfinder_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netease/loginapi/qrcode/ViewfinderView;

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;

    .line 13
    invoke-static {p0}, Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/loginapi/qrcode/ViewfinderView;->setNetworkAvailable(Z)V

    return-void
.end method

.method public synthetic onError(Lcom/netease/loginapi/expose/URSAPI;IIILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/netease/loginapi/expose/URSAPICallback$-CC;->$default$onError(Lcom/netease/loginapi/expose/URSAPICallback;Lcom/netease/loginapi/expose/URSAPI;IIILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/netease/loginapi/expose/URSAPI;IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->TAG:Ljava/lang/Class;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/4 v0, 0x0

    aput-object p6, p4, v0

    const/4 p6, 0x1

    aput-object p5, p4, p6

    const-string p6, "QR Auth Failed:[%s]%s"

    invoke-static {p1, p6, p4}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2, p3, p5}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->interruptError(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mStatusViewManager:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-virtual {p1, p2, p3}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onError(II)V

    :cond_0
    return-void
.end method

.method public final onNetworkStateChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->onNetworkStateChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/netease/loginapi/qrcode/ViewfinderView;->setNetworkAvailable(Z)V

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {v0, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->onNetworkStateChanged(Z)V

    .line 4
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mStatusViewManager:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    invoke-virtual {v0, p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onNetworkStateChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    const-class v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity;

    const-string v2, "onPause"

    invoke-static {v1, v2, v0}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->onPause()V

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onQRRecognized()V
    .locals 0

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x233

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 3
    aget p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mHasPermission:Z

    .line 5
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->onResume()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mTokenBundles:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/netease/loginapi/util/Commons;->isCollectionEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->showNotLoginDialogAndExit()V

    return-void

    .line 7
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    if-lt v0, v1, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->showPermissionDeniedDialogAndExit()V

    goto :goto_0

    .line 12
    :cond_1
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x233

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 15
    :goto_0
    iput-boolean v2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mHasPermission:Z

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {p0, v3}, Lcom/netease/loginapi/qrcode/widget/Androids;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u8bf7\u914d\u7f6e\u76f8\u673a\u6743\u9650"

    .line 18
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 19
    iput-boolean v2, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mHasPermission:Z

    return-void

    .line 23
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->onResume()V

    .line 24
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->viewfinderView:Lcom/netease/loginapi/qrcode/ViewfinderView;

    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {v1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->getCameraManager()Lcom/netease/loginapi/qrcode/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/loginapi/qrcode/ViewfinderView;->setCameraManager(Lcom/netease/loginapi/qrcode/camera/CameraManager;)V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    return-void
.end method

.method public final onSuccess(Lcom/netease/loginapi/expose/URSAPI;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->TAG:Ljava/lang/Class;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "QR Auth Success:%s"

    invoke-static {p1, p3, p2}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->mStatusViewManager:Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$StatusViewManager;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/netease/loginapi/expose/URSAPI;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/netease/loginapi/expose/URSAPICallback$-CC;->$default$onSuccess(Lcom/netease/loginapi/expose/URSAPICallback;Lcom/netease/loginapi/expose/URSAPI;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final restartPreviewAfterDelay(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->resetStatusView()V

    return-void
.end method

.method public showFrameworkBugMessageAndExit()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/netease/loginapi/R$string;->msg_camera_framework_bug:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    sget v1, Lcom/netease/loginapi/R$string;->button_ok:I

    new-instance v2, Lcom/netease/loginapi/qrcode/URSCaptureActivity$10;

    invoke-direct {v2, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$10;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$11;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$11;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 18
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showNotLoginDialogAndExit()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/netease/loginapi/R$string;->msg_no_token:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    sget v1, Lcom/netease/loginapi/R$string;->button_ok:I

    new-instance v2, Lcom/netease/loginapi/qrcode/URSCaptureActivity$6;

    invoke-direct {v2, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$6;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$7;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$7;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 18
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showPermissionDeniedDialogAndExit()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/netease/loginapi/R$string;->msg_camera_permission_denied:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    sget v1, Lcom/netease/loginapi/R$string;->button_ok:I

    new-instance v2, Lcom/netease/loginapi/qrcode/URSCaptureActivity$8;

    invoke-direct {v2, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$8;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    new-instance v1, Lcom/netease/loginapi/qrcode/URSCaptureActivity$9;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity$9;-><init>(Lcom/netease/loginapi/qrcode/URSCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 18
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
