.class public Lcom/netease/mpay/e/c/q;
.super Lcom/netease/mpay/e/c/a/c;


# instance fields
.field private a:Lcom/netease/mpay/e/c/r;

.field private d:Lcom/netease/mpay/e/c/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/e/c/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/e/c/r;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/e/c/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/e/c/q;->a:Lcom/netease/mpay/e/c/r;

    new-instance v0, Lcom/netease/mpay/e/c/s;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/e/c/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/e/c/q;->d:Lcom/netease/mpay/e/c/s;

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

.method private a(Lcom/netease/mpay/e/b/ab;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/e/b/ab;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/netease/mpay/e/c/q;->d:Lcom/netease/mpay/e/c/s;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/s;->a()Lcom/netease/mpay/e/b/ab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/q;->a(Lcom/netease/mpay/e/b/ab;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/ab;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/e/c/q;->a:Lcom/netease/mpay/e/c/r;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/r;->a()Lcom/netease/mpay/e/b/ab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/q;->a(Lcom/netease/mpay/e/b/ab;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/e/c/q;->d:Lcom/netease/mpay/e/c/s;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/s;->a(Lcom/netease/mpay/e/b/ab;)V

    iget-object v0, v0, Lcom/netease/mpay/e/b/ab;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b/ab;

    iget-object v1, p0, Lcom/netease/mpay/e/c/q;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/e/c/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/mpay/widget/az;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b/ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/e/c/q;->a:Lcom/netease/mpay/e/c/r;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/r;->a(Lcom/netease/mpay/e/b/ab;)V

    iget-object v1, p0, Lcom/netease/mpay/e/c/q;->d:Lcom/netease/mpay/e/c/s;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/s;->a(Lcom/netease/mpay/e/b/ab;)V

    iget-object v0, v0, Lcom/netease/mpay/e/b/ab;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected b([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
