.class Lcom/netease/mpay/nk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/nc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/nc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nk;->a:Lcom/netease/mpay/nc;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/nk;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->h(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nk;->a:Lcom/netease/mpay/nc;

    invoke-static {v1}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/nk;->a:Lcom/netease/mpay/nc;

    invoke-static {v1}, Lcom/netease/mpay/nc;->h(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/nk;->a:Lcom/netease/mpay/nc;

    invoke-static {v0}, Lcom/netease/mpay/nc;->i(Lcom/netease/mpay/nc;)V

    iget-object v0, p0, Lcom/netease/mpay/nk;->a:Lcom/netease/mpay/nc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/nc;->b(Lcom/netease/mpay/nc;Z)Z

    return-void
.end method
