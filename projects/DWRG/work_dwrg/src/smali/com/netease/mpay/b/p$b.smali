.class public Lcom/netease/mpay/b/p$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Lcom/netease/mpay/PaymentCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netease/mpay/b/ak;->L:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/p$b;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->f:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->d(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mpay/b/p$b;->b:J

    iget-wide v0, p0, Lcom/netease/mpay/b/p$b;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->g:Lcom/netease/mpay/widget/al;

    iget-wide v1, p0, Lcom/netease/mpay/b/p$b;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/PaymentCallback;

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/p$b;->c:Lcom/netease/mpay/PaymentCallback;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/PaymentCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/b/p$b;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->g:Lcom/netease/mpay/widget/al;

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/netease/mpay/b/p$b;->b:J

    iput-object p2, p0, Lcom/netease/mpay/b/p$b;->c:Lcom/netease/mpay/PaymentCallback;

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
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/netease/mpay/b/ak;->L:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/p$b;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/b/p$b;->c:Lcom/netease/mpay/PaymentCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->f:Lcom/netease/mpay/b/ak;

    iget-wide v1, p0, Lcom/netease/mpay/b/p$b;->b:J

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;J)V

    :cond_0
    return-void
.end method
