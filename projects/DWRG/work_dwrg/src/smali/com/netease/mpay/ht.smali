.class Lcom/netease/mpay/ht;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/hl$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hl$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hl$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ht;->a:Lcom/netease/mpay/hl$a;

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

    iget-object v0, p0, Lcom/netease/mpay/ht;->a:Lcom/netease/mpay/hl$a;

    invoke-static {v0}, Lcom/netease/mpay/hl$a;->b(Lcom/netease/mpay/hl$a;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ht;->a:Lcom/netease/mpay/hl$a;

    invoke-static {v0}, Lcom/netease/mpay/hl$a;->a(Lcom/netease/mpay/hl$a;)Lcom/netease/mpay/hx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/hx;->e:Z

    return v0
.end method
