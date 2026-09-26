.class public Lcom/netease/epay/sdk/pay/ui/n;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "PayResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field private a:Lcom/netease/epay/sdk/pay/c/f;

.field private b:Landroid/view/ViewStub;

.field private c:Lcom/netease/epay/sdk/base/view/BaseWebView;

.field private e:Lcom/netease/epay/sdk/base/hybrid/Hybrid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/n;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->e:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    return-object v0
.end method

.method public static a(Z)Lcom/netease/epay/sdk/pay/ui/n;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v1, "isClose"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/n;

    invoke-direct {v1}, Lcom/netease/epay/sdk/pay/ui/n;-><init>()V

    .line 57
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/n;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 251
    sput-object v4, Lcom/netease/epay/sdk/pay/ui/n;->d:Ljava/lang/String;

    .line 252
    sput-object v4, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    .line 253
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "000000"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sput-object p1, Lcom/netease/epay/sdk/pay/ui/n;->d:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->b:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->b:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/BaseWebView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->e:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    .line 187
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setHyBridConfigs()V

    .line 188
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    new-instance v1, Lcom/netease/epay/sdk/pay/ui/n$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/n$1;-><init>(Lcom/netease/epay/sdk/pay/ui/n;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 205
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    new-instance v1, Lcom/netease/epay/sdk/pay/ui/n$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/n$2;-><init>(Lcom/netease/epay/sdk/pay/ui/n;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 228
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->loadUrlWithCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/n;->a()V

    .line 163
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->btnFinger:I

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 169
    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/e;->a(Lcom/netease/epay/sdk/base/ui/SdkActivity;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/n;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lcom/netease/epay/sdk/pay/R$style;->epaysdk_DialogTranslucent:I

    invoke-virtual {p0, v1, v0}, Lcom/netease/epay/sdk/pay/ui/n;->setStyle(II)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/pay/ui/n;->setCancelable(Z)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/n;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 71
    const/4 v0, 0x0

    .line 72
    if-eqz v1, :cond_e

    .line 73
    const-string v0, "isClose"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 75
    :goto_0
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_pay_result:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 76
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_finish:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->iv_frag_close_c:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->stub_webview:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->b:Landroid/view/ViewStub;

    .line 79
    sget-object v0, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/n;->a()V

    move-object v0, v4

    .line 157
    :goto_1
    return-object v0

    .line 85
    :cond_0
    new-instance v3, Ljava/math/BigDecimal;

    sget-object v0, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->orderAmount:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v6, Ljava/math/BigDecimal;

    sget-object v0, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->orderAmount:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    sget-object v2, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/PayingResponse;->hongbaoAmount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 90
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/PayingResponse;->hongbaoAmount:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 92
    :goto_2
    const/4 v0, 0x0

    .line 93
    sget-object v5, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v5, v5, Lcom/netease/epay/sdk/pay/model/PayingResponse;->promotionAmount:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 94
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v5, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v5, v5, Lcom/netease/epay/sdk/pay/model/PayingResponse;->promotionAmount:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 96
    :goto_3
    if-eqz v2, :cond_b

    .line 97
    invoke-virtual {v3, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 99
    :goto_4
    if-eqz v5, :cond_a

    .line 100
    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    move-object v3, v0

    .line 102
    :goto_5
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_pay_discount:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\uffe5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    if-eqz v6, :cond_3

    invoke-virtual {v6, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_3

    .line 104
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_amount_old:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_6
    sget-object v0, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->isUsedHongbao:Z

    if-eqz v0, :cond_6

    .line 112
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_pay_youhui:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-\uffe5"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v5, v5, Lcom/netease/epay/sdk/pay/model/PayingResponse;->promotionAmount:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    :goto_7
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_pay_redpaper:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-\uffe5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v3, v3, Lcom/netease/epay/sdk/pay/model/PayingResponse;->hongbaoAmount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_2
    :goto_8
    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->e:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->c:Z

    if-eqz v0, :cond_8

    .line 135
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->finger:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->btnFinger:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/StrokeColorButton;

    .line 137
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setEnabled(Z)V

    .line 138
    if-eqz v1, :cond_7

    .line 139
    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    :goto_9
    sget-object v0, Lcom/netease/epay/sdk/pay/ui/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    new-instance v0, Lcom/netease/epay/sdk/pay/c/f;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/f;-><init>(Lcom/netease/epay/sdk/pay/ui/n;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->a:Lcom/netease/epay/sdk/pay/c/f;

    .line 153
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->a:Lcom/netease/epay/sdk/pay/c/f;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/c/f;->a()V

    :goto_a
    move-object v0, v4

    .line 157
    goto/16 :goto_1

    .line 106
    :cond_3
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_amount_old:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uffe5"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v6, v6, Lcom/netease/epay/sdk/pay/model/PayingResponse;->orderAmount:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_amount_old:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_6

    .line 116
    :cond_4
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->rl_zhifu_youhui:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->v_divier:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->v_divier:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 125
    :cond_5
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->rl_zhifu_hongbao:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->v_divier:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->v_divier:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 131
    :cond_6
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->llDiscount:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 142
    :cond_7
    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->getCustomDrawableAllRadius(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    const v1, -0x666667

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setTextColor(I)V

    .line 144
    const-string v1, "\u5df2\u5f00\u542f"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/netease/epay/sdk/base/view/StrokeColorButton;->setPadding(IIII)V

    goto/16 :goto_9

    .line 148
    :cond_8
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->finger:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 155
    :cond_9
    sget-object v0, Lcom/netease/epay/sdk/pay/ui/n;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/n;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_a
    move-object v3, v0

    goto/16 :goto_5

    :cond_b
    move-object v0, v3

    goto/16 :goto_4

    :cond_c
    move-object v5, v0

    goto/16 :goto_3

    :cond_d
    move-object v2, v0

    goto/16 :goto_2

    :cond_e
    move v1, v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->removeAllViews()V

    .line 246
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->c:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->destroy()V

    .line 248
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onDestroyView()V

    .line 235
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->a:Lcom/netease/epay/sdk/pay/c/f;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n;->a:Lcom/netease/epay/sdk/pay/c/f;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/c/f;->b()V

    .line 238
    :cond_0
    return-void
.end method
