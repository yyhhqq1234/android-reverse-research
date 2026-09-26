.class Lcom/netease/mpay/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/e;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

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

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    iget-object v1, v1, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    iget-object v1, v1, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    iget-object v2, v2, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/i;

    invoke-direct {v3, p0}, Lcom/netease/mpay/i;-><init>(Lcom/netease/mpay/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/netease/mpay/f/a/b$a;->a:Lcom/netease/mpay/f/a/b$a;

    if-ne v0, p1, :cond_1

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    iget-object v1, v1, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    iget-object v1, v1, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cH:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/j;

    invoke-direct {v3, p0}, Lcom/netease/mpay/j;-><init>(Lcom/netease/mpay/f;)V

    iget-object v1, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    iget-object v1, v1, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/k;

    invoke-direct {v5, p0}, Lcom/netease/mpay/k;-><init>(Lcom/netease/mpay/f;)V

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    iget-object v1, v1, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    iget-object v1, v1, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/l;

    invoke-direct {v2, p0}, Lcom/netease/mpay/l;-><init>(Lcom/netease/mpay/f;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/f;->a:Lcom/netease/mpay/e;

    invoke-static {v0}, Lcom/netease/mpay/e;->a(Lcom/netease/mpay/e;)V

    new-instance v0, Lcom/netease/mpay/g;

    invoke-direct {v0, p0}, Lcom/netease/mpay/g;-><init>(Lcom/netease/mpay/f;)V

    invoke-static {v0}, Lcom/netease/mpay/e;->a(Landroid/os/Handler;)Landroid/os/Handler;

    new-instance v0, Lcom/netease/mpay/h;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/h;-><init>(Lcom/netease/mpay/f;Lcom/netease/mpay/server/response/ae;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
