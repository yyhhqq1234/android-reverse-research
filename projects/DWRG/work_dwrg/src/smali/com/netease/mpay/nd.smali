.class Lcom/netease/mpay/nd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nd;->a:Lcom/netease/mpay/nc;

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
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/netease/mpay/nd;->a:Lcom/netease/mpay/nc;

    invoke-static {v2}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/nc;)Lcom/netease/mpay/widget/s;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d0

    const/4 v4, -0x1

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x5

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/netease/mpay/nd;->a:Lcom/netease/mpay/nc;

    invoke-virtual {v5}, Lcom/netease/mpay/nc;->p()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method
