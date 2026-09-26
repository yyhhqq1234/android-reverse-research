.class public Lcom/netease/mpay/f/x;
.super Lcom/netease/mpay/f/a/d;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p3, p0, Lcom/netease/mpay/f/x;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/f/x;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->c()Lcom/netease/mpay/f/a/d;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->g()V

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
.method protected a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/i;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/x;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/x;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/f/x;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/x;->e:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v5}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/netease/mpay/server/a/p;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v5, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/f/x;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    :cond_0
    invoke-direct {v4, v5, v6, v1, v0}, Lcom/netease/mpay/server/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/i;

    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/x;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/i;

    move-result-object v0

    return-object v0
.end method
