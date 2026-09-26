.class Lcom/netease/mpay/ee;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/eu$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ed;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ed;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ee;->a:Lcom/netease/mpay/ed;

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
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ee;->a:Lcom/netease/mpay/ed;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ee;->a:Lcom/netease/mpay/ed;

    invoke-static {v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ee;->a:Lcom/netease/mpay/ed;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/ee;->a:Lcom/netease/mpay/ed;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/ed;->a(Lcom/netease/mpay/ed;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
