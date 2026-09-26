.class Lcom/netease/mpay/iu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/b/o;

.field final synthetic b:Lcom/netease/mpay/ij;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ij;Lcom/netease/mpay/b/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    iput-object p2, p0, Lcom/netease/mpay/iu;->a:Lcom/netease/mpay/b/o;

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

    iget-object v1, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v1}, Lcom/netease/mpay/ij;->o(Lcom/netease/mpay/ij;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v2}, Lcom/netease/mpay/ij;->o(Lcom/netease/mpay/ij;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/iw;

    invoke-direct {v3, p0}, Lcom/netease/mpay/iw;-><init>(Lcom/netease/mpay/iu;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/netease/mpay/f/a/b$a;->g:Lcom/netease/mpay/f/a/b$a;

    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    iget-object v0, v0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v1}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v2}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v3}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v4}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v5}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v5, v5, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/ix;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ix;-><init>(Lcom/netease/mpay/iu;)V

    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/f/bj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/bj$a;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/iy;

    invoke-direct {v2, p0, p2}, Lcom/netease/mpay/iy;-><init>(Lcom/netease/mpay/iu;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/j;)V
    .locals 5

    invoke-virtual {p1}, Lcom/netease/mpay/server/response/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/cd;

    iget-object v1, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/iv;

    invoke-direct {v2, p0}, Lcom/netease/mpay/iv;-><init>(Lcom/netease/mpay/iu;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/cd;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/netease/mpay/cd$a;)V

    invoke-virtual {v0, p1}, Lcom/netease/mpay/cd;->a(Lcom/netease/mpay/server/response/j;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/f;

    iget-object v1, p0, Lcom/netease/mpay/iu;->a:Lcom/netease/mpay/b/o;

    iget-object v2, p1, Lcom/netease/mpay/server/response/j;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/f;-><init>(Lcom/netease/mpay/b/o;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/b$a;->t:Lcom/netease/mpay/b$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/j;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/iu;->a(Lcom/netease/mpay/server/response/j;)V

    return-void
.end method
