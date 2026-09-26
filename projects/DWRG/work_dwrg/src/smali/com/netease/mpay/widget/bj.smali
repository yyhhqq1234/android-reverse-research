.class Lcom/netease/mpay/widget/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/bi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/bi;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/bj;->a:Lcom/netease/mpay/widget/bi;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/bj;->a:Lcom/netease/mpay/widget/bi;

    invoke-static {v0}, Lcom/netease/mpay/widget/bi;->a(Lcom/netease/mpay/widget/bi;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/bj;->a:Lcom/netease/mpay/widget/bi;

    invoke-static {v0}, Lcom/netease/mpay/widget/bi;->a(Lcom/netease/mpay/widget/bi;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/bj;->a:Lcom/netease/mpay/widget/bi;

    invoke-static {v0}, Lcom/netease/mpay/widget/bi;->a(Lcom/netease/mpay/widget/bi;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
