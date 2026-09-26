.class Lcom/netease/mpay/hr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/hl$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hl$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hl$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hr;->a:Lcom/netease/mpay/hl$a;

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
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hr;->a:Lcom/netease/mpay/hl$a;

    invoke-static {v0}, Lcom/netease/mpay/hl$a;->a(Lcom/netease/mpay/hl$a;)Lcom/netease/mpay/hx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/hx;->c:Z

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/hr;->a:Lcom/netease/mpay/hl$a;

    invoke-static {v0}, Lcom/netease/mpay/hl$a;->a(Lcom/netease/mpay/hl$a;)Lcom/netease/mpay/hx;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/widget/ao;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hx;->a(Z)V

    iget-object v0, p0, Lcom/netease/mpay/hr;->a:Lcom/netease/mpay/hl$a;

    invoke-static {v0}, Lcom/netease/mpay/hl$a;->a(Lcom/netease/mpay/hl$a;)Lcom/netease/mpay/hx;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/widget/ao;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hx;->b(Z)V

    return-void
.end method
