.class public Lcom/tencent/kgvmp/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Lcom/tencent/kgvmp/d/j;

.field private static final b:Ljava/lang/String;

.field private static volatile d:Lcom/tencent/kgvmp/e/f;

.field private static volatile e:Z

.field private static i:Lcom/tencent/kgvmp/d/k;

.field private static j:Lcom/tencent/kgvmp/d/o;

.field private static k:Lcom/tencent/kgvmp/d/d;

.field private static l:Lcom/tencent/kgvmp/d/f;

.field private static m:Lcom/tencent/kgvmp/d/h;

.field private static n:Lcom/tencent/kgvmp/d/b;


# instance fields
.field private c:Landroid/content/Context;

.field private f:Lcom/tencent/kgvmp/d/m;

.field private g:Lcom/tencent/kgvmp/report/d;

.field private h:Lcom/tencent/kgvmp/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    sput-object v1, Lcom/tencent/kgvmp/e/f;->d:Lcom/tencent/kgvmp/e/f;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/kgvmp/e/f;->e:Z

    sput-object v1, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    sput-object v1, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    sput-object v1, Lcom/tencent/kgvmp/e/f;->k:Lcom/tencent/kgvmp/d/d;

    sput-object v1, Lcom/tencent/kgvmp/e/f;->l:Lcom/tencent/kgvmp/d/f;

    sput-object v1, Lcom/tencent/kgvmp/e/f;->m:Lcom/tencent/kgvmp/d/h;

    sput-object v1, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    sget-object v0, Lcom/tencent/kgvmp/d/j;->UNKOWN:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/f;)Lcom/tencent/kgvmp/d/f;
    .locals 0

    sput-object p0, Lcom/tencent/kgvmp/e/f;->l:Lcom/tencent/kgvmp/d/f;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/d/h;)Lcom/tencent/kgvmp/d/h;
    .locals 0

    sput-object p0, Lcom/tencent/kgvmp/e/f;->m:Lcom/tencent/kgvmp/d/h;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/kgvmp/e/f;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/e/f;->d:Lcom/tencent/kgvmp/e/f;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/kgvmp/e/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/kgvmp/e/f;->d:Lcom/tencent/kgvmp/e/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/kgvmp/e/f;

    invoke-direct {v0, p0}, Lcom/tencent/kgvmp/e/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/kgvmp/e/f;->d:Lcom/tencent/kgvmp/e/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->d:Lcom/tencent/kgvmp/e/f;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/e/f;)Lcom/tencent/kgvmp/report/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->g:Lcom/tencent/kgvmp/report/d;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/e/f;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/kgvmp/e/f;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/e/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/e/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/e/f;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/e/f;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method private static declared-synchronized a(Z)V
    .locals 2

    const-class v0, Lcom/tencent/kgvmp/e/f;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/tencent/kgvmp/e/f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/tencent/kgvmp/e/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/a/d;->CPU_LEVEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_1

    const-string v0, "cpu"

    invoke-static {v0, p2}, Lcom/tencent/kgvmp/report/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->g:Lcom/tencent/kgvmp/report/d;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/kgvmp/report/d;->a(ILjava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/kgvmp/e/f;->c(ILjava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/a/d;->GPU_LEVEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string v0, "gpu"

    invoke-static {v0, p2}, Lcom/tencent/kgvmp/report/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "handleMessage: report func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->Q()Lcom/tencent/kgvmp/c/a;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/tencent/kgvmp/c/a;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/tencent/kgvmp/c/a;->a:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "VmpHandler:handleAPMKey: get apmkey arr failed , or length is not matched."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v4, Lcom/tencent/kgvmp/c/a;->a:[Ljava/lang/String;

    aget-object v6, v0, v2

    iget-object v0, v4, Lcom/tencent/kgvmp/c/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/kgvmp/c/b;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/tencent/kgvmp/c/b;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VmpHandler:handleAPMKey: can not find key\'s transform value, use apm\'s value. key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    iget-boolean v3, v0, Lcom/tencent/kgvmp/c/b;->a:Z

    if-eqz v3, :cond_3

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/b;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->g:Lcom/tencent/kgvmp/report/d;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/tencent/kgvmp/report/d;->a(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v5}, Lcom/tencent/kgvmp/e/f;->c(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 4

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/tencent/kgvmp/e/f;->g:Lcom/tencent/kgvmp/report/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/tencent/kgvmp/report/d;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "handleMessage: report func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/e/f;->c(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic c()Lcom/tencent/kgvmp/d/h;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/e/f;->m:Lcom/tencent/kgvmp/d/h;

    return-object v0
.end method

.method private c(ILjava/lang/String;)V
    .locals 4

    invoke-static {p1, p2}, Lcom/tencent/kgvmp/e/b;->b(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "handleMessage: 1 report data not need send to vendor. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/e/h;->a:[I

    sget-object v1, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "no sdk type is available, do not need send data. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/tencent/kgvmp/e/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: xiaomi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/o;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/tencent/kgvmp/e/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: oppo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/e/f;->k:Lcom/tencent/kgvmp/d/d;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/d;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2}, Lcom/tencent/kgvmp/e/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: samsung2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/e/f;->m:Lcom/tencent/kgvmp/d/h;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/h;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p2}, Lcom/tencent/kgvmp/e/b;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo huawei:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/b;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p1, p2}, Lcom/tencent/kgvmp/e/b;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo vivo2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/m;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p1, p2}, Lcom/tencent/kgvmp/e/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo socket:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/m;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private c(Ljava/util/HashMap;)V
    .locals 4

    sget-object v0, Lcom/tencent/kgvmp/e/h;->a:[I

    sget-object v1, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/tencent/kgvmp/e/b;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: common type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/o;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/tencent/kgvmp/e/b;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: common type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/e/f;->k:Lcom/tencent/kgvmp/d/d;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/d;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/tencent/kgvmp/e/b;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: common type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/e/f;->m:Lcom/tencent/kgvmp/d/h;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/h;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/tencent/kgvmp/e/b;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: huawei type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/b;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p1}, Lcom/tencent/kgvmp/e/b;->c(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: vivo2 type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/m;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p1}, Lcom/tencent/kgvmp/e/b;->d(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGameInfo: socket type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v1, v0}, Lcom/tencent/kgvmp/d/m;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic d()Lcom/tencent/kgvmp/d/f;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/e/f;->l:Lcom/tencent/kgvmp/d/f;

    return-object v0
.end method

.method private e()V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    new-instance v0, Lcom/tencent/kgvmp/d/m;

    invoke-direct {v0, v1}, Lcom/tencent/kgvmp/d/m;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/m;->a()V

    :goto_2
    return-void

    :sswitch_0
    const-string v4, "samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "oppo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "realme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "vivo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "huawei"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "blackshark"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/kgvmp/e/f;->h()V

    goto :goto_2

    :pswitch_1
    new-instance v0, Lcom/tencent/kgvmp/d/m;

    invoke-direct {v0, v2}, Lcom/tencent/kgvmp/d/m;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/m;->a()V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/tencent/kgvmp/d/o;->a()Lcom/tencent/kgvmp/d/o;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    sget-object v2, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/d/o;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/j;->XIAOMI:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi sdk is available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string/jumbo v2, "xiaomi sdk is not available."

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x608d18ba -> :sswitch_6
        -0x47e95e19 -> :sswitch_4
        -0x37ba884a -> :sswitch_2
        -0x2d450b45 -> :sswitch_5
        0x3427a0 -> :sswitch_1
        0x373cac -> :sswitch_3
        0x6f28bffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private f()V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    new-instance v0, Lcom/tencent/kgvmp/d/m;

    invoke-direct {v0, v1}, Lcom/tencent/kgvmp/d/m;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/m;->a()V

    :goto_2
    return-void

    :sswitch_0
    const-string v4, "samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "huawei"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "oppo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v4, "realme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "vivo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "blackshark"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/kgvmp/e/f;->h()V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/tencent/kgvmp/d/b;->a()Lcom/tencent/kgvmp/d/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    sget-object v1, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/b;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/j;->HUAWEI:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "huawei sdk is available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "huawei sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcom/tencent/kgvmp/d/m;

    invoke-direct {v0, v2}, Lcom/tencent/kgvmp/d/m;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/m;->a()V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/tencent/kgvmp/d/o;->a()Lcom/tencent/kgvmp/d/o;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    sget-object v2, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/d/o;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v2

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/d/j;->XIAOMI:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi sdk is available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string/jumbo v2, "xiaomi sdk is not available."

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x608d18ba -> :sswitch_6
        -0x47e95e19 -> :sswitch_1
        -0x37ba884a -> :sswitch_3
        -0x2d450b45 -> :sswitch_5
        0x3427a0 -> :sswitch_2
        0x373cac -> :sswitch_4
        0x6f28bffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private g()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    new-instance v0, Lcom/tencent/kgvmp/d/m;

    invoke-direct {v0, v2}, Lcom/tencent/kgvmp/d/m;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/m;->a()V

    :goto_2
    return-void

    :sswitch_0
    const-string/jumbo v4, "vivo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "oppo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "realme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "huawei"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "samsung"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "blackshark"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/tencent/kgvmp/d/k;->a()Lcom/tencent/kgvmp/d/k;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    sget-object v2, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/d/k;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/j;->VIVO:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string/jumbo v2, "vivo sdk is available."

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v0, Lcom/tencent/kgvmp/d/m;

    invoke-direct {v0, v1}, Lcom/tencent/kgvmp/d/m;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/m;->a()V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string/jumbo v2, "vivo sdk is not available."

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/tencent/kgvmp/d/d;->a()Lcom/tencent/kgvmp/d/d;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/e/f;->k:Lcom/tencent/kgvmp/d/d;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    sget-object v1, Lcom/tencent/kgvmp/e/f;->k:Lcom/tencent/kgvmp/d/d;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/d;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/d/j;->OPPO:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "oppo sdk is available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "oppo sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/tencent/kgvmp/d/b;->a()Lcom/tencent/kgvmp/d/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    sget-object v1, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/b;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/tencent/kgvmp/d/j;->HUAWEI:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "huawei sdk is available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "huawei sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0}, Lcom/tencent/kgvmp/e/f;->h()V

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/tencent/kgvmp/d/o;->a()Lcom/tencent/kgvmp/d/o;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    sget-object v1, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/o;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/tencent/kgvmp/d/j;->XIAOMI:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi sdk is available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi sdk is not available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x608d18ba -> :sswitch_6
        -0x47e95e19 -> :sswitch_3
        -0x37ba884a -> :sswitch_2
        -0x2d450b45 -> :sswitch_5
        0x3427a0 -> :sswitch_1
        0x373cac -> :sswitch_0
        0x6f28bffa -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private h()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/kgvmp/e/g;

    invoke-direct {v1, p0}, Lcom/tencent/kgvmp/e/g;-><init>(Lcom/tencent/kgvmp/e/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/e/h;->a:[I

    sget-object v1, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/o;->a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/k;->a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0, p1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/VmpCallback;)V

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/k;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/k;->a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/tencent/kgvmp/e/f;->k:Lcom/tencent/kgvmp/d/d;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/d;->a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/b;->a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/tencent/kgvmp/e/f;->l:Lcom/tencent/kgvmp/d/f;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/f;->a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/tencent/kgvmp/e/f;->m:Lcom/tencent/kgvmp/d/h;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/h;->a(Landroid/content/Context;Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0, p1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/kgvmp/VmpCallback;)V

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public a(Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/e/h;->a:[I

    sget-object v1, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/tencent/kgvmp/e/f;->j:Lcom/tencent/kgvmp/d/o;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/o;->a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/k;->a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0, p1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/vmp/GCallback;)V

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/k;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/e/f;->i:Lcom/tencent/kgvmp/d/k;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/k;->a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/tencent/kgvmp/e/f;->k:Lcom/tencent/kgvmp/d/d;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/d;->a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/tencent/kgvmp/e/f;->n:Lcom/tencent/kgvmp/d/b;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/b;->a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/tencent/kgvmp/e/f;->l:Lcom/tencent/kgvmp/d/f;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/f;->a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/tencent/kgvmp/e/f;->m:Lcom/tencent/kgvmp/d/h;

    iget-object v1, p0, Lcom/tencent/kgvmp/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/kgvmp/d/h;->a(Landroid/content/Context;Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->f:Lcom/tencent/kgvmp/d/m;

    invoke-virtual {v0, p1}, Lcom/tencent/kgvmp/d/m;->a(Lcom/tencent/vmp/GCallback;)V

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "VmpHandler: send string. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(I[F)V
    .locals 3

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "VmpHandler: send array: "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "VmpHandler: send apmkey: "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v1, "VmpHandler: send map: "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/kgvmp/e/f;->e:Z

    return v0
.end method

.method public run()V
    .locals 5

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "where"

    const-string v3, "init"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/tencent/kgvmp/e/f;->a(Z)V

    :try_start_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "vmpss"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/tencent/kgvmp/e/i;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, p0, v3}, Lcom/tencent/kgvmp/e/i;-><init>(Lcom/tencent/kgvmp/e/f;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/tencent/kgvmp/e/f;->h:Lcom/tencent/kgvmp/e/i;

    invoke-static {}, Lcom/tencent/kgvmp/e/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/tencent/kgvmp/report/h;

    invoke-direct {v3}, Lcom/tencent/kgvmp/report/h;-><init>()V

    iput-object v3, p0, Lcom/tencent/kgvmp/e/f;->g:Lcom/tencent/kgvmp/report/d;

    invoke-direct {p0}, Lcom/tencent/kgvmp/e/f;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v2}, Lcom/tencent/kgvmp/report/j;->i(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    sget-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    sget-object v2, Lcom/tencent/kgvmp/d/j;->UNKOWN:Lcom/tencent/kgvmp/d/j;

    if-eq v0, v2, :cond_1

    invoke-static {v1}, Lcom/tencent/kgvmp/report/e;->n(Z)V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/tencent/kgvmp/e/a;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/tencent/kgvmp/report/c;

    invoke-direct {v3}, Lcom/tencent/kgvmp/report/c;-><init>()V

    iput-object v3, p0, Lcom/tencent/kgvmp/e/f;->g:Lcom/tencent/kgvmp/report/d;

    invoke-direct {p0}, Lcom/tencent/kgvmp/e/f;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v4, "VmpHandler: vmp handler thread run exception. "

    invoke-static {v3, v4}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "msg"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/tencent/kgvmp/e/a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/tencent/kgvmp/report/h;

    invoke-direct {v3}, Lcom/tencent/kgvmp/report/h;-><init>()V

    iput-object v3, p0, Lcom/tencent/kgvmp/e/f;->g:Lcom/tencent/kgvmp/report/d;

    invoke-direct {p0}, Lcom/tencent/kgvmp/e/f;->f()V

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/tencent/kgvmp/report/c;

    invoke-direct {v3}, Lcom/tencent/kgvmp/report/c;-><init>()V

    iput-object v3, p0, Lcom/tencent/kgvmp/e/f;->g:Lcom/tencent/kgvmp/report/d;

    invoke-direct {p0}, Lcom/tencent/kgvmp/e/f;->g()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/e/f;->b:Ljava/lang/String;

    const-string v2, "VmpHandler: vmp handler thread report exception. "

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
