.class Lcom/netease/mpay/jj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jg;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jg;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jj;->a:Lcom/netease/mpay/jg;

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
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jj;->a:Lcom/netease/mpay/jg;

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

    iget-object v0, p0, Lcom/netease/mpay/jj;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->h(Lcom/netease/mpay/jg;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/jj;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->h(Lcom/netease/mpay/jg;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/jk;

    invoke-direct {v1, p0}, Lcom/netease/mpay/jk;-><init>(Lcom/netease/mpay/jj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jj;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->h(Lcom/netease/mpay/jg;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
