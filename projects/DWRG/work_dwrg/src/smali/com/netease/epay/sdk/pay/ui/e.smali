.class public Lcom/netease/epay/sdk/pay/ui/e;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "FingerprintAuthenticationFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;


# instance fields
.field private a:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/epay/sdk/NetCallback;
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
    .line 31
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/e$5;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/e$5;-><init>(Lcom/netease/epay/sdk/pay/ui/e;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e;->c:Lcom/netease/epay/sdk/NetCallback;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 37
    const-string v1, "get_ewallet_public_key.htm"

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/e$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/ui/e$1;-><init>(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V

    invoke-static {v1, v0, v2, p0, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/e;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/ui/e;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e;->a:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e;->a:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->stopAuthenticate()V

    .line 128
    :cond_0
    invoke-static {p1}, Lcom/netease/epay/sdk/pay/ui/n;->a(Z)Lcom/netease/epay/sdk/pay/ui/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e;->a:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    .line 130
    return-void
.end method


# virtual methods
.method public onAuthenticationFail(Z)V
    .locals 4
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 93
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->btnCancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u6307\u7eb9\u9a8c\u8bc1\u6b21\u6570\u8fc7\u591a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/netease/epay/sdk/base/util/DelayedTask;

    const/16 v1, 0x1f4

    new-instance v2, Lcom/netease/epay/sdk/pay/ui/e$4;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/pay/ui/e$4;-><init>(Lcom/netease/epay/sdk/pay/ui/e;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/DelayedTask;-><init>(ILcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;)V

    .line 103
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/DelayedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvFinger:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u518d\u8bd5\u4e00\u6b21"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/e$3;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/pay/ui/e$3;-><init>(Lcom/netease/epay/sdk/pay/ui/e;Ljava/lang/String;)V

    .line 88
    const-string v1, "open_fingerprint_pay.htm"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/e;->c:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lcom/netease/epay/sdk/base/network/IParamsCallback;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_view_fingerprint:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/pay/ui/e;->b:Ljava/lang/String;

    .line 62
    :cond_0
    sget v1, Lcom/netease/epay/sdk/pay/R$id;->btnCancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/pay/ui/e$2;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/pay/ui/e$2;-><init>(Lcom/netease/epay/sdk/pay/ui/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v1, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/epay/sdk/pay/ui/e;->a:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    .line 70
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/e;->a:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->generateToken()V

    .line 71
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/e;->a:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v1, p0}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->setCallback(Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper$SimpleAuthenticationCallback;)V

    .line 72
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/e;->a:Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/util/fingerprint/FingerPrintHelper;->authenticate()Z

    .line 73
    return-object v0
.end method
