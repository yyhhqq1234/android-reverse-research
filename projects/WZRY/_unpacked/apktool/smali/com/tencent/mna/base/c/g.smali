.class Lcom/tencent/mna/base/c/g;
.super Lcom/tencent/mna/base/c/e;
.source "ReporterImpl.java"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/tencent/mna/base/c/c;


# direct methods
.method constructor <init>(Lcom/tencent/mna/base/c/c;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tencent/mna/base/c/e;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/base/c/g;->a:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Lcom/tencent/mna/base/c/g;->b:Lcom/tencent/mna/base/c/c;

    .line 18
    return-void
.end method


# virtual methods
.method a()V
    .locals 8

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/mna/base/c/g;->b:Lcom/tencent/mna/base/c/c;

    invoke-virtual {v0}, Lcom/tencent/mna/base/c/c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/tencent/mna/base/c/g;->a:Ljava/util/Map;

    iget-object v7, p0, Lcom/tencent/mna/base/c/g;->b:Lcom/tencent/mna/base/c/c;

    invoke-virtual {v7}, Lcom/tencent/mna/base/c/c;->c()Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/tencent/mna/base/c/b;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    .line 40
    iget-object v0, p0, Lcom/tencent/mna/base/c/g;->a:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/tencent/mna/base/c/g;->a(Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/tencent/mna/base/f/h;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v0, "report event:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/base/c/g;->b:Lcom/tencent/mna/base/c/c;

    invoke-virtual {v1}, Lcom/tencent/mna/base/c/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "];"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 52
    :cond_1
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mna/base/c/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-object p0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/mna/base/c/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tencent/mna/base/c/g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mna/base/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 34
    :goto_0
    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/base/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    goto :goto_0
.end method
