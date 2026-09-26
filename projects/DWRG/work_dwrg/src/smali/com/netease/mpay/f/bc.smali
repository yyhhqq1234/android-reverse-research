.class public Lcom/netease/mpay/f/bc;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/bc;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/bc;->k:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/netease/mpay/f/bc;->l:Z

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
    .locals 10

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/netease/mpay/f/bc;->l:Z

    if-eqz v0, :cond_0

    new-instance v9, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/bc;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bc;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bc;->e:Ljava/lang/String;

    invoke-direct {v9, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/x;

    iget-object v1, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bc;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bc;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bc;->k:Ljava/lang/String;

    invoke-static {v4}, Lcom/netease/mpay/widget/bd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v5}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/f/bc;->c:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v6, v6, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v7, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v7, v7, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    :goto_0
    new-instance v2, Lcom/netease/mpay/e/b/x;

    invoke-direct {v2, v8}, Lcom/netease/mpay/e/b/x;-><init>(Z)V

    iget-object v1, v0, Lcom/netease/mpay/server/response/m;->u:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/netease/mpay/f/bc;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v0

    :cond_0
    new-instance v6, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/bc;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/bc;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bc;->e:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/ai;

    iget-object v1, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/bc;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bc;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bc;->k:Ljava/lang/String;

    invoke-static {v4}, Lcom/netease/mpay/widget/bd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v5}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v5

    iget-object v7, p0, Lcom/netease/mpay/f/bc;->c:Landroid/app/Activity;

    invoke-virtual {v5, v7}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/a/ai;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    goto :goto_0

    :cond_1
    move v1, v8

    goto :goto_1
.end method
