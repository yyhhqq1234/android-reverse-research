.class public Lcom/netease/mpay/b/ar;
.super Lcom/netease/mpay/b/al;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/ar$a;,
        Lcom/netease/mpay/b/ar$d;,
        Lcom/netease/mpay/b/ar$h;,
        Lcom/netease/mpay/b/ar$g;,
        Lcom/netease/mpay/b/ar$i;,
        Lcom/netease/mpay/b/ar$c;,
        Lcom/netease/mpay/b/ar$f;,
        Lcom/netease/mpay/b/ar$b;,
        Lcom/netease/mpay/b/ar$e;
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:I


# direct methods
.method private constructor <init>(II)V
    .locals 2

    const/16 v0, 0x3f1

    invoke-direct {p0, v0}, Lcom/netease/mpay/b/al;-><init>(I)V

    iput p1, p0, Lcom/netease/mpay/b/ar;->b:I

    iput p2, p0, Lcom/netease/mpay/b/ar;->c:I

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

.method synthetic constructor <init>(IILcom/netease/mpay/b/as;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/b/ar;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/ak;->aM:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    sget-object v1, Lcom/netease/mpay/b/ak;->aN:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v1}, Lcom/netease/mpay/b/a;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/b/ar;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/ar;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/netease/mpay/b/ar;->b:I

    if-nez v0, :cond_1

    new-instance p0, Lcom/netease/mpay/b/ar$e;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$e;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    if-ne v0, v1, :cond_2

    new-instance p0, Lcom/netease/mpay/b/ar$b;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$b;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    if-ne v0, v1, :cond_3

    new-instance p0, Lcom/netease/mpay/b/ar$f;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$f;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    if-ne v0, v1, :cond_4

    new-instance p0, Lcom/netease/mpay/b/ar$c;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$c;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    if-ne v0, v1, :cond_5

    new-instance p0, Lcom/netease/mpay/b/ar$d;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$d;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    if-ne v0, v1, :cond_6

    new-instance p0, Lcom/netease/mpay/b/ar$a;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$a;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    if-ne v0, v1, :cond_7

    new-instance p0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$g;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    if-ne v0, v1, :cond_8

    new-instance p0, Lcom/netease/mpay/b/ar$h;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$h;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x8

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    if-ne v0, v1, :cond_0

    new-instance p0, Lcom/netease/mpay/b/ar$i;

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/b/ar$i;-><init>(Landroid/content/Intent;Lcom/netease/mpay/b/as;)V

    goto :goto_0
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/ak;->aM:Lcom/netease/mpay/b/ak;

    iget v1, p0, Lcom/netease/mpay/b/ar;->b:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aN:Lcom/netease/mpay/b/ak;

    iget v1, p0, Lcom/netease/mpay/b/ar;->c:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    return-void
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/netease/mpay/b/ar;->c:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
