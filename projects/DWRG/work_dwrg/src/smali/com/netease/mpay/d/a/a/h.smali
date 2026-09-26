.class Lcom/netease/mpay/d/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/netease/mpay/d/a/a/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/e;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/h;->b:Lcom/netease/mpay/d/a/a/e;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/h;->a:Landroid/view/View;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/h;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a/e;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/h;->b:Lcom/netease/mpay/d/a/a/e;

    invoke-static {v1}, Lcom/netease/mpay/d/a/a/e;->a(Lcom/netease/mpay/d/a/a/e;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/h;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/h;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/h;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/d/a/a/e;->a(Lcom/netease/mpay/d/a/a/e;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/cq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/h;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/h;->b:Lcom/netease/mpay/d/a/a/e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/a/e;->b:Landroid/widget/EditText;

    add-int v2, p2, p4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
