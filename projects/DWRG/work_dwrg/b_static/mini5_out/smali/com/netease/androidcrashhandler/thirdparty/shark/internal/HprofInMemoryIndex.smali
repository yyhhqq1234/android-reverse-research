.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;
.super Ljava/lang/Object;
.source "HprofInMemoryIndex.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;,
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHprofInMemoryIndex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HprofInMemoryIndex.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,735:1\n179#2,2:736\n179#2,2:738\n*S KotlinDebug\n*F\n+ 1 HprofInMemoryIndex.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex\n*L\n106#1:736,2\n110#1:738,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 D2\u00020\u0001:\u0002CDB\u0095\u0001\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020\u0006\u00a2\u0006\u0002\u0010+J\u000e\u0010*\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)J\u0016\u0010,\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u0010-\u001a\u00020)J\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u0010\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020)H\u0002J\u0012\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002020100J\u0012\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040100J\u0012\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002060100J\u0016\u00107\u001a\n\u0012\u0004\u0012\u000209\u0018\u0001082\u0006\u0010:\u001a\u00020)J\u0012\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002090100J\u0012\u0010<\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020=0100J\u0014\u0010>\u001a\u0008\u0012\u0004\u0012\u000209012\u0006\u0010?\u001a\u00020\u0003J\u000e\u0010@\u001a\u00020\u00182\u0006\u0010:\u001a\u00020)J\u000c\u0010A\u001a\u000202*\u00020BH\u0002R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010\u001b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\"\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u001fR\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001fR\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010&\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001fR\u000e\u0010\r\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;",
        "",
        "positionSize",
        "",
        "hprofStringCache",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;",
        "",
        "classNames",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;",
        "classIndex",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;",
        "instanceIndex",
        "objectArrayIndex",
        "primitiveArrayIndex",
        "gcRoots",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "proguardMapping",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;",
        "bytesForClassSize",
        "bytesForInstanceSize",
        "bytesForObjectArraySize",
        "bytesForPrimitiveArraySize",
        "useForwardSlashClassPackageSeparator",
        "",
        "classFieldsReader",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;",
        "classFieldsIndexSize",
        "(ILcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Ljava/util/List;Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;IIIIZLcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;I)V",
        "classCount",
        "getClassCount",
        "()I",
        "getClassFieldsReader",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;",
        "instanceCount",
        "getInstanceCount",
        "objectArrayCount",
        "getObjectArrayCount",
        "primitiveArrayCount",
        "getPrimitiveArrayCount",
        "classId",
        "",
        "className",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "fieldName",
        "id",
        "hprofStringById",
        "indexedClassSequence",
        "Lkotlin/sequences/Sequence;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;",
        "indexedInstanceSequence",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;",
        "indexedObjectArraySequence",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;",
        "indexedObjectOrNull",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/IntObjectPair;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;",
        "objectId",
        "indexedObjectSequence",
        "indexedPrimitiveArraySequence",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;",
        "objectAtIndex",
        "index",
        "objectIdIsIndexed",
        "readClass",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;",
        "Builder",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;


# instance fields
.field private final bytesForClassSize:I

.field private final bytesForInstanceSize:I

.field private final bytesForObjectArraySize:I

.field private final bytesForPrimitiveArraySize:I

.field private final classFieldsIndexSize:I

.field private final classFieldsReader:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;

.field private final classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

.field private final classNames:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

.field private final gcRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
            ">;"
        }
    .end annotation
.end field

.field private final hprofStringCache:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

.field private final objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

.field private final positionSize:I

.field private final primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

.field private final proguardMapping:Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;

.field private final useForwardSlashClassPackageSeparator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;

    return-void
.end method

.method private constructor <init>(ILcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Ljava/util/List;Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;IIIIZLcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;",
            "Ljava/util/List<",
            "+",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
            ">;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;",
            "IIIIZ",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 44
    iput v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    move-object v1, p2

    .line 45
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->hprofStringCache:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;

    move-object v1, p3

    .line 46
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classNames:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    move-object v1, p4

    .line 47
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    move-object v1, p5

    .line 48
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    move-object v1, p6

    .line 49
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    move-object v1, p7

    .line 50
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    move-object v1, p8

    .line 51
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->gcRoots:Ljava/util/List;

    move-object v1, p9

    .line 52
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->proguardMapping:Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;

    move v1, p10

    .line 53
    iput v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForClassSize:I

    move v1, p11

    .line 54
    iput v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForInstanceSize:I

    move v1, p12

    .line 55
    iput v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForObjectArraySize:I

    move v1, p13

    .line 56
    iput v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForPrimitiveArraySize:I

    move/from16 v1, p14

    .line 57
    iput-boolean v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->useForwardSlashClassPackageSeparator:Z

    move-object/from16 v1, p15

    .line 58
    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classFieldsReader:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;

    move/from16 v1, p16

    .line 59
    iput v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classFieldsIndexSize:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Ljava/util/List;Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;IIIIZLcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;-><init>(ILcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Ljava/util/List;Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;IIIIZLcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;I)V

    return-void
.end method

.method public static final synthetic access$getBytesForInstanceSize$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForInstanceSize:I

    return p0
.end method

.method public static final synthetic access$getBytesForObjectArraySize$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForObjectArraySize:I

    return p0
.end method

.method public static final synthetic access$getBytesForPrimitiveArraySize$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForPrimitiveArraySize:I

    return p0
.end method

.method public static final synthetic access$getPositionSize$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    return p0
.end method

.method public static final synthetic access$readClass(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->readClass(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;

    move-result-object p0

    return-object p0
.end method

.method private final hprofStringById(J)Ljava/lang/String;
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->hprofStringCache:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hprof string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " not in cache"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readClass(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;
    .locals 10

    .line 257
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v2

    .line 258
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readId()J

    move-result-wide v4

    .line 259
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readInt()I

    move-result v6

    .line 261
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForClassSize:I

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v7

    .line 262
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classFieldsIndexSize:I

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v0

    long-to-int v9, v0

    .line 264
    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;-><init>(JJIJI)V

    return-object p1
.end method


# virtual methods
.method public final classId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    .line 99
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->useForwardSlashClassPackageSeparator:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 101
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->hprofStringCache:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 736
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    .line 106
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;->getFirst()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_7

    .line 108
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 109
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classNames:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 738
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongPair;

    .line 110
    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongPair;->getSecond()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_6
    move-object v3, v2

    :goto_3
    check-cast v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongPair;

    if-eqz v3, :cond_7

    .line 111
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongPair;->getFirst()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object v2, p1

    :cond_7
    return-object v2
.end method

.method public final className(J)Ljava/lang/String;
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classNames:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->get(J)J

    move-result-wide p1

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->hprofStringById(J)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->proguardMapping:Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;->deobfuscateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p1

    .line 91
    :goto_1
    iget-boolean p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->useForwardSlashClassPackageSeparator:Z

    if-eqz p1, :cond_2

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 93
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final fieldName(JJ)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-direct {p0, p3, p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->hprofStringById(J)Ljava/lang/String;

    move-result-object p3

    .line 79
    iget-object p4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->proguardMapping:Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;

    if-eqz p4, :cond_1

    .line 80
    iget-object p4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classNames:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {p4, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->get(J)J

    move-result-wide p1

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->hprofStringById(J)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->proguardMapping:Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;

    invoke-virtual {p2, p1, p3}, Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;->deobfuscateFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method public final gcRoots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->gcRoots:Ljava/util/List;

    return-object v0
.end method

.method public final getClassCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final getClassFieldsReader()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classFieldsReader:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;

    return-object v0
.end method

.method public final getInstanceCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final getObjectArrayCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final getPrimitiveArrayCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final indexedClassSequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;",
            ">;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedClassSequence$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedClassSequence$1;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final indexedInstanceSequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;",
            ">;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedInstanceSequence$1;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final indexedObjectArraySequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;",
            ">;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedObjectArraySequence$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedObjectArraySequence$1;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final indexedObjectOrNull(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/IntObjectPair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/IntObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p1

    .line 223
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->readClass(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(ILjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/IntObjectPair;

    move-result-object p1

    return-object p1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_1

    .line 227
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p1

    .line 228
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result p2

    add-int/2addr p2, v0

    new-instance v7, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;

    .line 229
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v1

    .line 230
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readId()J

    move-result-wide v3

    .line 231
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForInstanceSize:I

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v5

    move-object v0, v7

    .line 228
    invoke-direct/range {v0 .. v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;-><init>(JJJ)V

    invoke-static {p2, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(ILjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/IntObjectPair;

    move-result-object p1

    return-object p1

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->indexOf(J)I

    move-result v0

    if-ltz v0, :cond_2

    .line 236
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result p2

    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, v0

    new-instance v7, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;

    .line 238
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v1

    .line 239
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readId()J

    move-result-wide v3

    .line 240
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForObjectArraySize:I

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v5

    move-object v0, v7

    .line 237
    invoke-direct/range {v0 .. v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;-><init>(JJJ)V

    invoke-static {p2, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(ILjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/IntObjectPair;

    move-result-object p1

    return-object p1

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->indexOf(J)I

    move-result p1

    if-ltz p1, :cond_3

    .line 245
    iget-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p2, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p2

    .line 246
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result p1

    add-int/2addr v0, p1

    new-instance p1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;

    .line 247
    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p2, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v2

    .line 248
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->values()[Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readByte()B

    move-result v4

    .line 249
    aget-object v4, v1, v4

    .line 250
    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForPrimitiveArraySize:I

    invoke-virtual {p2, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v5

    move-object v1, p1

    .line 246
    invoke-direct/range {v1 .. v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;J)V

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(ILjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/IntObjectPair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final indexedObjectSequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;",
            ">;>;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->indexedClassSequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->indexedInstanceSequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->indexedObjectArraySequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->indexedPrimitiveArraySequence()Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final indexedPrimitiveArraySequence()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;",
            ">;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->entrySequence()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedPrimitiveArraySequence$1;

    invoke-direct {v1, p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$indexedPrimitiveArraySequence$1;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final objectAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Failed requirement."

    if-eqz v2, :cond_6

    .line 181
    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 182
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v0

    .line 183
    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v2, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p1

    .line 184
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->readClass(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedClass;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v2

    sub-int v2, p1, v2

    .line 187
    iget-object v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 188
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v0

    .line 189
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p1

    .line 190
    new-instance v9, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;

    .line 191
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v3

    .line 192
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readId()J

    move-result-wide v5

    .line 193
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForInstanceSize:I

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v7

    move-object v2, v9

    .line 190
    invoke-direct/range {v2 .. v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedInstance;-><init>(JJJ)V

    invoke-static {v0, v1, v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v4

    sub-int/2addr v2, v4

    .line 197
    iget-object v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 198
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v0

    .line 199
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p1

    .line 200
    new-instance v9, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;

    .line 201
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v3

    .line 202
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readId()J

    move-result-wide v5

    .line 203
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForObjectArraySize:I

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v7

    move-object v2, v9

    .line 200
    invoke-direct/range {v2 .. v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;-><init>(JJJ)V

    invoke-static {v0, v1, v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1

    .line 206
    :cond_3
    iget-object v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v4

    sub-int/2addr v2, v4

    .line 207
    iget-object v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getSize()I

    move-result v4

    if-ge p1, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 208
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->keyAt(I)J

    move-result-wide v0

    .line 209
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->getAtIndex(I)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p1

    .line 210
    new-instance v8, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;

    .line 211
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->positionSize:I

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v3

    .line 212
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->values()[Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readByte()B

    move-result v5

    .line 213
    aget-object v5, v2, v5

    .line 214
    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->bytesForPrimitiveArraySize:I

    invoke-virtual {p1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;->readTruncatedLong(I)J

    move-result-wide v6

    move-object v2, v8

    .line 210
    invoke-direct/range {v2 .. v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;J)V

    invoke-static {v0, v1, v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/TuplesKt;->to(JLjava/lang/Object;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectPair;

    move-result-object p1

    return-object p1

    .line 207
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final objectIdIsIndexed(J)Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->get(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->get(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->get(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    invoke-virtual {v0, p1, p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;->get(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArray;

    move-result-object p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
