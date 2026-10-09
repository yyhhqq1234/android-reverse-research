.class public Lcom/netease/loginapi/qrcode/URSQRAuthActivity;
.super Lcom/netease/loginapi/qrcode/URSBaseQRActivity;
.source "Proguard"

# interfaces
.implements Lcom/netease/loginapi/expose/URSAPICallback;


# static fields
.field public static final DURATION:I = 0x514


# instance fields
.field public mErrorMessageMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLayoutAuthState:Landroid/view/View;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mProgressButton:Lcom/netease/loginapi/qrcode/widget/ProgressButton;

.field public mQRResult:Ljava/lang/String;

.field public mTextAuthState:Landroid/widget/TextView;

.field public mTokenBundle:Lcom/netease/loginapi/qrcode/TokenBundle;

.field public product:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;-><init>()V

    .line 13
    new-instance v0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$1;-><init>(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->showStateView(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Lcom/netease/loginapi/qrcode/widget/ProgressButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mProgressButton:Lcom/netease/loginapi/qrcode/widget/ProgressButton;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mQRResult:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Lcom/netease/loginapi/qrcode/TokenBundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mTokenBundle:Lcom/netease/loginapi/qrcode/TokenBundle;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->product:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->dismissStateView()V

    return-void
.end method

.method public static synthetic access$600(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mLayoutAuthState:Landroid/view/View;

    return-object p0
.end method

.method private dismissStateView()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$3;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$3;-><init>(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 9
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mLayoutAuthState:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static fixUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "@"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@163.com"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private showAuthTip()V
    .locals 3

    .line 1
    sget v0, Lcom/netease/loginapi/R$id;->text_username:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mTokenBundle:Lcom/netease/loginapi/qrcode/TokenBundle;

    invoke-virtual {v1}, Lcom/netease/loginapi/qrcode/TokenBundle;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget v1, Lcom/netease/loginapi/R$string;->msg_login_tip_without_username:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    sget v0, Lcom/netease/loginapi/R$id;->text_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v1}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->fixUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->proguardUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private showStateView(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mProgressButton:Lcom/netease/loginapi/qrcode/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/loginapi/qrcode/widget/ProgressButton;->setProgressVisible(Z)V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mLayoutAuthState:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mTextAuthState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/netease/loginapi/qrcode/URSCaptureActivity;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mLayoutAuthState:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    new-instance p1, Lcom/netease/loginapi/qrcode/widget/DelayTask;

    new-instance v0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity$2;-><init>(Lcom/netease/loginapi/qrcode/URSQRAuthActivity;)V

    invoke-direct {p1, v0}, Lcom/netease/loginapi/qrcode/widget/DelayTask;-><init>(Landroid/os/Handler$Callback;)V

    int-to-long v0, p2

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/netease/loginapi/qrcode/widget/DelayTask;->schedule(J)V

    return-void
.end method


# virtual methods
.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/netease/loginapi/R$string;->text_auth:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRAS_SCAN_RESULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mQRResult:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "\u6570\u636e\u975e\u6cd5"

    .line 4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 8
    sget v1, Lcom/netease/loginapi/R$array;->qr_common_errors:I

    aput v1, p1, v0

    sget v0, Lcom/netease/loginapi/R$array;->qr_auth_errors:I

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p0, p1}, Lcom/netease/loginapi/util/Commons;->errorMessageMap(Landroid/content/Context;[I)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mErrorMessageMap:Landroid/util/SparseArray;

    .line 9
    sget p1, Lcom/netease/loginapi/R$layout;->activity_qr_auth_confirm:I

    invoke-virtual {p0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->setContentView(I)V

    .line 11
    sget p1, Lcom/netease/loginapi/R$id;->button_confirm:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netease/loginapi/qrcode/widget/ProgressButton;

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mProgressButton:Lcom/netease/loginapi/qrcode/widget/ProgressButton;

    .line 12
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget p1, Lcom/netease/loginapi/R$id;->layout_auth_status:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mLayoutAuthState:Landroid/view/View;

    .line 15
    sget p1, Lcom/netease/loginapi/R$id;->text_auth_status:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mTextAuthState:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/netease/loginapi/qrcode/TokenBundle;->intentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netease/loginapi/qrcode/TokenBundle;

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mTokenBundle:Lcom/netease/loginapi/qrcode/TokenBundle;

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "product_flag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->product:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/netease/loginapi/f;->a(Ljava/lang/String;)Lcom/netease/loginapi/f;

    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/netease/loginapi/f;->e:Lcom/netease/loginapi/NEConfig;

    .line 21
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mTokenBundle:Lcom/netease/loginapi/qrcode/TokenBundle;

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/netease/loginapi/qrcode/TokenBundle;

    invoke-virtual {p1}, Lcom/netease/loginapi/NEConfig;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netease/loginapi/NEConfig;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/netease/loginapi/qrcode/TokenBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mTokenBundle:Lcom/netease/loginapi/qrcode/TokenBundle;

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->showAuthTip()V

    return-void
.end method

.method public synthetic onError(Lcom/netease/loginapi/expose/URSAPI;IIILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/netease/loginapi/expose/URSAPICallback$-CC;->$default$onError(Lcom/netease/loginapi/expose/URSAPICallback;Lcom/netease/loginapi/expose/URSAPI;IIILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/netease/loginapi/expose/URSAPI;IILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p5}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->interruptError(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mErrorMessageMap:Landroid/util/SparseArray;

    sget p2, Lcom/netease/loginapi/R$string;->msg_auth_error:I

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 p6, 0x0

    aput-object p5, p4, p6

    invoke-virtual {p0, p2, p4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 p2, 0x514

    invoke-direct {p0, p1, p2}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->showStateView(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onNetworkStateChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->onNetworkStateChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mProgressButton:Lcom/netease/loginapi/qrcode/widget/ProgressButton;

    if-eqz p1, :cond_0

    sget v1, Lcom/netease/loginapi/R$string;->button_login:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/netease/loginapi/R$string;->msg_offline:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netease/loginapi/qrcode/widget/ProgressButton;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->mProgressButton:Lcom/netease/loginapi/qrcode/widget/ProgressButton;

    invoke-virtual {v0, p1}, Lcom/netease/loginapi/qrcode/widget/ProgressButton;->setEnabled(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "\u5df2\u53d1\u9001\u767b\u5f55\u8bf7\u6c42"

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onSuccess(Lcom/netease/loginapi/expose/URSAPI;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/URSQRAuthActivity;->onSuccess()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "CLOSE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/netease/loginapi/expose/URSAPI;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/netease/loginapi/expose/URSAPICallback$-CC;->$default$onSuccess(Lcom/netease/loginapi/expose/URSAPICallback;Lcom/netease/loginapi/expose/URSAPI;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public proguardUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "@"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    aget-object v3, v1, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v1

    if-le p1, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
