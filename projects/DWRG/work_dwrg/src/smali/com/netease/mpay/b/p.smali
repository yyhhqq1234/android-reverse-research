.class public Lcom/netease/mpay/b/p;
.super Lcom/netease/mpay/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/p$b;,
        Lcom/netease/mpay/b/p$a;
    }
.end annotation


# instance fields
.field public c:Lcom/netease/mpay/b/p$a;

.field public d:Lcom/netease/mpay/b/p$b;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/netease/mpay/b/p$a;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/p$a;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    new-instance v0, Lcom/netease/mpay/b/p$b;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/p$b;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/p$a;Lcom/netease/mpay/b/p$b;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    if-eqz p2, :cond_2

    new-instance v0, Lcom/netease/mpay/b/p$a;

    iget-object v1, p2, Lcom/netease/mpay/b/p$a;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget v5, p2, Lcom/netease/mpay/b/p$a;->e:I

    iget-object v6, p2, Lcom/netease/mpay/b/p$a;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/b/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    if-eqz p3, :cond_0

    new-instance v7, Lcom/netease/mpay/b/p$b;

    iget-object v0, p3, Lcom/netease/mpay/b/p$b;->a:Ljava/lang/String;

    iget-object v1, p3, Lcom/netease/mpay/b/p$b;->c:Lcom/netease/mpay/PaymentCallback;

    invoke-direct {v7, v0, v1}, Lcom/netease/mpay/b/p$b;-><init>(Ljava/lang/String;Lcom/netease/mpay/PaymentCallback;)V

    :cond_0
    iput-object v7, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v7

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/netease/mpay/b/p;)V
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/p;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    iget-object v0, p1, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iput-object v0, p0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v0, p1, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    iput-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/b/p$a;->a(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/b/p$b;->a(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    iget-object v0, v0, Lcom/netease/mpay/b/p$b;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/netease/mpay/PaymentCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    iget-object v0, v0, Lcom/netease/mpay/b/p$b;->c:Lcom/netease/mpay/PaymentCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    iget-object v0, v0, Lcom/netease/mpay/b/p$b;->c:Lcom/netease/mpay/PaymentCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->g:Lcom/netease/mpay/widget/al;

    iget-object v1, p0, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    iget-wide v1, v1, Lcom/netease/mpay/b/p$b;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/widget/al;->a(J)Ljava/lang/Object;

    :cond_0
    return-void
.end method
