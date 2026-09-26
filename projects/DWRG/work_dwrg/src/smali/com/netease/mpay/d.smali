.class public Lcom/netease/mpay/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "consts0"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "const7"

    sget-object v1, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "consts1"

    sget-object v1, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "consts2"

    sget-object v1, Lcom/netease/mpay/bk;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "consts3"

    sget-object v1, Lcom/netease/mpay/bk;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "consts4"

    sget-object v1, Lcom/netease/mpay/bk;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "consts5"

    sget-object v1, Lcom/netease/mpay/bk;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "consts6"

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/netease/mpay/widget/RIdentifier;->init(Landroid/content/Context;)V

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "const7"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    sput-object v0, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    const-string v0, "consts1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_2
    sput-object v0, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    const-string v0, "consts2"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->b:Ljava/lang/Boolean;

    const-string v0, "consts3"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->c:Ljava/lang/Boolean;

    const-string v0, "consts4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_3
    sput-object v0, Lcom/netease/mpay/bk;->i:Ljava/lang/String;

    const-string v0, "consts5"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_4
    sput-object v0, Lcom/netease/mpay/bk;->j:Ljava/lang/String;

    const-string v0, "consts6"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_5
    sput-object v0, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/netease/mpay/bk;->i:Ljava/lang/String;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/netease/mpay/bk;->j:Ljava/lang/String;

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    goto :goto_5
.end method

.method public static b(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "consts0"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
