.class public Lcom/netease/mpay/skin/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/skin/f;->a:Ljava/util/List;

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
.method public a(Lcom/netease/mpay/skin/e$a;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/skin/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/skin/f;->b:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/netease/mpay/skin/e$a;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/skin/f;->b:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/skin/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/skin/d;

    iget-object v2, p0, Lcom/netease/mpay/skin/f;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/skin/d;->a(Landroid/view/View;)V

    goto :goto_0
.end method
