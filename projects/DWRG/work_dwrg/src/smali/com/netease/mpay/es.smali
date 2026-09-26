.class Lcom/netease/mpay/es;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b/o;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/mpay/ed;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ed;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    iput-object p2, p0, Lcom/netease/mpay/es;->a:Lcom/netease/mpay/e/b/o;

    iput-object p3, p0, Lcom/netease/mpay/es;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/es;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/es;->d:Ljava/lang/String;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    new-instance v0, Lcom/netease/mpay/f/h;

    iget-object v1, p0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    iget-object v1, v1, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v2}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v3}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/es;->a:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v5}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v5

    iget-boolean v5, v5, Lcom/netease/mpay/b/s;->f:Z

    iget-object v6, p0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v6}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/b/s;->s()I

    move-result v6

    iget-object v7, p0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v7}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/mpay/b/s;->k()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v8}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/mpay/b/s;->q()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/netease/mpay/es;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/netease/mpay/es;->c:Ljava/lang/String;

    iget-object v11, p0, Lcom/netease/mpay/es;->d:Ljava/lang/String;

    new-instance v12, Lcom/netease/mpay/et;

    invoke-direct {v12, p0}, Lcom/netease/mpay/et;-><init>(Lcom/netease/mpay/es;)V

    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/f/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/h$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/h;->h()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
