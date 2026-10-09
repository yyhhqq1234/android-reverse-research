.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;
.super Ljava/lang/Object;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;,
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;,
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;,
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathFinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathFinder.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,748:1\n766#2:749\n857#2,2:750\n1855#2,2:752\n1855#2,2:754\n1855#2,2:756\n766#2:758\n857#2,2:759\n1549#2:761\n1620#2,3:762\n1002#2,2:767\n1855#2,2:769\n1864#2,3:774\n223#2,2:777\n1295#3,2:765\n1206#3,2:779\n3828#4:771\n4347#4,2:772\n*S KotlinDebug\n*F\n+ 1 PathFinder.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder\n*L\n163#1:749\n163#1:750,2\n169#1:752,2\n253#1:754,2\n306#1:756,2\n400#1:758\n400#1:759,2\n405#1:761\n405#1:762,3\n480#1:767,2\n482#1:769,2\n596#1:774,3\n676#1:777,2\n465#1:765,2\n701#1:779,2\n593#1:771\n593#1:772,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0004@ABCB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u001c\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u001c2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!H\u0002J\u001a\u0010\"\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#0\u0007H\u0002J\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0007*\u00020\u00182\u0006\u0010\'\u001a\u00020\u0011H\u0002J\u0014\u0010(\u001a\u00020)*\u00020*2\u0006\u0010+\u001a\u00020,H\u0002J\u000c\u0010-\u001a\u00020)*\u00020*H\u0002J\u000c\u0010\u0019\u001a\u00020\u001a*\u00020*H\u0002J\u0014\u0010.\u001a\u00020\u000b*\u00020\u00032\u0006\u0010/\u001a\u000200H\u0002J\u000c\u00101\u001a\u00020,*\u00020*H\u0002J \u00102\u001a\u0008\u0012\u0004\u0012\u00020403*\u00020!2\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0007H\u0002J\u0012\u00106\u001a\u000207*\u0008\u0012\u0004\u0012\u00020\u00110\u001cH\u0002J\u001c\u00108\u001a\u00020)*\u00020*2\u0006\u00109\u001a\u00020\u00182\u0006\u0010:\u001a\u00020,H\u0002J\u001c\u0010;\u001a\u00020)*\u00020*2\u0006\u0010<\u001a\u00020!2\u0006\u0010:\u001a\u00020,H\u0002J\u001c\u0010=\u001a\u00020)*\u00020*2\u0006\u0010>\u001a\u00020?2\u0006\u0010:\u001a\u00020,H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R&\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0014\u001a\u001a\u0012\u0004\u0012\u00020\u000e\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;",
        "",
        "graph",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;",
        "listener",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;",
        "referenceMatchers",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;",
        "(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;Ljava/util/List;)V",
        "SAME_INSTANCE_THRESHOLD",
        "",
        "fieldNameByClassName",
        "",
        "",
        "instanceCountMap",
        "",
        "",
        "",
        "jniGlobalReferenceMatchers",
        "staticFieldNameByClassName",
        "threadNameReferenceMatchers",
        "determineSizeOfObjectInstances",
        "objectClass",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;",
        "findPathsFromGcRoots",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;",
        "leakingObjectIds",
        "",
        "computeRetainedHeapSize",
        "",
        "isOverThresholdInstance",
        "graphObject",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;",
        "sortedGcRoots",
        "Lkotlin/Pair;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "classHierarchyWithoutJavaLangObject",
        "javaLangObjectId",
        "enqueue",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;",
        "node",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
        "enqueueGcRoots",
        "getRecordSize",
        "field",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;",
        "poll",
        "readAllNonNullFieldsOfReferenceType",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;",
        "classHierarchy",
        "toLongScatterSet",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;",
        "visitClassRecord",
        "heapClass",
        "parent",
        "visitInstance",
        "instance",
        "visitObjectArray",
        "objectArray",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;",
        "InstanceRefField",
        "PathFindingResults",
        "State",
        "VisitTracker",
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
.field private final SAME_INSTANCE_THRESHOLD:I

.field private final fieldNameByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

.field private instanceCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final jniGlobalReferenceMatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;

.field private final staticFieldNameByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadNameReferenceMatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KOYDtoxpfJrlirCUR7DiWpdm3UA(Lkotlin/jvm/functions/Function1;Lkotlin/Pair;Lkotlin/Pair;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->sortedGcRoots$lambda$6(Lkotlin/jvm/functions/Function1;Lkotlin/Pair;Lkotlin/Pair;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;",
            "Ljava/util/List<",
            "+",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    .line 63
    iput-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->listener:Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;

    .line 158
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 159
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 161
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 163
    check-cast p3, Ljava/lang/Iterable;

    .line 749
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 750
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    .line 164
    instance-of v5, v4, Lcom/netease/androidcrashhandler/thirdparty/shark/IgnoredReferenceMatcher;

    if-nez v5, :cond_2

    instance-of v5, v4, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;->getPatternApplies()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 165
    iget-object v5, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    .line 164
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_0

    .line 750
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 169
    check-cast v2, Ljava/lang/Iterable;

    .line 752
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    .line 170
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;->getPattern()Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern;

    move-result-object v3

    .line 171
    instance-of v4, v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$JavaLocalPattern;

    if-eqz v4, :cond_5

    .line 172
    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$JavaLocalPattern;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$JavaLocalPattern;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 174
    :cond_5
    instance-of v4, v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$StaticFieldPattern;

    if-eqz v4, :cond_7

    .line 175
    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$StaticFieldPattern;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$StaticFieldPattern;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_6

    .line 177
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 178
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$StaticFieldPattern;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_6
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$StaticFieldPattern;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 183
    :cond_7
    instance-of v4, v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$InstanceFieldPattern;

    if-eqz v4, :cond_9

    .line 184
    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$InstanceFieldPattern;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$InstanceFieldPattern;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_8

    .line 186
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 187
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$InstanceFieldPattern;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_8
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$InstanceFieldPattern;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 192
    :cond_9
    instance-of v4, v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$NativeGlobalVariablePattern;

    if-eqz v4, :cond_4

    .line 193
    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$NativeGlobalVariablePattern;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferencePattern$NativeGlobalVariablePattern;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 197
    :cond_a
    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->fieldNameByClassName:Ljava/util/Map;

    .line 198
    iput-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->staticFieldNameByClassName:Ljava/util/Map;

    .line 199
    iput-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->threadNameReferenceMatchers:Ljava/util/Map;

    .line 200
    iput-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    const/16 p1, 0x400

    .line 612
    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->SAME_INSTANCE_THRESHOLD:I

    .line 613
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->instanceCountMap:Ljava/util/Map;

    return-void
.end method

.method private final classHierarchyWithoutJavaLangObject(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;",
            "J)",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-eqz v3, :cond_0

    .line 568
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getSuperclass()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final determineSizeOfObjectInstances(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->readFieldsByteSize()I

    move-result p1

    .line 239
    invoke-interface {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->getIdentifierByteSize()I

    move-result p2

    sget-object v1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getByteSize()I

    move-result v1

    add-int/2addr p2, v1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method private final enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V
    .locals 11

    .line 635
    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getVisitingLast()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 641
    instance-of v0, p2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$LibraryLeakNode;

    if-nez v0, :cond_3

    .line 644
    instance-of v0, p2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;->getGcRoot()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;

    if-nez v0, :cond_3

    .line 645
    :cond_1
    instance-of v0, p2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->getParent()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    move-result-object v5

    instance-of v5, v5, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->getParent()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;->getGcRoot()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JavaFrame;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 647
    :goto_1
    instance-of v5, p2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "null cannot be cast to non-null type com.netease.androidcrashhandler.thirdparty.shark.internal.ReferencePathNode.ChildNode"

    .line 650
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p2

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;->getParent()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v2

    .line 653
    :goto_2
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getVisitTracker()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;

    move-result-object v5

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;->visited(JJ)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_5

    return-void

    .line 661
    :cond_5
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitSet()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 665
    :cond_6
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitLastSet()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object v3

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    if-eqz v2, :cond_b

    .line 674
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitSet()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->add(J)Z

    .line 676
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitLastQueue()Ljava/util/Deque;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 777
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    .line 676
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_8

    .line 677
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitLastQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitLastSet()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->remove(J)Z

    return-void

    .line 778
    :cond_a
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 682
    :cond_b
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getLeakingObjectIds()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object v2

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v2

    if-nez v2, :cond_19

    .line 685
    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->findObjectById(J)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    move-result-object v2

    .line 686
    instance-of v3, v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    if-eqz v3, :cond_c

    goto/16 :goto_8

    .line 687
    :cond_c
    instance-of v3, v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    if-eqz v3, :cond_15

    .line 689
    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->isPrimitiveWrapper()Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_8

    .line 690
    :cond_d
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "java.lang.String"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    .line 700
    :cond_e
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClass()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getInstanceByteSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getSizeOfObjectInstances()I

    move-result v5

    if-gt v3, v5, :cond_f

    goto :goto_4

    .line 701
    :cond_f
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClass()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 779
    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    .line 702
    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getJavaLangObjectId()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_12

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getHasReferenceInstanceFields()Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    goto :goto_6

    :cond_12
    :goto_5
    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_10

    const/4 v3, 0x0

    goto :goto_7

    :cond_13
    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_14

    goto :goto_4

    .line 707
    :cond_14
    invoke-direct {p0, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->isOverThresholdInstance(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_4

    .line 710
    :cond_15
    instance-of v3, v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    if-eqz v3, :cond_16

    .line 711
    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    invoke-static {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinderKt;->isSkippablePrimitiveWrapperArray(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_4

    .line 718
    :cond_16
    instance-of v1, v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;

    if-eqz v1, :cond_18

    goto :goto_4

    :cond_17
    :goto_8
    if-eqz v1, :cond_19

    return-void

    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_19
    if-eqz v0, :cond_1a

    .line 725
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitLastQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitLastSet()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->add(J)Z

    goto :goto_9

    .line 728
    :cond_1a
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 729
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitSet()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->add(J)Z

    :goto_9
    return-void
.end method

.method private final enqueueGcRoots(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->sortedGcRoots()Ljava/util/List;

    move-result-object v2

    .line 304
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 305
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 306
    check-cast v2, Ljava/lang/Iterable;

    .line 756
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    .line 306
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    .line 308
    instance-of v7, v5, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;

    if-eqz v7, :cond_1

    .line 309
    move-object v7, v5

    check-cast v7, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;->getThreadSerialNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;->getAsInstance()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;)V

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    invoke-direct {v0, v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 312
    :cond_1
    instance-of v7, v5, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JavaFrame;

    if-eqz v7, :cond_7

    .line 313
    move-object v6, v5

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JavaFrame;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JavaFrame;->getThreadSerialNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    if-nez v6, :cond_2

    .line 316
    new-instance v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;)V

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    invoke-direct {v0, v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;

    .line 319
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_5

    .line 320
    const-class v8, Ljava/lang/Thread;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v7, v8, v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Lkotlin/reflect/KClass;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->readAsJavaString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    :cond_3
    const-string v8, ""

    .line 321
    :cond_4
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_5
    iget-object v7, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->threadNameReferenceMatchers:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    .line 326
    instance-of v8, v7, Lcom/netease/androidcrashhandler/thirdparty/shark/IgnoredReferenceMatcher;

    if-nez v8, :cond_0

    .line 327
    new-instance v8, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;->getId()J

    move-result-wide v9

    invoke-direct {v8, v9, v10, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;)V

    .line 329
    sget-object v15, Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;->LOCAL:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;

    const-string v16, ""

    .line 335
    instance-of v6, v7, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    if-eqz v6, :cond_6

    .line 336
    new-instance v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;

    .line 337
    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v12

    .line 338
    move-object v14, v8

    check-cast v14, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    .line 341
    move-object/from16 v17, v7

    check-cast v17, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    const-wide/16 v18, 0x0

    const/16 v20, 0x20

    const/16 v21, 0x0

    move-object v11, v6

    .line 336
    invoke-direct/range {v11 .. v21}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;

    goto :goto_1

    .line 344
    :cond_6
    new-instance v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;

    .line 345
    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v12

    .line 346
    move-object v14, v8

    check-cast v14, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    const-wide/16 v17, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object v11, v6

    .line 344
    invoke-direct/range {v11 .. v20}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;

    .line 351
    :goto_1
    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    invoke-direct {v0, v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    .line 355
    :cond_7
    instance-of v7, v5, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JniGlobal;

    if-eqz v7, :cond_d

    .line 357
    instance-of v7, v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    goto :goto_2

    .line 358
    :cond_8
    instance-of v7, v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    if-eqz v7, :cond_9

    iget-object v7, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    goto :goto_2

    .line 359
    :cond_9
    instance-of v7, v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    goto :goto_2

    .line 360
    :cond_a
    instance-of v7, v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->jniGlobalReferenceMatchers:Ljava/util/Map;

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;->getArrayClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    .line 362
    :goto_2
    instance-of v7, v6, Lcom/netease/androidcrashhandler/thirdparty/shark/IgnoredReferenceMatcher;

    if-nez v7, :cond_0

    .line 363
    instance-of v7, v6, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    if-eqz v7, :cond_b

    .line 364
    new-instance v7, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v8

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;)V

    check-cast v7, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    invoke-direct {v0, v1, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    .line 366
    :cond_b
    new-instance v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;)V

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    invoke-direct {v0, v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    .line 360
    :cond_c
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 370
    :cond_d
    new-instance v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;)V

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    invoke-direct {v0, v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private final findPathsFromGcRoots(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;
    .locals 5

    .line 258
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueueGcRoots(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;)V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getQueuesNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->poll(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    move-result-object v1

    .line 263
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getLeakingObjectIds()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getLeakingObjectIds()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getComputeRetainedHeapSize()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->listener:Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;

    sget-object v3, Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener$Step;->FINDING_DOMINATORS:Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener$Step;

    invoke-interface {v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;->onAnalysisProgress(Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener$Step;)V

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->findObjectById(J)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    move-result-object v2

    .line 276
    instance-of v3, v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    invoke-direct {p0, p1, v2, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->visitClassRecord(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 277
    :cond_2
    instance-of v3, v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    invoke-direct {p0, p1, v2, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->visitInstance(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 278
    :cond_3
    instance-of v3, v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    invoke-direct {p0, p1, v2, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->visitObjectArray(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto :goto_0

    .line 282
    :cond_4
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;

    .line 284
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getVisitTracker()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;

    move-result-object v2

    instance-of v2, v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker$Dominated;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getVisitTracker()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;

    move-result-object p1

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker$Dominated;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker$Dominated;->getDominatorTree()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 282
    :goto_1
    invoke-direct {v1, v0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;-><init>(Ljava/util/List;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;)V

    return-object v1
.end method

.method private final getRecordSize(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)I
    .locals 5

    .line 575
    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 576
    invoke-interface {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->getIdentifierByteSize()I

    move-result v1

    goto :goto_3

    .line 577
    :cond_0
    sget-object p1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->BOOLEAN:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_3

    .line 578
    :cond_1
    sget-object p1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->CHAR:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_2

    :goto_1
    const/4 v1, 0x2

    goto :goto_3

    .line 579
    :cond_2
    sget-object p1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->FLOAT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_3

    :goto_2
    const/4 v1, 0x4

    goto :goto_3

    .line 580
    :cond_3
    sget-object p1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->DOUBLE:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_4

    goto :goto_3

    .line 581
    :cond_4
    sget-object p1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->BYTE:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_5

    goto :goto_0

    .line 582
    :cond_5
    sget-object p1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->SHORT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_6

    goto :goto_1

    .line 583
    :cond_6
    sget-object p1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_7

    goto :goto_2

    .line 584
    :cond_7
    sget-object p1, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->LONG:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getHprofType()I

    move-result p1

    if-ne v0, p1, :cond_8

    :goto_3
    return v1

    .line 585
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final isOverThresholdInstance(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;)Z
    .locals 7

    .line 615
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 616
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.util"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 617
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->instanceCountMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-nez v0, :cond_1

    .line 623
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 624
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->SAME_INSTANCE_THRESHOLD:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 625
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->instanceCountMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    add-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->SAME_INSTANCE_THRESHOLD:I

    if-lt p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_0
    return v2
.end method

.method private final poll(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;
    .locals 3

    .line 289
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getVisitingLast()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    .line 291
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitSet()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->remove(J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 294
    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->setVisitingLast(Z)V

    .line 295
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitLastQueue()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    .line 296
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getToVisitLastSet()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object p1

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;->getObjectId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->remove(J)Z

    :goto_0
    return-object v0
.end method

.method private final readAllNonNullFieldsOfReferenceType(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;",
            ">;"
        }
    .end annotation

    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getGraph()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    move-result-object v0

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 524
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    .line 525
    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->readRecordFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;

    .line 526
    invoke-virtual {v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    move-object/from16 v9, p0

    .line 528
    invoke-direct {v9, v0, v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->getRecordSize(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_1

    :cond_0
    move-object/from16 v9, p0

    if-nez v4, :cond_1

    .line 532
    new-instance v4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->readRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;

    move-result-object v10

    invoke-interface {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->getIdentifierByteSize()I

    move-result v11

    invoke-direct {v4, v10, v11}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$InstanceDumpRecord;I)V

    .line 536
    :cond_1
    invoke-virtual {v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->skipBytes(I)V

    .line 539
    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/FieldIdReader;->readId()J

    move-result-wide v13

    const-wide/16 v10, 0x0

    cmp-long v5, v13, v10

    if-eqz v5, :cond_2

    .line 542
    new-instance v5, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;

    .line 543
    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v11

    invoke-virtual {v6, v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->instanceFieldName(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ClassDumpRecord$FieldRecord;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v5

    .line 542
    invoke-direct/range {v10 .. v15}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;-><init>(JJLjava/lang/String;)V

    .line 541
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v9, p0

    goto :goto_0

    :cond_4
    move-object/from16 v9, p0

    return-object v1
.end method

.method private final sortedGcRoots()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
            ">;>;"
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$sortedGcRoots$rootClassName$1;->INSTANCE:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$sortedGcRoots$rootClassName$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 399
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-interface {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->getGcRoots()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 758
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 759
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    .line 403
    iget-object v5, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->objectExists(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 759
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 760
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 758
    check-cast v2, Ljava/lang/Iterable;

    .line 761
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 762
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 763
    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    .line 405
    iget-object v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->findObjectById(J)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 763
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 764
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 761
    check-cast v1, Ljava/lang/Iterable;

    .line 406
    new-instance v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final sortedGcRoots$lambda$6(Lkotlin/jvm/functions/Function1;Lkotlin/Pair;Lkotlin/Pair;)I
    .locals 2

    .line 406
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    .line 408
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final toLongScatterSet(Ljava/util/Set;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;"
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 252
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->ensureCapacity(I)V

    .line 253
    check-cast p1, Ljava/lang/Iterable;

    .line 754
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

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;->add(J)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final visitClassRecord(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V
    .locals 16

    move-object/from16 v0, p0

    .line 421
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 423
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->readStaticFields()Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    .line 424
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->isNonNullReference()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v4, "$staticOverhead"

    .line 429
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "$classOverhead"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 435
    :cond_2
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->getHolder()Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.netease.androidcrashhandler.thirdparty.shark.ValueHolder.ReferenceHolder"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ReferenceHolder;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ValueHolder$ReferenceHolder;->getValue()J

    move-result-wide v6

    .line 437
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    if-nez v3, :cond_3

    .line 438
    new-instance v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;

    .line 441
    sget-object v9, Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;->STATIC_FIELD:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;

    const-wide/16 v11, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v5, v3

    move-object/from16 v8, p3

    .line 438
    invoke-direct/range {v5 .. v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;

    goto :goto_1

    .line 444
    :cond_3
    instance-of v4, v3, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    if-eqz v4, :cond_4

    new-instance v4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;

    .line 447
    sget-object v9, Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;->STATIC_FIELD:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;

    .line 449
    move-object v11, v3

    check-cast v11, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    const-wide/16 v12, 0x0

    const/16 v14, 0x20

    const/4 v15, 0x0

    move-object v5, v4

    move-object/from16 v8, p3

    .line 444
    invoke-direct/range {v5 .. v15}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;

    goto :goto_1

    .line 451
    :cond_4
    instance-of v3, v3, Lcom/netease/androidcrashhandler/thirdparty/shark/IgnoredReferenceMatcher;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 454
    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto/16 :goto_0

    :cond_5
    :goto_2
    move-object/from16 v4, p1

    goto/16 :goto_0

    .line 451
    :cond_6
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_7
    return-void
.end method

.method private final visitInstance(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V
    .locals 15

    move-object v0, p0

    .line 463
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 465
    invoke-virtual/range {p2 .. p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClass()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getClassHierarchy()Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 765
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    .line 466
    iget-object v4, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->fieldNameByClassName:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 468
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    .line 469
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 470
    move-object v6, v1

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClass()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;->getJavaLangObjectId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->classHierarchyWithoutJavaLangObject(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;J)Ljava/util/List;

    move-result-object v2

    move-object/from16 v3, p2

    .line 478
    invoke-direct {p0, v3, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->readAllNonNullFieldsOfReferenceType(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 767
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    new-instance v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$visitInstance$$inlined$sortBy$1;

    invoke-direct {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$visitInstance$$inlined$sortBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 482
    :cond_3
    check-cast v2, Ljava/lang/Iterable;

    .line 769
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;

    .line 483
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/ReferenceMatcher;

    if-nez v4, :cond_4

    .line 484
    new-instance v4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;

    .line 485
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->getRefObjectId()J

    move-result-wide v6

    .line 487
    sget-object v9, Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;->INSTANCE_FIELD:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;

    .line 488
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->getFieldName()Ljava/lang/String;

    move-result-object v10

    .line 489
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->getDeclaringClassId()J

    move-result-wide v11

    move-object v5, v4

    move-object/from16 v8, p3

    .line 484
    invoke-direct/range {v5 .. v12}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;J)V

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;

    goto :goto_2

    .line 491
    :cond_4
    instance-of v5, v4, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    if-eqz v5, :cond_5

    .line 492
    new-instance v5, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;

    .line 493
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->getRefObjectId()J

    move-result-wide v7

    .line 495
    sget-object v10, Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;->INSTANCE_FIELD:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;

    .line 496
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->getFieldName()Ljava/lang/String;

    move-result-object v11

    .line 497
    move-object v12, v4

    check-cast v12, Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    .line 498
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$InstanceRefField;->getDeclaringClassId()J

    move-result-wide v13

    move-object v6, v5

    move-object/from16 v9, p3

    .line 492
    invoke-direct/range {v6 .. v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;J)V

    move-object v4, v5

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;

    goto :goto_2

    .line 500
    :cond_5
    instance-of v3, v4, Lcom/netease/androidcrashhandler/thirdparty/shark/IgnoredReferenceMatcher;

    if-eqz v3, :cond_7

    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    .line 503
    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    move-object/from16 v3, p1

    invoke-direct {p0, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    goto :goto_1

    :cond_6
    move-object/from16 v3, p1

    goto :goto_1

    .line 500
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_8
    return-void
.end method

.method private final visitObjectArray(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V
    .locals 15

    move-object v0, p0

    .line 592
    invoke-virtual/range {p2 .. p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;->readRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    move-result-object v1

    .line 593
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getElementIds()[J

    move-result-object v1

    .line 771
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 772
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-wide v6, v1, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_0

    .line 594
    iget-object v8, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-interface {v8, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->objectExists(J)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1

    .line 772
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 773
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 596
    check-cast v2, Ljava/lang/Iterable;

    .line 775
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    if-gez v4, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 597
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 599
    new-instance v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;

    .line 602
    sget-object v9, Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;->ARRAY_ENTRY:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;

    const-wide/16 v11, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v5, v2

    move-object/from16 v8, p3

    .line 599
    invoke-direct/range {v5 .. v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    move-object/from16 v4, p1

    .line 598
    invoke-direct {p0, v4, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->enqueue(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;)V

    move v4, v3

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final findPathsFromGcRoots(Ljava/util/Set;Z)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->listener:Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;

    sget-object v1, Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener$Step;->FINDING_PATHS_TO_RETAINED_OBJECTS:Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener$Step;

    invoke-interface {v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener;->onAnalysisProgress(Lcom/netease/androidcrashhandler/thirdparty/shark/OnAnalysisProgressListener$Step;)V

    .line 209
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    const-string v1, "java.lang.Object"

    invoke-interface {v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->findClassByName(Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-direct {p0, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->determineSizeOfObjectInstances(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;)I

    move-result v4

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;->getObjectId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v6, v0

    .line 215
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-interface {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->getInstanceCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    .line 217
    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;

    .line 218
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->toLongScatterSet(Ljava/util/Set;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;

    move-result-object v3

    move-object v2, v0

    move v5, p2

    .line 217
    invoke-direct/range {v2 .. v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongScatterSet;IZJI)V

    .line 225
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;->findPathsFromGcRoots(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$State;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;

    move-result-object p1

    return-object p1
.end method
