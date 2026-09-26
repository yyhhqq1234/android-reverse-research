.class public Lcom/netease/epay/sdk/pay/ui/p;
.super Lcom/netease/epay/sdk/pay/ui/l;
.source "PaySmsFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/ui/p$a;
    }
.end annotation


# instance fields
.field private c:Lcom/netease/epay/sdk/base/view/SendSmsButton;

.field private d:Lcom/netease/epay/sdk/base/view/SmsErrorTextView;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/netease/epay/sdk/pay/ui/p$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/l;-><init>()V

    return-void
.end method

.method public static c()Lcom/netease/epay/sdk/pay/ui/p;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/p;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/p;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/netease/epay/sdk/pay/ui/l;->a()V

    .line 109
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->d:Lcom/netease/epay/sdk/base/view/SmsErrorTextView;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->setIsBankSend(Z)V

    .line 71
    return-void
.end method

.method public a(ZLjava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->e:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->e:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->c:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->resetColdTime()V

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/p;->c:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    iget-boolean v1, v1, Lcom/netease/epay/sdk/base/view/SendSmsButton;->isClick:Z

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u5148\u83b7\u53d6\u9a8c\u8bc1\u7801\uff0c\u518d\u652f\u4ed8\uff01"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/p;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/pay/R$id;->btn_done:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/p;->h:Lcom/netease/epay/sdk/pay/ui/p$a;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/p;->h:Lcom/netease/epay/sdk/pay/ui/p$a;

    invoke-interface {v1, v0}, Lcom/netease/epay/sdk/pay/ui/p$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->c:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    .line 75
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 78
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_paysms:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    sget v0, Lcom/netease/epay/sdk/pay/ui/l$b;->c:I

    iput v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->a:I

    .line 46
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/pay/ui/p;->a(Landroid/view/View;)V

    .line 47
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->et_input_sms:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->e:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->e:Landroid/widget/EditText;

    const-string v2, "<small>\u8bf7\u5148\u83b7\u53d6\u9a8c\u8bc1\u7801<small>"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 49
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->btn_send_sms:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SendSmsButton;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->c:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->c:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V

    .line 51
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/p;->b:Landroid/widget/Button;

    invoke-direct {v0, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/p;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 52
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_receiving_sms_error:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->d:Lcom/netease/epay/sdk/base/view/SmsErrorTextView;

    .line 53
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->rl_epaysdk_view_pay_detail:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->f:Landroid/widget/RelativeLayout;

    .line 54
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ll_paymethod:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->g:Landroid/widget/RelativeLayout;

    .line 55
    new-instance v0, Lcom/netease/epay/sdk/pay/c/e;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/e;-><init>(Lcom/netease/epay/sdk/pay/ui/p;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->h:Lcom/netease/epay/sdk/pay/ui/p$a;

    .line 56
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->h:Lcom/netease/epay/sdk/pay/ui/p$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/pay/ui/p$a;->a()V

    .line 57
    return-object v1
.end method

.method public sendSms()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->h:Lcom/netease/epay/sdk/pay/ui/p$a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/p;->h:Lcom/netease/epay/sdk/pay/ui/p$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/pay/ui/p$a;->b()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
