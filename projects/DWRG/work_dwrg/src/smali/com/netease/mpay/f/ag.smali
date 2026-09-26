.class Lcom/netease/mpay/f/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/af;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/af;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/ag;->a:Lcom/netease/mpay/f/af;

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

    iget-object v0, p0, Lcom/netease/mpay/f/ag;->a:Lcom/netease/mpay/f/af;

    invoke-static {v0}, Lcom/netease/mpay/f/af;->a(Lcom/netease/mpay/f/af;)Lcom/netease/mpay/f/af$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/ag;->a:Lcom/netease/mpay/f/af;

    invoke-static {v0}, Lcom/netease/mpay/f/af;->a(Lcom/netease/mpay/f/af;)Lcom/netease/mpay/f/af$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/f/af$b;->a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/f/ag;->a:Lcom/netease/mpay/f/af;

    invoke-static {v0}, Lcom/netease/mpay/f/af;->a(Lcom/netease/mpay/f/af;)Lcom/netease/mpay/f/af$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/ag;->a:Lcom/netease/mpay/f/af;

    invoke-static {v0}, Lcom/netease/mpay/f/af;->a(Lcom/netease/mpay/f/af;)Lcom/netease/mpay/f/af$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/ag;->a:Lcom/netease/mpay/f/af;

    invoke-static {v1}, Lcom/netease/mpay/f/af;->b(Lcom/netease/mpay/f/af;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/netease/mpay/f/af$b;->a(Lcom/netease/mpay/server/response/ah;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ah;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/ag;->a(Lcom/netease/mpay/server/response/ah;)V

    return-void
.end method
