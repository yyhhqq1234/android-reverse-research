.class Lcom/netease/mpay/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/al;


# direct methods
.method constructor <init>(Lcom/netease/mpay/al;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ar;->a:Lcom/netease/mpay/al;

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

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ar;->a:Lcom/netease/mpay/al;

    invoke-static {v0}, Lcom/netease/mpay/al;->k(Lcom/netease/mpay/al;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ar;->a:Lcom/netease/mpay/al;

    const/16 v1, 0x7d0

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ar;->a:Lcom/netease/mpay/al;

    invoke-static {v0, p2, p1}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al;Lcom/netease/mpay/server/response/m;Ljava/lang/String;)V

    return-void
.end method
