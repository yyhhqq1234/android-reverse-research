.class public Lcom/netease/epay/sdk/pay/ui/k;
.super Lcom/netease/epay/sdk/pay/ui/l;
.source "PayFingerFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/l;-><init>()V

    .line 159
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/k$4;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/k$4;-><init>(Lcom/netease/epay/sdk/pay/ui/k;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->g:Lcom/netease/epay/sdk/NetCallback;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/netease/epay/sdk/pay/ui/k;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/k;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/k;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "isSetFinger"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/k;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/ui/k;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/k;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->f:Z

    .line 151
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->d:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->stopAuthenticate()V

    .line 157
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onAuthenticationFail(Z)V
    .locals 2
    .param p1, "isLocked"    # Z

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/k;->c()V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->c:Landroid/widget/TextView;

    const-string v1, "\u518d\u8bd5\u4e00\u6b21"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->d:Z

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/k$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/pay/ui/k$1;-><init>(Lcom/netease/epay/sdk/pay/ui/k;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/epay/sdk/pay/c;->g:Lcom/netease/epay/sdk/base/network/IParamsCallback;

    .line 98
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_recording_finger:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/k;->c()V

    .line 131
    :goto_0
    return-void

    .line 103
    :cond_0
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->isSelectedCardBankSend(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/k$2;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/pay/ui/k$2;-><init>(Lcom/netease/epay/sdk/pay/ui/k;Ljava/lang/String;)V

    .line 112
    const-string v1, "validate_fingerprint_pay.htm"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/k;->g:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lcom/netease/epay/sdk/base/network/IParamsCallback;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->getInstance()Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/pay/ui/k$3;

    invoke-direct {v1, p0, p1}, Lcom/netease/epay/sdk/pay/ui/k$3;-><init>(Lcom/netease/epay/sdk/pay/ui/k;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvUsePwd:I

    if-ne v0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/k;->c()V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/pay/ui/l;->onClick(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 52
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_pay_finger:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/k;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const-string v3, "key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/epay/sdk/pay/ui/k;->e:Ljava/lang/String;

    .line 56
    const-string v3, "isSetFinger"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->f:Z

    .line 58
    :cond_0
    sget v0, Lcom/netease/epay/sdk/pay/ui/l$b;->d:I

    iput v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->a:I

    .line 59
    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/pay/ui/k;->a(Landroid/view/View;)V

    .line 60
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvUsePwd:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvFinger:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->c:Landroid/widget/TextView;

    .line 64
    new-instance v0, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->d:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->d:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->setCallback(Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;)V

    .line 66
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->f:Z

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->d:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->generateToken()V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->d:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authenticate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/k;->c()V

    move-object v0, v1

    .line 75
    :goto_1
    return-object v0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->d:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->setPurpose(I)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 75
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/k;->d:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->stopAuthenticate()V

    .line 145
    invoke-super {p0}, Lcom/netease/epay/sdk/pay/ui/l;->onDestroy()V

    .line 146
    return-void
.end method
