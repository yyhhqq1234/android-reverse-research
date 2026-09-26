.class Lcom/netease/mpay/d/a/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/a/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a/n;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/p;->a:Lcom/netease/mpay/d/a/a/n;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/p;->a:Lcom/netease/mpay/d/a/a/n;

    iget-object v0, v0, Lcom/netease/mpay/d/a/a/n;->b:Lcom/netease/mpay/d/a/a/q$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/p;->a:Lcom/netease/mpay/d/a/a/n;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/n;->a(Lcom/netease/mpay/d/a/a/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/p;->a:Lcom/netease/mpay/d/a/a/n;

    iget-object v1, v0, Lcom/netease/mpay/d/a/a/n;->b:Lcom/netease/mpay/d/a/a/q$a;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/p;->a:Lcom/netease/mpay/d/a/a/n;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/n;->a(Lcom/netease/mpay/d/a/a/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/w$a;

    iget-object v0, v0, Lcom/netease/mpay/server/response/w$a;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/netease/mpay/d/a/a/q$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
