.class Lcom/netease/mpay/v;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/o;

.field final synthetic b:Lcom/netease/mpay/o$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/o$c;Lcom/netease/mpay/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iput-object p2, p0, Lcom/netease/mpay/v;->a:Lcom/netease/mpay/o;

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

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v1, v1, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v1}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v1

    iget v1, v1, Lcom/netease/mpay/b/b;->a:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v1, v1, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v1, v1, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v2, v2, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v2}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    new-instance v3, Lcom/netease/mpay/server/a/b/e;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    iget-object v4, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v4, v4, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v4, v4, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v4}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/netease/mpay/f/an$a;->s:Lcom/netease/mpay/f/an$a;

    invoke-direct {v3, v1, v0, v4}, Lcom/netease/mpay/server/a/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    invoke-static {v2, v3}, Lcom/netease/mpay/o$c;->a(Lcom/netease/mpay/o$c;Lcom/netease/mpay/server/a/ax;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/netease/mpay/f/v;

    iget-object v2, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v2, v2, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v2, v2, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v3, v3, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v3}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v4, v4, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v4}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/w;

    invoke-direct {v5, p0, v0}, Lcom/netease/mpay/w;-><init>(Lcom/netease/mpay/v;Lcom/netease/mpay/e/b;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/f/v;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v1}, Lcom/netease/mpay/f/v;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    new-instance v1, Lcom/netease/mpay/server/a/b/o;

    const-string v2, "https://reg.163.com/naq/findPassword/#/verifyAccount"

    invoke-direct {v1, v2}, Lcom/netease/mpay/server/a/b/o;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/o$c;->a(Lcom/netease/mpay/o$c;Lcom/netease/mpay/server/a/ax;)V

    goto :goto_0
.end method
