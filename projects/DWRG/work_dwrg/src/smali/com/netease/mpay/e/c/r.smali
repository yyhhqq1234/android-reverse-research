.class public Lcom/netease/mpay/e/c/r;
.super Lcom/netease/mpay/e/c/a/d;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "raw.xml"

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

.method private a(Lcom/netease/mpay/e/b/ac;)V
    .locals 3

    const-string v0, "saveRawDataStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/ac;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/r;->c([B)V

    return-void
.end method

.method private b()Lcom/netease/mpay/e/b/ac;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/r;->c()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/r;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/e/b/ac;->a([B)Lcom/netease/mpay/e/b/ac;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/netease/mpay/e/b/ab;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/netease/mpay/e/c/r;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/e/c/r;->b()Lcom/netease/mpay/e/b/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/netease/mpay/e/b/ac;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/netease/mpay/e/b/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/ab;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/netease/mpay/e/b/ab;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/e/c/r;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/netease/mpay/e/b/ab;)V
    .locals 5

    invoke-static {}, Lcom/netease/mpay/e/c/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/e/c/r;->b()Lcom/netease/mpay/e/b/ac;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/netease/mpay/e/b/ac;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ac;-><init>()V

    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/netease/mpay/e/b/ac;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/netease/mpay/e/b/ac;->a:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, v1, Lcom/netease/mpay/e/b/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/ab;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/netease/mpay/e/b/ab;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/e/b/ab;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/netease/mpay/e/b/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/netease/mpay/e/b/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/r;->a(Lcom/netease/mpay/e/b/ac;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method
