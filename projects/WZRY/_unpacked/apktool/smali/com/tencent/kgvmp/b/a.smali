.class public Lcom/tencent/kgvmp/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/kgvmp/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/kgvmp/b/a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/b/a;)I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/kgvmp/b/a;->e()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/kgvmp/b/a;Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/b/a;->a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/tencent/kgvmp/report/f;
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: download cloud config is null. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->DOWNLOAD_CONFIG_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: download cloud config is empty. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->DOWNLOAD_CONFIG_EMPTY:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/kgvmp/c/e;

    invoke-direct {v0}, Lcom/tencent/kgvmp/c/e;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/kgvmp/c/e;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: parse json\'s value exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->PARSE_JSON_VALUE_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: file content parse exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->PARSE_JSON_CONFIG_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v2, "device_check: parse json success."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    goto :goto_0
.end method

.method private a(Lcom/tencent/kgvmp/report/f;ZZZZ)V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    invoke-virtual {p1}, Lcom/tencent/kgvmp/report/f;->getStringCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "available"

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "prop_match"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "package_match"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cpu_match"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gpu_match"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->d:Lcom/tencent/kgvmp/c/h;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/kgvmp/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->d:Lcom/tencent/kgvmp/c/h;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/kgvmp/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->e:Lcom/tencent/kgvmp/c/g;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/kgvmp/b/a;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/d;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->e:Lcom/tencent/kgvmp/c/g;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/kgvmp/b/a;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/d;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v0, "cpu"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gpu"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "root"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/tencent/kgvmp/report/j;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/kgvmp/b/a;->a()Lcom/tencent/kgvmp/report/f;

    move-result-object v2

    sget-object v3, Lcom/tencent/kgvmp/report/f;->DEVICE_CONFIG_GET_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/tencent/kgvmp/report/f;->DEVICE_CONFIG_AVAILABLE_IS_FALSE:Lcom/tencent/kgvmp/report/f;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/tencent/kgvmp/report/f;->DEVICE_IS_REAL:Lcom/tencent/kgvmp/report/f;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/tencent/kgvmp/report/f;->DEVICE_IS_NOT_REAL:Lcom/tencent/kgvmp/report/f;

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/tencent/kgvmp/report/f;->DEVICE_IS_UNKOWN:Lcom/tencent/kgvmp/report/f;

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private f()Z
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->d:Lcom/tencent/kgvmp/c/h;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/kgvmp/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device_check:isPropValueMatched: get prop exception. prop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Lcom/tencent/kgvmp/f/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device_check:isPropValueMatched: not matched. propKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not match. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->d:Lcom/tencent/kgvmp/c/h;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/kgvmp/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device_check:isPropValueMatched: exist prop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_4
    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device_check:isPropValueMatched: propKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " not exsit."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check:isPropValueMatched: prop all matched. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private g()Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v2, v2, Lcom/tencent/kgvmp/c/e;->f:Lcom/tencent/kgvmp/c/f;

    iget-object v4, v2, Lcom/tencent/kgvmp/c/f;->a:[Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v2, "device_check:isCPUMatched: cpu hardware is null. result is matched."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    array-length v2, v4

    if-gtz v2, :cond_1

    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v2, "device_check:isCPUMatched: cpu arr lenth <= 0. result is matched."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device_check:isCPUMatched: cpu: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is matched. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v2, "device_check:isCPUMatched: cpu is not matched."

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private h()Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->P()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v2, v2, Lcom/tencent/kgvmp/c/e;->f:Lcom/tencent/kgvmp/c/f;

    iget-object v4, v2, Lcom/tencent/kgvmp/c/f;->b:[Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v2, "DeviceChecker:isGPUMatched: gpu is null. result is matched."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    array-length v2, v4

    if-gtz v2, :cond_1

    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v2, "DeviceChecker:isGPUMatched: gpu arr lenth <= 0. result is matched."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceChecker:isGPUMatched: gpu: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is matched."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v2, "DeviceChecker:checkDeviceMatchConfig: gpu is not matched."

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private i()Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->e:Lcom/tencent/kgvmp/c/g;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/kgvmp/b/a;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/d;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device_check:isAppPackageInstalled: package exist, package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v2, "device_check:isAppPackageInstalled: not found package in exsit. "

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->e:Lcom/tencent/kgvmp/c/g;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/kgvmp/b/a;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/d;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v1, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device_check:isAppPackageInstalled: package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not exsit."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/tencent/kgvmp/report/f;
    .locals 8

    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: globalconfig is null."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/report/f;->DEVICE_CONFIG_GET_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/e;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: available is false, do not check device, only report."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/kgvmp/b/a;->c()V

    sget-object v1, Lcom/tencent/kgvmp/report/f;->DEVICE_CONFIG_AVAILABLE_IS_FALSE:Lcom/tencent/kgvmp/report/f;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/kgvmp/f/d;->i()Z

    move-result v0

    invoke-direct {p0}, Lcom/tencent/kgvmp/b/a;->f()Z

    move-result v2

    invoke-direct {p0}, Lcom/tencent/kgvmp/b/a;->g()Z

    move-result v4

    invoke-direct {p0}, Lcom/tencent/kgvmp/b/a;->h()Z

    move-result v5

    invoke-direct {p0}, Lcom/tencent/kgvmp/b/a;->i()Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: prop info is not matched and device is rooted."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/report/f;->DEVICE_IS_UNKOWN:Lcom/tencent/kgvmp/report/f;

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/kgvmp/b/a;->a(Lcom/tencent/kgvmp/report/f;ZZZZ)V

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device_check: device info match result, prop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device_check: device info match result, cpu: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device_check: device info match result, gpu: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device_check: device info match result, package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: package is not installed and device is rooted."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/kgvmp/report/f;->DEVICE_IS_UNKOWN:Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_1

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-nez v3, :cond_5

    :cond_4
    sget-object v1, Lcom/tencent/kgvmp/report/f;->DEVICE_IS_NOT_REAL:Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/tencent/kgvmp/report/f;->DEVICE_IS_REAL:Lcom/tencent/kgvmp/report/f;

    goto/16 :goto_1
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/kgvmp/b/b;

    invoke-direct {v1, p0}, Lcom/tencent/kgvmp/b/b;-><init>(Lcom/tencent/kgvmp/b/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-boolean v0, v0, Lcom/tencent/kgvmp/c/e;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: device config available is true, do not need report again. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/b/a;->a:Ljava/lang/String;

    const-string v1, "device_check: start to get device info to report."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    sget-object v2, Lcom/tencent/kgvmp/report/f;->DEVICE_CONFIG_AVAILABLE_IS_FALSE:Lcom/tencent/kgvmp/report/f;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/report/f;->getStringCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "available"

    const-string v2, "false"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->d:Lcom/tencent/kgvmp/c/h;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/kgvmp/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->d:Lcom/tencent/kgvmp/c/h;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/kgvmp/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->e:Lcom/tencent/kgvmp/c/g;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/kgvmp/b/a;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/d;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/tencent/kgvmp/b/a;->c:Lcom/tencent/kgvmp/c/e;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/e;->e:Lcom/tencent/kgvmp/c/g;

    iget-object v0, v0, Lcom/tencent/kgvmp/c/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/kgvmp/b/a;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/f/d;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    const-string v0, "cpu"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gpu"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "root"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/tencent/kgvmp/report/j;->b(Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method
