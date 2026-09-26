.class Lcom/netease/mpay/d/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/d/a/a/q$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/y;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/y;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/ad;->a:Lcom/netease/mpay/d/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public a(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/netease/mpay/f/bb;

    iget-object v1, p0, Lcom/netease/mpay/d/a/ad;->a:Lcom/netease/mpay/d/a/y;

    invoke-static {v1}, Lcom/netease/mpay/d/a/y;->b(Lcom/netease/mpay/d/a/y;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/d/a/ad;->a:Lcom/netease/mpay/d/a/y;

    invoke-static {v2}, Lcom/netease/mpay/d/a/y;->a(Lcom/netease/mpay/d/a/y;)Lcom/netease/mpay/d/a/y$c;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/d/a/y$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/ad;->a:Lcom/netease/mpay/d/a/y;

    invoke-static {v3}, Lcom/netease/mpay/d/a/y;->a(Lcom/netease/mpay/d/a/y;)Lcom/netease/mpay/d/a/y$c;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/d/a/y$c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/d/a/ad;->a:Lcom/netease/mpay/d/a/y;

    invoke-static {v4}, Lcom/netease/mpay/d/a/y;->a(Lcom/netease/mpay/d/a/y;)Lcom/netease/mpay/d/a/y$c;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/d/a/y$c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/d/a/ad;->a:Lcom/netease/mpay/d/a/y;

    invoke-static {v5}, Lcom/netease/mpay/d/a/y;->a(Lcom/netease/mpay/d/a/y;)Lcom/netease/mpay/d/a/y$c;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/d/a/y$c;->e:Ljava/lang/String;

    new-instance v7, Lcom/netease/mpay/d/a/ae;

    invoke-direct {v7, p0}, Lcom/netease/mpay/d/a/ae;-><init>(Lcom/netease/mpay/d/a/ad;)V

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/bb;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bb;->h()V

    return-void
.end method
