.class public Lcom/tencent/tmapkupdatesdk/internal/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/a;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/a;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/a;->a:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/tencent/tmapkupdatesdk/internal/a/i;

    invoke-direct {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;-><init>()V

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/i;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    iget-object v3, p0, Lcom/tencent/tmapkupdatesdk/internal/a/a;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    iget v1, v1, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;

    iget v0, v0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->i:I

    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    :cond_0
    return-void
.end method
