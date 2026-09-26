.class public Lcom/netease/mpay/f/bs;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/bs;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/bs;->k:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/netease/mpay/f/bs;->l:Z

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
.method protected a(Lcom/netease/mpay/f/au$b;)Lcom/netease/mpay/server/response/m;
    .locals 9

    const/4 v7, 0x1

    iget-object v0, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bs;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/a$f;

    iget-object v1, p0, Lcom/netease/mpay/f/bs;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v8, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/bs;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bs;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bs;->e:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/bj;

    iget-object v1, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bs;->k:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v5}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/f/bs;->c:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/netease/mpay/f/bs;->l:Z

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/bj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    iget v1, v0, Lcom/netease/mpay/server/response/m;->c:I

    if-ne v7, v1, :cond_2

    new-instance v1, Lcom/netease/mpay/e/b/ah;

    invoke-direct {v1, v7}, Lcom/netease/mpay/e/b/ah;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1, v7}, Lcom/netease/mpay/f/bs;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Lcom/netease/mpay/e/b/x;

    invoke-direct {v2, v7}, Lcom/netease/mpay/e/b/x;-><init>(Z)V

    iget-object v1, v0, Lcom/netease/mpay/server/response/m;->u:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v7

    :goto_1
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/netease/mpay/f/bs;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
