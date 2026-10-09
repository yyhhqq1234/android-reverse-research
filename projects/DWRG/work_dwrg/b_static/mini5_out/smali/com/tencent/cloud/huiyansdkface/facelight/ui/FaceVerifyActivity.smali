.class public Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;
.super Lcom/tencent/cloud/huiyansdkface/facelight/ui/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static b:I


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

.field private e:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Z

.field private k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

.field private l:Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a:Ljava/util/Map;

    sget-object v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;->a:Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$e;

    const-class v2, Lcom/tencent/cloud/huiyansdkface/facelight/ui/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/a/a;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/String;[I)Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p2, v0

    if-eqz v1, :cond_0

    aget-object p1, p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->e()Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;->getPermissionTip(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c([Ljava/lang/String;[I)V

    return-void
.end method

.method private a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a$a;Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;)V
    .locals 2

    const-string v0, "FaceVerifyActivity"

    const-string v1, "showPermissionConfirmDialog"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->d(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object v0

    iget-object p2, p2, Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;->content:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->c(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->n()Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;->kyc_set_up:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->b(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->n()Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;->kyc_cancel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->a(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_translucent_background:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    iget-object p2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    invoke-virtual {p2, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a$a;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    invoke-virtual {p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->show()V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object p1

    const-string p2, "camera_face_alert_show"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    :cond_1
    return-void
.end method

.method private a([I)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private a([Ljava/lang/String;)[I
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->i()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const-string v0, "FaceVerifyActivity"

    const-string v1, "askPermissionError"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c:Landroid/app/Activity;

    const-string v3, "camera_auth_reject"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->d(Z)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;

    invoke-direct {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setIsSuccess(Z)V

    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setOrderNo(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setSign(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;

    invoke-direct {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;-><init>()V

    const-string v3, "WBFaceErrorDomainNativeProcess"

    invoke-virtual {v2, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDomain(Ljava/lang/String;)V

    const-string v3, "41002"

    invoke-virtual {v2, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setCode(Ljava/lang/String;)V

    const-string v5, "\u6743\u9650\u5f02\u5e38\uff0c\u672a\u83b7\u53d6\u6743\u9650"

    invoke-virtual {v2, v5}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDesc(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setReason(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setError(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;)V

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "errorDesc"

    invoke-virtual {p1, v5, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    iget-object v5, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c:Landroid/app/Activity;

    invoke-virtual {v2, v5, v3, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {p1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;->onFinish(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iput-object v4, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    :cond_1
    const-string p1, "finish activity"

    invoke-static {v0, p1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private b([Ljava/lang/String;[I)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget v3, p2, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    const-string v1, "camera_auth_agree"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->n()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->j()V

    return-void
.end method

.method private c([Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "FaceVerifyActivity"

    const-string v1, "Didn\'t get all permission!"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a([Ljava/lang/String;[I)Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;

    move-result-object p1

    iget-boolean p2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->i:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->j:Z

    if-nez p2, :cond_0

    const-string p2, "first reject,show confirm dialog"

    invoke-static {v0, p2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->i:Z

    new-instance p2, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$d;

    invoke-direct {p2, p0, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$d;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;)V

    invoke-direct {p0, p2, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a$a;Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;)V

    return-void

    :cond_0
    const-string p2, "reject,quit sdk"

    invoke-static {v0, p2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;->noPermissionTip:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d([Ljava/lang/String;[I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a([Ljava/lang/String;[I)Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;

    move-result-object p1

    new-instance p2, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8bbe\u7f6e"

    invoke-virtual {p2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->d(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object p2

    const-string v0, "\u662f\u5426\u53bb\u8bbe\u7f6e\u9875\u9762\u7533\u8bf7\u6743\u9650"

    invoke-virtual {p2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->c(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object p2

    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->b(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object p2

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->a(Ljava/lang/String;)Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->e:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_translucent_background:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object p2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->e:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$b;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;)V

    invoke-virtual {p2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a$a;)V

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->e:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    invoke-virtual {p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;->show()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "quit faceVerify"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FaceVerifyActivity"

    invoke-static {v2, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->h()Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->t()Z

    move-result v0

    const-string v2, ", \u5e94\u7528\u88ab\u52a8\u79bb\u5f00\u524d\u53f0"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->h()Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "willpage_answer_exit_forced"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "willpage_exit_forced"

    :goto_0
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->m()Ljava/util/Properties;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v4}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->s()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \u5e94\u7528\u88ab\u52a8\u79bb\u5f00\u4e0a\u4f20\u9875"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uploadpage_exit_forced"

    invoke-virtual {v0, v2, v5, v4, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "facepage_exit_forced"

    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->d(Z)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;

    invoke-direct {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setIsSuccess(Z)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setOrderNo(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setSign(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;

    invoke-direct {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;-><init>()V

    const-string v3, "WBFaceErrorDomainNativeProcess"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDomain(Ljava/lang/String;)V

    const-string v3, "41000"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setCode(Ljava/lang/String;)V

    const-string v4, "\u7528\u6237\u53d6\u6d88"

    invoke-virtual {v1, v4}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDesc(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7528\u6237\u53d6\u6d88\uff0c\u56de\u5230\u540e\u53f0activity,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setError(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;)V

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "errorDesc"

    invoke-virtual {p1, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    iget-object v4, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c:Landroid/app/Activity;

    invoke-virtual {v1, v4, v3, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {p1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;->onFinish(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;)V

    :cond_4
    return v2
.end method

.method private d()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->e()Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;->getPermissionArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->l:Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbFaceModeProviders;->faceMode()Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbFaceModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbFaceModeInterface;->getPermissionList()Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->l:Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->l:Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",screenRotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceVerifyActivity"

    invoke-static {v3, v2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ori="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",rotation:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, p0, p1, v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method private f()V
    .locals 1

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$a;

    invoke-direct {v0, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$a;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;)V

    invoke-static {v0}, Lcom/tencent/kyc/toolkit/WbcfLogger;->setLoggerListener(Lcom/tencent/kyc/toolkit/IWbcfLoggerListener;)V

    return-void
.end method

.method private g()V
    .locals 2

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_permission_tip_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->f:Landroid/widget/RelativeLayout;

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_permission_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->g:Landroid/widget/TextView;

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_permission_reason:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbFaceModeProviders;->isUseWillSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->n()Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;->kyc_auth_tip_use_cam_mic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->t()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->n()Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;->kyc_auth_tip_use_cam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->u()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private h()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;

    invoke-direct {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setIsSuccess(Z)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setOrderNo(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setSign(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;

    invoke-direct {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;-><init>()V

    const-string v2, "WBFaceErrorDomainNativeProcess"

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDomain(Ljava/lang/String;)V

    const-string v2, "41013"

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setCode(Ljava/lang/String;)V

    const-string v3, "\u521d\u59cb\u5316sdk\u5f02\u5e38"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDesc(Ljava/lang/String;)V

    const-string v3, "mWbCloudFaceVerifySdk not init!"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setError(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;)V

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "errorDesc"

    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;->onFinish(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;)V

    :cond_0
    const-string v0, "FaceVerifyActivity"

    const-string v1, "finish activity"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private i()V
    .locals 4

    const/16 v0, 0x400

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a(I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private j()V
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 7

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, v0

    float-to-double v0, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v5, v2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenDiagonalInInches="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceVerifyActivity"

    invoke-static {v3, v2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double v6, v0, v4

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->Q()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbFaceModeProviders;->isUseWillSdk()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "will portrait"

    invoke-static {v3, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_2
    const-string v0, "faceservice_activity_create"

    invoke-direct {p0, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private l()Z
    .locals 5

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private n()V
    .locals 5

    const-string v0, "FaceVerifyActivity"

    const-string v1, "updateUI"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->f:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/b/a;

    invoke-direct {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/b/a;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rootFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRootFragment:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_fragment_container:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rootFragment already exists:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x400

    invoke-virtual {p0, v1, p1, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public a([Ljava/lang/String;[IZ)Z
    .locals 2

    const-string v0, "FaceVerifyActivity"

    const-string v1, "onShouldTipUser"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->j:Z

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity$c;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;Z[Ljava/lang/String;[I)V

    invoke-direct {p0, p1, p2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a([Ljava/lang/String;[I)Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a$a;Lcom/tencent/cloud/huiyansdkface/facelight/provider/PermissionInfo$PermissionTip;)V

    return v0
.end method

.method public m()V
    .locals 4

    const-string v0, "FaceVerifyActivity"

    const-string v1, "startWithPermissionCheck"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a([Ljava/lang/String;)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a([I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c()V

    goto :goto_0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->a([Ljava/lang/String;[IZ)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d([Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "FaceVerifyActivity"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FaceVerifyActivity"

    const-string v0, "Activity onCreate"

    invoke-static {p1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->h()Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k()V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "black"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$style;->wbcfFaceThemeBlack:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    :cond_1
    const-string v1, "custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget p1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$style;->wbcfFaceThemeCustom:I

    goto :goto_0

    :cond_2
    const-string v1, "set default white"

    invoke-static {p1, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$style;->wbcfFaceThemeWhite:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/a/a;->a(Ljava/lang/String;)V

    sget p1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$layout;->wbcf_face_verify_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object p1

    const-string v0, "faceservice_load_ui"

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    iput-object p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c:Landroid/app/Activity;

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->d(Z)V

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {p1, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->a(Z)V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->f()V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->g()V

    invoke-virtual {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->m()V

    return-void

    :cond_3
    :goto_2
    const-string v0, "mWbCloudFaceVerifySdk null or mWbCloudFaceVerifySdk not init"

    invoke-static {p1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->h()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b:I

    const-string v1, "FaceVerifyActivity"

    if-eqz v0, :cond_0

    const-string v0, "NOT Same Activity onDestroy "

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Activity onDestroy"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d(Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/kyc/toolkit/WbcfLogger;->setLoggerListener(Lcom/tencent/kyc/toolkit/IWbcfLoggerListener;)V

    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->E()V

    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    :cond_1
    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c:Landroid/app/Activity;

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c:Landroid/app/Activity;

    :cond_2
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "close bugly report"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/a/c/k/c;->a()Lcom/tencent/cloud/huiyansdkface/a/c/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/cloud/huiyansdkface/a/c/k/b;->a()V

    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "FaceVerifyActivity"

    const-string v0, "onNewIntent()"

    invoke-static {p1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FaceVerifyActivity"

    const-string v1, "Activity onPause"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/16 v0, 0x400

    if-ne p1, v0, :cond_5

    array-length v0, p2

    if-lez v0, :cond_5

    array-length v0, p3

    if-lez v0, :cond_5

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p3, v2

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c()V

    goto :goto_3

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b([Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->c([Ljava/lang/String;[I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d([Ljava/lang/String;[I)V

    :cond_5
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "FaceVerifyActivity"

    const-string v1, "Activity onResume"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity onStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceVerifyActivity"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity onStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceVerifyActivity"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->b:I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "not same activity"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    const-string v1, "facepage_not_same_activity"

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->k:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "inUpload stop,no finish verify"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/a;

    :cond_2
    const-string v0, "finish activity"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
