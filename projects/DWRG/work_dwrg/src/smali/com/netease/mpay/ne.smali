.class Lcom/netease/mpay/ne;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ne;->a:Lcom/netease/mpay/nc;

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
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ne;->a:Lcom/netease/mpay/nc;

    iget-object v1, v1, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ne;->a:Lcom/netease/mpay/nc;

    invoke-static {v2}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netease/mpay/ne;->a:Lcom/netease/mpay/nc;

    invoke-static {v5}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v5

    iget-object v6, v5, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/netease/mpay/ne;->a:Lcom/netease/mpay/nc;

    invoke-static {v0, v3}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/nc;Z)V

    return-void
.end method
