.class Lcom/netease/mpay/widget/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/af$b$b;

.field final synthetic b:Landroid/widget/AdapterView;

.field final synthetic c:Lcom/netease/mpay/widget/af$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/af$b;Lcom/netease/mpay/widget/af$b$b;Landroid/widget/AdapterView;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/ag;->c:Lcom/netease/mpay/widget/af$b;

    iput-object p2, p0, Lcom/netease/mpay/widget/ag;->a:Lcom/netease/mpay/widget/af$b$b;

    iput-object p3, p0, Lcom/netease/mpay/widget/ag;->b:Landroid/widget/AdapterView;

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
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/ag;->a:Lcom/netease/mpay/widget/af$b$b;

    iget-object v1, p0, Lcom/netease/mpay/widget/ag;->b:Landroid/widget/AdapterView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/netease/mpay/widget/af$b$b;->a(Landroid/widget/AdapterView;III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/ag;->c:Lcom/netease/mpay/widget/af$b;

    invoke-static {v0}, Lcom/netease/mpay/widget/af$b;->a(Lcom/netease/mpay/widget/af$b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/ag;->c:Lcom/netease/mpay/widget/af$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/af$b;->a(Lcom/netease/mpay/widget/af$b;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/widget/ag;->a:Lcom/netease/mpay/widget/af$b$b;

    new-instance v1, Lcom/netease/mpay/widget/ah;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/ah;-><init>(Lcom/netease/mpay/widget/ag;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/widget/af$b$b;->a(Lcom/netease/mpay/widget/af$b$a;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
