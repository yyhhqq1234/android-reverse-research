.class Lcom/netease/mpay/f/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/a/a$b;

.field final synthetic b:Lcom/netease/mpay/f/a/d$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/a/d$b;Lcom/netease/mpay/f/a/a$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/a/h;->b:Lcom/netease/mpay/f/a/d$b;

    iput-object p2, p0, Lcom/netease/mpay/f/a/h;->a:Lcom/netease/mpay/f/a/a$b;

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
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/f/a/h;->b:Lcom/netease/mpay/f/a/d$b;

    iget-object v0, v0, Lcom/netease/mpay/f/a/d$b;->a:Lcom/netease/mpay/f/a/d;

    iget-object v1, p0, Lcom/netease/mpay/f/a/h;->a:Lcom/netease/mpay/f/a/a$b;

    iget-object v2, p0, Lcom/netease/mpay/f/a/h;->b:Lcom/netease/mpay/f/a/d$b;

    iget-object v2, v2, Lcom/netease/mpay/f/a/d$b;->a:Lcom/netease/mpay/f/a/d;

    iget-object v2, v2, Lcom/netease/mpay/f/a/d;->f:Lcom/netease/mpay/f/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    return-void
.end method
