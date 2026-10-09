.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators;
.super Ljava/lang/Object;
.source "ObjectDominators.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDominators.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDominators.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n223#2,2:158\n766#2:160\n857#2,2:161\n1855#2,2:163\n766#2:165\n857#2,2:166\n1864#2,3:168\n*S KotlinDebug\n*F\n+ 1 ObjectDominators.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators\n*L\n49#1:158,2\n57#1:160\n57#1:161,2\n61#1:163,2\n121#1:165\n121#1:166,2\n124#1:168,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J`\u0010\u000c\u001a\u00020\r2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\u0007\u001a\u00020\u00082\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J:\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u001c\u001a\u00020\u00142\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators;",
        "",
        "()V",
        "buildDominatorTree",
        "",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;",
        "graph",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;",
        "ignoredRefs",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/IgnoredReferenceMatcher;",
        "printTree",
        "",
        "stringBuilder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "tree",
        "objectId",
        "minSize",
        "",
        "depth",
        "prefix",
        "",
        "isLast",
        "",
        "printStringContent",
        "renderDominatorTree",
        "minRetainedSize",
        "threadName",
        "DominatorNode",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildDominatorTree(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/IgnoredReferenceMatcher;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;

    .line 143
    sget-object v1, Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener$Companion;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener$Companion;->getNO_OP()Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;

    move-result-object v1

    .line 141
    invoke-direct {v0, p1, v1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;Ljava/util/List;)V

    .line 145
    new-instance p2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/AndroidNativeSizeMapper;

    invoke-direct {p2, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/AndroidNativeSizeMapper;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;)V

    .line 146
    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/AndroidNativeSizeMapper;->mapNativeSizes()Ljava/util/Map;

    move-result-object p2

    .line 147
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;

    invoke-direct {v1, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;)V

    .line 149
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->findPathsFromGcRoots(Ljava/util/Set;Z)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;->getDominatorTree()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$buildDominatorTree$1;

    invoke-direct {v0, p2, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$buildDominatorTree$1;-><init>(Ljava/util/Map;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->buildFullDominatorTree(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final printTree(Ljava/lang/StringBuilder;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Ljava/util/Map;JIILjava/lang/String;ZZ)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;",
            ">;JII",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v0, p8

    .line 83
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;

    move-object/from16 v14, p2

    move-wide/from16 v1, p4

    .line 84
    invoke-interface {v14, v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->findObjectById(J)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    move-result-object v1

    .line 86
    instance-of v2, v1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v1

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 87
    :cond_0
    instance-of v2, v1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 88
    :cond_1
    instance-of v2, v1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_2
    instance-of v2, v1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;

    if-eqz v2, :cond_11

    move-object v2, v1

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, ""

    if-nez p7, :cond_3

    move-object v4, v3

    goto :goto_1

    :cond_3
    if-eqz p9, :cond_4

    const-string v4, "\u2570\u2500"

    goto :goto_1

    :cond_4
    const-string v4, "\u251c\u2500"

    .line 92
    :goto_1
    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getRetainedSize()I

    move-result v5

    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getShallowSize()I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getRetainedSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getShallowSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " self)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 95
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getShallowSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    :goto_2
    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getRetainedCount()I

    move-result v6

    const/4 v15, 0x1

    if-le v6, v15, :cond_6

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getRetainedCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " objects"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    if-eqz p10, :cond_7

    .line 104
    instance-of v7, v1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    if-eqz v7, :cond_7

    .line 105
    move-object v7, v1

    check-cast v7, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "java.lang.String"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->readAsJavaString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x22

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v3

    .line 108
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " #"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;->getObjectIndex()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Retained: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p7, :cond_8

    :goto_5
    move-object v10, v3

    goto :goto_6

    :cond_8
    if-eqz p9, :cond_9

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 117
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2502 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 121
    :goto_6
    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getDominatedObjectIds()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v16, 0x0

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 121
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v12, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getRetainedSize()I

    move-result v3

    move/from16 v9, p6

    if-le v3, v9, :cond_b

    const/16 v16, 0x1

    :cond_b
    if-eqz v16, :cond_a

    .line 166
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    move/from16 v9, p6

    .line 167
    move-object/from16 v17, v1

    check-cast v17, Ljava/util/List;

    .line 122
    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getDominatedObjectIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    .line 124
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Iterable;

    .line 169
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v0, 0x0

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v19, v0, 0x1

    if-gez v0, :cond_d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_d
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-int/lit8 v7, p7, 0x1

    if-ne v0, v8, :cond_e

    const/16 v20, 0x1

    goto :goto_9

    :cond_e
    const/16 v20, 0x0

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    move/from16 v21, v8

    move-object v8, v10

    move/from16 v9, v20

    move-object v15, v10

    move/from16 v10, p10

    .line 125
    invoke-direct/range {v0 .. v10}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators;->printTree(Ljava/lang/StringBuilder;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Ljava/util/Map;JIILjava/lang/String;ZZ)V

    move/from16 v9, p6

    move-object v10, v15

    move/from16 v0, v19

    move/from16 v8, v21

    const/4 v15, 0x1

    goto :goto_8

    :cond_f
    move-object v15, v10

    .line 132
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getDominatedObjectIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2570\u2504\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    return-void

    .line 89
    :cond_11
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static synthetic renderDominatorTree$default(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Ljava/util/List;ILjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators;->renderDominatorTree(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Ljava/util/List;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final renderDominatorTree(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Ljava/util/List;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/IgnoredReferenceMatcher;",
            ">;I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v11, p1

    move-object/from16 v0, p4

    .line 39
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-direct/range {p0 .. p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators;->buildDominatorTree(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    const-wide/16 v1, 0x0

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total retained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getRetainedSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getRetainedCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " objects. Root dominators: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getDominatedObjectIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 49
    invoke-interface/range {p1 .. p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->getGcRoots()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 158
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    .line 50
    instance-of v5, v4, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;

    if-eqz v5, :cond_1

    .line 51
    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v5

    invoke-interface {v11, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->objectExists(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v5

    invoke-interface {v11, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->findObjectById(J)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;->getAsInstance()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, "java.lang.Thread"

    const-string v7, "name"

    .line 52
    invoke-virtual {v5, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->readAsJavaString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move/from16 v14, p3

    goto :goto_3

    .line 159
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getDominatedObjectIds()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 161
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 57
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v13, v5}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators$DominatorNode;->getRetainedSize()I

    move-result v5

    move/from16 v14, p3

    if-le v5, v14, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 161
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move/from16 v14, p3

    .line 162
    check-cast v1, Ljava/util/List;

    .line 160
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    .line 60
    :goto_3
    check-cast v0, Ljava/lang/Iterable;

    .line 163
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v8, ""

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v6, p3

    move/from16 v10, p5

    .line 62
    invoke-direct/range {v0 .. v10}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ObjectDominators;->printTree(Ljava/lang/StringBuilder;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Ljava/util/Map;JIILjava/lang/String;ZZ)V

    const-string v0, "\n"

    .line 66
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 68
    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
