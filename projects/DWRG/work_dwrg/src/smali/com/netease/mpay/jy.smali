.class Lcom/netease/mpay/jy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/b/s;

.field final synthetic b:Lcom/netease/mpay/jt;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jt;Lcom/netease/mpay/b/s;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    iput-object p2, p0, Lcom/netease/mpay/jy;->a:Lcom/netease/mpay/b/s;

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

    iget-object v1, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    iget-object v1, v1, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v0, p2}, Lcom/netease/mpay/jt;->b(Lcom/netease/mpay/jt;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/netease/mpay/f/a/b$a;->a:Lcom/netease/mpay/f/a/b$a;

    if-ne v1, p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netease/mpay/f/a/b$a;->g:Lcom/netease/mpay/f/a/b$a;

    if-ne v1, p1, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    iget-object v0, v0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v1}, Lcom/netease/mpay/jt;->f(Lcom/netease/mpay/jt;)Lcom/netease/mpay/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/r;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v2}, Lcom/netease/mpay/jt;->f(Lcom/netease/mpay/jt;)Lcom/netease/mpay/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/r;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v3}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v4}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v5}, Lcom/netease/mpay/jt;->f(Lcom/netease/mpay/jt;)Lcom/netease/mpay/b/r;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/b/r;->c:Lcom/netease/mpay/b/p$a;

    iget-object v5, v5, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/ka;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ka;-><init>(Lcom/netease/mpay/jy;)V

    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/f/bj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/bj$a;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    iget-object v1, v1, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/kb;

    invoke-direct {v2, p0}, Lcom/netease/mpay/kb;-><init>(Lcom/netease/mpay/jy;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/j;)V
    .locals 5

    invoke-virtual {p1}, Lcom/netease/mpay/server/response/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/cd;

    iget-object v1, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    iget-object v1, v1, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/jz;

    invoke-direct {v2, p0}, Lcom/netease/mpay/jz;-><init>(Lcom/netease/mpay/jy;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/cd;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/netease/mpay/cd$a;)V

    invoke-virtual {v0, p1}, Lcom/netease/mpay/cd;->a(Lcom/netease/mpay/server/response/j;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    iget-object v0, v0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->s:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/f;

    iget-object v3, p0, Lcom/netease/mpay/jy;->a:Lcom/netease/mpay/b/s;

    iget-object v4, p1, Lcom/netease/mpay/server/response/j;->j:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/f;-><init>(Lcom/netease/mpay/b/s;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/j;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/jy;->a(Lcom/netease/mpay/server/response/j;)V

    return-void
.end method
