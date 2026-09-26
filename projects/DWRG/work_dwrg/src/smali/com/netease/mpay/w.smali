.class Lcom/netease/mpay/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b;

.field final synthetic b:Lcom/netease/mpay/v;


# direct methods
.method constructor <init>(Lcom/netease/mpay/v;Lcom/netease/mpay/e/b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/w;->b:Lcom/netease/mpay/v;

    iput-object p2, p0, Lcom/netease/mpay/w;->a:Lcom/netease/mpay/e/b;

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

    iget-object v1, p0, Lcom/netease/mpay/w;->b:Lcom/netease/mpay/v;

    iget-object v1, v1, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v1, v1, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v1, v1, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/w;->b:Lcom/netease/mpay/v;

    iget-object v0, v0, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    new-instance v1, Lcom/netease/mpay/server/a/b/e;

    iget-object v2, p1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/w;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v3}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/w;->b:Lcom/netease/mpay/v;

    iget-object v4, v4, Lcom/netease/mpay/v;->b:Lcom/netease/mpay/o$c;

    iget-object v4, v4, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v4, v4, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/an$a;->s:Lcom/netease/mpay/f/an$a;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/a/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/o$c;->a(Lcom/netease/mpay/o$c;Lcom/netease/mpay/server/a/ax;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/w;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
