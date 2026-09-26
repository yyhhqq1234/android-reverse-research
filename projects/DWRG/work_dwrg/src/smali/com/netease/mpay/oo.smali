.class Lcom/netease/mpay/oo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/on;


# direct methods
.method constructor <init>(Lcom/netease/mpay/on;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v1, v1, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    iget-object v1, v1, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v1, v1, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    iget-object v1, v1, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/op;

    invoke-direct {v3, p0}, Lcom/netease/mpay/op;-><init>(Lcom/netease/mpay/oo;)V

    iget-object v1, p0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v1, v1, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    iget-object v1, v1, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/oq;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oq;-><init>(Lcom/netease/mpay/oo;)V

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 6

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v1, v1, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    iget-object v1, v1, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v2, v2, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    invoke-static {v2}, Lcom/netease/mpay/om;->a(Lcom/netease/mpay/om;)Lcom/netease/mpay/b/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/aj;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v5, v5, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    invoke-static {v5}, Lcom/netease/mpay/om;->a(Lcom/netease/mpay/om;)Lcom/netease/mpay/b/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/b/aj;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p2, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/b/ao;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    iget-object v1, p0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v1, v1, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    iget-object v1, v1, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    return-void
.end method
