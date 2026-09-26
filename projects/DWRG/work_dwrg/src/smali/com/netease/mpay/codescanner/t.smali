.class Lcom/netease/mpay/codescanner/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/bh$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/m;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0, p1, p2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->i(Lcom/netease/mpay/codescanner/m;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v3}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/w;->b:Lcom/netease/mpay/server/response/aa;

    iget-object v3, v3, Lcom/netease/mpay/server/response/aa;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v3}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/w;->b:Lcom/netease/mpay/server/response/aa;

    iget-object v3, v3, Lcom/netease/mpay/server/response/aa;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v5, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v5}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/b/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p2, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v6}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/b/ao;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/t;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    return-void
.end method
