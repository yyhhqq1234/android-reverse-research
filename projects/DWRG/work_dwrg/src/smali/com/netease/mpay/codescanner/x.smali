.class Lcom/netease/mpay/codescanner/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/m$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/m$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

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
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->e(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v2, v2, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/netease/mpay/codescanner/w;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0, p2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$d;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v3, v3, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v3}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v4, v4, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v4}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v5, v5, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v5}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/b/m$d;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-virtual {v0, v1, v2, v8, v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$g;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v3, v3, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v3}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v4, v4, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v4}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    sget-object v5, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    iget-object v6, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v6, v6, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v6}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$g;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Lcom/netease/mpay/AuthenticationCallback;)V

    invoke-virtual {v0, v1, v2, v8, v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v7, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/e/b/o;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 7

    invoke-virtual {p2}, Lcom/netease/mpay/server/response/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$e;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v3, v3, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v3}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/w;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v4, v4, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v4}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p2, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    iget-object v6, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v6, v6, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v6}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$e;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/server/response/ai;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/x;->a:Lcom/netease/mpay/codescanner/m$a;

    iget-object v2, v2, Lcom/netease/mpay/codescanner/m$a;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/b/w;->b:Lcom/netease/mpay/server/response/aa;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;Ljava/lang/String;Lcom/netease/mpay/server/response/aa;)V

    goto :goto_0
.end method
