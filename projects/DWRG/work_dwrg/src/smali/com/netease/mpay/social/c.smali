.class Lcom/netease/mpay/social/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/social/k$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/social/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/social/b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/social/c;->a:Lcom/netease/mpay/social/b;

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
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/social/c;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0, p1}, Lcom/netease/mpay/social/b;->a(Lcom/netease/mpay/social/b;I)V

    return-void
.end method

.method public a(Lcom/netease/mpay/social/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/social/c;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0, p1}, Lcom/netease/mpay/social/b;->a(Lcom/netease/mpay/social/b;Lcom/netease/mpay/social/a$a;)Lcom/netease/mpay/social/a$a;

    iget-object v0, p0, Lcom/netease/mpay/social/c;->a:Lcom/netease/mpay/social/b;

    invoke-static {v0}, Lcom/netease/mpay/social/b;->a(Lcom/netease/mpay/social/b;)V

    return-void
.end method
