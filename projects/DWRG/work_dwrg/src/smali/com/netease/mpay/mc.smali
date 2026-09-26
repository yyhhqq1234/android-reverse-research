.class Lcom/netease/mpay/mc;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/mb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/mb;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/mc;->a:Lcom/netease/mpay/mb;

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

    iget-object v0, p0, Lcom/netease/mpay/mc;->a:Lcom/netease/mpay/mb;

    iget-object v0, v0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/netease/mpay/mc;->a:Lcom/netease/mpay/mb;

    invoke-static {v0}, Lcom/netease/mpay/mb;->a(Lcom/netease/mpay/mb;)V

    return-void
.end method
