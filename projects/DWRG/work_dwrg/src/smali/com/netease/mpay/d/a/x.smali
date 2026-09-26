.class Lcom/netease/mpay/d/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/bd$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/o;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/x;->a:Lcom/netease/mpay/d/a/o;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/x;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->g(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netease/mpay/d/a/o$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/w;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/x;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->a(Lcom/netease/mpay/d/a/o;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/x;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->a(Lcom/netease/mpay/d/a/o;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/x;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->g(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/mpay/d/a/o$b;->a(Lcom/netease/mpay/server/response/w;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/x;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->a(Lcom/netease/mpay/d/a/o;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/x;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->a(Lcom/netease/mpay/d/a/o;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/x;->a:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->g(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/d/a/o$b;->a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    return-void
.end method
