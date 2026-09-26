.class public Lcom/netease/mpay/server/response/u;
.super Lcom/netease/mpay/server/response/ac;


# instance fields
.field public a:J

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/server/response/ac;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/mpay/server/response/u;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/server/response/u;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/server/response/u;->c:Ljava/util/HashMap;

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

.method private a(Landroid/content/Context;[I)I
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/mpay/server/response/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s;

    array-length v6, p2

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_1

    aget v7, p2, v3

    iget v8, v0, Lcom/netease/mpay/server/response/s;->a:I

    if-ne v8, v7, :cond_2

    invoke-virtual {v0, p1}, Lcom/netease/mpay/server/response/s;->b(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/netease/mpay/cz;->a(Landroid/content/Context;)Lcom/netease/mpay/cz;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/mpay/cz;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)I
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public a(I)Lcom/netease/mpay/server/response/s;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/netease/mpay/server/response/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s;

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/netease/mpay/server/response/s;->a:I

    if-ne v3, p1, :cond_1

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/netease/mpay/server/response/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/server/response/s;-><init>(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;[I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 4
        0x5
        0x4
    .end array-data
.end method

.method public a(Landroid/content/Context;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    aput p2, v2, v1

    invoke-direct {p0, p1, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;[I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/server/response/u;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/netease/mpay/server/response/u;->a(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/ArrayList;I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/netease/mpay/server/response/s;->a:I

    if-ne p2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public b(I)Lcom/netease/mpay/server/response/r;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/netease/mpay/server/response/u;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/r;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/response/r;

    invoke-direct {v0, p1}, Lcom/netease/mpay/server/response/r;-><init>(I)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/server/response/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    new-instance v3, Lcom/netease/mpay/server/response/s$a;

    invoke-direct {v3}, Lcom/netease/mpay/server/response/s$a;-><init>()V

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/server/response/s;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/netease/mpay/server/response/s;->a:I

    if-ne v8, v5, :cond_2

    new-instance v5, Lcom/netease/mpay/e/b;

    invoke-direct {v5, p1, p2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/netease/mpay/e/c/k;->a(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v7, :cond_1

    :cond_2
    iget-object v5, v3, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v3, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    iget-object v2, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/netease/mpay/server/response/s;->a()Lcom/netease/mpay/server/response/s;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    return-object v1
.end method
