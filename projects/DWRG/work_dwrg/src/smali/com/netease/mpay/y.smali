.class Lcom/netease/mpay/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/x;


# direct methods
.method constructor <init>(Lcom/netease/mpay/x;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

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

    iget-object v1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v1, v1, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v1, v1, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v2, v2, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/aa;

    invoke-direct {v3, p0}, Lcom/netease/mpay/aa;-><init>(Lcom/netease/mpay/y;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/netease/mpay/f/a/b$a;->g:Lcom/netease/mpay/f/a/b$a;

    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v0, v0, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    invoke-static {v1}, Lcom/netease/mpay/x;->b(Lcom/netease/mpay/x;)Lcom/netease/mpay/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    invoke-static {v2}, Lcom/netease/mpay/x;->b(Lcom/netease/mpay/x;)Lcom/netease/mpay/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    invoke-static {v3}, Lcom/netease/mpay/x;->b(Lcom/netease/mpay/x;)Lcom/netease/mpay/b/s;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    invoke-static {v4}, Lcom/netease/mpay/x;->b(Lcom/netease/mpay/x;)Lcom/netease/mpay/b/s;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    invoke-static {v5}, Lcom/netease/mpay/x;->b(Lcom/netease/mpay/x;)Lcom/netease/mpay/b/s;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v5, v5, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/ab;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ab;-><init>(Lcom/netease/mpay/y;)V

    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/f/bj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/bj$a;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netease/mpay/f/a/b$a;->a:Lcom/netease/mpay/f/a/b$a;

    if-ne v1, p1, :cond_2

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v1, v1, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v1, v1, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ac;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ac;-><init>(Lcom/netease/mpay/y;)V

    iget-object v1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v1, v1, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/ad;

    invoke-direct {v5, p0}, Lcom/netease/mpay/ad;-><init>(Lcom/netease/mpay/y;)V

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v1, v1, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/ae;

    invoke-direct {v2, p0}, Lcom/netease/mpay/ae;-><init>(Lcom/netease/mpay/y;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/b;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/cd;

    iget-object v1, p0, Lcom/netease/mpay/y;->a:Lcom/netease/mpay/x;

    iget-object v1, v1, Lcom/netease/mpay/x;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/z;

    invoke-direct {v2, p0}, Lcom/netease/mpay/z;-><init>(Lcom/netease/mpay/y;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/cd;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/netease/mpay/cd$a;)V

    invoke-virtual {v0, p1}, Lcom/netease/mpay/cd;->a(Lcom/netease/mpay/server/response/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/y;->a(Lcom/netease/mpay/server/response/b;)V

    return-void
.end method
