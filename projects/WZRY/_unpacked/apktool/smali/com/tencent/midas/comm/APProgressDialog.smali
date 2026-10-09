.class public Lcom/tencent/midas/comm/APProgressDialog;
.super Landroid/app/ProgressDialog;
.source "APProgressDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private loadingTxt:Ljava/lang/String;

.field private loading_txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 16
    const-string/jumbo v0, "\u8bf7\u7a0d\u5019..."

    iput-object v0, p0, Lcom/tencent/midas/comm/APProgressDialog;->loadingTxt:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/tencent/midas/comm/APProgressDialog;->loading_txt:Landroid/widget/TextView;

    .line 18
    iput-object v1, p0, Lcom/tencent/midas/comm/APProgressDialog;->context:Landroid/content/Context;

    .line 22
    iput-object p1, p0, Lcom/tencent/midas/comm/APProgressDialog;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object v2, p0, Lcom/tencent/midas/comm/APProgressDialog;->context:Landroid/content/Context;

    const-string/jumbo v3, "unipay_layout_loadding"

    invoke-static {v2, v3}, Lcom/pay/tool/APMidasCommMethod;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/midas/comm/APProgressDialog;->setContentView(I)V

    .line 31
    iget-object v2, p0, Lcom/tencent/midas/comm/APProgressDialog;->context:Landroid/content/Context;

    const-string/jumbo v3, "unipay_progress"

    invoke-static {v2, v3}, Lcom/pay/tool/APMidasCommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/midas/comm/APProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 33
    .local v1, "progerssBar":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 34
    .local v0, "anin":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 35
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 36
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 38
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 40
    iget-object v2, p0, Lcom/tencent/midas/comm/APProgressDialog;->context:Landroid/content/Context;

    const-string/jumbo v3, "unipay_id_LoadingTxt"

    invoke-static {v2, v3}, Lcom/pay/tool/APMidasCommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/midas/comm/APProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tencent/midas/comm/APProgressDialog;->loading_txt:Landroid/widget/TextView;

    .line 41
    iget-object v2, p0, Lcom/tencent/midas/comm/APProgressDialog;->loading_txt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/midas/comm/APProgressDialog;->loadingTxt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/midas/comm/APProgressDialog;->setCancelable(Z)V

    .line 44
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 56
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/tencent/midas/comm/APProgressDialog;->cancel()V

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/comm/APProgressDialog;->loadingTxt:Ljava/lang/String;

    .line 51
    return-void
.end method
