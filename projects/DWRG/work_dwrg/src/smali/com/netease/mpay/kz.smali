.class Lcom/netease/mpay/kz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/kv;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kv;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kz;->a:Lcom/netease/mpay/kv;

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

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/kz;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kz;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netease/mpay/kv$b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/kz;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->c(Lcom/netease/mpay/kv;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netease/mpay/f/a/b$a;->a:Lcom/netease/mpay/f/a/b$a;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/kz;->a:Lcom/netease/mpay/kv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/kz;->a:Lcom/netease/mpay/kv;

    invoke-static {v0, v1}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;I)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/kz;->a:Lcom/netease/mpay/kv;

    iget-object v1, p1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/kv$a;

    iget-object v1, p0, Lcom/netease/mpay/kz;->a:Lcom/netease/mpay/kv;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/kv$a;-><init>(Lcom/netease/mpay/kv;Lcom/netease/mpay/kw;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/kv$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/kz;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
