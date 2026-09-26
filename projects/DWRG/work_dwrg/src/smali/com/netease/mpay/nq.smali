.class Lcom/netease/mpay/nq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/np;


# direct methods
.method constructor <init>(Lcom/netease/mpay/np;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

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
    .locals 6

    sget-object v0, Lcom/netease/mpay/ob;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/netease/mpay/f/y;

    iget-object v1, p0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

    iget-object v1, v1, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

    invoke-static {v2}, Lcom/netease/mpay/np;->b(Lcom/netease/mpay/np;)Lcom/netease/mpay/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

    invoke-static {v3}, Lcom/netease/mpay/np;->b(Lcom/netease/mpay/np;)Lcom/netease/mpay/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/a;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/y$a;->d:Lcom/netease/mpay/f/y$a;

    new-instance v5, Lcom/netease/mpay/nr;

    invoke-direct {v5, p0}, Lcom/netease/mpay/nr;-><init>(Lcom/netease/mpay/nq;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/y;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/y$a;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/y;->h()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

    invoke-static {v0}, Lcom/netease/mpay/np;->a(Lcom/netease/mpay/np;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/nq;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nq;->a:Lcom/netease/mpay/np;

    invoke-static {v0, p1}, Lcom/netease/mpay/np;->a(Lcom/netease/mpay/np;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
