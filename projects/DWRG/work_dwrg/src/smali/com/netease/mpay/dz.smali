.class Lcom/netease/mpay/dz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/dp;


# direct methods
.method constructor <init>(Lcom/netease/mpay/dp;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/dz;->a:Lcom/netease/mpay/dp;

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

    iget-object v0, p0, Lcom/netease/mpay/dz;->a:Lcom/netease/mpay/dp;

    const/16 v1, 0x7d0

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/dz;->a:Lcom/netease/mpay/dp;

    new-instance v1, Lcom/netease/mpay/b/ao;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/dp;->a(Lcom/netease/mpay/dp;Lcom/netease/mpay/b/ao;Z)V

    return-void
.end method
