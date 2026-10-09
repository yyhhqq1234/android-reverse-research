.class public final Lcom/netease/mobile/link/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/mobile/link/a5;->a(Z)V

    sget-object p0, Lcom/netease/mobile/link/b5;->i:Lcom/netease/mobile/link/b5;

    .line 6
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/a3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0

    .line 0
    :cond_0
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/netease/mobile/link/a5;->a(Z)V

    sget-object p0, Lcom/netease/mobile/link/b5;->j:Lcom/netease/mobile/link/b5;

    .line 1
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/g0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0

    .line 2
    :cond_1
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/netease/mobile/link/a5;->a(Z)V

    sget-object p0, Lcom/netease/mobile/link/b5;->h:Lcom/netease/mobile/link/b5;

    :goto_0
    invoke-static {p0, p1}, Lcom/netease/mobile/link/p0;->c(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/netease/mobile/link/a5;->a(Z)V

    sget-object p0, Lcom/netease/mobile/link/b5;->g:Lcom/netease/mobile/link/b5;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/netease/mobile/link/a5;->a(Z)V

    sget-object p0, Lcom/netease/mobile/link/b5;->e:Lcom/netease/mobile/link/b5;

    .line 3
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/g0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0

    .line 4
    :cond_4
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/netease/mobile/link/a5;->a(Z)V

    sget-object p0, Lcom/netease/mobile/link/b5;->d:Lcom/netease/mobile/link/b5;

    .line 5
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/z4;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static a(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 2

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v0

    .line 7
    iget v0, v0, Lcom/netease/mobile/link/t;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/t2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/g1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static a(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 2

    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/o6;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    .line 9
    iput-object p1, v0, Lcom/netease/mobile/link/m0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 3

    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/s5;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static b(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 2

    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/h2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static c(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 5

    sget-object v0, Lcom/netease/mobile/link/b5;->h:Lcom/netease/mobile/link/b5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v3

    const-string v4, ""

    if-nez v0, :cond_2

    .line 1
    iget v0, v3, Lcom/netease/mobile/link/t;->b:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 2
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/t2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/g1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static c(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 2

    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/s1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static d(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 2

    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/a2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static e(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 2

    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/t2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static f(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 2

    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/z0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method

.method public static g(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;
    .locals 2

    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/n7;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    return-object v0
.end method
