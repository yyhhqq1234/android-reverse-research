.class public Lcom/netease/mpay/f/af;
.super Lcom/netease/mpay/f/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/af$b;,
        Lcom/netease/mpay/f/af$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/f/af$a;

.field private j:Lcom/netease/mpay/f/af$b;

.field private k:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/af$a;Lcom/netease/mpay/f/af$b;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/n;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/af;->a:Lcom/netease/mpay/f/af$a;

    iput-object p5, p0, Lcom/netease/mpay/f/af;->j:Lcom/netease/mpay/f/af$b;

    iput-object v0, p0, Lcom/netease/mpay/f/af;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/netease/mpay/f/af;->j:Lcom/netease/mpay/f/af$b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/f/af$a;->b:Lcom/netease/mpay/f/af$a;

    iget-object v1, p0, Lcom/netease/mpay/f/af;->a:Lcom/netease/mpay/f/af$a;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/f/n;->f()V

    invoke-super {p0}, Lcom/netease/mpay/f/n;->g()V

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/f/af;)Lcom/netease/mpay/f/af$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/af;->j:Lcom/netease/mpay/f/af$b;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/f/af;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/af;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/af;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ah;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 1

    new-instance v0, Lcom/netease/mpay/f/ag;

    invoke-direct {v0, p0}, Lcom/netease/mpay/f/ag;-><init>(Lcom/netease/mpay/f/af;)V

    invoke-super {p0, p1, v0}, Lcom/netease/mpay/f/n;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    return-void
.end method

.method protected c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ah;
    .locals 7

    const/4 v5, 0x0

    sget-object v0, Lcom/netease/mpay/f/ah;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/f/af;->a:Lcom/netease/mpay/f/af$a;

    invoke-virtual {v1}, Lcom/netease/mpay/f/af$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v6, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/af;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/af;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/af;->e:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/bg;

    iget-object v1, p0, Lcom/netease/mpay/f/af;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/af;->b:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/af;->b:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/a/bg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/server/a/bg$c;)V

    invoke-virtual {v6, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/ah;

    iget-object v1, v0, Lcom/netease/mpay/server/response/ah;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/mpay/cq;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/af;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/af;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/mpay/server/response/ah;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/e/c/j$a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/widget/bd;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/f/af;->k:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/af;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/netease/mpay/server/response/ah;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    iget-object v2, v0, Lcom/netease/mpay/server/response/ah;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/af;->e:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V

    :cond_1
    return-object v0

    :pswitch_0
    new-instance v5, Lcom/netease/mpay/server/a/bg$b;

    invoke-direct {v5}, Lcom/netease/mpay/server/a/bg$b;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v5, Lcom/netease/mpay/server/a/bg$a;

    invoke-direct {v5}, Lcom/netease/mpay/server/a/bg$a;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
