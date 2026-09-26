.class public Lcom/netease/mpay/b/ar$a;
.super Lcom/netease/mpay/b/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/b/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/ar;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aO:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ar$a;->d:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->aP:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ar$a;->e:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/b/ak;->aQ:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/ar$a;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/ar$a;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/mpay/b/ar;-><init>(IILcom/netease/mpay/b/as;)V

    iput-object p1, p0, Lcom/netease/mpay/b/ar$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/b/ar$a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/b/ar$a;->f:Ljava/lang/String;

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

    invoke-super {p0, p1}, Lcom/netease/mpay/b/ar;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aO:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ar$a;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aP:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ar$a;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aQ:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/ar$a;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    return-void
.end method
