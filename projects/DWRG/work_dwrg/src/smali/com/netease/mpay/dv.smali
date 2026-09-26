.class Lcom/netease/mpay/dv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/af$a$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/dp;


# direct methods
.method constructor <init>(Lcom/netease/mpay/dp;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/dv;->a:Lcom/netease/mpay/dp;

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
.method public a(Landroid/view/View;Lcom/netease/mpay/e/b/o;I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dv;->a:Lcom/netease/mpay/dp;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/dp;->a(Landroid/view/View;Lcom/netease/mpay/e/b/o;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/netease/mpay/e/b/o;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/mpay/dv;->a(Landroid/view/View;Lcom/netease/mpay/e/b/o;I)V

    return-void
.end method
