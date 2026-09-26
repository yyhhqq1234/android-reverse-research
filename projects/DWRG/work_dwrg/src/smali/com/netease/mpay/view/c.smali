.class Lcom/netease/mpay/view/c;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/view/b$c;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:Lcom/netease/mpay/view/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/view/b;Lcom/netease/mpay/view/b$c;Landroid/view/View;Z)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/view/c;->d:Lcom/netease/mpay/view/b;

    iput-object p2, p0, Lcom/netease/mpay/view/c;->a:Lcom/netease/mpay/view/b$c;

    iput-object p3, p0, Lcom/netease/mpay/view/c;->b:Landroid/view/View;

    iput-boolean p4, p0, Lcom/netease/mpay/view/c;->c:Z

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

    iget-object v0, p0, Lcom/netease/mpay/view/c;->a:Lcom/netease/mpay/view/b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/view/c;->a:Lcom/netease/mpay/view/b$c;

    iget-object v0, v0, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/view/c;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/view/c;->a:Lcom/netease/mpay/view/b$c;

    iget-object v0, v0, Lcom/netease/mpay/view/b$c;->a:Lcom/netease/mpay/view/b$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/view/b$b;->f:Z

    iget-object v0, p0, Lcom/netease/mpay/view/c;->d:Lcom/netease/mpay/view/b;

    iget-object v0, v0, Lcom/netease/mpay/view/b;->d:Lcom/netease/mpay/view/b$a;

    iget-boolean v1, p0, Lcom/netease/mpay/view/c;->c:Z

    iget-object v2, p0, Lcom/netease/mpay/view/c;->a:Lcom/netease/mpay/view/b$c;

    iget-object v2, v2, Lcom/netease/mpay/view/b$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/view/b$a;->a(ZLjava/lang/Object;)V

    goto :goto_0
.end method
