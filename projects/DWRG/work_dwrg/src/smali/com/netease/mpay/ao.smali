.class Lcom/netease/mpay/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/mpay/al;


# direct methods
.method constructor <init>(Lcom/netease/mpay/al;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ao;->a:Lcom/netease/mpay/al;

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

    iget-object v0, p0, Lcom/netease/mpay/ao;->a:Lcom/netease/mpay/al;

    invoke-static {v0}, Lcom/netease/mpay/al;->g(Lcom/netease/mpay/al;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ao;->a:Lcom/netease/mpay/al;

    invoke-static {v1}, Lcom/netease/mpay/al;->h(Lcom/netease/mpay/al;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/ao;->a:Lcom/netease/mpay/al;

    iget-object v1, p0, Lcom/netease/mpay/ao;->a:Lcom/netease/mpay/al;

    invoke-static {v1}, Lcom/netease/mpay/al;->d(Lcom/netease/mpay/al;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ao;->a:Lcom/netease/mpay/al;

    invoke-static {v2}, Lcom/netease/mpay/al;->i(Lcom/netease/mpay/al;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;Landroid/widget/EditText;Landroid/widget/ImageView;)V

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
