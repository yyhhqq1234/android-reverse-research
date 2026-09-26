.class Lcom/netease/mpay/codescanner/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/m;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/p;->a:Lcom/netease/mpay/codescanner/m;

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
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/codescanner/p;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->c(Lcom/netease/mpay/codescanner/m;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/p;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->c(Lcom/netease/mpay/codescanner/m;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/p;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->c(Lcom/netease/mpay/codescanner/m;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/p;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->d(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/netease/mpay/codescanner/q;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/codescanner/q;-><init>(Lcom/netease/mpay/codescanner/p;Lcom/netease/mpay/e/b/o;)V

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
