.class Lcom/netease/mpay/widget/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/am$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/am$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/an;->a:Lcom/netease/mpay/widget/am$b;

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

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netease/mpay/widget/an;->a:Lcom/netease/mpay/widget/am$b;

    invoke-static {v0}, Lcom/netease/mpay/widget/am$b;->a(Lcom/netease/mpay/widget/am$b;)Lcom/netease/mpay/widget/am$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/an;->a:Lcom/netease/mpay/widget/am$b;

    invoke-static {v0}, Lcom/netease/mpay/widget/am$b;->b(Lcom/netease/mpay/widget/am$b;)I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/widget/an;->a:Lcom/netease/mpay/widget/am$b;

    iget-object v1, v1, Lcom/netease/mpay/widget/am$b;->a:Lcom/netease/mpay/widget/am;

    invoke-static {v1}, Lcom/netease/mpay/widget/am;->c(Lcom/netease/mpay/widget/am;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/an;->a:Lcom/netease/mpay/widget/am$b;

    invoke-static {v0}, Lcom/netease/mpay/widget/am$b;->a(Lcom/netease/mpay/widget/am$b;)Lcom/netease/mpay/widget/am$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/am$a;->a(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/an;->a:Lcom/netease/mpay/widget/am$b;

    invoke-static {v0}, Lcom/netease/mpay/widget/am$b;->a(Lcom/netease/mpay/widget/am$b;)Lcom/netease/mpay/widget/am$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/am$a;->cancel(Z)Z

    :cond_0
    return-void
.end method
