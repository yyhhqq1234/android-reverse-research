.class Lcom/netease/mpay/codescanner/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/f;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

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

    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/ab;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v2, v2, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/codescanner/e$c;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/b/v;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/codescanner/e$c;

    iget-object v2, v0, Lcom/netease/mpay/codescanner/e$c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/codescanner/e$c;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e$c;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/netease/mpay/QrCodeScannerCallback;->onFetchOrder(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    iget-object v1, v0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/b$a;->H:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/x;

    new-instance v4, Lcom/netease/mpay/b/a$a;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/b/v;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, "webPay"

    iget-object v6, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v6, v6, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v6}, Lcom/netease/mpay/codescanner/e;->d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/b/v;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    new-instance v5, Lcom/netease/mpay/b/x$a;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/g;->a:Lcom/netease/mpay/codescanner/f;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/f;->a:Lcom/netease/mpay/codescanner/e;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/e;->c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/codescanner/e$c;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e$c;->b:Ljava/lang/String;

    invoke-direct {v5, v0, p1}, Lcom/netease/mpay/b/x$a;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/ab;)V

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/b/x;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/x$c;)V

    const/4 v0, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ab;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/codescanner/g;->a(Lcom/netease/mpay/server/response/ab;)V

    return-void
.end method
