.class Lcom/netease/mpay/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/cz$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/EnterGameActivity$a;

.field final synthetic b:Lcom/netease/mpay/bm;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bm;Lcom/netease/mpay/EnterGameActivity$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bn;->b:Lcom/netease/mpay/bm;

    iput-object p2, p0, Lcom/netease/mpay/bn;->a:Lcom/netease/mpay/EnterGameActivity$a;

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
.method public a()V
    .locals 6

    new-instance v0, Lcom/netease/mpay/f/x;

    iget-object v1, p0, Lcom/netease/mpay/bn;->b:Lcom/netease/mpay/bm;

    invoke-static {v1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/bn;->b:Lcom/netease/mpay/bm;

    invoke-static {v2}, Lcom/netease/mpay/bm;->b(Lcom/netease/mpay/bm;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bn;->b:Lcom/netease/mpay/bm;

    invoke-static {v3}, Lcom/netease/mpay/bm;->c(Lcom/netease/mpay/bm;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bn;->a:Lcom/netease/mpay/EnterGameActivity$a;

    iget-object v4, v4, Lcom/netease/mpay/EnterGameActivity$a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/bn;->b:Lcom/netease/mpay/bm;

    invoke-static {v5}, Lcom/netease/mpay/bm;->d(Lcom/netease/mpay/bm;)Lcom/netease/mpay/f/a/b;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/x;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/x;->h()V

    return-void
.end method

.method public a(Lcom/netease/mpay/f/t$c;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/netease/mpay/n;->a()Lcom/netease/mpay/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/n;->f()V

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/bn;->b:Lcom/netease/mpay/bm;

    invoke-static {v1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/bn;->b:Lcom/netease/mpay/bm;

    invoke-static {v1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->j:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/bo;

    invoke-direct {v2, p0}, Lcom/netease/mpay/bo;-><init>(Lcom/netease/mpay/bn;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
