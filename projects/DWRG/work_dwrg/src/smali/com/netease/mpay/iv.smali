.class Lcom/netease/mpay/iv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/cd$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/iu;


# direct methods
.method constructor <init>(Lcom/netease/mpay/iu;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/iv;->a:Lcom/netease/mpay/iu;

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
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/iv;->a:Lcom/netease/mpay/iu;

    iget-object v0, v0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->h(Lcom/netease/mpay/ij;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/iv;->a:Lcom/netease/mpay/iu;

    iget-object v0, v0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->g(Lcom/netease/mpay/ij;)V

    return-void
.end method
