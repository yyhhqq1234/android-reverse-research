.class public Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;
.super Lcom/tencent/cloud/huiyansdkface/facelight/ui/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$k;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:J

.field private E:Landroid/view/View$OnClickListener;

.field private b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

.field private c:Lcom/tencent/cloud/huiyansdkface/a/c/j/d;

.field private d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:I

.field private x:Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

.field private y:Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/a/a;-><init>()V

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/a/c/j/d;

    const v1, 0x1d4c0

    invoke-direct {v0, v1}, Lcom/tencent/cloud/huiyansdkface/a/c/j/d;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->c:Lcom/tencent/cloud/huiyansdkface/a/c/j/d;

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$b;

    invoke-direct {v0, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$b;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->E:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;)Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->y:Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->C:Z

    return p0
.end method

.method static synthetic a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "FaceGuideActivity"

    const-string v1, "authLoginCheckFailed"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authLoginCheckFailed\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "authpage_exit_forced"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;

    invoke-direct {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setIsSuccess(Z)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setOrderNo(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setSign(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;

    invoke-direct {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;-><init>()V

    const-string v2, "WBFaceErrorDomainNativeProcess"

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDomain(Ljava/lang/String;)V

    const-string v3, "41015"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setCode(Ljava/lang/String;)V

    const-string v3, "\u767b\u5f55\u6001\u5931\u6548\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDesc(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setError(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;)V

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "errorDesc"

    invoke-virtual {p1, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1, p0, v2, p1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {p1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;->onFinish(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->C:Z

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->y:Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->y:Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->g:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private d()V
    .locals 7

    const-string v0, "FaceGuideActivity"

    const-string v1, "checkLoginStatus"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/WbCloudNetSecurityManger;->generateKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "2"

    goto :goto_0

    :cond_0
    const-string v2, "1"

    :goto_0
    new-instance v3, Lcom/tencent/cloud/huiyansdkface/facelight/net/model/request/QueryRequestParam;

    invoke-direct {v3}, Lcom/tencent/cloud/huiyansdkface/facelight/net/model/request/QueryRequestParam;-><init>()V

    iput-object v2, v3, Lcom/tencent/cloud/huiyansdkface/facelight/net/model/request/QueryRequestParam;->faceOrLive:Ljava/lang/String;

    new-instance v2, Lcom/tencent/cloud/huiyansdkface/wejson/WeJson;

    invoke-direct {v2}, Lcom/tencent/cloud/huiyansdkface/wejson/WeJson;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/cloud/huiyansdkface/wejson/WeJson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/cloud/huiyansdkface/a/c/m/c;

    invoke-direct {v3}, Lcom/tencent/cloud/huiyansdkface/a/c/m/c;-><init>()V

    invoke-virtual {v3, v1, v2}, Lcom/tencent/cloud/huiyansdkface/a/c/m/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/kyc/toolkit/WrapperInfo;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/kyc/toolkit/WrapperInfo;->getWrapperData()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/kyc/toolkit/WrapperInfo;->getWrapperKey()[B

    move-result-object v2

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "wrapperKey or wrapperData is null!"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v2, "encry queryRequest failed!"

    invoke-static {v0, v2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v5, "isGm"

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v5

    const-string v6, "faceservice_data_serialize_encry_fail"

    invoke-virtual {v5, v4, v6, v2, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    move-object v0, v4

    :goto_2
    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->p()Lcom/tencent/cloud/huiyansdkface/wehttp2/WeOkHttp;

    move-result-object v2

    new-instance v5, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$i;

    invoke-direct {v5, p0, v3, v1, v4}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$i;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;Lcom/tencent/cloud/huiyansdkface/a/c/m/c;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v2, v1, v4, v0, v5}, Lcom/tencent/cloud/huiyansdkface/facelight/net/QueryFaceResultRequest;->requestExec(Lcom/tencent/cloud/huiyansdkface/wehttp2/WeOkHttp;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/cloud/huiyansdkface/wehttp2/WeReq$Callback;)V

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "FaceGuideActivity"

    const-string v1, "initListeners"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$c;

    invoke-direct {v1, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$c;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$d;

    invoke-direct {v1, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$d;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$e;

    invoke-direct {v1, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$e;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$f;

    invoke-direct {v1, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$f;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$g;

    invoke-direct {v1, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$g;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$h;

    invoke-direct {v1, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$h;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->c()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private f()V
    .locals 11

    const-string v0, "FaceGuideActivity"

    const-string v1, "initViews"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;

    invoke-direct {v1, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;

    new-instance v2, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$k;

    iget-object v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-direct {v2, v3, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$k;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/process/d;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;->a(Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c$b;)V

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_auth_loading:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->g:Landroid/widget/ProgressBar;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_img:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->n:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbFaceModeProviders;->faceMode()Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbFaceModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbFaceModeInterface;->getProtocolImgSrc()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_b:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->o:Landroid/widget/RelativeLayout;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_text:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->s:Landroid/widget/TextView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_text1_ll:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->p:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_text2_ll:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->q:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_text3_ll:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->r:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_text1:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->t:Landroid/widget/TextView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_text2:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->u:Landroid/widget/TextView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_title_text3:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->v:Landroid/widget/TextView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_cb_b:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_confirm_b:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->o:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v3}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v3}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->p()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v4}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x8

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_popup_rl:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->h:Landroid/widget/RelativeLayout;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_pop_tv:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v3}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_pop_iv:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->j:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_back:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->z:Ljava/lang/String;

    const-string v3, "white"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "custom"

    if-eqz v1, :cond_3

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$mipmap;->wbcf_back:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_guide_black_bg:I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v1, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object v4, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$mipmap;->wbcf_back:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_custom_auth_back_tint:I

    goto :goto_3

    :cond_4
    :goto_4
    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocol_left_button:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->e:Landroid/widget/LinearLayout;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$id;->wbcf_protocal_btn:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v4}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->n()Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/cloud/huiyansdkface/facelight/provider/WbUiTips;->kyc_autho_rization_confirm_agree:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v4}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->v()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v5}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->s()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x21

    if-gt v5, v4, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x22

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "text="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",start="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",end="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",flag="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_sdk_base_blue:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->h()Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v9

    const-string v10, "black"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_sdk_light_blue:I

    :goto_5
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->h()Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_custom_auth_name_text:I

    goto :goto_5

    :cond_7
    :goto_6
    new-instance v3, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/d;

    iget-object v9, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->E:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v9, v7}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/d;-><init>(Landroid/view/View$OnClickListener;I)V

    invoke-virtual {v1, v3, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->m:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\u6807\u51c6\u6a21\u5f0f"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->C:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k()V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->i()V

    goto :goto_8

    :cond_9
    const-string v1, "\u7b80\u5355\u6a21\u5f0f"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_7
    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->h()V

    :goto_8
    return-void
.end method

.method static synthetic g(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)Lcom/tencent/cloud/huiyansdkface/facelight/process/d;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    return-object p0
.end method

.method private g()V
    .locals 9

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

    const-string v3, "layout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceGuideActivity"

    invoke-static {v3, v2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v4, "authpage_enter"

    const/4 v5, 0x1

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_0

    const-string v0, "will phone vertical"

    invoke-static {v3, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone vertical"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->Q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->A:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActivityOrientation:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->A:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",screenRotation:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pad ori="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->A:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",rotation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->z:Ljava/lang/String;

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_custom_auth_btn_text_checked:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$drawable;->wbcf_custom_auth_btn_checked:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$drawable;->wbcf_protocol_btn_checked:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic h(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->h()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->h:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->z:Ljava/lang/String;

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$color;->wbcf_custom_auth_btn_text_unchecked:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$drawable;->wbcf_custom_auth_btn_unchecked:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k:Landroid/widget/TextView;

    sget v1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$drawable;->wbcf_protocol_btn_unchecked:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private j()V
    .locals 3

    const-string v0, "FaceGuideActivity"

    const-string v1, "setThemeAndTitleBar"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->z:Ljava/lang/String;

    const-string v2, "black"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$style;->wbcfFaceProtocolThemeBlack:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->z:Ljava/lang/String;

    const-string v2, "custom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$style;->wbcfFaceProtocolThemeCustom:I

    goto :goto_0

    :cond_1
    const-string v1, "set default WHITE"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "white"

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->z:Ljava/lang/String;

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$style;->wbcfFaceProtocolThemeWhite:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->i()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->k()V

    return-void
.end method

.method static synthetic l(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->l:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->M()Z

    move-result v0

    const-string v1, "FaceGuideActivity"

    if-nez v0, :cond_0

    const-string v0, "uploadAuthInfo"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->m()V

    :cond_0
    const-string v0, "start go to FaceVerify from AuthPage!"

    invoke-static {v1, v0}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->B:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceVerifyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic m(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)I
    .locals 0

    iget p0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->w:I

    return p0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->p()Lcom/tencent/cloud/huiyansdkface/wehttp2/WeOkHttp;

    move-result-object v0

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$j;

    invoke-direct {v1, p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$j;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)V

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/net/AuthUploadRequest;->requestExec(Lcom/tencent/cloud/huiyansdkface/wehttp2/WeOkHttp;Lcom/tencent/cloud/huiyansdkface/wehttp2/WeReq$Callback;)V

    return-void
.end method

.method static synthetic n(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)I
    .locals 2

    iget v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->w:I

    return v0
.end method

.method static synthetic o(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->D:J

    return-wide v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    const-string v0, "FaceGuideActivity"

    const-string v1, "\u8fd4\u56de\u952e\uff0c\u65e0\u4e0a\u4e00\u9875\u53ef\u56de\uff0c\u9000\u51fa\u6388\u6743\u9875\u9762"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "authpage_exit_self"

    const-string v3, "\u8fd4\u56de\u952e"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->d(Z)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;

    invoke-direct {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setIsSuccess(Z)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setOrderNo(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setSign(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;

    invoke-direct {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;-><init>()V

    const-string v2, "WBFaceErrorDomainNativeProcess"

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDomain(Ljava/lang/String;)V

    const-string v2, "41000"

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setCode(Ljava/lang/String;)V

    const-string v3, "\u7528\u6237\u53d6\u6d88"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDesc(Ljava/lang/String;)V

    const-string v3, "\u8fd4\u56de\u952e\uff1a\u7528\u6237\u6388\u6743\u4e2d\u53d6\u6d88"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setError(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;)V

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "errorDesc"

    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;->onFinish(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "FaceGuideActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->l()Lcom/tencent/cloud/huiyansdkface/a/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/a/a/b/a;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->A:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new ori="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";old ori="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";screenRotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->A:I

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pad ori="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "authpage_config_change"

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FaceGuideActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->h()Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->d(Z)V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->g()V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->j()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/tencent/cloud/huiyansdkface/facelivesdk/R$layout;->wbcf_face_guide_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isChecked"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->C:Z

    :cond_0
    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->f()V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->e()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "FaceGuideActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "FaceGuideActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->c:Lcom/tencent/cloud/huiyansdkface/a/c/j/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/c/j/d;->b()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "FaceGuideActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->d:Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/widget/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->c:Lcom/tencent/cloud/huiyansdkface/a/c/j/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/a/c/j/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onStart()V
    .locals 7

    const-string v0, "FaceGuideActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->a:I

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->h()Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->b()J

    move-result-wide v5

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$a;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, v5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity$a;-><init>(Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;JJ)V

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;->start()Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->x:Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

    return-void
.end method

.method public onStop()V
    .locals 5

    const-string v0, "FaceGuideActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->c()V

    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->x:Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;->cancel()V

    iput-object v3, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->x:Lcom/tencent/cloud/huiyansdkface/facelight/common/CloudFaceCountDownTimer;

    :cond_0
    iget-object v2, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->f()Lcom/tencent/cloud/huiyansdkface/a/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/cloud/huiyansdkface/a/a/a/b;->s0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "onStop stay"

    invoke-static {v0, v2}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "authpage_background"

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->D:J

    return-void

    :cond_1
    sget v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->a:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->a:I

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->B:Z

    if-eqz v1, :cond_2

    const-string v1, "gotoDetail,dont exit"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "same activity "

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const-string v1, "onStop quit authPage"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->getInstance()Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "authpage_exit_forced"

    const-string v4, "onStop, \u5e94\u7528\u88ab\u52a8\u79bb\u5f00\u524d\u53f0"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/common/KycWaSDK;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v0, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;

    invoke-direct {v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setIsSuccess(Z)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setOrderNo(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setSign(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;

    invoke-direct {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;-><init>()V

    const-string v2, "WBFaceErrorDomainNativeProcess"

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDomain(Ljava/lang/String;)V

    const-string v2, "41000"

    invoke-virtual {v1, v2}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setCode(Ljava/lang/String;)V

    const-string v3, "\u7528\u6237\u53d6\u6d88"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setDesc(Ljava/lang/String;)V

    const-string v3, "\u7528\u6237\u53d6\u6d88\uff0c\u6388\u6743\u4e2d\u56de\u5230\u540e\u53f0activity onStop"

    invoke-virtual {v1, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;->setError(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;)V

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "errorDesc"

    invoke-virtual {v3, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    iget-object v1, p0, Lcom/tencent/cloud/huiyansdkface/facelight/ui/FaceGuideActivity;->b:Lcom/tencent/cloud/huiyansdkface/facelight/process/d;

    invoke-virtual {v1}, Lcom/tencent/cloud/huiyansdkface/facelight/process/d;->o()Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/cloud/huiyansdkface/facelight/api/listeners/WbCloudFaceVerifyResultListener;->onFinish(Lcom/tencent/cloud/huiyansdkface/facelight/api/result/WbFaceVerifyResult;)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    const-string v1, "not same activity"

    invoke-static {v0, v1}, Lcom/tencent/cloud/huiyansdkface/normal/tools/WLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
