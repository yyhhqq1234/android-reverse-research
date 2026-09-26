.class public Lcom/netease/mpay/e/c/m;
.super Lcom/netease/mpay/e/c/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/e/c/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageStore_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/netease/mpay/e/b/w;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/w;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/w;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/m;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/w;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/w;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/netease/mpay/e/b/w;->a([B)Lcom/netease/mpay/e/b/w;

    move-result-object v0

    const-string v1, "loadMessage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :cond_3
    new-instance v0, Lcom/netease/mpay/e/b/w;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/w;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/e/b/w;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/m;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/netease/mpay/e/c/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/w;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/w;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/m;->d(Ljava/lang/String;)Lcom/netease/mpay/e/b/w;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/e/b/w;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveMessage"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/netease/mpay/e/b/w;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/m;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/m;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/netease/mpay/e/c/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "removeMessage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/mpay/e/c/m;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/netease/mpay/e/c/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
