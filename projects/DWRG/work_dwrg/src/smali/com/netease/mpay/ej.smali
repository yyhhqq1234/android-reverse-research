.class Lcom/netease/mpay/ej;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ed;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ed;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ej;->a:Lcom/netease/mpay/ed;

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
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ej;->a:Lcom/netease/mpay/ed;

    invoke-static {v0, v3}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;I)V

    iget-object v0, p0, Lcom/netease/mpay/ej;->a:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->c(Lcom/netease/mpay/ed;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ej;->a:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->d(Lcom/netease/mpay/ed;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/ej;->a:Lcom/netease/mpay/ed;

    iget-object v0, v0, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cl:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netease/mpay/ej;->a:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->b(Lcom/netease/mpay/ed;)Landroid/widget/EditText;

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

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Lcom/netease/mpay/ek;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/ek;-><init>(Lcom/netease/mpay/ej;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/ej;->a:Lcom/netease/mpay/ed;

    invoke-static {v0, v3}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;Z)Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
