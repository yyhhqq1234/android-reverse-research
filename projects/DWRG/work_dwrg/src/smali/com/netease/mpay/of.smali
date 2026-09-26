.class Lcom/netease/mpay/of;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/oc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/of;->a:Lcom/netease/mpay/oc;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

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
.method protected a(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/of;->a:Lcom/netease/mpay/oc;

    invoke-static {v0}, Lcom/netease/mpay/oc;->f(Lcom/netease/mpay/oc;)Lcom/netease/mpay/e/b/u;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/oc$b;

    iget-object v1, p0, Lcom/netease/mpay/of;->a:Lcom/netease/mpay/oc;

    iget-object v2, p0, Lcom/netease/mpay/of;->a:Lcom/netease/mpay/oc;

    invoke-static {v2}, Lcom/netease/mpay/oc;->f(Lcom/netease/mpay/oc;)Lcom/netease/mpay/e/b/u;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/u;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/of;->a:Lcom/netease/mpay/oc;

    invoke-static {v3}, Lcom/netease/mpay/oc;->f(Lcom/netease/mpay/oc;)Lcom/netease/mpay/e/b/u;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/u;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/of;->a:Lcom/netease/mpay/oc;

    invoke-static {v4}, Lcom/netease/mpay/oc;->f(Lcom/netease/mpay/oc;)Lcom/netease/mpay/e/b/u;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/u;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/of;->a:Lcom/netease/mpay/oc;

    invoke-static {v5}, Lcom/netease/mpay/oc;->f(Lcom/netease/mpay/oc;)Lcom/netease/mpay/e/b/u;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/e/b/u;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/of;->a:Lcom/netease/mpay/oc;

    invoke-static {v6}, Lcom/netease/mpay/oc;->f(Lcom/netease/mpay/oc;)Lcom/netease/mpay/e/b/u;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/mpay/e/b/u;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oc$b;-><init>(Lcom/netease/mpay/oc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oc$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
