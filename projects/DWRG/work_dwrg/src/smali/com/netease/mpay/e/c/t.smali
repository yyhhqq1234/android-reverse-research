.class public Lcom/netease/mpay/e/c/t;
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

.method private a(Ljava/lang/String;)Lcom/netease/mpay/e/b/ae;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/ae;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ae;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/t;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/ae;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ae;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/ae;->a([B)Lcom/netease/mpay/e/b/ae;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/ae;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ae;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadRoleStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/e/b/ae;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveRoleStore"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/ae;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/t;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "roleStore"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Lcom/netease/mpay/e/b/y;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveOnlineTime"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/y;->c()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/t;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "onlineTime"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/e/b/y;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/y;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/y;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/t;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/y;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/y;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/y;->a([B)Lcom/netease/mpay/e/b/y;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/y;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/y;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadOnlineTime"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c()Lcom/netease/mpay/e/b/ae;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/t;->a:Landroid/content/SharedPreferences;

    const-string v1, "roleStore"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/ae;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ae;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/t;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/ae;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/e/b/y;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/t;->a:Landroid/content/SharedPreferences;

    const-string v1, "onlineTime"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/y;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/y;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/t;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/y;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/netease/mpay/e/b/y;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/y;-><init>()V

    iput-object p1, v0, Lcom/netease/mpay/e/b/y;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/netease/mpay/e/b/y;->b:Ljava/lang/String;

    iput-object p3, v0, Lcom/netease/mpay/e/b/y;->c:Ljava/lang/String;

    iput-wide p4, v0, Lcom/netease/mpay/e/b/y;->d:J

    iput-wide p4, v0, Lcom/netease/mpay/e/b/y;->e:J

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/t;->a(Lcom/netease/mpay/e/b/y;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/netease/mpay/e/c/t;->c()Lcom/netease/mpay/e/b/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, v0, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/ad;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/e/b/ad;->a(Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const-string v0, "resetOnlineTime"

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/e/c/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlineTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/e/c/t;->c()Lcom/netease/mpay/e/b/ae;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/netease/mpay/e/b/ae;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ae;-><init>()V

    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    :cond_1
    new-instance v3, Lcom/netease/mpay/e/b/ad;

    invoke-direct {v3, p1, p2}, Lcom/netease/mpay/e/b/ad;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, v1, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, v1, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/ad;

    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/netease/mpay/e/b/ad;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_3

    :cond_2
    iget-object v2, v1, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_3
    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/t;->a(Lcom/netease/mpay/e/b/ae;)V

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, v1, Lcom/netease/mpay/e/b/ae;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/netease/mpay/e/b/ad;

    invoke-direct {v2, p1, p2}, Lcom/netease/mpay/e/b/ad;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/t;->a(Lcom/netease/mpay/e/b/ae;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3

    new-instance v0, Lcom/netease/mpay/e/b/y;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/y;-><init>()V

    iput-object p1, v0, Lcom/netease/mpay/e/b/y;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/netease/mpay/e/b/y;->b:Ljava/lang/String;

    iput-object p3, v0, Lcom/netease/mpay/e/b/y;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/t;->a()Lcom/netease/mpay/e/b/y;

    move-result-object v1

    iget-object v2, v1, Lcom/netease/mpay/e/b/y;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/netease/mpay/widget/bd;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/e/b/y;->b:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/netease/mpay/widget/bd;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/e/b/y;->c:Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/netease/mpay/widget/bd;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v1, v1, Lcom/netease/mpay/e/b/y;->d:J

    iput-wide v1, v0, Lcom/netease/mpay/e/b/y;->d:J

    iput-wide p4, v0, Lcom/netease/mpay/e/b/y;->e:J

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/t;->a(Lcom/netease/mpay/e/b/y;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
