.class public Lcom/netease/mpay/e;
.super Lcom/netease/mpay/widget/b/c;


# static fields
.field private static j:Landroid/os/Handler;


# instance fields
.field private e:Lcom/netease/mpay/ii;

.field private f:Lcom/netease/mpay/e/b;

.field private g:Lcom/netease/mpay/e/b/a;

.field private h:Z

.field private i:Lcom/netease/mpay/b/s;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/b/c;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/e;->h:Z

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

.method static synthetic a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    sput-object p0, Lcom/netease/mpay/e;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/e;Lcom/netease/mpay/e/b/a;)Lcom/netease/mpay/e/b/a;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/e;->g:Lcom/netease/mpay/e/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/e;->y()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e;->g:Lcom/netease/mpay/e/b/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ar$d;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ar$d;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$d;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/e;)Lcom/netease/mpay/b/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/e;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e;->f:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/e;)Lcom/netease/mpay/ii;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e;->e:Lcom/netease/mpay/ii;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/e;->z()V

    return-void
.end method

.method static synthetic v()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/netease/mpay/e;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->n()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/widget/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/e;->h:Z

    new-instance v0, Lcom/netease/mpay/f/a;

    iget-object v1, p0, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    invoke-virtual {v5}, Lcom/netease/mpay/b/s;->q()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/f;

    invoke-direct {v6, p0}, Lcom/netease/mpay/f;-><init>(Lcom/netease/mpay/e;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/a;->h()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/s;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    iget-object v0, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->b(Landroid/os/Bundle;)V

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/mpay/e;->e:Lcom/netease/mpay/ii;

    invoke-direct {p0}, Lcom/netease/mpay/e;->x()V

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/e;->f:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/e;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->f()Lcom/netease/mpay/e/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/p;->b()Lcom/netease/mpay/e/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/e;->g:Lcom/netease/mpay/e/b/a;

    invoke-direct {p0}, Lcom/netease/mpay/e;->z()V

    return-void
.end method

.method public closeWindow()V
    .locals 1

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/netease/mpay/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->j()V

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/mpay/e;->j:Landroid/os/Handler;

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/e;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/e;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->l()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/e;->e:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->o()Z

    iget-boolean v0, p0, Lcom/netease/mpay/e;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/netease/mpay/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected s()Lcom/netease/mpay/widget/b/c$e;
    .locals 5

    new-instance v0, Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/widget/b/c$a;

    iget-object v3, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    iget-boolean v3, v3, Lcom/netease/mpay/b/s;->f:Z

    iget-object v4, p0, Lcom/netease/mpay/e;->i:Lcom/netease/mpay/b/s;

    invoke-virtual {v4}, Lcom/netease/mpay/b/s;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/widget/b/c$a;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/widget/b/c$a;)V

    return-object v0
.end method

.method public t()V
    .locals 3

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->t()V

    iget-object v0, p0, Lcom/netease/mpay/e;->g:Lcom/netease/mpay/e/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/a;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/a;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/e;->g:Lcom/netease/mpay/e/b/a;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/e;->g:Lcom/netease/mpay/e/b/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/netease/mpay/e/b/a;->a:I

    iget-object v0, p0, Lcom/netease/mpay/e;->g:Lcom/netease/mpay/e/b/a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/netease/mpay/e/b/a;->b:D

    iget-object v0, p0, Lcom/netease/mpay/e;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->f()Lcom/netease/mpay/e/c/p;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e;->g:Lcom/netease/mpay/e/b/a;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/p;->a(Lcom/netease/mpay/e/b/a;)V

    invoke-direct {p0}, Lcom/netease/mpay/e;->z()V

    return-void
.end method

.method public u()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->u()V

    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/netease/mpay/e;->b(Ljava/lang/String;)V

    return-void
.end method
