.class Lcom/netease/mpay/d/a/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/netease/mpay/d/a/af;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/ak;->c:Lcom/netease/mpay/d/a/af;

    iput-object p2, p0, Lcom/netease/mpay/d/a/ak;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/d/a/ak;->b:Landroid/widget/ImageView;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/ak;->c:Lcom/netease/mpay/d/a/af;

    invoke-static {v0}, Lcom/netease/mpay/d/a/af;->e(Lcom/netease/mpay/d/a/af;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/ak;->c:Lcom/netease/mpay/d/a/af;

    invoke-static {v1}, Lcom/netease/mpay/d/a/af;->f(Lcom/netease/mpay/d/a/af;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/ak;->c:Lcom/netease/mpay/d/a/af;

    iget-object v1, p0, Lcom/netease/mpay/d/a/ak;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/netease/mpay/d/a/ak;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/d/a/af;->a(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/ak;->c:Lcom/netease/mpay/d/a/af;

    invoke-static {v0}, Lcom/netease/mpay/d/a/af;->g(Lcom/netease/mpay/d/a/af;)Lcom/netease/mpay/d/a/af$c;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/ak;->c:Lcom/netease/mpay/d/a/af;

    iget-object v2, p0, Lcom/netease/mpay/d/a/ak;->a:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/netease/mpay/d/a/af;->a(Lcom/netease/mpay/d/a/af;Landroid/widget/EditText;)Lcom/netease/mpay/d/a/af$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/d/a/af$c;->a(Lcom/netease/mpay/d/a/af$b;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
