.class final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;
.super Ljava/lang/Object;
.source "HprofInMemoryIndex.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0010J\u0018\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/J\u0008\u00100\u001a\u000201H\u0002J \u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u000208H\u0016J\u0014\u00109\u001a\u000203*\u0002082\u0006\u0010:\u001a\u00020\u0007H\u0002R\u0011\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/OnHprofRecordTagListener;",
        "longIdentifiers",
        "",
        "maxPosition",
        "",
        "classCount",
        "",
        "instanceCount",
        "objectArrayCount",
        "primitiveArrayCount",
        "bytesForClassSize",
        "bytesForInstanceSize",
        "bytesForObjectArraySize",
        "bytesForPrimitiveArraySize",
        "classFieldsTotalBytes",
        "(ZJIIIIIIIII)V",
        "getBytesForClassSize",
        "()I",
        "getBytesForInstanceSize",
        "getBytesForObjectArraySize",
        "getBytesForPrimitiveArraySize",
        "classFieldBytes",
        "",
        "classFieldsIndex",
        "classFieldsIndexSize",
        "getClassFieldsTotalBytes",
        "classIndex",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;",
        "classNames",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;",
        "gcRoots",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "hprofStringCache",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;",
        "",
        "identifierSize",
        "instanceIndex",
        "objectArrayIndex",
        "positionSize",
        "primitiveArrayIndex",
        "buildIndex",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;",
        "proguardMapping",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;",
        "hprofHeader",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofHeader;",
        "lastClassFieldsShort",
        "",
        "onHprofRecord",
        "",
        "tag",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;",
        "length",
        "reader",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;",
        "copyToClassFields",
        "byteCount",
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
.field private final bytesForClassSize:I

.field private final bytesForInstanceSize:I

.field private final bytesForObjectArraySize:I

.field private final bytesForPrimitiveArraySize:I

.field private final classFieldBytes:[B

.field private classFieldsIndex:I

.field private final classFieldsIndexSize:I

.field private final classFieldsTotalBytes:I

.field private final classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

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

.field private final identifierSize:I

.field private final instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

.field private final objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

.field private final positionSize:I

.field private final primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;


# direct methods
.method public constructor <init>(ZJIIIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    move/from16 v3, p10

    move/from16 v4, p11

    move/from16 v5, p12

    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForClassSize:I

    .line 302
    iput v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForInstanceSize:I

    .line 303
    iput v3, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForObjectArraySize:I

    .line 304
    iput v4, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForPrimitiveArraySize:I

    .line 305
    iput v5, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsTotalBytes:I

    const/4 v6, 0x4

    if-eqz p1, :cond_0

    const/16 v7, 0x8

    const/16 v15, 0x8

    goto :goto_0

    :cond_0
    const/4 v15, 0x4

    .line 308
    :goto_0
    iput v15, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    .line 309
    sget-object v7, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;

    move-wide/from16 v8, p2

    invoke-static {v7, v8, v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;->access$byteSizeForUnsigned(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;J)I

    move-result v14

    iput v14, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    .line 310
    sget-object v7, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;

    int-to-long v8, v5

    invoke-static {v7, v8, v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;->access$byteSizeForUnsigned(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Companion;J)I

    move-result v7

    iput v7, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndexSize:I

    .line 322
    new-instance v8, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;

    invoke-direct {v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;-><init>()V

    iput-object v8, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->hprofStringCache:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;

    .line 327
    new-instance v8, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    move/from16 v10, p4

    invoke-direct {v8, v10}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;-><init>(I)V

    iput-object v8, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classNames:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    .line 329
    new-array v5, v5, [B

    iput-object v5, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    .line 333
    new-instance v5, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    add-int v8, v14, v15

    add-int/2addr v8, v6

    add-int/2addr v8, v1

    add-int/2addr v8, v7

    const-wide/16 v11, 0x0

    const/16 v13, 0x8

    const/4 v1, 0x0

    move-object v7, v5

    move/from16 v9, p1

    move v6, v14

    move-object v14, v1

    invoke-direct/range {v7 .. v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;-><init>(IZIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    .line 338
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    add-int v14, v6, v15

    add-int v8, v14, v2

    const/4 v14, 0x0

    move-object v7, v1

    move/from16 v10, p5

    invoke-direct/range {v7 .. v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;-><init>(IZIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    .line 343
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    add-int v14, v6, v15

    add-int v8, v14, v3

    const/4 v14, 0x0

    move-object v7, v1

    move/from16 v10, p6

    invoke-direct/range {v7 .. v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;-><init>(IZIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    .line 348
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    add-int/lit8 v14, v6, 0x1

    add-int v8, v14, v4

    const/4 v14, 0x0

    move-object v7, v1

    move/from16 v10, p7

    invoke-direct/range {v7 .. v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;-><init>(IZIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    return-void
.end method

.method private final copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V
    .locals 4

    const/4 v0, 0x1

    if-gt v0, p2, :cond_0

    .line 358
    :goto_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    iget v2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readByte()B

    move-result v3

    aput-byte v3, v1, v2

    if-eq v0, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final lastClassFieldsShort()S
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    add-int/lit8 v2, v1, -0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, -0x1

    .line 364
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public final buildIndex(Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;Lcom/netease/androidcrashhandler/thirdparty/shark/HprofHeader;)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;
    .locals 23

    move-object/from16 v0, p0

    .line 604
    iget v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 608
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->moveToSortedMap()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    move-result-object v10

    .line 609
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->moveToSortedMap()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    move-result-object v11

    .line 610
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->moveToSortedMap()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    move-result-object v12

    .line 611
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->moveToSortedMap()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;

    move-result-object v9

    .line 613
    new-instance v1, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;

    .line 614
    iget v6, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    .line 615
    iget-object v7, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->hprofStringCache:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;

    .line 616
    iget-object v8, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classNames:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    .line 621
    iget-object v13, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    .line 623
    iget v15, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForClassSize:I

    .line 624
    iget v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForInstanceSize:I

    .line 625
    iget v14, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForObjectArraySize:I

    .line 626
    iget v5, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForPrimitiveArraySize:I

    .line 627
    invoke-virtual/range {p2 .. p2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofHeader;->getVersion()Lcom/netease/androidcrashhandler/thirdparty/shark/HprofVersion;

    move-result-object v3

    sget-object v4, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofVersion;->ANDROID:Lcom/netease/androidcrashhandler/thirdparty/shark/HprofVersion;

    if-eq v3, v4, :cond_1

    const/16 v19, 0x1

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    .line 628
    :goto_1
    new-instance v3, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;

    move-object/from16 v20, v3

    iget v4, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    move/from16 v16, v5

    iget-object v5, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    invoke-direct {v3, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;-><init>(I[B)V

    .line 629
    iget v3, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndexSize:I

    move/from16 v21, v3

    const/16 v22, 0x0

    move/from16 v3, v16

    move-object v5, v1

    move v4, v14

    move-object/from16 v14, p1

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v3

    .line 613
    invoke-direct/range {v5 .. v22}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex;-><init>(ILcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/SortedBytesMap;Ljava/util/List;Lcom/netease/androidcrashhandler/thirdparty/shark/ProguardMapping;IIIIZLcom/netease/androidcrashhandler/thirdparty/shark/internal/ClassFieldsReader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 605
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into fields bytes instead of expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getBytesForClassSize()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForClassSize:I

    return v0
.end method

.method public final getBytesForInstanceSize()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForInstanceSize:I

    return v0
.end method

.method public final getBytesForObjectArraySize()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForObjectArraySize:I

    return v0
.end method

.method public final getBytesForPrimitiveArraySize()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForPrimitiveArraySize:I

    return v0
.end method

.method public final getClassFieldsTotalBytes()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsTotalBytes:I

    return v0
.end method

.method public onHprofRecord(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;JLcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 372
    sget-object v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordTag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 581
    :pswitch_0
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    .line 582
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 583
    sget-object v6, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getByteSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 584
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readInt()I

    move-result v6

    .line 585
    sget-object v7, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType$Companion;

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType$Companion;->getPrimitiveTypeByHprofType()Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readUnsignedByte()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    .line 586
    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getByteSize()I

    move-result v8

    mul-int v6, v6, v8

    invoke-virtual {v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 587
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 588
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->primitiveArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-virtual {v1, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->append(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;

    move-result-object v1

    .line 590
    iget v4, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 591
    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeByte(B)V

    .line 592
    iget v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForPrimitiveArraySize:I

    invoke-virtual {v1, v8, v9, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    goto/16 :goto_4

    .line 566
    :pswitch_1
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    .line 567
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 568
    sget-object v6, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getByteSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 569
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readInt()I

    move-result v6

    .line 570
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v7

    .line 571
    iget v9, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    mul-int v9, v9, v6

    invoke-virtual {v1, v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 572
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 573
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->objectArrayIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-virtual {v1, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->append(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;

    move-result-object v1

    .line 575
    iget v4, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 576
    invoke-virtual {v1, v7, v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeId(J)V

    .line 577
    iget v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForObjectArraySize:I

    invoke-virtual {v1, v9, v10, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    goto/16 :goto_4

    .line 551
    :pswitch_2
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    .line 552
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 553
    sget-object v6, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getByteSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 554
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v6

    .line 555
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readInt()I

    move-result v8

    .line 556
    invoke-virtual {v1, v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 557
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 558
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->instanceIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-virtual {v1, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->append(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;

    move-result-object v1

    .line 560
    iget v4, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 561
    invoke-virtual {v1, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeId(J)V

    .line 562
    iget v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForInstanceSize:I

    invoke-virtual {v1, v8, v9, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    goto/16 :goto_4

    .line 498
    :pswitch_3
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v2

    .line 499
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 501
    sget-object v6, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getByteSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 502
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v6

    .line 503
    iget v8, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    mul-int/lit8 v8, v8, 0x5

    invoke-virtual {v1, v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 507
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readInt()I

    move-result v8

    .line 509
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skipClassDumpConstantPool()V

    .line 511
    iget v9, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    .line 513
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v10

    const/4 v12, 0x2

    .line 515
    invoke-direct {v0, v1, v12}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->lastClassFieldsShort()S

    move-result v13

    const v14, 0xffff

    and-int/2addr v13, v14

    const/4 v15, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v15, v13, :cond_1

    .line 518
    iget v12, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    invoke-direct {v0, v1, v12}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V

    .line 519
    invoke-direct {v0, v1, v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V

    .line 520
    iget-object v12, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldBytes:[B

    move/from16 v16, v13

    iget v13, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    sub-int/2addr v13, v14

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 522
    iget v12, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    invoke-direct {v0, v1, v12}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V

    goto :goto_1

    .line 524
    :cond_0
    sget-object v13, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->Companion:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType$Companion;

    invoke-virtual {v13}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType$Companion;->getByteSizeByHprofType()Ljava/util/Map;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v12}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-direct {v0, v1, v12}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V

    :goto_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    const/4 v12, 0x2

    goto :goto_0

    .line 528
    :cond_1
    invoke-direct {v0, v1, v12}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V

    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->lastClassFieldsShort()S

    move-result v12

    const v13, 0xffff

    and-int/2addr v12, v13

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_2

    .line 531
    iget v15, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    invoke-direct {v0, v1, v15}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V

    .line 532
    invoke-direct {v0, v1, v14}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->copyToClassFields(Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 535
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v12

    sub-long/2addr v12, v10

    long-to-int v10, v12

    .line 536
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->getBytesRead()J

    move-result-wide v11

    sub-long/2addr v11, v2

    .line 538
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classIndex:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;

    invoke-virtual {v1, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries;->append(J)Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;

    move-result-object v1

    .line 540
    iget v4, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->positionSize:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    .line 541
    invoke-virtual {v1, v6, v7}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeId(J)V

    .line 542
    invoke-virtual {v1, v8}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeInt(I)V

    .line 543
    iget v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->bytesForClassSize:I

    invoke-virtual {v1, v11, v12, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    int-to-long v2, v9

    .line 544
    iget v4, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndexSize:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/UnsortedByteEntries$MutableByteSubArray;->writeTruncatedLong(JI)V

    add-int/2addr v9, v10

    .line 546
    iget v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    if-ne v9, v1, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_4

    goto/16 :goto_4

    .line 547
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classFieldsIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to have moved by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and be equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :pswitch_4
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readUnreachableGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$Unreachable;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$Unreachable;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 493
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 484
    :pswitch_5
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readJniMonitorGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JniMonitor;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JniMonitor;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 486
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 477
    :pswitch_6
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readVmInternalGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$VmInternal;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$VmInternal;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 479
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 470
    :pswitch_7
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readReferenceCleanupGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ReferenceCleanup;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ReferenceCleanup;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 472
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 463
    :pswitch_8
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readDebuggerGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$Debugger;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$Debugger;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 465
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 456
    :pswitch_9
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readFinalizingGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$Finalizing;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$Finalizing;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 458
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 449
    :pswitch_a
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readInternedStringGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$InternedString;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$InternedString;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 451
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 442
    :pswitch_b
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readThreadObjectGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadObject;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 444
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 435
    :pswitch_c
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readMonitorUsedGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$MonitorUsed;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$MonitorUsed;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 437
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 428
    :pswitch_d
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readThreadBlockGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadBlock;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$ThreadBlock;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 430
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 421
    :pswitch_e
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readStickyClassGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$StickyClass;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$StickyClass;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 423
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 414
    :pswitch_f
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readNativeStackGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$NativeStack;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$NativeStack;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 416
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 407
    :pswitch_10
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readJavaFrameGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JavaFrame;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JavaFrame;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 409
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 400
    :pswitch_11
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readJniLocalGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JniLocal;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JniLocal;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 402
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 393
    :pswitch_12
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readJniGlobalGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JniGlobal;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$JniGlobal;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 395
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 386
    :pswitch_13
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readUnknownGcRootRecord()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$Unknown;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot$Unknown;->getId()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    .line 388
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->gcRoots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 378
    :pswitch_14
    sget-object v2, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getByteSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 379
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v2

    .line 381
    sget-object v4, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->INT:Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->getByteSize()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->skip(I)V

    .line 382
    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v4

    .line 383
    iget-object v1, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->classNames:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap;->set(JJ)J

    goto :goto_4

    .line 374
    :pswitch_15
    iget-object v2, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->hprofStringCache:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;

    invoke-virtual/range {p4 .. p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readId()J

    move-result-wide v3

    iget v5, v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/HprofInMemoryIndex$Builder;->identifierSize:I

    int-to-long v5, v5

    sub-long v5, p2, v5

    invoke-virtual {v1, v5, v6}, Lcom/netease/androidcrashhandler/thirdparty/shark/HprofRecordReader;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongObjectScatterMap;->set(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
