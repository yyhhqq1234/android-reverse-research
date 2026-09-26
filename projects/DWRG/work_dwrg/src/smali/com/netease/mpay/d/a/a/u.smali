.class Lcom/netease/mpay/d/a/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/a/r;

.field final synthetic b:Lcom/netease/mpay/d/a/a/r$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/r$c;Lcom/netease/mpay/d/a/a/r;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/u;->b:Lcom/netease/mpay/d/a/a/r$c;

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/u;->a:Lcom/netease/mpay/d/a/a/r;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/u;->b:Lcom/netease/mpay/d/a/a/r$c;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/r$c;->b(Lcom/netease/mpay/d/a/a/r$c;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/u;->b:Lcom/netease/mpay/d/a/a/r$c;

    iget-object v2, p0, Lcom/netease/mpay/d/a/a/u;->b:Lcom/netease/mpay/d/a/a/r$c;

    invoke-static {v2}, Lcom/netease/mpay/d/a/a/r$c;->c(Lcom/netease/mpay/d/a/a/r$c;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/d/a/a/r$c;->a(Landroid/widget/EditText;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

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
