.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;
.super Ljava/lang/Object;
.source "ShallowSizeCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShallowSizeCalculator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShallowSizeCalculator.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,64:1\n1314#2,2:65\n12940#2,3:67\n*S KotlinDebug\n*F\n+ 1 ShallowSizeCalculator.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator\n*L\n46#1:65,2\n49#1:67,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;",
        "",
        "graph",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;",
        "(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;)V",
        "computeShallowSize",
        "",
        "objectId",
        "",
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
.field private final graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    return-void
.end method


# virtual methods
.method public final computeShallowSize(J)I
    .locals 11

    .line 21
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-interface {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->findObjectById(J)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;

    move-result-object p1

    .line 22
    instance-of p2, p1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 23
    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getInstanceClassName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "java.lang.String"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "value"

    .line 27
    invoke-virtual {p1, v2, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapField;->getValue()Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapValue;->getAsNonNullObjectId()Ljava/lang/Long;

    move-result-object v0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getByteSize()I

    move-result p1

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;->computeShallowSize(J)I

    move-result v1

    :cond_1
    add-int/2addr p1, v1

    goto/16 :goto_5

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapInstance;->getByteSize()I

    move-result p1

    goto/16 :goto_5

    .line 40
    :cond_3
    instance-of p2, p1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    if-eqz p2, :cond_c

    .line 41
    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinderKt;->isSkippablePrimitiveWrapperArray(Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 44
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;->readRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecord$HeapDumpRecord$ObjectRecord$ObjectArrayDumpRecord;->getElementIds()[J

    move-result-object p1

    .line 45
    array-length p2, p1

    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;->graph:Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;

    invoke-interface {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapGraph;->getIdentifierByteSize()I

    move-result v2

    mul-int p2, p2, v2

    .line 65
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v3, v2, :cond_6

    aget-wide v7, p1, v3

    cmp-long v9, v7, v4

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    if-eqz v0, :cond_a

    .line 48
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ShallowSizeCalculator;->computeShallowSize(J)I

    move-result v0

    .line 68
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    aget-wide v8, p1, v3

    cmp-long v10, v8, v4

    if-eqz v10, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    mul-int v0, v0, v7

    add-int p1, p2, v0

    goto :goto_5

    :cond_a
    move p1, p2

    goto :goto_5

    .line 55
    :cond_b
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapObjectArray;->readByteSize()I

    move-result p1

    goto :goto_5

    .line 59
    :cond_c
    instance-of p2, p1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;

    if-eqz p2, :cond_d

    check-cast p1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapPrimitiveArray;->readByteSize()I

    move-result p1

    goto :goto_5

    .line 61
    :cond_d
    instance-of p2, p1, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject$HeapClass;

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HeapObject;->getRecordSize()I

    move-result p1

    :goto_5
    return p1

    :cond_e
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
