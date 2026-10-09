.class public abstract Lcom/netease/loginapi/qrcode/URSBaseQRActivity;
.super Landroid/app/Activity;
.source "Proguard"

# interfaces
.implements Lcom/netease/loginapi/expose/MethodReserved;


# instance fields
.field public mNetworkStateReceiver:Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/loginapi/qrcode/URSBaseQRActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity$1;-><init>(Lcom/netease/loginapi/qrcode/URSBaseQRActivity;)V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->mNetworkStateReceiver:Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;

    return-void
.end method


# virtual methods
.method public final fillIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "EXTRAS_PACKAGE"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method

.method public final getPackage()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRAS_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTitleText()Ljava/lang/String;
.end method

.method public getTitlebarColor()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/loginapi/R$color;->ursColorPrimary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public interruptError(IILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->mNetworkStateReceiver:Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;

    invoke-virtual {p1, p0}, Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;->registerReceiver(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->mNetworkStateReceiver:Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;

    invoke-virtual {v0, p0}, Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;->unregisterReceiver(Landroid/app/Activity;)V

    return-void
.end method

.method public onNetworkStateChanged(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onNetworkStateChanged[%s]"

    invoke-static {v0, p1, v1}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/loginapi/R$layout;->activity_qr_base:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->useLinearLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget v2, Lcom/netease/loginapi/R$id;->qr_title_bar:I

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :goto_0
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 13
    sget p1, Lcom/netease/loginapi/R$id;->qr_title_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->getTitlebarColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->showTitlebar()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :cond_1
    sget p1, Lcom/netease/loginapi/R$id;->qr_text_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 20
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    sget p1, Lcom/netease/loginapi/R$id;->action_back:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/netease/loginapi/qrcode/URSBaseQRActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/URSBaseQRActivity$2;-><init>(Lcom/netease/loginapi/qrcode/URSBaseQRActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showTitlebar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useLinearLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
