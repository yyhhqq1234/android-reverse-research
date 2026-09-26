.class Lcom/netease/mpay/ds;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/dp;


# direct methods
.method constructor <init>(Lcom/netease/mpay/dp;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ds;->a:Lcom/netease/mpay/dp;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

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
.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ds;->a:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/dp;)V

    iget-object v0, p0, Lcom/netease/mpay/ds;->a:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->d(Lcom/netease/mpay/dp;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/ds;->a:Lcom/netease/mpay/dp;

    iget-object v1, p0, Lcom/netease/mpay/ds;->a:Lcom/netease/mpay/dp;

    invoke-static {v1}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;I)I

    return-void
.end method
