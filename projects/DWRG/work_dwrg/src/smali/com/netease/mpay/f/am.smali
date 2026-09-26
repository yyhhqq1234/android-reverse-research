.class public Lcom/netease/mpay/f/am;
.super Lcom/netease/mpay/f/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/am$e;,
        Lcom/netease/mpay/f/am$c;,
        Lcom/netease/mpay/f/am$b;,
        Lcom/netease/mpay/f/am$d;,
        Lcom/netease/mpay/f/am$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/f/am$d;

.field private b:Lcom/netease/mpay/f/am$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/am$d;ZLcom/netease/mpay/f/am$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    iput-object p6, p0, Lcom/netease/mpay/f/am;->b:Lcom/netease/mpay/f/am$a;

    if-eqz p5, :cond_0

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->c()Lcom/netease/mpay/f/a/d;

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;
    .locals 7

    new-instance v1, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/am;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/am;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/am;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    instance-of v0, v0, Lcom/netease/mpay/f/am$b;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/netease/mpay/server/a/ah;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iget-object v3, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    check-cast v0, Lcom/netease/mpay/f/am$b;

    iget-object v0, v0, Lcom/netease/mpay/f/am$b;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v4}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/f/am;->c:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/netease/mpay/server/a/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    instance-of v0, v0, Lcom/netease/mpay/f/am$c;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/netease/mpay/server/a/aw;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iget-object v3, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    check-cast v0, Lcom/netease/mpay/f/am$c;

    iget-object v4, v0, Lcom/netease/mpay/f/am$c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    check-cast v0, Lcom/netease/mpay/f/am$c;

    iget-object v0, v0, Lcom/netease/mpay/f/am$c;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v5}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/f/am;->c:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/netease/mpay/server/a/aw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    instance-of v0, v0, Lcom/netease/mpay/f/am$e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    check-cast v0, Lcom/netease/mpay/f/am$e;

    iget-object v0, v0, Lcom/netease/mpay/f/am$e;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Lcom/netease/mpay/server/a$f;

    iget-object v1, p0, Lcom/netease/mpay/f/am;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Lcom/netease/mpay/server/a/bi;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v5}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/f/am;->c:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/netease/mpay/server/a/bi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/netease/mpay/server/a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    iget-object v0, p0, Lcom/netease/mpay/f/am;->b:Lcom/netease/mpay/f/am$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/netease/mpay/f/a/a$b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/f/am;->b:Lcom/netease/mpay/f/am$a;

    invoke-interface {v0}, Lcom/netease/mpay/f/am$a;->a()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netease/mpay/f/a/a$a;->a:Lcom/netease/mpay/f/a/a$a;

    iget-object v2, p1, Lcom/netease/mpay/f/a/a$b;->c:Lcom/netease/mpay/f/a/a$a;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    instance-of v0, v0, Lcom/netease/mpay/f/am$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/f/am;->a:Lcom/netease/mpay/f/am$d;

    check-cast v0, Lcom/netease/mpay/f/am$e;

    iget-object v1, p1, Lcom/netease/mpay/f/a/a$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/f/am$e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/netease/mpay/f/a/a$b;->e:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/server/a$q;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/netease/mpay/f/am;->b:Lcom/netease/mpay/f/am$a;

    iget-object v2, p1, Lcom/netease/mpay/f/a/a$b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/netease/mpay/f/am$a;->a(Ljava/lang/String;Lcom/netease/mpay/server/a$q;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/am;->a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
