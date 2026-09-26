.class Lcom/netease/mpay/ke;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/eu$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/kd;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kd;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ke;->a:Lcom/netease/mpay/kd;

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
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ke;->a:Lcom/netease/mpay/kd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;I)V

    iget-object v0, p0, Lcom/netease/mpay/ke;->a:Lcom/netease/mpay/kd;

    invoke-static {v0, p1}, Lcom/netease/mpay/kd;->b(Lcom/netease/mpay/kd;I)V

    return-void
.end method
