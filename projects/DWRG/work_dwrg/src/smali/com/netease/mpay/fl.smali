.class Lcom/netease/mpay/fl;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/a;

.field final synthetic b:Lcom/netease/mpay/MpayActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayActivity;Lcom/netease/mpay/a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fl;->b:Lcom/netease/mpay/MpayActivity;

    iput-object p2, p0, Lcom/netease/mpay/fl;->a:Lcom/netease/mpay/a;

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

    iget-object v0, p0, Lcom/netease/mpay/fl;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->o()Z

    return-void
.end method
