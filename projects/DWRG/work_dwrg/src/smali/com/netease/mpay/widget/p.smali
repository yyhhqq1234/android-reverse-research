.class Lcom/netease/mpay/widget/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/mpay/widget/AlerterWindowService;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/AlerterWindowService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/p;->e:Lcom/netease/mpay/widget/AlerterWindowService;

    iput-object p2, p0, Lcom/netease/mpay/widget/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/widget/p;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/widget/p;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/widget/p;->d:Ljava/lang/String;

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
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/widget/p;->e:Lcom/netease/mpay/widget/AlerterWindowService;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/AlerterWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/widget/p;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/widget/p;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/widget/p;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/widget/p;->e:Lcom/netease/mpay/widget/AlerterWindowService;

    invoke-static {v5}, Lcom/netease/mpay/widget/AlerterWindowService;->a(Lcom/netease/mpay/widget/AlerterWindowService;)Lcom/netease/mpay/widget/be;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/widget/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/be;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/p;->e:Lcom/netease/mpay/widget/AlerterWindowService;

    invoke-static {v0}, Lcom/netease/mpay/widget/AlerterWindowService;->c(Lcom/netease/mpay/widget/AlerterWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/widget/q;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/q;-><init>(Lcom/netease/mpay/widget/p;)V

    iget-object v2, p0, Lcom/netease/mpay/widget/p;->e:Lcom/netease/mpay/widget/AlerterWindowService;

    invoke-static {v2}, Lcom/netease/mpay/widget/AlerterWindowService;->b(Lcom/netease/mpay/widget/AlerterWindowService;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
