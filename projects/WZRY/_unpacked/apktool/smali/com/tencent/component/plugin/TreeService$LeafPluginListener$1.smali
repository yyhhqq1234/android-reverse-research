.class Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;
.super Ljava/lang/Object;
.source "TreeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->onPluginChanged(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

.field final synthetic val$pluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/TreeService$LeafPluginListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;->this$1:Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

    iput-object p2, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;->val$pluginId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;->this$1:Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

    invoke-static {v5}, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->access$700(Lcom/tencent/component/plugin/TreeService$LeafPluginListener;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;->val$pluginId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;->this$1:Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

    iget-object v4, v4, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v4}, Lcom/tencent/component/plugin/TreeService;->access$800(Lcom/tencent/component/plugin/TreeService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 315
    .local v3, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    iget-object v4, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;->this$1:Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

    iget-object v4, v4, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v4}, Lcom/tencent/component/plugin/TreeService;->access$800(Lcom/tencent/component/plugin/TreeService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 317
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/LeafService;

    .line 320
    .local v2, "leafService":Lcom/tencent/component/plugin/LeafService;
    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v2}, Lcom/tencent/component/plugin/LeafService;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v2    # "leafService":Lcom/tencent/component/plugin/LeafService;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 327
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    :cond_1
    return-void
.end method
