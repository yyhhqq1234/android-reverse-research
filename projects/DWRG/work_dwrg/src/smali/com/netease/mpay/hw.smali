.class Lcom/netease/mpay/hw;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hl$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hl$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hw;->a:Lcom/netease/mpay/hl$a;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/hw;->a:Lcom/netease/mpay/hl$a;

    iget-object v0, v0, Lcom/netease/mpay/hl$a;->a:Lcom/netease/mpay/hl;

    iget-object v1, p0, Lcom/netease/mpay/hw;->a:Lcom/netease/mpay/hl$a;

    invoke-static {v1}, Lcom/netease/mpay/hl$a;->a(Lcom/netease/mpay/hl$a;)Lcom/netease/mpay/hx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/hl;->a(Lcom/netease/mpay/hl;Lcom/netease/mpay/hx;)V

    return-void
.end method
