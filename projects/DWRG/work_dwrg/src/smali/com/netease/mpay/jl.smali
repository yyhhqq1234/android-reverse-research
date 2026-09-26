.class Lcom/netease/mpay/jl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jg;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jg;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

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
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    invoke-static {v0, v4}, Lcom/netease/mpay/jg;->a(Lcom/netease/mpay/jg;I)V

    iget-object v0, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->i(Lcom/netease/mpay/jg;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    iget-object v2, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    invoke-static {v2}, Lcom/netease/mpay/jg;->g(Lcom/netease/mpay/jg;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    invoke-static {v3}, Lcom/netease/mpay/jg;->j(Lcom/netease/mpay/jg;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/jg;->a(Lcom/netease/mpay/jg;Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->g(Lcom/netease/mpay/jg;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->h(Lcom/netease/mpay/jg;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->h(Lcom/netease/mpay/jg;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/jm;

    invoke-direct {v1, p0}, Lcom/netease/mpay/jm;-><init>(Lcom/netease/mpay/jl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jl;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->h(Lcom/netease/mpay/jg;)Landroid/view/View;

    move-result-object v0

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
