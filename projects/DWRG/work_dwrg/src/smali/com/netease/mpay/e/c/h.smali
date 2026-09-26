.class public Lcom/netease/mpay/e/c/h;
.super Lcom/netease/mpay/e/c/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "config.xml"

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

.method private a(Lcom/netease/mpay/e/b/c;)V
    .locals 3

    const-string v0, "saveAppConfigs"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/c;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/h;->b([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/h;->c([B)V

    return-void
.end method

.method private e()Lcom/netease/mpay/e/b/c;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/h;->c()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/h;->c()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/h;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/e/b/c;->a([B)Lcom/netease/mpay/e/b/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/netease/mpay/e/b/b;
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/netease/mpay/e/c/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/e/c/h;->e()Lcom/netease/mpay/e/b/c;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/b;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/b;-><init>()V

    iget-object v1, v2, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/b;

    iget-object v3, v0, Lcom/netease/mpay/e/b/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/e/c/h;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Lcom/netease/mpay/e/b/b;

    invoke-direct {v1}, Lcom/netease/mpay/e/b/b;-><init>()V

    iget-object v3, v0, Lcom/netease/mpay/e/b/b;->b:Ljava/lang/String;

    iput-object v3, v1, Lcom/netease/mpay/e/b/b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/b;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/mpay/e/b/b;->a:Ljava/lang/String;

    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "getAppConfig"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method protected a(Lcom/netease/mpay/e/b/b;)V
    .locals 5

    invoke-static {}, Lcom/netease/mpay/e/c/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/e/c/h;->e()Lcom/netease/mpay/e/b/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b/c;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/c;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    :goto_1
    iget-object v1, v0, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/h;->a(Lcom/netease/mpay/e/b/c;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/b;

    iget-object v3, v0, Lcom/netease/mpay/e/b/b;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/e/b/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected b()V
    .locals 5

    invoke-static {}, Lcom/netease/mpay/e/c/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/e/c/h;->e()Lcom/netease/mpay/e/b/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/b;

    iget-object v3, v0, Lcom/netease/mpay/e/b/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/e/c/h;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v1, Lcom/netease/mpay/e/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/h;->a(Lcom/netease/mpay/e/b/c;)V

    goto :goto_0
.end method
