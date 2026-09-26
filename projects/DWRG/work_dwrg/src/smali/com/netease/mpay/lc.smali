.class Lcom/netease/mpay/lc;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/kv;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kv;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/lc;->a:Lcom/netease/mpay/kv;

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

    iget-object v0, p0, Lcom/netease/mpay/lc;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/lc;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/netease/mpay/kv$b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/lc;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->c(Lcom/netease/mpay/kv;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
