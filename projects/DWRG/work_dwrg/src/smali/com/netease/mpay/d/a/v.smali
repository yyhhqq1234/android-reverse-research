.class Lcom/netease/mpay/d/a/v;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/v;->a:Lcom/netease/mpay/d/a/o;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/v;->a:Lcom/netease/mpay/d/a/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/d/a/o;->b(Lcom/netease/mpay/d/a/o;Z)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/v;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->c(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/v;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/v;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v1}, Lcom/netease/mpay/d/a/o;->e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/d/a/v;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v2}, Lcom/netease/mpay/d/a/o;->c(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/v;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v3}, Lcom/netease/mpay/d/a/o;->e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mpay/widget/az;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile_account"

    const-string v5, "get_code_again"

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
