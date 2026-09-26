.class public Lcom/netease/mpay/f/bh;
.super Lcom/netease/mpay/f/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/bh$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netease/mpay/server/response/aa;

.field private j:Ljava/lang/String;

.field private k:Lcom/netease/mpay/f/bh$a;

.field private l:Lcom/netease/mpay/e/b/o;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/response/aa;Ljava/lang/String;Lcom/netease/mpay/f/bh$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/bh;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/bh;->b:Lcom/netease/mpay/server/response/aa;

    iput-object p7, p0, Lcom/netease/mpay/f/bh;->k:Lcom/netease/mpay/f/bh$a;

    iput-object p6, p0, Lcom/netease/mpay/f/bh;->j:Ljava/lang/String;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->c()Lcom/netease/mpay/f/a/d;

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

.method static synthetic a(Lcom/netease/mpay/f/bh;)Lcom/netease/mpay/f/bh$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->k:Lcom/netease/mpay/f/bh$a;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/f/bh;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/f/bh;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/f/bh;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/f/a/d$d;->a(Lcom/netease/mpay/e/b/o;)V

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/bh;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->l()Lcom/netease/mpay/e/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/a;->a()Lcom/netease/mpay/e/c/a$a;

    move-result-object v4

    new-instance v6, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bh;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bh;->e:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/at;

    iget-object v1, p0, Lcom/netease/mpay/f/bh;->b:Lcom/netease/mpay/server/response/aa;

    iget-object v1, v1, Lcom/netease/mpay/server/response/aa;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v4, v4, Lcom/netease/mpay/e/c/a$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/bh;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/a/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    iput-boolean v7, v0, Lcom/netease/mpay/e/b/o;->m:Z

    iget-object v0, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    iput-boolean v7, v0, Lcom/netease/mpay/e/b/o;->l:Z

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bh;->l:Lcom/netease/mpay/e/b/o;

    iget-object v2, p0, Lcom/netease/mpay/f/bh;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v7}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 4

    new-instance v0, Lcom/netease/mpay/f/bn;

    iget-object v1, p0, Lcom/netease/mpay/f/bh;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/bh;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bh;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/f/bn;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bn;->h()V

    new-instance v0, Lcom/netease/mpay/f/bi;

    invoke-direct {v0, p0}, Lcom/netease/mpay/f/bi;-><init>(Lcom/netease/mpay/f/bh;)V

    invoke-super {p0, p1, v0}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    return-void
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/bh;->a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
