.class public Lcom/netease/mpay/MpayLoginActivity;
.super Lcom/netease/mpay/af;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/af;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/MpayLoginActivity;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/a;->a(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/netease/mpay/af;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/af;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/MpayLoginActivity;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->k()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/MpayLoginActivity;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->q()V

    invoke-super {p0}, Lcom/netease/mpay/af;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$i;->b:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayLoginActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/netease/mpay/MpayLoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/skin/e;

    invoke-direct {v1}, Lcom/netease/mpay/skin/e;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/mpay/skin/e;->a(Landroid/view/LayoutInflater;Lcom/netease/mpay/skin/e;)V

    invoke-super {p0, p1}, Lcom/netease/mpay/af;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/MpayLoginActivity;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->r()V

    invoke-super {p0}, Lcom/netease/mpay/af;->onDetachedFromWindow()V

    return-void
.end method
