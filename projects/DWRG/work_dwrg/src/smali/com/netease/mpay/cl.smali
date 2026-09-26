.class Lcom/netease/mpay/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ck;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ck;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->f(Lcom/netease/mpay/ck;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->a(Lcom/netease/mpay/ck;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->b(Lcom/netease/mpay/ck;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->A:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->a(Lcom/netease/mpay/ck;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v2}, Lcom/netease/mpay/ck;->a(Lcom/netease/mpay/ck;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf9

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->a(Lcom/netease/mpay/ck;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->c(Lcom/netease/mpay/ck;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->c(Lcom/netease/mpay/ck;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->e(Lcom/netease/mpay/ck;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v2}, Lcom/netease/mpay/ck;->b(Lcom/netease/mpay/ck;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/cm;

    invoke-direct {v3, p0}, Lcom/netease/mpay/cm;-><init>(Lcom/netease/mpay/cl;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    iget-object v0, v0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v2}, Lcom/netease/mpay/ck;->a(Lcom/netease/mpay/ck;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/netease/mpay/cl;->a:Lcom/netease/mpay/ck;

    invoke-static {v0}, Lcom/netease/mpay/ck;->d(Lcom/netease/mpay/ck;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0
.end method
