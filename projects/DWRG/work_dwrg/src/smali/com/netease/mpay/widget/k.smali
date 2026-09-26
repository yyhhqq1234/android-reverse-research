.class Lcom/netease/mpay/widget/k;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/e$a;

.field final synthetic b:Lcom/netease/mpay/widget/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/e;Lcom/netease/mpay/widget/e$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/k;->b:Lcom/netease/mpay/widget/e;

    iput-object p2, p0, Lcom/netease/mpay/widget/k;->a:Lcom/netease/mpay/widget/e$a;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/k;->a:Lcom/netease/mpay/widget/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/k;->a:Lcom/netease/mpay/widget/e$a;

    invoke-interface {v0}, Lcom/netease/mpay/widget/e$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/k;->b:Lcom/netease/mpay/widget/e;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/e;->dismiss()V

    return-void
.end method
