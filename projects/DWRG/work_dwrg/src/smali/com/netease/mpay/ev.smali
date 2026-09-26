.class Lcom/netease/mpay/ev;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/eu$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/eu$a;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ev;->b:Lcom/netease/mpay/eu$a;

    iput p2, p0, Lcom/netease/mpay/ev;->a:I

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
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ev;->b:Lcom/netease/mpay/eu$a;

    iget-object v0, v0, Lcom/netease/mpay/eu$a;->a:Lcom/netease/mpay/eu;

    invoke-static {v0}, Lcom/netease/mpay/eu;->a(Lcom/netease/mpay/eu;)Lcom/netease/mpay/eu$b;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/ev;->b:Lcom/netease/mpay/eu$a;

    invoke-static {v0}, Lcom/netease/mpay/eu$a;->a(Lcom/netease/mpay/eu$a;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/netease/mpay/ev;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/netease/mpay/eu$b;->a(I)V

    iget-object v0, p0, Lcom/netease/mpay/ev;->b:Lcom/netease/mpay/eu$a;

    iget-object v0, v0, Lcom/netease/mpay/eu$a;->a:Lcom/netease/mpay/eu;

    invoke-static {v0}, Lcom/netease/mpay/eu;->b(Lcom/netease/mpay/eu;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
