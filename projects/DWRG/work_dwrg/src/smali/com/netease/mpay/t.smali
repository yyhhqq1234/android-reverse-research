.class Lcom/netease/mpay/t;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/o;

.field final synthetic b:Lcom/netease/mpay/o$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/o$c;Lcom/netease/mpay/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/t;->b:Lcom/netease/mpay/o$c;

    iput-object p2, p0, Lcom/netease/mpay/t;->a:Lcom/netease/mpay/o;

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
    .locals 5

    new-instance v0, Lcom/netease/mpay/f/w;

    iget-object v1, p0, Lcom/netease/mpay/t;->b:Lcom/netease/mpay/o$c;

    iget-object v1, v1, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    iget-object v1, v1, Lcom/netease/mpay/o;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/t;->b:Lcom/netease/mpay/o$c;

    iget-object v2, v2, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v2}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/t;->b:Lcom/netease/mpay/o$c;

    iget-object v3, v3, Lcom/netease/mpay/o$c;->d:Lcom/netease/mpay/o;

    invoke-static {v3}, Lcom/netease/mpay/o;->a(Lcom/netease/mpay/o;)Lcom/netease/mpay/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/u;

    invoke-direct {v4, p0}, Lcom/netease/mpay/u;-><init>(Lcom/netease/mpay/t;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/f/w;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/w;->b()Lcom/netease/mpay/f/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/f/w;->h()V

    return-void
.end method
