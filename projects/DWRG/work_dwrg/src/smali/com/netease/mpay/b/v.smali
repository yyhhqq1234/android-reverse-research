.class public Lcom/netease/mpay/b/v;
.super Lcom/netease/mpay/b/k;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/netease/mpay/QrCodeScannerCallback;

.field public c:Lcom/netease/mpay/codescanner/QrScannerOptions;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->ag:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/v;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/v;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->ah:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/v;->d(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->e:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/QrCodeScannerCallback;

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/v;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    sget-object v0, Lcom/netease/mpay/b/ak;->ai:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/v;->d(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->f:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/codescanner/QrScannerOptions;

    :goto_1
    iput-object v0, p0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    iput-object p2, p0, Lcom/netease/mpay/b/v;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/b/v;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    iput-object p5, p0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

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
.method protected a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/netease/mpay/b/k;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->ag:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/v;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/v;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/b/v;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->ah:Lcom/netease/mpay/b/ak;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/hi;->e:Lcom/netease/mpay/widget/al;

    iget-object v2, p0, Lcom/netease/mpay/b/v;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/b/v;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;J)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/mpay/b/ak;->ai:Lcom/netease/mpay/b/ak;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/hi;->f:Lcom/netease/mpay/widget/al;

    iget-object v2, p0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/b/v;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;J)V

    :cond_1
    return-void
.end method
