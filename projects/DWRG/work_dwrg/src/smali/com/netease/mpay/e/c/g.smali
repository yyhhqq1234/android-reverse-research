.class public Lcom/netease/mpay/e/c/g;
.super Lcom/netease/mpay/e/c/a/c;


# instance fields
.field private a:Lcom/netease/mpay/e/c/i;

.field private d:Lcom/netease/mpay/e/c/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/e/c/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/e/c/i;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/e/c/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/e/c/g;->a:Lcom/netease/mpay/e/c/i;

    new-instance v0, Lcom/netease/mpay/e/c/h;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/e/c/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/e/c/g;->d:Lcom/netease/mpay/e/c/h;

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
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e/c/g;->a:Lcom/netease/mpay/e/c/i;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/i;->b()V

    iget-object v0, p0, Lcom/netease/mpay/e/c/g;->a:Lcom/netease/mpay/e/c/i;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/i;->c()V

    iget-object v0, p0, Lcom/netease/mpay/e/c/g;->d:Lcom/netease/mpay/e/c/h;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/h;->b()V

    return-void
.end method

.method public a(Lcom/netease/mpay/e/b/l;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e/c/g;->a:Lcom/netease/mpay/e/c/i;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/e/c/i;->a(Lcom/netease/mpay/e/b/l;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/e/b/d;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/d;-><init>()V

    iput-object p1, v0, Lcom/netease/mpay/e/b/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/e/c/g;->a:Lcom/netease/mpay/e/c/i;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/i;->a(Lcom/netease/mpay/e/b/d;)V

    new-instance v0, Lcom/netease/mpay/e/b/b;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/b;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/e/c/g;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/b;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/netease/mpay/e/b/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/e/c/g;->d:Lcom/netease/mpay/e/c/h;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/h;->a(Lcom/netease/mpay/e/b/b;)V

    return-void
.end method

.method protected a([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/e/c/g;->a:Lcom/netease/mpay/e/c/i;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/i;->a()Lcom/netease/mpay/e/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/d;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/e/c/g;->d:Lcom/netease/mpay/e/c/h;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/h;->a()Lcom/netease/mpay/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/e/b/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/netease/mpay/e/b/l;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e/c/g;->a:Lcom/netease/mpay/e/c/i;

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/i;->d()Lcom/netease/mpay/e/b/l;

    move-result-object v0

    return-object v0
.end method
