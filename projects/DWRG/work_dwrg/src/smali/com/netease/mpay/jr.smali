.class Lcom/netease/mpay/jr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jg;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jg;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

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

    iget-object v0, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/mpay/jg;->a(Lcom/netease/mpay/jg;I)V

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

    invoke-static {v0, p2}, Lcom/netease/mpay/jg;->a(Lcom/netease/mpay/jg;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->l(Lcom/netease/mpay/jg;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/h;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/h;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/server/response/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/netease/mpay/jg;->a(Lcom/netease/mpay/jg;I)V

    new-instance v0, Lcom/netease/mpay/b/ar$a;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/netease/mpay/server/response/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

    invoke-static {v3}, Lcom/netease/mpay/jg;->f(Lcom/netease/mpay/jg;)Lcom/netease/mpay/b/s;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v3, v3, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v4, "cz_wydk"

    invoke-static {v3, v4}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cz_wydk_cz"

    invoke-static {v3, v4}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/b/ar$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

    iget-object v1, v1, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$a;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/mpay/jg;->a(Lcom/netease/mpay/jg;I)V

    new-instance v0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jr;->a:Lcom/netease/mpay/jg;

    iget-object v1, v1, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$g;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/h;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/jr;->a(Lcom/netease/mpay/server/response/h;)V

    return-void
.end method
