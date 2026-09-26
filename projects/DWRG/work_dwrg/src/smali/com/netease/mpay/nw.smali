.class Lcom/netease/mpay/nw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nv;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nv;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nw;->a:Lcom/netease/mpay/nv;

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/ob;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/nw;->a:Lcom/netease/mpay/nv;

    iget-object v0, v0, Lcom/netease/mpay/nv;->a:Lcom/netease/mpay/np;

    invoke-static {v0}, Lcom/netease/mpay/np;->c(Lcom/netease/mpay/np;)Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->completeRefresh()V

    iget-object v0, p0, Lcom/netease/mpay/nw;->a:Lcom/netease/mpay/nv;

    iget-object v0, v0, Lcom/netease/mpay/nv;->a:Lcom/netease/mpay/np;

    invoke-static {v0}, Lcom/netease/mpay/np;->e(Lcom/netease/mpay/np;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/nw;->a:Lcom/netease/mpay/nv;

    iget-object v0, v0, Lcom/netease/mpay/nv;->a:Lcom/netease/mpay/np;

    invoke-static {v0}, Lcom/netease/mpay/np;->a(Lcom/netease/mpay/np;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/nw;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/nw;->a:Lcom/netease/mpay/nv;

    iget-object v0, v0, Lcom/netease/mpay/nv;->a:Lcom/netease/mpay/np;

    invoke-static {v0}, Lcom/netease/mpay/np;->c(Lcom/netease/mpay/np;)Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->completeRefresh()V

    iget-object v0, p0, Lcom/netease/mpay/nw;->a:Lcom/netease/mpay/nv;

    iget-object v0, v0, Lcom/netease/mpay/nv;->a:Lcom/netease/mpay/np;

    iget-object v1, p0, Lcom/netease/mpay/nw;->a:Lcom/netease/mpay/nv;

    iget-object v1, v1, Lcom/netease/mpay/nv;->a:Lcom/netease/mpay/np;

    invoke-static {v1}, Lcom/netease/mpay/np;->d(Lcom/netease/mpay/np;)Lcom/netease/mpay/widget/af$b;

    move-result-object v1

    sget-object v2, Lcom/netease/mpay/np$a;->a:Lcom/netease/mpay/np$a;

    invoke-static {v0, v1, p1, v2}, Lcom/netease/mpay/np;->a(Lcom/netease/mpay/np;Lcom/netease/mpay/widget/af$b;Ljava/util/ArrayList;Lcom/netease/mpay/np$a;)V

    return-void
.end method
