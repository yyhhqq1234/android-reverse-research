.class public Lcom/netease/mpay/f/j;
.super Lcom/netease/mpay/f/a/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p7}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/j;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/j;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/f/j;->j:Ljava/lang/String;

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
    .locals 7

    new-instance v6, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/j;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/j;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/j;->e:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/av;

    iget-object v1, p0, Lcom/netease/mpay/f/j;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/j;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/j;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/j;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/a/av;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/ae;

    return-object v0
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/j;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    return-object v0
.end method
