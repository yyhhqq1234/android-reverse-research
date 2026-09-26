.class public Lcom/netease/mpay/e/c/d;
.super Lcom/netease/mpay/e/c/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "devices.xml"

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/e/c/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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

.method private a(Lcom/netease/mpay/e/b/g;)V
    .locals 3

    const-string v0, "saveDeviceStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/g;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/d;->b([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/d;->c([B)V

    return-void
.end method

.method private b()Lcom/netease/mpay/e/b/g;
    .locals 3

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/d;->c()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/e/c/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mpay/e/c/d;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/d;->c()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netease/mpay/e/c/d;->a([B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/e/b/g;->a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/netease/mpay/e/b/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/netease/mpay/e/b/f;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/netease/mpay/e/c/d;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/e/c/d;->b()Lcom/netease/mpay/e/b/g;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/e/b/g;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/e/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/f;

    iget-object v2, v0, Lcom/netease/mpay/e/b/f;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/e/c/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "getDeviceInfoExt"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/mpay/e/b/f;

    iget-object v1, p0, Lcom/netease/mpay/e/c/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/e/c/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/netease/mpay/e/b/f;)V
    .locals 5

    const-string v0, "saveDeviceInfoExt"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/netease/mpay/e/c/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/e/c/d;->b()Lcom/netease/mpay/e/b/g;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/netease/mpay/e/b/g;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b/g;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/g;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/netease/mpay/e/b/g;->a:Ljava/util/ArrayList;

    :goto_1
    iget-object v1, v0, Lcom/netease/mpay/e/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/d;->a(Lcom/netease/mpay/e/b/g;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/netease/mpay/e/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/f;

    iget-object v3, v0, Lcom/netease/mpay/e/b/f;->h:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/e/b/f;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/netease/mpay/e/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
