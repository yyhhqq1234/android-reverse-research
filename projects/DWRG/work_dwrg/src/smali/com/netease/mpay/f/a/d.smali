.class public abstract Lcom/netease/mpay/f/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/a/d$e;,
        Lcom/netease/mpay/f/a/d$d;,
        Lcom/netease/mpay/f/a/d$c;,
        Lcom/netease/mpay/f/a/d$a;,
        Lcom/netease/mpay/f/a/d$b;,
        Lcom/netease/mpay/f/a/d$f;
    }
.end annotation


# instance fields
.field protected c:Landroid/app/Activity;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/netease/mpay/f/a/b;

.field g:Lcom/netease/mpay/f/a/d$e;

.field h:Z

.field i:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/f/a/d;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/f/a/d;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/f/a/d;->f:Lcom/netease/mpay/f/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/f/a/d;->g:Lcom/netease/mpay/f/a/d$e;

    iput-boolean v1, p0, Lcom/netease/mpay/f/a/d;->h:Z

    iput-boolean v1, p0, Lcom/netease/mpay/f/a/d;->i:Z

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

.method static synthetic a(Lcom/netease/mpay/f/a/d;)Lcom/netease/mpay/f/a/a$b;
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/f/a/d;->b()Lcom/netease/mpay/f/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/netease/mpay/f/a/d$d;Lcom/netease/mpay/f/a/d$c;)V
    .locals 4

    sget-object v0, Lcom/netease/mpay/f/a/g;->b:[I

    invoke-virtual {p2}, Lcom/netease/mpay/f/a/d$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->b()V

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->c()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/g;->a()V

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->b:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/f/a/d;->b(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    return-void
.end method

.method private b()Lcom/netease/mpay/f/a/a$b;
    .locals 6

    const/4 v2, 0x1

    new-instance v4, Lcom/netease/mpay/f/a/d$d;

    invoke-direct {v4, p0}, Lcom/netease/mpay/f/a/d$d;-><init>(Lcom/netease/mpay/f/a/d;)V

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/netease/mpay/f/a/d;->b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/f/a/a$b;

    invoke-direct {v1}, Lcom/netease/mpay/f/a/a$b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/f/a/a$b;->a(Ljava/lang/Object;)Lcom/netease/mpay/f/a/a$b;
    :try_end_0
    .catch Lcom/netease/mpay/server/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    sget-object v1, Lcom/netease/mpay/f/a/d$c;->a:Lcom/netease/mpay/f/a/d$c;

    instance-of v5, v0, Lcom/netease/mpay/server/a$f;

    if-eqz v5, :cond_1

    sget-object v1, Lcom/netease/mpay/f/a/d$c;->a:Lcom/netease/mpay/f/a/d$c;

    :goto_1
    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/netease/mpay/f/a/d;->i:Z

    if-eqz v2, :cond_4

    new-instance v1, Lcom/netease/mpay/server/a;

    invoke-virtual {v0}, Lcom/netease/mpay/server/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    instance-of v2, v1, Lcom/netease/mpay/server/a$p;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/netease/mpay/server/a$p;

    iget-object v0, v0, Lcom/netease/mpay/server/a$p;->a:Lcom/netease/mpay/server/a$q;

    :cond_0
    invoke-static {v1}, Lcom/netease/mpay/f/a/a;->a(Lcom/netease/mpay/server/a;)Lcom/netease/mpay/f/a/a$a;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v2, Lcom/netease/mpay/f/a/a$b;

    invoke-direct {v2}, Lcom/netease/mpay/f/a/a$b;-><init>()V

    invoke-virtual {v1}, Lcom/netease/mpay/server/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/netease/mpay/f/a/a$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/mpay/f/a/a$b;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v5, v0, Lcom/netease/mpay/server/a$b;

    if-eqz v5, :cond_2

    sget-object v1, Lcom/netease/mpay/f/a/d$c;->c:Lcom/netease/mpay/f/a/d$c;

    goto :goto_1

    :cond_2
    instance-of v5, v0, Lcom/netease/mpay/server/a$l;

    if-nez v5, :cond_3

    instance-of v5, v0, Lcom/netease/mpay/server/a$m;

    if-eqz v5, :cond_7

    :cond_3
    sget-object v1, Lcom/netease/mpay/f/a/d$c;->b:Lcom/netease/mpay/f/a/d$c;

    goto :goto_1

    :cond_4
    invoke-direct {p0, v4, v1}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/d$d;Lcom/netease/mpay/f/a/d$c;)V

    :cond_5
    move-object v1, v0

    goto :goto_2

    :cond_6
    new-instance v3, Lcom/netease/mpay/f/a/a$b;

    invoke-direct {v3}, Lcom/netease/mpay/f/a/a$b;-><init>()V

    invoke-virtual {v1}, Lcom/netease/mpay/server/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1, v0}, Lcom/netease/mpay/f/a/a$b;->a(Lcom/netease/mpay/f/a/a$a;Ljava/lang/String;Ljava/lang/Object;)Lcom/netease/mpay/f/a/a$b;

    move-result-object v0

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method private b(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 7

    sget-object v0, Lcom/netease/mpay/f/a/a$a;->g:Lcom/netease/mpay/f/a/a$a;

    iget-object v1, p1, Lcom/netease/mpay/f/a/a$b;->c:Lcom/netease/mpay/f/a/a$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/netease/mpay/f/a/a$a;->f:Lcom/netease/mpay/f/a/a$a;

    iget-object v1, p1, Lcom/netease/mpay/f/a/a$b;->c:Lcom/netease/mpay/f/a/a$a;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/netease/mpay/f/a/a$a;->g:Lcom/netease/mpay/f/a/a$a;

    iget-object v1, p1, Lcom/netease/mpay/f/a/a$b;->c:Lcom/netease/mpay/f/a/a$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/netease/mpay/f/an$a;->o:Lcom/netease/mpay/f/an$a;

    move-object v4, v0

    :goto_0
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/a$b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Lcom/netease/mpay/f/an$a;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/f/a/e;

    invoke-direct {v3, p0, v4}, Lcom/netease/mpay/f/a/e;-><init>(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/an$a;)V

    iget-object v4, p0, Lcom/netease/mpay/f/a/d;->c:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/f/a/f;

    invoke-direct {v5, p0}, Lcom/netease/mpay/f/a/f;-><init>(Lcom/netease/mpay/f/a/d;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    return-void

    :cond_2
    sget-object v0, Lcom/netease/mpay/f/an$a;->r:Lcom/netease/mpay/f/an$a;

    move-object v4, v0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/netease/mpay/f/a/a$b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/f/a/a$b;->b:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/netease/mpay/f/a/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/f/a/a$b;->c:Lcom/netease/mpay/f/a/a$a;

    invoke-static {v0}, Lcom/netease/mpay/f/a/b$a;->a(Lcom/netease/mpay/f/a/a$a;)Lcom/netease/mpay/f/a/b$a;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/f/a/a$b;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/netease/mpay/f/a/b;->a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
.end method

.method protected c()Lcom/netease/mpay/f/a/d;
    .locals 2

    new-instance v0, Lcom/netease/mpay/f/a/d$e;

    sget-object v1, Lcom/netease/mpay/f/a/d$f;->b:Lcom/netease/mpay/f/a/d$f;

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/f/a/d$e;-><init>(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/a/d$f;)V

    iput-object v0, p0, Lcom/netease/mpay/f/a/d;->g:Lcom/netease/mpay/f/a/d$e;

    return-object p0
.end method

.method protected d()Lcom/netease/mpay/f/a/d;
    .locals 2

    new-instance v0, Lcom/netease/mpay/f/a/d$e;

    sget-object v1, Lcom/netease/mpay/f/a/d$f;->a:Lcom/netease/mpay/f/a/d$f;

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/f/a/d$e;-><init>(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/a/d$f;)V

    iput-object v0, p0, Lcom/netease/mpay/f/a/d;->g:Lcom/netease/mpay/f/a/d$e;

    return-object p0
.end method

.method protected f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/f/a/d;->h:Z

    return-void
.end method

.method protected g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/f/a/d;->i:Z

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/netease/mpay/f/a/d;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/mpay/f/a/d$b;

    invoke-direct {v1, p0, v2}, Lcom/netease/mpay/f/a/d$b;-><init>(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/a/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/a/d$a;

    invoke-direct {v0, p0, v2}, Lcom/netease/mpay/f/a/d$a;-><init>(Lcom/netease/mpay/f/a/d;Lcom/netease/mpay/f/a/e;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/f/a/d$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
