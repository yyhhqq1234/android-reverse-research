.class public Lcom/netease/mpay/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/b/a$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/netease/mpay/b/a$a;

    sget-object v0, Lcom/netease/mpay/b/ak;->a:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/netease/mpay/b/ak;->c:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/netease/mpay/b/ak;->b:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->e(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/MpayConfig;

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iput-object v1, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;)V
    .locals 4
    .param p1    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/mpay/b/a$a;

    iget-object v1, p1, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/b/a$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/b/a$a;->c:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iput-object v0, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

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

.method public static a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;J)V
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Landroid/os/Parcelable;)V
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/io/Serializable;)V
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I
    .locals 2

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)J
    .locals 3

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/io/Serializable;
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Landroid/os/Parcelable;
    .locals 1

    invoke-virtual {p1}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

    iget-object v0, v0, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

    iget-object v0, v0, Lcom/netease/mpay/b/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/netease/mpay/MpayConfig;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

    iget-object v0, v0, Lcom/netease/mpay/b/a$a;->c:Lcom/netease/mpay/MpayConfig;

    return-object v0
.end method

.method public d()Lcom/netease/mpay/b/a$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

    return-object v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/netease/mpay/b/ak;->a:Lcom/netease/mpay/b/ak;

    iget-object v2, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

    iget-object v2, v2, Lcom/netease/mpay/b/a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v1, Lcom/netease/mpay/b/ak;->c:Lcom/netease/mpay/b/ak;

    iget-object v2, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

    iget-object v2, v2, Lcom/netease/mpay/b/a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v1, Lcom/netease/mpay/b/ak;->b:Lcom/netease/mpay/b/ak;

    iget-object v2, p0, Lcom/netease/mpay/b/a;->a:Lcom/netease/mpay/b/a$a;

    iget-object v2, v2, Lcom/netease/mpay/b/a$a;->c:Lcom/netease/mpay/MpayConfig;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/io/Serializable;)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;)V

    return-object v0
.end method
