.class Lcom/netease/mpay/no;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/view/b$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nn;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nn;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/no;->a:Lcom/netease/mpay/nn;

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
.method public a(ZLcom/netease/mpay/e/b/aj$a;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/no;->a:Lcom/netease/mpay/nn;

    invoke-static {v0}, Lcom/netease/mpay/nn;->a(Lcom/netease/mpay/nn;)Lcom/netease/mpay/e/b/al;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/b/al;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/al$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/e/b/al$a;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/no;->a:Lcom/netease/mpay/nn;

    invoke-static {v0}, Lcom/netease/mpay/nn;->c(Lcom/netease/mpay/nn;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/no;->a:Lcom/netease/mpay/nn;

    invoke-static {v1}, Lcom/netease/mpay/nn;->b(Lcom/netease/mpay/nn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/b;->c(Ljava/lang/String;)Lcom/netease/mpay/e/b/al;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/b/al;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/no;->a:Lcom/netease/mpay/nn;

    invoke-static {v1}, Lcom/netease/mpay/nn;->c(Lcom/netease/mpay/nn;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/no;->a:Lcom/netease/mpay/nn;

    invoke-static {v2}, Lcom/netease/mpay/nn;->b(Lcom/netease/mpay/nn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/b;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/al;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/no;->a:Lcom/netease/mpay/nn;

    invoke-static {v0}, Lcom/netease/mpay/nn;->d(Lcom/netease/mpay/nn;)Lcom/netease/mpay/nn$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/no;->a:Lcom/netease/mpay/nn;

    invoke-static {v0}, Lcom/netease/mpay/nn;->d(Lcom/netease/mpay/nn;)Lcom/netease/mpay/nn$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netease/mpay/nn$a;->a(Lcom/netease/mpay/e/b/aj$a;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(ZLjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/netease/mpay/e/b/aj$a;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/no;->a(ZLcom/netease/mpay/e/b/aj$a;)V

    return-void
.end method
