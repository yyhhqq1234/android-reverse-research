.class public Lcom/netease/mpay/e/c/b;
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

.method private a(Lcom/netease/mpay/e/b/ai;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveUrsUDIDStore"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/ai;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "urs_udid_store"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/netease/mpay/e/b/af;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/af;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/af;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/af;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/af;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/af;->a([B)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/af;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/af;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadConfing"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lcom/netease/mpay/e/b/e;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/e;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/e;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/e;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/e;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/e;->a([B)Lcom/netease/mpay/e/b/e;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/e;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/e;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadCommonConfig"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/netease/mpay/e/b/ai;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/ai;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ai;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/ai;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ai;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/ai;->a([B)Lcom/netease/mpay/e/b/ai;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/ai;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ai;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadUrsUDIDStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lcom/netease/mpay/e/b/aj;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/aj;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/aj;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/aj;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/aj;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/aj;->a([B)Lcom/netease/mpay/e/b/aj;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/aj;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/aj;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadUserCenter"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_center_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/lang/String;)Lcom/netease/mpay/e/b/al;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/al;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/al;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/al;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/al;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/al;->a([B)Lcom/netease/mpay/e/b/al;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/al;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/al;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadUserCenterUpdates"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Lcom/netease/mpay/e/b/ak;
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/ak;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ak;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/ak;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ak;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/ak;->a([B)Lcom/netease/mpay/e/b/ak;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/ak;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ak;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "loadUserCenterUpdate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/e/b/af;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "config"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/af;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/af;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/b;->d(Ljava/lang/String;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "urs_udid_store"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/ai;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ai;-><init>()V

    :goto_0
    iget-object v1, v0, Lcom/netease/mpay/e/b/ai;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/bc;

    invoke-direct {v1}, Lcom/netease/mpay/widget/bc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/netease/mpay/widget/bc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/e/b/ai;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/netease/mpay/e/b/ai;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/b;->a(Lcom/netease/mpay/e/b/ai;)V

    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/e/b/ai;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/b;->f(Ljava/lang/String;)Lcom/netease/mpay/e/b/ai;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/e/b/af;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveConfig"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/af;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "config"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/netease/mpay/e/b/aj;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveUserCenter"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/aj;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "user_center_config"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/netease/mpay/e/b/ak;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveUserCenterUpdate"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/ak;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "user_center_update"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/netease/mpay/e/b/e;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveCommonConfig"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/e;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "commonConfig"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveDomain"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/netease/mpay/e/b/ag;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ag;-><init>()V

    iput-object p1, v0, Lcom/netease/mpay/e/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/ag;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "server_domain"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/e/b/al;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "saveUserCenterUpdates"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/netease/mpay/e/b/al;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/netease/mpay/e/c/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/e/b/aj;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    const-string v2, "user_center_config"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/b;->g(Ljava/lang/String;)Lcom/netease/mpay/e/b/aj;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/netease/mpay/e/b/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b()Lcom/netease/mpay/e/b/e;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "commonConfig"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/e;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/e;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/b;->e(Ljava/lang/String;)Lcom/netease/mpay/e/b/e;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/netease/mpay/e/b/al;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/netease/mpay/e/c/b;->h(Ljava/lang/String;)Ljava/lang/String;

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
    new-instance v0, Lcom/netease/mpay/e/b/al;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/al;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/b;->i(Ljava/lang/String;)Lcom/netease/mpay/e/b/al;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    const-string v2, "server_domain"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/b;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/netease/mpay/e/b/ag;->a([B)Lcom/netease/mpay/e/b/ag;

    move-result-object v0

    :goto_1
    const-string v3, "getDomain"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    move-object v2, v0

    :goto_2
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/ag;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v2, ""

    goto :goto_2
.end method

.method public d()Lcom/netease/mpay/e/b/ak;
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/e/c/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "user_center_update"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/ak;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/ak;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/b;->j(Ljava/lang/String;)Lcom/netease/mpay/e/b/ak;

    move-result-object v0

    goto :goto_0
.end method
