.class public Lcom/netease/mpay/b/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/netease/mpay/b/ak;->M:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/p$a;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->r:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->N:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->O:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->t:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/b/p$a;->e:I

    sget-object v0, Lcom/netease/mpay/b/ak;->I:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/p$a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/b/p$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/netease/mpay/b/p$a;->e:I

    iput-object p6, p0, Lcom/netease/mpay/b/p$a;->f:Ljava/lang/String;

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
.method a(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/ak;->M:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/p$a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->r:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->N:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/p$a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->O:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->t:Lcom/netease/mpay/b/ak;

    iget v1, p0, Lcom/netease/mpay/b/p$a;->e:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    sget-object v0, Lcom/netease/mpay/b/ak;->I:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/p$a;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    return-void
.end method
