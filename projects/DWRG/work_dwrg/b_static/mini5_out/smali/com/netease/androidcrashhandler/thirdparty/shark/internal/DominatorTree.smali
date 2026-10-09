.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;
.super Ljava/lang/Object;
.source "DominatorTree.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDominatorTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DominatorTree.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,220:1\n215#2,2:221\n1549#3:223\n1620#3,3:224\n1549#3:227\n1620#3,3:228\n1855#3:231\n1002#3,2:232\n1856#3:234\n1238#3,4:237\n1855#3,2:241\n442#4:235\n392#4:236\n*S KotlinDebug\n*F\n+ 1 DominatorTree.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree\n*L\n129#1:221,2\n138#1:223\n138#1:224,3\n140#1:227\n140#1:228,3\n143#1:231\n144#1:232,2\n143#1:234\n147#1:237,4\n164#1:241,2\n147#1:235\n147#1:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0016B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00082\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00030\u000cJ@\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e0\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00102\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00030\u000cJ\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;",
        "",
        "expectedElements",
        "",
        "(I)V",
        "dominated",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;",
        "buildFullDominatorTree",
        "",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;",
        "computeSize",
        "Lkotlin/Function1;",
        "computeRetainedSizes",
        "Lkotlin/Pair;",
        "retainedObjectIds",
        "",
        "updateDominated",
        "",
        "objectId",
        "parentObjectId",
        "updateDominatedAsRoot",
        "MutableDominatorNode",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-direct {v0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;-><init>(I)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getDominated$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    return-object p0
.end method


# virtual methods
.method public final buildFullDominatorTree(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 104
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    new-instance v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1;

    invoke-direct {v2, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1;-><init>(Ljava/util/Map;)V

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap$ForEachCallback;

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->forEach(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap$ForEachCallback;)V

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 123
    new-instance v5, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$retainedSizes$1;

    invoke-direct {v5, p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$retainedSizes$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->computeRetainedSizes(Ljava/util/Set;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    .line 221
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    cmp-long v8, v6, v2

    if-eqz v8, :cond_0

    .line 131
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 132
    invoke-virtual {v5, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->setRetainedSize(I)V

    .line 133
    invoke-virtual {v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->setRetainedCount(I)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {v0, v4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    .line 138
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getDominated()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 224
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 225
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 138
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getRetainedSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 225
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 223
    check-cast v2, Ljava/lang/Iterable;

    .line 138
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->setRetainedSize(I)V

    .line 140
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getDominated()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 228
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 229
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getRetainedCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 229
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 227
    check-cast v2, Ljava/lang/Iterable;

    .line 140
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v1

    .line 139
    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->setRetainedCount(I)V

    .line 143
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 231
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    .line 144
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getDominated()Ljava/util/List;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    new-instance v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$lambda$4$$inlined$sortBy$1;

    invoke-direct {v2, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$lambda$4$$inlined$sortBy$1;-><init>(Ljava/util/Map;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 235
    :cond_5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    .line 236
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 237
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 238
    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    .line 148
    new-instance v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;

    .line 149
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getShallowSize()I

    move-result v4

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getRetainedSize()I

    move-result v5

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getRetainedCount()I

    move-result v6

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getDominated()Ljava/util/List;

    move-result-object v1

    .line 148
    invoke-direct {v3, v4, v5, v6, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;-><init>(IIILjava/util/List;)V

    .line 238
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    return-object p1
.end method

.method public final computeRetainedSizes(Ljava/util/Set;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 164
    check-cast p1, Ljava/lang/Iterable;

    .line 241
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$computeRetainedSizes$2;

    invoke-direct {v1, v0, p2, p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$computeRetainedSizes$2;-><init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;)V

    check-cast v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap$ForEachCallback;

    invoke-virtual {p1, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->forEach(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap$ForEachCallback;)V

    .line 216
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->release()V

    return-object v0
.end method

.method public final updateDominated(JJ)Z
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 46
    iget-object v5, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v5, v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->getSlot(J)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v12, v3, v10

    if-nez v12, :cond_1

    goto/16 :goto_4

    .line 53
    :cond_1
    iget-object v12, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v12, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->getSlotValue(I)J

    move-result-wide v12

    cmp-long v5, v12, v10

    if-eqz v5, :cond_8

    .line 62
    new-instance v5, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    const/4 v14, 0x0

    invoke-direct {v5, v7, v6, v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v6, v12

    :goto_1
    const-string v14, " when going through the dominator chain for "

    const-string v15, "Did not find dominator for "

    cmp-long v16, v6, v10

    if-eqz v16, :cond_3

    .line 65
    invoke-virtual {v5, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->add(J)Z

    .line 66
    iget-object v10, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v10, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->getSlot(J)I

    move-result v10

    if-eq v10, v8, :cond_2

    .line 72
    iget-object v6, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v6, v10}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->getSlotValue(I)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    goto :goto_1

    .line 68
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-wide v6, v3

    :goto_2
    cmp-long v12, v6, v10

    if-eqz v12, :cond_6

    .line 77
    invoke-virtual {v5, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    .line 80
    :cond_4
    iget-object v12, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v12, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->getSlot(J)I

    move-result v12

    if-eq v12, v8, :cond_5

    .line 86
    iget-object v6, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v6, v12}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->getSlotValue(I)J

    move-result-wide v6

    goto :goto_2

    .line 82
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_6
    :goto_3
    iget-object v3, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v3, v1, v2, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->set(JJ)J

    goto :goto_5

    .line 51
    :cond_7
    :goto_4
    iget-object v5, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->dominated:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->set(JJ)J

    :cond_8
    :goto_5
    return v9
.end method

.method public final updateDominatedAsRoot(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->updateDominated(JJ)Z

    move-result p1

    return p1
.end method
