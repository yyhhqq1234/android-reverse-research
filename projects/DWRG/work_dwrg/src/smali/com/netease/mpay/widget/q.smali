.class Lcom/netease/mpay/widget/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/p;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/p;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/q;->a:Lcom/netease/mpay/widget/p;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/q;->a:Lcom/netease/mpay/widget/p;

    iget-object v0, v0, Lcom/netease/mpay/widget/p;->e:Lcom/netease/mpay/widget/AlerterWindowService;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/AlerterWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/widget/n;->a(Landroid/content/Context;)V

    return-void
.end method
