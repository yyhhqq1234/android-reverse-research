.class Lcom/netease/mpay/os;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/or$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/or;


# direct methods
.method constructor <init>(Lcom/netease/mpay/or;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/os;->a:Lcom/netease/mpay/or;

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
.method public a(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/f/bu;

    iget-object v1, p0, Lcom/netease/mpay/os;->a:Lcom/netease/mpay/or;

    iget-object v1, v1, Lcom/netease/mpay/or;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/os;->a:Lcom/netease/mpay/or;

    invoke-static {v2}, Lcom/netease/mpay/or;->a(Lcom/netease/mpay/or;)Lcom/netease/mpay/b/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/os;->a:Lcom/netease/mpay/or;

    invoke-static {v3}, Lcom/netease/mpay/or;->a(Lcom/netease/mpay/or;)Lcom/netease/mpay/b/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Lcom/netease/mpay/ot;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ot;-><init>(Lcom/netease/mpay/os;)V

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bu;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bu;->h()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/os;->a:Lcom/netease/mpay/or;

    invoke-static {v0, p1}, Lcom/netease/mpay/or;->a(Lcom/netease/mpay/or;Ljava/lang/String;)V

    return-void
.end method
