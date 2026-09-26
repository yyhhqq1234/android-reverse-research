.class Lcom/netease/mpay/kl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/mpay/kd;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kd;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kl;->a:Lcom/netease/mpay/kd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/kl;->a:Lcom/netease/mpay/kd;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;I)V

    iget-object v0, p0, Lcom/netease/mpay/kl;->a:Lcom/netease/mpay/kd;

    invoke-static {v0}, Lcom/netease/mpay/kd;->b(Lcom/netease/mpay/kd;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kl;->a:Lcom/netease/mpay/kd;

    invoke-static {v1}, Lcom/netease/mpay/kd;->c(Lcom/netease/mpay/kd;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/kl;->a:Lcom/netease/mpay/kd;

    iget-object v0, v0, Lcom/netease/mpay/kd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cm:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kl;->a:Lcom/netease/mpay/kd;

    invoke-static {v1}, Lcom/netease/mpay/kd;->d(Lcom/netease/mpay/kd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/netease/mpay/km;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/km;-><init>(Lcom/netease/mpay/kl;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
