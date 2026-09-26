.class Lcom/netease/mpay/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/dp;


# direct methods
.method constructor <init>(Lcom/netease/mpay/dp;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

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
    .locals 8

    const/4 v7, 0x4

    const/4 v0, 0x0

    sget-object v1, Lcom/netease/mpay/dr;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v1}, Lcom/netease/mpay/dp;->l(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v2}, Lcom/netease/mpay/dp;->k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v2}, Lcom/netease/mpay/dp;->k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    :cond_0
    iput-object v0, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v0}, Lcom/netease/mpay/dp;->k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    sparse-switch v0, :sswitch_data_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    const/16 v1, 0x7d0

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;Ljava/lang/String;I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    iget-object v2, v2, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/mpay/b/m$d;

    iget-object v4, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v4}, Lcom/netease/mpay/dp;->h(Lcom/netease/mpay/dp;)Lcom/netease/mpay/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v5}, Lcom/netease/mpay/dp;->k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/netease/mpay/b/m$d;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    iget-object v2, v2, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/mpay/b/m$g;

    iget-object v4, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v4}, Lcom/netease/mpay/dp;->h(Lcom/netease/mpay/dp;)Lcom/netease/mpay/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v5}, Lcom/netease/mpay/dp;->k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    sget-object v6, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/netease/mpay/b/m$g;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/Integer;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    iget-object v1, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v1}, Lcom/netease/mpay/dp;->k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    iget-object v1, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v1}, Lcom/netease/mpay/dp;->k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v0, v1}, Lcom/netease/mpay/dp;->b(Lcom/netease/mpay/dp;Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 7

    invoke-virtual {p2}, Lcom/netease/mpay/server/response/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    iget-object v1, v1, Lcom/netease/mpay/dp;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$e;

    iget-object v3, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v3}, Lcom/netease/mpay/dp;->h(Lcom/netease/mpay/dp;)Lcom/netease/mpay/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/i;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    invoke-static {v4}, Lcom/netease/mpay/dp;->k(Lcom/netease/mpay/dp;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p2, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$e;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/server/response/ai;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ea;->a:Lcom/netease/mpay/dp;

    new-instance v1, Lcom/netease/mpay/b/ao;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;Lcom/netease/mpay/b/ao;Z)V

    goto :goto_0
.end method
