.class Lcom/netease/mpay/hz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hy;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hy;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hz;->a:Lcom/netease/mpay/hy;

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

    iget-object v0, p0, Lcom/netease/mpay/hz;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->a(Lcom/netease/mpay/hy;)Z

    return-void
.end method
