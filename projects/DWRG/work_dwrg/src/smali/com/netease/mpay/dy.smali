.class Lcom/netease/mpay/dy;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b/o;

.field final synthetic b:Lcom/netease/mpay/dp;


# direct methods
.method constructor <init>(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    iput-object p2, p0, Lcom/netease/mpay/dy;->a:Lcom/netease/mpay/e/b/o;

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
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->f(Lcom/netease/mpay/dp;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->f(Lcom/netease/mpay/dp;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->f(Lcom/netease/mpay/dp;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dy;->a:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->g(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/dy;->a:Lcom/netease/mpay/e/b/o;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/f/ax;

    iget-object v1, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    iget-object v1, v1, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    invoke-static {v2}, Lcom/netease/mpay/dp;->h(Lcom/netease/mpay/dp;)Lcom/netease/mpay/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    invoke-static {v3}, Lcom/netease/mpay/dp;->h(Lcom/netease/mpay/dp;)Lcom/netease/mpay/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/i;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/dy;->a:Lcom/netease/mpay/e/b/o;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/ax;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Z)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ax;->h()V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->g(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/dp;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/dy;->b:Lcom/netease/mpay/dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V

    goto :goto_0
.end method
