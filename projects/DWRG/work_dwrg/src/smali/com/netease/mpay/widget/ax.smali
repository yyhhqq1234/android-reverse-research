.class Lcom/netease/mpay/widget/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:[Ljava/lang/Runnable;

.field final synthetic c:Lcom/netease/mpay/widget/aw$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/aw$a;Landroid/os/Handler;[Ljava/lang/Runnable;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/ax;->c:Lcom/netease/mpay/widget/aw$a;

    iput-object p2, p0, Lcom/netease/mpay/widget/ax;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netease/mpay/widget/ax;->b:[Ljava/lang/Runnable;

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
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/widget/ax;->c:Lcom/netease/mpay/widget/aw$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/aw$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/ax;->c:Lcom/netease/mpay/widget/aw$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/aw$a;->c()V

    iget-object v0, p0, Lcom/netease/mpay/widget/ax;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/mpay/widget/ax;->b:[Ljava/lang/Runnable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/netease/mpay/widget/ax;->c:Lcom/netease/mpay/widget/aw$a;

    invoke-virtual {v2}, Lcom/netease/mpay/widget/aw$a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
