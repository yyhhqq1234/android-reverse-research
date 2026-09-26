.class public Lcom/netease/mpay/e/c/j;
.super Lcom/netease/mpay/e/c/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/e/c/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cache.xml"

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

.method public static a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mpay/e/c/a/d$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method private a(Lcom/netease/mpay/e/b/n;)V
    .locals 3

    const-string v0, "saveImageStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/n;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/j;->b([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/j;->c([B)V

    return-void
.end method

.method private b()Lcom/netease/mpay/e/b/n;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/j;->c()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/j;->a([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netease/mpay/e/b/n;->a([B)Lcom/netease/mpay/e/b/n;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/e/b/m;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/netease/mpay/e/c/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/e/c/j;->b()Lcom/netease/mpay/e/b/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/m;

    iget-object v3, v0, Lcom/netease/mpay/e/b/m;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Lcom/netease/mpay/e/b/m;

    invoke-direct {v1}, Lcom/netease/mpay/e/b/m;-><init>()V

    iget-object v2, v0, Lcom/netease/mpay/e/b/m;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/e/b/m;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/m;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/mpay/e/b/m;->b:Ljava/lang/String;

    const-string v0, "getImageInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/e/b/m;)V
    .locals 5

    invoke-static {}, Lcom/netease/mpay/e/c/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/e/c/j;->b()Lcom/netease/mpay/e/b/n;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b/n;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/n;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    :goto_1
    iget-object v1, v0, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/j;->a(Lcom/netease/mpay/e/b/n;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/m;

    iget-object v3, v0, Lcom/netease/mpay/e/b/m;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/e/b/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Lcom/netease/mpay/e/b/m;)V
    .locals 5

    invoke-static {}, Lcom/netease/mpay/e/c/j;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/e/c/j;->b()Lcom/netease/mpay/e/b/n;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/m;

    iget-object v3, v0, Lcom/netease/mpay/e/b/m;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/e/b/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/netease/mpay/e/b/m;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/e/b/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v1, Lcom/netease/mpay/e/b/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/j;->a(Lcom/netease/mpay/e/b/n;)V

    goto :goto_0
.end method
