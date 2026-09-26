.class Lcom/netease/mpay/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/t;


# direct methods
.method constructor <init>(Lcom/netease/mpay/t;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/u;->a:Lcom/netease/mpay/t;

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/u;->a:Lcom/netease/mpay/t;

    iget-object v1, v1, Lcom/netease/mpay/t;->b:Lcom/netease/mpay/o$c;

    iget-object v1, v1, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v1, v1, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/netease/mpay/u;->a:Lcom/netease/mpay/t;

    iget-object v1, v1, Lcom/netease/mpay/t;->b:Lcom/netease/mpay/o$c;

    iget-object v1, v1, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v1}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v1

    iget v1, v1, Lcom/netease/mpay/b/b;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/u;->a:Lcom/netease/mpay/t;

    iget-object v0, v0, Lcom/netease/mpay/t;->b:Lcom/netease/mpay/o$c;

    new-instance v1, Lcom/netease/mpay/server/a/b/g;

    iget-object v2, p1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/netease/mpay/server/a/b/g;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/o$c;->a(Lcom/netease/mpay/o$c;Lcom/netease/mpay/server/a/ax;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/u;->a:Lcom/netease/mpay/t;

    iget-object v0, v0, Lcom/netease/mpay/t;->b:Lcom/netease/mpay/o$c;

    new-instance v1, Lcom/netease/mpay/server/a/b/p;

    iget-object v2, p1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/netease/mpay/server/a/b/p;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/o$c;->a(Lcom/netease/mpay/o$c;Lcom/netease/mpay/server/a/ax;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/u;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
