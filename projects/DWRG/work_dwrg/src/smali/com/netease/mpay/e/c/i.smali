.class public Lcom/netease/mpay/e/c/i;
.super Lcom/netease/mpay/e/c/a/e;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
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

.method private a(Ljava/lang/String;)Lcom/netease/mpay/e/b/d;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/d;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/d;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/i;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/d;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/d;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/d;->a([B)Lcom/netease/mpay/e/b/d;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/d;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/d;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadIdentifier"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/e/b/l;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/l;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/l;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/i;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/l;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/l;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/l;->a([B)Lcom/netease/mpay/e/b/l;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/l;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/l;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadGuestGuideInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/netease/mpay/e/b/d;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "app"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/d;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/d;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/i;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/netease/mpay/e/b/d;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveIdentifier"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/d;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/i;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "app"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected a(Lcom/netease/mpay/e/b/l;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveGuestGuideInfo"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/l;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/i;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "guide"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected b()V
    .locals 2

    const-string v0, "wipeIdentifier"

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/e/c/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected c()V
    .locals 2

    const-string v0, "wipeGuestGuideInfo"

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/e/c/i;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected d()Lcom/netease/mpay/e/b/l;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/i;->a:Landroid/content/SharedPreferences;

    const-string v1, "guide"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/l;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/l;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/i;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/l;

    move-result-object v0

    goto :goto_0
.end method
