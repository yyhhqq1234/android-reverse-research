.class public Lcom/netease/mpay/b/k;
.super Lcom/netease/mpay/b/a;


# instance fields
.field public d:J

.field public e:Lcom/netease/mpay/AuthenticationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->d:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/k;->d(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mpay/b/k;->d:J

    iget-wide v0, p0, Lcom/netease/mpay/b/k;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    return-void

    :cond_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->b:Lcom/netease/mpay/widget/al;

    iget-wide v1, p0, Lcom/netease/mpay/b/k;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/AuthenticationCallback;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 2
    .param p1    # Lcom/netease/mpay/b/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    if-nez p2, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/netease/mpay/b/k;->d:J

    iput-object p2, p0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->b:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/netease/mpay/b/k;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->d:Lcom/netease/mpay/b/ak;

    invoke-virtual {v0}, Lcom/netease/mpay/b/ak;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/netease/mpay/b/k;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
