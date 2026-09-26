.class Lcom/netease/mpay/kq;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/kd$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kd$a;I)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kq;->b:Lcom/netease/mpay/kd$a;

    iput p2, p0, Lcom/netease/mpay/kq;->a:I

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

    iget-object v0, p0, Lcom/netease/mpay/kq;->b:Lcom/netease/mpay/kd$a;

    iget-object v0, v0, Lcom/netease/mpay/kd$a;->a:Lcom/netease/mpay/kd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/kd;->a(Lcom/netease/mpay/kd;I)V

    iget-object v0, p0, Lcom/netease/mpay/kq;->b:Lcom/netease/mpay/kd$a;

    iget-object v0, v0, Lcom/netease/mpay/kd$a;->a:Lcom/netease/mpay/kd;

    iget-object v1, p0, Lcom/netease/mpay/kq;->b:Lcom/netease/mpay/kd$a;

    invoke-static {v1}, Lcom/netease/mpay/kd$a;->a(Lcom/netease/mpay/kd$a;)[I

    move-result-object v1

    iget v2, p0, Lcom/netease/mpay/kq;->a:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/kd;->b(Lcom/netease/mpay/kd;I)V

    return-void
.end method
