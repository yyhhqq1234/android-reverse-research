.class public Lcom/netease/mpay/e/c/p;
.super Lcom/netease/mpay/e/c/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/e/c/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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

.method private a(Ljava/lang/String;)Lcom/netease/mpay/e/b/t;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/t;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/t;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/p;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/t;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/t;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/t;->a([B)Lcom/netease/mpay/e/b/t;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/t;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/t;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadMcardStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/e/b/t;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveMcardStore"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/t;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/p;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "mcards"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/e/b/a;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/a;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/a;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/p;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/a;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/a;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/a;->a([B)Lcom/netease/mpay/e/b/a;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/a;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/a;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadAlipay"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c()Lcom/netease/mpay/e/b/t;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "mcards"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/t;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/t;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/p;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/t;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/e/b/s;
    .locals 3

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/p;->a()V

    invoke-direct {p0}, Lcom/netease/mpay/e/c/p;->c()Lcom/netease/mpay/e/b/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/s;

    iget-object v2, v0, Lcom/netease/mpay/e/b/s;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/e/b/s;->d:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/netease/mpay/e/b/s;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/s;-><init>()V

    goto :goto_0
.end method

.method public a()V
    .locals 2

    const-string v0, "wipeDeprecatedMcard"

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/e/c/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mcard"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/netease/mpay/e/b/a;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveAlipay"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/a;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/p;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "alipay"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/netease/mpay/e/b/s;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/e/c/p;->c()Lcom/netease/mpay/e/b/t;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/e/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/p;->a(Lcom/netease/mpay/e/b/t;)V

    return-void
.end method

.method public b()Lcom/netease/mpay/e/b/a;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/p;->a:Landroid/content/SharedPreferences;

    const-string v1, "alipay"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/a;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/a;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/p;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/a;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/e/b/s;
    .locals 5

    new-instance v1, Lcom/netease/mpay/e/b/s;

    invoke-direct {v1}, Lcom/netease/mpay/e/b/s;-><init>()V

    invoke-direct {p0}, Lcom/netease/mpay/e/c/p;->c()Lcom/netease/mpay/e/b/t;

    move-result-object v2

    iget-object v0, v2, Lcom/netease/mpay/e/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/s;

    iget-object v4, v0, Lcom/netease/mpay/e/b/s;->d:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_0

    iget-object v4, v0, Lcom/netease/mpay/e/b/s;->d:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    iget-object v1, v2, Lcom/netease/mpay/e/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0, v2}, Lcom/netease/mpay/e/c/p;->a(Lcom/netease/mpay/e/b/t;)V

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
