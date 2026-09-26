.class Lcom/netease/mpay/jc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jb;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jc;->a:Lcom/netease/mpay/jb;

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

    iget-object v0, p0, Lcom/netease/mpay/jc;->a:Lcom/netease/mpay/jb;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/jb;->a(Lcom/netease/mpay/jb;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/e;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/jc;->a:Lcom/netease/mpay/jb;

    invoke-static {v0, p1}, Lcom/netease/mpay/jb;->a(Lcom/netease/mpay/jb;Lcom/netease/mpay/server/response/e;)Lcom/netease/mpay/server/response/e;

    iget-object v0, p0, Lcom/netease/mpay/jc;->a:Lcom/netease/mpay/jb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/jc;->a:Lcom/netease/mpay/jb;

    invoke-static {v2}, Lcom/netease/mpay/jb;->a(Lcom/netease/mpay/jb;)Lcom/netease/mpay/server/response/e;

    move-result-object v2

    iget v2, v2, Lcom/netease/mpay/server/response/e;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/jb;->a(Lcom/netease/mpay/jb;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/jc;->a:Lcom/netease/mpay/jb;

    invoke-virtual {v0}, Lcom/netease/mpay/jb;->s()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/jc;->a(Lcom/netease/mpay/server/response/e;)V

    return-void
.end method
