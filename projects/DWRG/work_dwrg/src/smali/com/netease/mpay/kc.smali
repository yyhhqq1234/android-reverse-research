.class Lcom/netease/mpay/kc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/jt$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jt$a;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iput p2, p0, Lcom/netease/mpay/kc;->a:I

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
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v0, v0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->d(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v0, v0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->j(Lcom/netease/mpay/jt;)[Z

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/kc;->a:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v0, v0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->j(Lcom/netease/mpay/jt;)[Z

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/kc;->a:I

    aput-boolean v9, v0, v1

    iget-object v0, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v0, v0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    iget-object v0, v0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v1, v1, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    iget-object v1, v1, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v2, v2, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v2}, Lcom/netease/mpay/jt;->d(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v3, v3, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v3}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v4, v4, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v4}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v5, v5, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v5}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v5

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "czds"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cz_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v8, v8, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v8}, Lcom/netease/mpay/jt;->h(Lcom/netease/mpay/jt;)[I

    move-result-object v8

    iget v10, p0, Lcom/netease/mpay/kc;->a:I

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v8, v8, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v8}, Lcom/netease/mpay/jt;->f(Lcom/netease/mpay/jt;)Lcom/netease/mpay/b/r;

    move-result-object v8

    iget-object v8, v8, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v8, v8, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v10, "czds"

    invoke-static {v8, v10}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v0, v0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    iget v1, p0, Lcom/netease/mpay/kc;->a:I

    invoke-static {v0, v1}, Lcom/netease/mpay/jt;->a(Lcom/netease/mpay/jt;I)I

    iget-object v0, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v0, v0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->h(Lcom/netease/mpay/jt;)[I

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/kc;->a:I

    aget v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v1, v1, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/mpay/jt;->c(Lcom/netease/mpay/jt;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    invoke-virtual {v0}, Lcom/netease/mpay/jt$a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v0, v0, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    iget-object v0, v0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->P:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/mpay/kc;->b:Lcom/netease/mpay/jt$a;

    iget-object v1, v1, Lcom/netease/mpay/jt$a;->a:Lcom/netease/mpay/jt;

    invoke-static {v1}, Lcom/netease/mpay/jt;->k(Lcom/netease/mpay/jt;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    return-void
.end method
