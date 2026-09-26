.class Lcom/netease/mpay/nr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nq;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nq;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nr;->a:Lcom/netease/mpay/nq;

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

    iget-object v0, p0, Lcom/netease/mpay/nr;->a:Lcom/netease/mpay/nq;

    iget-object v0, v0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/mpay/np;->a(Lcom/netease/mpay/np;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/nr;->a:Lcom/netease/mpay/nq;

    iget-object v0, v0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

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

    invoke-virtual {p0, p1}, Lcom/netease/mpay/nr;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nr;->a:Lcom/netease/mpay/nq;

    iget-object v0, v0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

    invoke-static {v0, p1}, Lcom/netease/mpay/np;->a(Lcom/netease/mpay/np;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
