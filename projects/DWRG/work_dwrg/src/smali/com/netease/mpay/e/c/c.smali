.class public Lcom/netease/mpay/e/c/c;
.super Lcom/netease/mpay/e/c/a/c;


# instance fields
.field private a:Lcom/netease/mpay/e/c/e;

.field private d:Lcom/netease/mpay/e/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/e/c/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/e/c/e;

    iget-object v1, p0, Lcom/netease/mpay/e/c/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/c/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/e/c/c;->a:Lcom/netease/mpay/e/c/e;

    new-instance v0, Lcom/netease/mpay/e/c/d;

    iget-object v1, p0, Lcom/netease/mpay/e/c/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/c/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/e/c/c;->d:Lcom/netease/mpay/e/c/d;

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
.method public a()Lcom/netease/mpay/e/b/f;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/c;->a:Lcom/netease/mpay/e/c/e;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/e;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/e/c/c;->d:Lcom/netease/mpay/e/c/d;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/e/c/c;->a:Lcom/netease/mpay/e/c/e;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/e;->a(Lcom/netease/mpay/e/b/f;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/e/c/c;->d:Lcom/netease/mpay/e/c/d;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/d;->a(Lcom/netease/mpay/e/b/f;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/e/b/f;

    iget-object v1, p0, Lcom/netease/mpay/e/c/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/c/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/netease/mpay/e/b/f;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e/c/c;->a:Lcom/netease/mpay/e/c/e;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/e/c/e;->a(Lcom/netease/mpay/e/b/f;)V

    iget-object v0, p0, Lcom/netease/mpay/e/c/c;->d:Lcom/netease/mpay/e/c/d;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/e/c/d;->a(Lcom/netease/mpay/e/b/f;)V

    return-void
.end method

.method protected a([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iput-object v1, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/f;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/f;->i:[B

    iget-object v1, p0, Lcom/netease/mpay/e/c/c;->a:Lcom/netease/mpay/e/c/e;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/e;->a(Lcom/netease/mpay/e/b/f;)V

    iget-object v1, p0, Lcom/netease/mpay/e/c/c;->d:Lcom/netease/mpay/e/c/d;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/d;->a(Lcom/netease/mpay/e/b/f;)V

    return-void
.end method

.method protected b([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
