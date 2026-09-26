.class public Lcom/netease/epay/sdk/risk/ui/e;
.super Lcom/netease/epay/sdk/risk/ui/b;
.source "RiskSmsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/risk/ui/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/epay/sdk/base/view/SendSmsButton;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/netease/epay/sdk/risk/ui/e$a;

.field private d:Z

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/netease/epay/sdk/risk/ui/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/risk/ui/e;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/netease/epay/sdk/risk/ui/e;

    invoke-direct {v0}, Lcom/netease/epay/sdk/risk/ui/e;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v2, "epaysdk_sms_mobile"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "epaysdk_sms_riskType"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/ui/e;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->b:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<small>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    if-eqz p3, :cond_0

    .line 134
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->b:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V

    .line 136
    :cond_0
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->a:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->a:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->resetColdTime()V

    .line 139
    :cond_1
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/risk/R$id;->btn_done:I

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/e;->a:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    iget-boolean v1, v1, Lcom/netease/epay/sdk/base/view/SendSmsButton;->isClick:Z

    if-nez v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u5148\u83b7\u53d6\u9a8c\u8bc1\u7801\uff0c\u518d\u652f\u4ed8\uff01"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/e;->c:Lcom/netease/epay/sdk/risk/ui/e$a;

    if-eqz v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/e;->c:Lcom/netease/epay/sdk/risk/ui/e$a;

    invoke-interface {v1, v0}, Lcom/netease/epay/sdk/risk/ui/e$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/risk/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "epaysdk_sms_riskType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "sms_mobile_vvc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sms_qp_vvc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->d:Z

    .line 64
    :cond_1
    return-void

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    sget v0, Lcom/netease/epay/sdk/risk/R$layout;->epaysdk_frag_risk_verify:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->ftb:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 70
    iget-boolean v1, p0, Lcom/netease/epay/sdk/risk/ui/e;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "\u8bf7\u8f93\u5165\u8bed\u97f3\u9a8c\u8bc1\u7801"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setTitle(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/netease/epay/sdk/risk/ui/e$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/risk/ui/e$1;-><init>(Lcom/netease/epay/sdk/risk/ui/e;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->et_input_sms:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->b:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->b:Landroid/widget/EditText;

    const-string v1, "<small>\u8bf7\u5148\u83b7\u53d6\u9a8c\u8bc1\u7801<small>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 83
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->btn_send_sms:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SendSmsButton;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->a:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->a:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V

    .line 85
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->tv_hint:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->e:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->btn_done:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v1, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-direct {v1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 90
    iget-boolean v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->d:Z

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Lcom/netease/epay/sdk/risk/a/b;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/risk/a/b;-><init>(Lcom/netease/epay/sdk/risk/ui/e;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->c:Lcom/netease/epay/sdk/risk/ui/e$a;

    .line 92
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/e;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u6613\u514d\u8d39\u7535\u8bdd\u5c06\u4f1a\u62e8\u81f3\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->c:Lcom/netease/epay/sdk/risk/ui/e$a;

    check-cast v0, Lcom/netease/epay/sdk/risk/a/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/risk/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->a:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    const-string v1, "\u83b7\u53d6\u8bed\u97f3\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setInitText(Ljava/lang/String;)V

    .line 94
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->tv_receiving_sms_error:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->b:Landroid/widget/EditText;

    const-string v1, "<small>6\u4f4d\u8bed\u97f3\u9a8c\u8bc1\u7801<small>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 102
    :goto_1
    return-object v2

    .line 70
    :cond_0
    const-string v1, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    goto/16 :goto_0

    .line 98
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/risk/a/a;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/risk/a/a;-><init>(Lcom/netease/epay/sdk/risk/ui/e;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->c:Lcom/netease/epay/sdk/risk/ui/e$a;

    .line 99
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/e;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5c06\u53d1\u81f3\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->c:Lcom/netease/epay/sdk/risk/ui/e$a;

    check-cast v0, Lcom/netease/epay/sdk/risk/a/a;

    iget-object v0, v0, Lcom/netease/epay/sdk/risk/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->a:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    goto :goto_1
.end method

.method public sendSms()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->c:Lcom/netease/epay/sdk/risk/ui/e$a;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e;->c:Lcom/netease/epay/sdk/risk/ui/e$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/risk/ui/e$a;->a()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
