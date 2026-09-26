.class Lcom/netease/mpay/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/netease/mpay/widget/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/e;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/g;->c:Lcom/netease/mpay/widget/e;

    iput-object p2, p0, Lcom/netease/mpay/widget/g;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/widget/g;->b:Landroid/view/View;

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

    iget-object v0, p0, Lcom/netease/mpay/widget/g;->c:Lcom/netease/mpay/widget/e;

    iget-object v1, p0, Lcom/netease/mpay/widget/g;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/netease/mpay/widget/g;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/widget/e;->a(Lcom/netease/mpay/widget/e;Landroid/widget/EditText;Landroid/view/View;)V

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
