.class public Lcom/netease/mpay/f/v;
.super Lcom/netease/mpay/f/a/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->g()V

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


# virtual methods
.method protected a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ae;
    .locals 2

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/server/response/ae;

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/response/ae;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/v;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    return-object v0
.end method
