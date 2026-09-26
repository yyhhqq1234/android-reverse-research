.class Lcom/netease/mpay/iq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ij;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ij;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

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

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    iget-object v0, v0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->e(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    iget-object v0, v0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v1}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v2}, Lcom/netease/mpay/ij;->e(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    iget v2, v2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v2}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v3}, Lcom/netease/mpay/ij;->e(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;)Lcom/netease/mpay/server/response/OrderInit;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/netease/mpay/f/a/b$a;->a:Lcom/netease/mpay/f/a/b$a;

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ir;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ir;-><init>(Lcom/netease/mpay/iq;)V

    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/is;

    invoke-direct {v5, p0}, Lcom/netease/mpay/is;-><init>(Lcom/netease/mpay/iq;)V

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/it;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/mpay/it;-><init>(Lcom/netease/mpay/iq;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/OrderInit;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;)Lcom/netease/mpay/server/response/OrderInit;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v1, p1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Lcom/netease/mpay/server/response/OrderInit;)Lcom/netease/mpay/server/response/OrderInit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->l(Lcom/netease/mpay/ij;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->m(Lcom/netease/mpay/ij;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/OrderInit;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/iq;->a(Lcom/netease/mpay/server/response/OrderInit;)V

    return-void
.end method
