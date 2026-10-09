.class public abstract Lcom/onesignal/common/modeling/ModelStore;
.super Ljava/lang/Object;
.source "ModelStore.kt"

# interfaces
.implements Lcom/onesignal/common/events/IEventNotifier;
.implements Lcom/onesignal/common/modeling/IModelStore;
.implements Lcom/onesignal/common/modeling/IModelChangedHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Lcom/onesignal/common/modeling/Model;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/onesignal/common/events/IEventNotifier<",
        "Lcom/onesignal/common/modeling/IModelStoreChangeHandler<",
        "TTModel;>;>;",
        "Lcom/onesignal/common/modeling/IModelStore<",
        "TTModel;>;",
        "Lcom/onesignal/common/modeling/IModelChangedHandler;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelStore.kt\ncom/onesignal/common/modeling/ModelStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,229:1\n288#2,2:230\n288#2,2:232\n288#2,2:235\n288#2,2:237\n1743#2,3:239\n1#3:234\n*S KotlinDebug\n*F\n+ 1 ModelStore.kt\ncom/onesignal/common/modeling/ModelStore\n*L\n46#1:230,2\n61#1:232,2\n78#1:235,2\n86#1:237,2\n184#1:239,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00040\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u00052\u00020\u0006B\u001d\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u001d\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\u001bJ%\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\u001eJ)\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u00082\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u0017\u0010\"\u001a\u0004\u0018\u00018\u00002\u0006\u0010#\u001a\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010$J\u000e\u0010%\u001a\u0008\u0012\u0004\u0012\u00028\u00000&H\u0016J\u0008\u0010\'\u001a\u00020\u0018H\u0004J\u0018\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020*2\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u0006\u0010+\u001a\u00020\u0018J\u0018\u0010,\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u001d\u0010-\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\u001bJ\u001e\u0010.\u001a\u00020\u00182\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000/2\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u0016\u00100\u001a\u00020\u00182\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016J\u0016\u00102\u001a\u00020\u00182\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u00063"
    }
    d2 = {
        "Lcom/onesignal/common/modeling/ModelStore;",
        "TModel",
        "Lcom/onesignal/common/modeling/Model;",
        "Lcom/onesignal/common/events/IEventNotifier;",
        "Lcom/onesignal/common/modeling/IModelStoreChangeHandler;",
        "Lcom/onesignal/common/modeling/IModelStore;",
        "Lcom/onesignal/common/modeling/IModelChangedHandler;",
        "name",
        "",
        "_prefs",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "(Ljava/lang/String;Lcom/onesignal/core/internal/preferences/IPreferencesService;)V",
        "changeSubscription",
        "Lcom/onesignal/common/events/EventProducer;",
        "hasLoadedFromCache",
        "",
        "hasSubscribers",
        "getHasSubscribers",
        "()Z",
        "models",
        "",
        "getName",
        "()Ljava/lang/String;",
        "add",
        "",
        "model",
        "tag",
        "(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V",
        "index",
        "",
        "(ILcom/onesignal/common/modeling/Model;Ljava/lang/String;)V",
        "addItem",
        "(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Integer;)V",
        "clear",
        "get",
        "id",
        "(Ljava/lang/String;)Lcom/onesignal/common/modeling/Model;",
        "list",
        "",
        "load",
        "onChanged",
        "args",
        "Lcom/onesignal/common/modeling/ModelChangedArgs;",
        "persist",
        "remove",
        "removeItem",
        "replaceAll",
        "",
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
.field private final _prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

.field private final changeSubscription:Lcom/onesignal/common/events/EventProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/events/EventProducer<",
            "Lcom/onesignal/common/modeling/IModelStoreChangeHandler<",
            "TTModel;>;>;"
        }
    .end annotation
.end field

.field private hasLoadedFromCache:Z

.field private final models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/onesignal/common/modeling/ModelStore;-><init>(Ljava/lang/String;Lcom/onesignal/core/internal/preferences/IPreferencesService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/core/internal/preferences/IPreferencesService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/onesignal/common/modeling/ModelStore;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/onesignal/common/modeling/ModelStore;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    .line 37
    new-instance p1, Lcom/onesignal/common/events/EventProducer;

    invoke-direct {p1}, Lcom/onesignal/common/events/EventProducer;-><init>()V

    iput-object p1, p0, Lcom/onesignal/common/modeling/ModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onesignal/core/internal/preferences/IPreferencesService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onesignal/common/modeling/ModelStore;-><init>(Ljava/lang/String;Lcom/onesignal/core/internal/preferences/IPreferencesService;)V

    return-void
.end method

.method private final addItem(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v0

    if-eqz p3, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {v1, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p3, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_0
    move-object p3, p0

    check-cast p3, Lcom/onesignal/common/modeling/IModelChangedHandler;

    invoke-virtual {p1, p3}, Lcom/onesignal/common/modeling/Model;->subscribe(Lcom/onesignal/common/modeling/IModelChangedHandler;)V

    .line 141
    invoke-virtual {p0}, Lcom/onesignal/common/modeling/ModelStore;->persist()V

    .line 142
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v0

    .line 143
    iget-object p3, p0, Lcom/onesignal/common/modeling/ModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    new-instance v0, Lcom/onesignal/common/modeling/ModelStore$addItem$2;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/common/modeling/ModelStore$addItem$2;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3, v0}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    return-void

    :catchall_0
    move-exception p1

    .line 131
    monitor-exit v0

    throw p1
.end method

.method static synthetic addItem$default(Lcom/onesignal/common/modeling/ModelStore;Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 126
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/common/modeling/ModelStore;->addItem(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addItem"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final removeItem(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    move-object v1, p0

    check-cast v1, Lcom/onesignal/common/modeling/IModelChangedHandler;

    invoke-virtual {p1, v1}, Lcom/onesignal/common/modeling/Model;->unsubscribe(Lcom/onesignal/common/modeling/IModelChangedHandler;)V

    .line 156
    invoke-virtual {p0}, Lcom/onesignal/common/modeling/ModelStore;->persist()V

    .line 157
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit v0

    .line 158
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    new-instance v1, Lcom/onesignal/common/modeling/ModelStore$removeItem$2;

    invoke-direct {v1, p1, p2}, Lcom/onesignal/common/modeling/ModelStore$removeItem$2;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    return-void

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public add(ILcom/onesignal/common/modeling/Model;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTModel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 232
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onesignal/common/modeling/Model;

    .line 61
    invoke-virtual {v3}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/onesignal/common/modeling/Model;

    if-eqz v2, :cond_2

    .line 63
    invoke-direct {p0, v2, p3}, Lcom/onesignal/common/modeling/ModelStore;->removeItem(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    .line 66
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/onesignal/common/modeling/ModelStore;->addItem(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public add(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V
    .locals 7
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

    .line 45
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 230
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onesignal/common/modeling/Model;

    .line 46
    invoke-virtual {v3}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/onesignal/common/modeling/Model;

    if-eqz v2, :cond_2

    .line 48
    invoke-direct {p0, v2, p2}, Lcom/onesignal/common/modeling/ModelStore;->removeItem(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 51
    invoke-static/range {v1 .. v6}, Lcom/onesignal/common/modeling/ModelStore;->addItem$default(Lcom/onesignal/common/modeling/ModelStore;Lcom/onesignal/common/modeling/Model;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 52
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public clear(Ljava/lang/String;)V
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 117
    invoke-virtual {p0}, Lcom/onesignal/common/modeling/ModelStore;->persist()V

    .line 118
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v1

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    .line 121
    move-object v2, p0

    check-cast v2, Lcom/onesignal/common/modeling/IModelChangedHandler;

    invoke-virtual {v1, v2}, Lcom/onesignal/common/modeling/Model;->unsubscribe(Lcom/onesignal/common/modeling/IModelChangedHandler;)V

    .line 122
    iget-object v2, p0, Lcom/onesignal/common/modeling/ModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    new-instance v3, Lcom/onesignal/common/modeling/ModelStore$clear$2;

    invoke-direct {v3, v1, p1}, Lcom/onesignal/common/modeling/ModelStore$clear$2;-><init>(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v3}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 114
    monitor-exit v1

    throw p1
.end method

.method public get(Ljava/lang/String;)Lcom/onesignal/common/modeling/Model;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTModel;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 235
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onesignal/common/modeling/Model;

    .line 78
    invoke-virtual {v2}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 236
    :goto_0
    check-cast v1, Lcom/onesignal/common/modeling/Model;

    return-object v1
.end method

.method public getHasSubscribers()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0}, Lcom/onesignal/common/events/EventProducer;->getHasSubscribers()Z

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->name:Ljava/lang/String;

    return-object v0
.end method

.method public list()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TTModel;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    check-cast v1, Ljava/util/Collection;

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected final load()V
    .locals 10

    .line 166
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->name:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "OneSignal"

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MODEL_STORE_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onesignal/common/modeling/ModelStore;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 174
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    const/4 v6, -0x1

    if-ge v6, v5, :cond_7

    .line 175
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/onesignal/common/modeling/ModelStore;->create(Lorg/json/JSONObject;)Lcom/onesignal/common/modeling/Model;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_3

    .line 184
    :cond_2
    iget-object v7, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    .line 239
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_4

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 240
    :cond_4
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onesignal/common/modeling/Model;

    .line 184
    invoke-virtual {v8}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_6

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ModelStore<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/onesignal/common/modeling/ModelStore;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ">: load - operation.id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " already exists in the store."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_3

    .line 190
    :cond_6
    iget-object v7, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 192
    move-object v7, p0

    check-cast v7, Lcom/onesignal/common/modeling/IModelChangedHandler;

    invoke-virtual {v6, v7}, Lcom/onesignal/common/modeling/Model;->subscribe(Lcom/onesignal/common/modeling/IModelChangedHandler;)V

    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 194
    :cond_7
    iput-boolean v3, p0, Lcom/onesignal/common/modeling/ModelStore;->hasLoadedFromCache:Z

    if-eqz v2, :cond_8

    .line 197
    invoke-virtual {p0}, Lcom/onesignal/common/modeling/ModelStore;->persist()V

    .line 199
    :cond_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_9
    :goto_4
    return-void
.end method

.method public onChanged(Lcom/onesignal/common/modeling/ModelChangedArgs;Ljava/lang/String;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/onesignal/common/modeling/ModelStore;->persist()V

    .line 96
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    new-instance v1, Lcom/onesignal/common/modeling/ModelStore$onChanged$1;

    invoke-direct {v1, p1, p2}, Lcom/onesignal/common/modeling/ModelStore$onChanged$1;-><init>(Lcom/onesignal/common/modeling/ModelChangedArgs;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final persist()V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/onesignal/common/modeling/ModelStore;->hasLoadedFromCache:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/common/modeling/Model;

    .line 215
    invoke-virtual {v3}, Lcom/onesignal/common/modeling/Model;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 217
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit v1

    .line 219
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->_prefs:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const-string v2, "OneSignal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MODEL_STORE_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onesignal/common/modeling/ModelStore;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 213
    monitor-exit v1

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/common/modeling/ModelStore;->models:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 237
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onesignal/common/modeling/Model;

    .line 86
    invoke-virtual {v3}, Lcom/onesignal/common/modeling/Model;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/onesignal/common/modeling/Model;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    .line 87
    :cond_2
    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/onesignal/common/modeling/ModelStore;->removeItem(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    .line 88
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public replaceAll(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TTModel;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    monitor-enter p1

    .line 104
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/onesignal/common/modeling/ModelStore;->clear(Ljava/lang/String;)V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    .line 107
    invoke-virtual {p0, v1, p2}, Lcom/onesignal/common/modeling/ModelStore;->add(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public subscribe(Lcom/onesignal/common/modeling/IModelStoreChangeHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/common/modeling/IModelStoreChangeHandler<",
            "TTModel;>;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic subscribe(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/onesignal/common/modeling/IModelStoreChangeHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/common/modeling/ModelStore;->subscribe(Lcom/onesignal/common/modeling/IModelStoreChangeHandler;)V

    return-void
.end method

.method public unsubscribe(Lcom/onesignal/common/modeling/IModelStoreChangeHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/common/modeling/IModelStoreChangeHandler<",
            "TTModel;>;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/onesignal/common/modeling/ModelStore;->changeSubscription:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic unsubscribe(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/onesignal/common/modeling/IModelStoreChangeHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/common/modeling/ModelStore;->unsubscribe(Lcom/onesignal/common/modeling/IModelStoreChangeHandler;)V

    return-void
.end method
