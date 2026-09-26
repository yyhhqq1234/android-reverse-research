.class Lcom/netease/mpay/lj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/s;

.field final synthetic b:Lcom/netease/mpay/li;


# direct methods
.method constructor <init>(Lcom/netease/mpay/li;Lcom/netease/mpay/widget/s;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/lj;->b:Lcom/netease/mpay/li;

    iput-object p2, p0, Lcom/netease/mpay/lj;->a:Lcom/netease/mpay/widget/s;

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

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lj;->a:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/lj;->b:Lcom/netease/mpay/li;

    invoke-static {v1}, Lcom/netease/mpay/li;->a(Lcom/netease/mpay/li;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/lj;->b:Lcom/netease/mpay/li;

    invoke-static {v2}, Lcom/netease/mpay/li;->a(Lcom/netease/mpay/li;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/lk;

    invoke-direct {v3, p0}, Lcom/netease/mpay/lk;-><init>(Lcom/netease/mpay/lj;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/f/a/b$a;->a:Lcom/netease/mpay/f/a/b$a;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/lj;->a:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/lj;->b:Lcom/netease/mpay/li;

    invoke-static {v1}, Lcom/netease/mpay/li;->a(Lcom/netease/mpay/li;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ll;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ll;-><init>(Lcom/netease/mpay/lj;)V

    iget-object v1, p0, Lcom/netease/mpay/lj;->b:Lcom/netease/mpay/li;

    iget-object v1, v1, Lcom/netease/mpay/li;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/lm;

    invoke-direct {v5, p0}, Lcom/netease/mpay/lm;-><init>(Lcom/netease/mpay/lj;)V

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/lj;->a:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/lj;->b:Lcom/netease/mpay/li;

    iget-object v1, v1, Lcom/netease/mpay/li;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/ln;

    invoke-direct {v2, p0}, Lcom/netease/mpay/ln;-><init>(Lcom/netease/mpay/lj;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/lj;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
