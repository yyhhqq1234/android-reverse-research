.class final Lcom/tencent/a/b/h/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/a/b/h/c;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/tencent/a/b/h/c;


# direct methods
.method constructor <init>(Lcom/tencent/a/b/h/c;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/h/c$2;->b:Lcom/tencent/a/b/h/c;

    iput-object p2, p0, Lcom/tencent/a/b/h/c$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/a/b/h/c$2;->b:Lcom/tencent/a/b/h/c;

    invoke-static {v0}, Lcom/tencent/a/b/h/c;->a(Lcom/tencent/a/b/h/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/tencent/a/b/h/c$2;->b:Lcom/tencent/a/b/h/c;

    invoke-static {v0}, Lcom/tencent/a/b/h/c;->b(Lcom/tencent/a/b/h/c;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/a/b/h/c$2;->b:Lcom/tencent/a/b/h/c;

    invoke-static {v0}, Lcom/tencent/a/b/h/c;->b(Lcom/tencent/a/b/h/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/a/b/h/c$2;->b:Lcom/tencent/a/b/h/c;

    invoke-static {v0}, Lcom/tencent/a/b/h/c;->b(Lcom/tencent/a/b/h/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/a/b/h/c$2;->b:Lcom/tencent/a/b/h/c;

    invoke-static {v2}, Lcom/tencent/a/b/h/c;->c(Lcom/tencent/a/b/h/c;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/a/b/h/c$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/a/b/h/c$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/h/a;

    invoke-virtual {v0}, Lcom/tencent/a/b/h/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/b/h/b;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1
    invoke-static {}, Lcom/tencent/a/b/h/a/a;->a()Lcom/tencent/a/b/h/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/a/b/h/a/a;->a(Lcom/tencent/a/b/h/b;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/tencent/a/b/h/b;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/tencent/b/a/a/i;->f()Lcom/tencent/b/a/a/i$b;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/tencent/b/a/a/i;->f()Lcom/tencent/b/a/a/i$b;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "TileEngineManager getTiles Runnable call CacheManager Get occured Exception,tileInfo:x="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/a/b/h/b;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/a/b/h/b;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",z="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/a/b/h/b;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";Get execute path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ";Exception Info:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/tencent/b/a/a/i$b;->a(Ljava/lang/String;)V

    :cond_0
    move-object v2, v3

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/tencent/a/b/h/c$2;->b:Lcom/tencent/a/b/h/c;

    invoke-static {v2, v0}, Lcom/tencent/a/b/h/c;->a(Lcom/tencent/a/b/h/c;Lcom/tencent/a/b/h/b;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/a/b/h/c$2;->b:Lcom/tencent/a/b/h/c;

    invoke-static {v0}, Lcom/tencent/a/b/h/c;->d(Lcom/tencent/a/b/h/c;)Lcom/tencent/a/b/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->c()Lcom/tencent/a/b/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/b;->postInvalidate()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method
