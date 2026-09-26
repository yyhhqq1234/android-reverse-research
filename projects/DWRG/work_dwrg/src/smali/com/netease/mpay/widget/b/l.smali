.class Lcom/netease/mpay/widget/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/widget/b/c$b$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/b/c$b$a;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iput-object p2, p0, Lcom/netease/mpay/widget/b/l;->a:Ljava/lang/String;

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
.method public run()V
    .locals 10

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v2, v2, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    iget-object v2, v2, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    invoke-static {v2}, Lcom/netease/mpay/widget/b/c;->b(Lcom/netease/mpay/widget/b/c;)Lcom/netease/mpay/widget/b/c$e;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/widget/b/c$e;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-boolean v1, v2, Lcom/netease/mpay/e/b/af;->v:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    invoke-static {v1}, Lcom/netease/mpay/widget/b/c;->b(Lcom/netease/mpay/widget/b/c;)Lcom/netease/mpay/widget/b/c$e;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    invoke-static {v1}, Lcom/netease/mpay/widget/b/c;->b(Lcom/netease/mpay/widget/b/c;)Lcom/netease/mpay/widget/b/c$e;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    iget-boolean v1, v1, Lcom/netease/mpay/widget/b/c$a;->a:Z

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$b$a;->a(Z)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/mpay/widget/b/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v7, v6

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iput-object v7, v0, Lcom/netease/mpay/widget/b/c$b$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, v5, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b$a;->b:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b$a;->c:Lcom/netease/mpay/widget/b/c$b;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b;->d:Lcom/netease/mpay/widget/b/c;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, v5, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v7, p0, Lcom/netease/mpay/widget/b/l;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/widget/b/l;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v8, v8, Lcom/netease/mpay/widget/b/c$b$a;->b:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
