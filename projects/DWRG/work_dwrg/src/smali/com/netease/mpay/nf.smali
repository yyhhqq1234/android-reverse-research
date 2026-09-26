.class Lcom/netease/mpay/nf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nf;->a:Lcom/netease/mpay/nc;

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
    .locals 1

    sget-object v0, Lcom/netease/mpay/f/a/b$a;->b:Lcom/netease/mpay/f/a/b$a;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nf;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->c(Lcom/netease/mpay/nc;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/nf;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method
