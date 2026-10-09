.class public Lcom/tencent/mid/b/g;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/tencent/mid/b/g;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/b/f;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/tencent/mid/api/MidEntity;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/b/f;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Lcom/tencent/mid/util/f;

.field private i:Lcom/tencent/mid/api/MidEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mid/b/g;->h:Lcom/tencent/mid/b/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    iput-object v1, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/mid/b/g;->b:Lcom/tencent/mid/api/MidEntity;

    iput-object v1, p0, Lcom/tencent/mid/b/g;->c:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    iput-boolean v2, p0, Lcom/tencent/mid/b/g;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/e;

    invoke-direct {v2, p1, v3}, Lcom/tencent/mid/b/e;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/c;

    invoke-direct {v2, p1, v3}, Lcom/tencent/mid/b/c;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/d;

    invoke-direct {v2, p1, v3}, Lcom/tencent/mid/b/d;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/b/f;",
            ">;)",
            "Lcom/tencent/mid/api/MidEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mid/b/f;->i()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/mid/b/g;
    .locals 2

    const-class v1, Lcom/tencent/mid/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mid/b/g;->h:Lcom/tencent/mid/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mid/b/g;

    invoke-direct {v0, p0}, Lcom/tencent/mid/b/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mid/b/g;->h:Lcom/tencent/mid/b/g;

    :cond_0
    sget-object v0, Lcom/tencent/mid/b/g;->h:Lcom/tencent/mid/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private m()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/b/f;",
            ">;"
        }
    .end annotation

    const v4, 0xf4241

    iget-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/e;

    iget-object v3, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/b/e;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/c;

    iget-object v3, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/b/c;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/d;

    iget-object v3, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/b/d;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    return-object v0
.end method

.method private n()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/b/f;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mid/b/g;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mid/b/g;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/e;

    iget-object v3, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/b/e;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->c:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/c;

    iget-object v3, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/b/c;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->c:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/b/d;

    iget-object v3, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/b/d;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tencent/mid/api/MidEntity;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->m()Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->b:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/b/g;->b:Lcom/tencent/mid/api/MidEntity;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readNewVersionMidEntity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mid/b/g;->b:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mid/b/g;->b:Lcom/tencent/mid/api/MidEntity;

    return-object v0
.end method

.method public a(Ljava/util/List;)Lcom/tencent/mid/api/MidEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/tencent/mid/api/MidEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mid/b/g;->a(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/b/f;",
            ">;)",
            "Lcom/tencent/mid/api/MidEntity;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mid/b/f;->i()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/mid/b/g;->l()Lcom/tencent/mid/b/a;

    move-result-object v0

    if-lez p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/a;->c(I)V

    :cond_0
    if-lez p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/tencent/mid/b/a;->a(I)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mid/b/a;->a(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mid/b/a;->b(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/mid/b/g;->a(Lcom/tencent/mid/b/a;)V

    return-void
.end method

.method public a(Lcom/tencent/mid/api/MidEntity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mid/b/g;->a(Lcom/tencent/mid/api/MidEntity;Z)V

    return-void
.end method

.method public a(Lcom/tencent/mid/api/MidEntity;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeNewVersionMidEntity midEntity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->insertMid2Provider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/tencent/mid/b/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mid/b/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/b/a;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->b(Lcom/tencent/mid/b/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/util/List;)Lcom/tencent/mid/b/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/tencent/mid/b/a;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mid/b/f;->j()Lcom/tencent/mid/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mid/b/g;->a()Lcom/tencent/mid/api/MidEntity;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->b:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/b/g;->b:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->m()Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/tencent/mid/api/MidEntity;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->insertMid2OldProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->m()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->m()Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    :cond_1
    return-void
.end method

.method public d()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->m()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    :cond_0
    return-void
.end method

.method public e()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->m()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    :cond_1
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mid/b/g;->h()Lcom/tencent/mid/api/MidEntity;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMidString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public f(Lcom/tencent/mid/api/MidEntity;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g()J
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mid/b/g;->h()Lcom/tencent/mid/api/MidEntity;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getGuid()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMidString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mid/util/f;->f(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public g(Lcom/tencent/mid/api/MidEntity;)V
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mid/b/g;->n()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/mid/b/f;->a(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h()Lcom/tencent/mid/api/MidEntity;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    const-string v1, "read the new one"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    const-string v1, "load from the old one"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->n()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy old mid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to new version."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/mid/b/g;->f(Lcom/tencent/mid/api/MidEntity;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    const-string v1, "mid query other app"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mid/b/g;->f:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/tencent/mid/util/Util;->getMidsByApps(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/api/MidEntity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    :cond_3
    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    const-string v1, "read the new one"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    :cond_4
    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    const-string v1, "load from the old one"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v8, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/tencent/mid/b/g;->n()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy old mid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to new version."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/f;->d(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/mid/b/g;->f(Lcom/tencent/mid/api/MidEntity;)V

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mid/b/g;->d:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mid/b/g;->g:Lcom/tencent/mid/util/f;

    const-string v1, "firstRead"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/f;->h(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/mid/b/g;->i()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/mid/b/g;->d(Lcom/tencent/mid/api/MidEntity;)V

    :cond_7
    iput-boolean v5, p0, Lcom/tencent/mid/b/g;->d:Z

    :cond_8
    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mid/b/g;->i:Lcom/tencent/mid/api/MidEntity;

    :goto_0
    return-object v0

    :cond_9
    new-instance v0, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v0}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    goto :goto_0
.end method

.method public i()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mid/b/g;->e:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mid/b/g;->a(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/tencent/mid/b/a;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mid/b/g;->b(Ljava/util/List;)Lcom/tencent/mid/b/a;

    move-result-object v0

    return-object v0
.end method
