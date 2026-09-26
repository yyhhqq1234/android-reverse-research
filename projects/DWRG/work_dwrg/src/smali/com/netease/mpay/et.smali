.class Lcom/netease/mpay/et;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/h$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/es;


# direct methods
.method constructor <init>(Lcom/netease/mpay/es;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

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
    .locals 4

    new-instance v0, Lcom/netease/mpay/e/b/s;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/s;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v1, v1, Lcom/netease/mpay/es;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/s;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v1, v1, Lcom/netease/mpay/es;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v1, v1, Lcom/netease/mpay/es;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/s;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v1, v1, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v1, v1, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/s;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v1, v1, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->l(Lcom/netease/mpay/ed;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->f()Lcom/netease/mpay/e/c/p;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v2, v2, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v2}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v2, v2, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v3, v3, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v3}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v3, v3, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/e/c/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/e/b/s;

    iget-object v1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v1, v1, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->l(Lcom/netease/mpay/ed;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->f()Lcom/netease/mpay/e/c/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/p;->a(Lcom/netease/mpay/e/b/s;)V

    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;I)V

    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->m(Lcom/netease/mpay/ed;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->n(Lcom/netease/mpay/ed;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->l(Lcom/netease/mpay/ed;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->f()Lcom/netease/mpay/e/c/p;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v1, v1, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v1, v1, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v2, v2, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v2}, Lcom/netease/mpay/ed;->k(Lcom/netease/mpay/ed;)Lcom/netease/mpay/b/s;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v2, v2, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/e/b/s;

    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;Z)Z

    :cond_0
    sget-object v0, Lcom/netease/mpay/eg;->a:[I

    invoke-virtual {p2}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;I)V

    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->m(Lcom/netease/mpay/ed;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v0, v3}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;I)V

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v1, v1, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    iget-object v1, v1, Lcom/netease/mpay/ed;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v0, v3}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;I)V

    iget-object v0, p0, Lcom/netease/mpay/et;->a:Lcom/netease/mpay/es;

    iget-object v0, v0, Lcom/netease/mpay/es;->e:Lcom/netease/mpay/ed;

    invoke-static {v0}, Lcom/netease/mpay/ed;->o(Lcom/netease/mpay/ed;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
