.class Lcom/netease/mpay/jk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jj;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jj;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jk;->a:Lcom/netease/mpay/jj;

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
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/jk;->a:Lcom/netease/mpay/jj;

    iget-object v0, v0, Lcom/netease/mpay/jj;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->g(Lcom/netease/mpay/jg;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/jk;->a:Lcom/netease/mpay/jj;

    iget-object v0, v0, Lcom/netease/mpay/jj;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->h(Lcom/netease/mpay/jg;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
