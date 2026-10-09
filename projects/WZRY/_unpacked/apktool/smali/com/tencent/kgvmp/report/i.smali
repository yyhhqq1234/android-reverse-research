.class Lcom/tencent/kgvmp/report/i;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:Ljava/util/HashMap;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/report/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/kgvmp/report/i;->c:I

    iput p1, p0, Lcom/tencent/kgvmp/report/i;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/kgvmp/report/i;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/kgvmp/report/i;->c:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/tencent/kgvmp/report/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/kgvmp/report/i;->c:I

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->CPU_RATE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->USED_MEM:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->TIME_RELATIVE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->FPS_AVG:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->MATCH_MARK:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->MAP_ID:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->m()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_0

    sget-object v6, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v7, Lcom/tencent/kgvmp/a/e;->FRAME_MISS_AVG:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v7}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v6, Lcom/tencent/kgvmp/a/e;->NET_LATENCY_AVG:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v6}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->MATCH_STATE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->TEMP_LEVEL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v4, :cond_4

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->FPS_LEVEL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v5, :cond_5

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->DYNAMIC_SETTING:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/kgvmp/report/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v2, ""

    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/tencent/kgvmp/report/i;->c:I

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/kgvmp/report/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/kgvmp/report/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    return-void
.end method
