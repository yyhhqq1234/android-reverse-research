.class public Lcom/onesignal/common/modeling/SingletonModelStore;
.super Ljava/lang/Object;
.source "SingletonModelStore.kt"

# interfaces
.implements Lcom/onesignal/common/modeling/ISingletonModelStore;
.implements Lcom/onesignal/common/modeling/IModelStoreChangeHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Lcom/onesignal/common/modeling/Model;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/onesignal/common/modeling/ISingletonModelStore<",
        "TTModel;>;",
        "Lcom/onesignal/common/modeling/IModelStoreChangeHandler<",
        "TTModel;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u001d\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0015H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u001d\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0015H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0018\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u001d\u0010 \u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0015H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0016\u0010!\u001a\u00020\u00192\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0016J\u0016\u0010#\u001a\u00020\u00192\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0016R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00028\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082D\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onesignal/common/modeling/SingletonModelStore;",
        "TModel",
        "Lcom/onesignal/common/modeling/Model;",
        "Lcom/onesignal/common/modeling/ISingletonModelStore;",
        "Lcom/onesignal/common/modeling/IModelStoreChangeHandler;",
        "store",
        "Lcom/onesignal/common/modeling/ModelStore;",
        "(Lcom/onesignal/common/modeling/ModelStore;)V",
        "changeSubscription",
        "Lcom/onesignal/common/events/EventProducer;",
        "Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;",
        "hasSubscribers",
        "",
        "getHasSubscribers",
        "()Z",
        "model",
        "getModel",
        "()Lcom/onesignal/common/modeling/Model;",
        "replaceLock",
        "",
        "singletonId",
        "",
        "getStore",
        "()Lcom/onesignal/common/modeling/ModelStore;",
        "onModelAdded",
        "",
        "tag",
        "(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V",
        "onModelRemoved",
        "onModelUpdated",
        "args",
        "Lcom/onesignal/common/modeling/ModelChangedArgs;",
        "replace",
        "subscribe",
        "handler",
        "unsubscribe",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final changeSubscription:Lcom/onesignal/common/events/EventProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/events/EventProducer<",
            "Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler<",
            "TTModel;>;>;"
        }
    .end annotation
.end field

.field private final replaceLock:Ljava/lang/Object;

.field private final singletonId:Ljava/lang/String;

.field private final store:Lcom/onesignal/common/modeling/ModelStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/modeling/ModelStore<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/common/modeling/ModelStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/common/modeling/ModelStore<",
            "TTModel;>;)V"
        }
    .end annotation

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->store:Lcom/onesignal/common/modeling/ModelStore;

    .line 12
    new-instance v0, Lcom/onesignal/common/events/EventProducer;

    invoke-direct {v0}, Lcom/onesignal/common/events/EventProducer;-><init>()V

    iput-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    const-string v0, "-singleton-"

    .line 13
    iput-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->singletonId:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->replaceLock:Ljava/lang/Object;

    .line 18
    move-object v0, p0

    check-cast v0, Lcom/onesignal/common/modeling/IModelStoreChangeHandler;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/modeling/ModelStore;->subscribe(Lcom/onesignal/common/modeling/IModelStoreChangeHandler;)V

    return-void
.end method


# virtual methods
.method public getHasSubscribers()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0}, Lcom/onesignal/common/events/EventProducer;->getHasSubscribers()Z

    move-result v0

    return v0
.end method

.method public getModel()Lcom/onesignal/common/modeling/Model;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    const-string v0, "Unable to initialize model from store "

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->store:Lcom/onesignal/common/modeling/ModelStore;

    iget-object v2, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->singletonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onesignal/common/modeling/ModelStore;->get(Ljava/lang/String;)Lcom/onesignal/common/modeling/Model;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 26
    monitor-exit p0

    return-object v1

    .line 29
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->store:Lcom/onesignal/common/modeling/ModelStore;

    check-cast v1, Lcom/onesignal/common/modeling/IModelStore;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->create$default(Lcom/onesignal/common/modeling/IModelStore;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/onesignal/common/modeling/Model;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->singletonId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/onesignal/common/modeling/Model;->setId(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->store:Lcom/onesignal/common/modeling/ModelStore;

    check-cast v0, Lcom/onesignal/common/modeling/IModelStore;

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->add$default(Lcom/onesignal/common/modeling/IModelStore;Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-object v1

    .line 29
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->store:Lcom/onesignal/common/modeling/ModelStore;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    throw v0
.end method

.method public final getStore()Lcom/onesignal/common/modeling/ModelStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/common/modeling/ModelStore<",
            "TTModel;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->store:Lcom/onesignal/common/modeling/ModelStore;

    return-object v0
.end method

.method public onModelAdded(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tag"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onModelRemoved(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tag"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onModelUpdated(Lcom/onesignal/common/modeling/ModelChangedArgs;Ljava/lang/String;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    new-instance v1, Lcom/onesignal/common/modeling/SingletonModelStore$onModelUpdated$1;

    invoke-direct {v1, p1, p2}, Lcom/onesignal/common/modeling/SingletonModelStore$onModelUpdated$1;-><init>(Lcom/onesignal/common/modeling/ModelChangedArgs;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public replace(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->replaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/common/modeling/SingletonModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->singletonId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/onesignal/common/modeling/Model;->initializeFromModel(Ljava/lang/String;Lcom/onesignal/common/modeling/Model;)V

    .line 43
    iget-object p1, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->store:Lcom/onesignal/common/modeling/ModelStore;

    invoke-virtual {p1}, Lcom/onesignal/common/modeling/ModelStore;->persist()V

    .line 44
    iget-object p1, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    new-instance v2, Lcom/onesignal/common/modeling/SingletonModelStore$replace$1$1;

    invoke-direct {v2, v1, p2}, Lcom/onesignal/common/modeling/SingletonModelStore$replace$1$1;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v2}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    .line 45
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public subscribe(Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler<",
            "TTModel;>;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic subscribe(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/common/modeling/SingletonModelStore;->subscribe(Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;)V

    return-void
.end method

.method public unsubscribe(Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler<",
            "TTModel;>;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/onesignal/common/modeling/SingletonModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic unsubscribe(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/common/modeling/SingletonModelStore;->unsubscribe(Lcom/onesignal/common/modeling/ISingletonModelStoreChangeHandler;)V

    return-void
.end method
