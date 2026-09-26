.class Lcom/netease/mpay/cj;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/e/b/i$a;

.field final synthetic c:Lcom/netease/mpay/ce;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ce;ILcom/netease/mpay/e/b/i$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    iput p2, p0, Lcom/netease/mpay/cj;->a:I

    iput-object p3, p0, Lcom/netease/mpay/cj;->b:Lcom/netease/mpay/e/b/i$a;

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
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v0}, Lcom/netease/mpay/ce;->a(Lcom/netease/mpay/ce;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v0}, Lcom/netease/mpay/ce;->b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v0}, Lcom/netease/mpay/ce;->c(Lcom/netease/mpay/ce;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    iget-object v0, v0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    iget-object v1, v1, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v2}, Lcom/netease/mpay/ce;->a(Lcom/netease/mpay/ce;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v3}, Lcom/netease/mpay/ce;->b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/ce$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v4}, Lcom/netease/mpay/ce;->b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/ce$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v5}, Lcom/netease/mpay/ce;->b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;

    move-result-object v5

    iget v5, v5, Lcom/netease/mpay/ce$a;->c:I

    iget-object v6, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v6}, Lcom/netease/mpay/ce;->c(Lcom/netease/mpay/ce;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_1

    const-string v6, "tctc_1"

    :goto_0
    iget v7, p0, Lcom/netease/mpay/cj;->a:I

    if-nez v7, :cond_2

    const-string v7, "tctc_1_1"

    :goto_1
    iget-object v8, p0, Lcom/netease/mpay/cj;->b:Lcom/netease/mpay/e/b/i$a;

    iget-object v8, v8, Lcom/netease/mpay/e/b/i$a;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/ah;

    iget-object v1, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    invoke-static {v1}, Lcom/netease/mpay/ce;->d(Lcom/netease/mpay/ce;)Lcom/netease/mpay/b/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    sget-object v2, Lcom/netease/mpay/f/an$a;->b:Lcom/netease/mpay/f/an$a;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    iget-object v1, p0, Lcom/netease/mpay/cj;->b:Lcom/netease/mpay/e/b/i$a;

    iget-object v1, v1, Lcom/netease/mpay/e/b/i$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ah;->a(Ljava/lang/String;)Lcom/netease/mpay/b/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/cj;->c:Lcom/netease/mpay/ce;

    iget-object v1, v1, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    invoke-static {v1, v2, v0, v9, v9}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void

    :cond_1
    const-string v6, "tctc_2"

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/netease/mpay/cj;->a:I

    if-ne v7, v8, :cond_3

    const-string v7, "tctc_2_1"

    goto :goto_1

    :cond_3
    const-string v7, "tctc_2_2"

    goto :goto_1
.end method
