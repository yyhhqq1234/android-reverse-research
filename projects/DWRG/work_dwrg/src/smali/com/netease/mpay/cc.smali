.class Lcom/netease/mpay/cc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/bz;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bz;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/cc;->a:Lcom/netease/mpay/bz;

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

    iget-object v1, p0, Lcom/netease/mpay/cc;->a:Lcom/netease/mpay/bz;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x65

    :goto_0
    invoke-static {v1, v0}, Lcom/netease/mpay/bz;->a(Lcom/netease/mpay/bz;I)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/cc;->a:Lcom/netease/mpay/bz;

    invoke-static {v0}, Lcom/netease/mpay/bz;->c(Lcom/netease/mpay/bz;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/k;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/cc;->a:Lcom/netease/mpay/bz;

    iget-object v1, p1, Lcom/netease/mpay/server/response/k;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/bz;->a(Lcom/netease/mpay/bz;I)I

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/k;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/cc;->a(Lcom/netease/mpay/server/response/k;)V

    return-void
.end method
