.class public Lcom/netease/mpay/f/ar;
.super Lcom/netease/mpay/f/a/d;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/ar;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->d()Lcom/netease/mpay/f/a/d;

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
.method protected a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/e;
    .locals 5

    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/ar;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/ar;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/ar;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/a/h;

    iget-object v2, p0, Lcom/netease/mpay/f/ar;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/ar;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/e;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/netease/mpay/server/response/e;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/netease/mpay/server/response/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/server/response/e$b;

    if-eqz v1, :cond_1

    const-string v3, "alipay"

    iget-object v4, v1, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/netease/mpay/bj;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "uppay"

    iget-object v4, v1, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netease/mpay/f/ar;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/netease/mpay/bj;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    const-string v3, "bankcard"

    iget-object v1, v1, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/mpay/bj;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/ar;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/e;

    move-result-object v0

    return-object v0
.end method
