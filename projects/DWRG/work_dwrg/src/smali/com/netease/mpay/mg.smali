.class Lcom/netease/mpay/mg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/mpay/mb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/mb;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/mg;->a:Lcom/netease/mpay/mb;

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

    iget-object v0, p0, Lcom/netease/mpay/mg;->a:Lcom/netease/mpay/mb;

    invoke-static {v0}, Lcom/netease/mpay/mb;->c(Lcom/netease/mpay/mb;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/mg;->a:Lcom/netease/mpay/mb;

    invoke-static {v1}, Lcom/netease/mpay/mb;->d(Lcom/netease/mpay/mb;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/mg;->a:Lcom/netease/mpay/mb;

    iget-object v1, p0, Lcom/netease/mpay/mg;->a:Lcom/netease/mpay/mb;

    invoke-static {v1}, Lcom/netease/mpay/mb;->e(Lcom/netease/mpay/mb;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/mg;->a:Lcom/netease/mpay/mb;

    invoke-static {v2}, Lcom/netease/mpay/mb;->f(Lcom/netease/mpay/mb;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/mb;->a(Lcom/netease/mpay/mb;Landroid/widget/EditText;Landroid/widget/ImageView;)V

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
