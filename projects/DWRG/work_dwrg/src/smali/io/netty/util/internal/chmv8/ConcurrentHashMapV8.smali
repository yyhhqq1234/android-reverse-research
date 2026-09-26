.class public Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;
.super Ljava/lang/Object;
.source "ConcurrentHashMapV8.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterHashCode;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchMappingsTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchEntriesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchValuesTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchKeysTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedMappingTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedEntryTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedValueTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedKeyTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachMappingTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachEntryTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachValueTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachKeyTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CollectionView;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySpliterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValueSpliterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySpliterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapEntry;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntryIterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValueIterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeyIterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BaseIterator;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;,
        Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ConcurrentHashMapSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABASE:J

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x1

.field static final NCPU:I

.field static final RESERVED:I = -0x3

.field static final SEED_INCREMENT:I = 0x61c88647

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field private static final TRANSFERORIGIN:J

.field static final TREEBIN:I = -0x2

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Lsun/misc/Unsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field static final counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

.field private transient entrySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient sizeCtl:I

.field volatile transient table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient transferIndex:I

.field private volatile transient transferOrigin:I

.field private transient values:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 594
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    sput v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->NCPU:I

    .line 597
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/io/ObjectStreamField;

    const/4 v6, 0x0

    new-instance v7, Ljava/io/ObjectStreamField;

    const-string v8, "segments"

    const-class v9, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;

    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/io/ObjectStreamField;

    const-string v8, "segmentMask"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/io/ObjectStreamField;

    const-string v8, "segmentShift"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v7, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v7, v5, v6

    sput-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 6027
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6150
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    .line 6151
    const-class v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    .line 6152
    .local v3, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v6, "sizeCtl"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    .line 6154
    sget-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v6, "transferIndex"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->TRANSFERINDEX:J

    .line 6156
    sget-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v6, "transferOrigin"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->TRANSFERORIGIN:J

    .line 6158
    sget-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v6, "baseCount"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->BASECOUNT:J

    .line 6160
    sget-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v6, "cellsBusy"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLSBUSY:J

    .line 6162
    const-class v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    .line 6163
    .local v1, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    const-string v6, "value"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLVALUE:J

    .line 6165
    const-class v0, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 6166
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    int-to-long v6, v5

    sput-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ABASE:J

    .line 6167
    sget-object v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v4

    .line 6168
    .local v4, "scale":I
    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    .line 6169
    new-instance v5, Ljava/lang/Error;

    const-string v6, "data type scale not a power of two"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6171
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "scale":I
    :catch_0
    move-exception v2

    .line 6172
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 6170
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "scale":I
    :cond_0
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1f

    sput v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6174
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 822
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 835
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    if-gez p1, :cond_0

    .line 837
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 838
    :cond_0
    const/high16 v1, 0x20000000

    if-lt p1, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    .line 841
    .local v0, "cap":I
    :goto_0
    iput v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 842
    return-void

    .line 838
    .end local v0    # "cap":I
    :cond_1
    ushr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tableSizeFor(I)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 870
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>(IFI)V

    .line 871
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 892
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 894
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 895
    :cond_1
    if-ge p1, p3, :cond_2

    .line 896
    move p1, p3

    .line 897
    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-long v6, p1

    long-to-float v1, v6

    div-float/2addr v1, p2

    float-to-double v6, v1

    add-double/2addr v4, v6

    double-to-long v2, v4

    .line 898
    .local v2, "size":J
    const-wide/32 v4, 0x40000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    .line 900
    .local v0, "cap":I
    :goto_0
    iput v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 901
    return-void

    .line 898
    .end local v0    # "cap":I
    :cond_3
    long-to-int v1, v2

    invoke-static {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tableSizeFor(I)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    const/16 v0, 0x10

    iput v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 851
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->putAll(Ljava/util/Map;)V

    .line 852
    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private final addCount(JI)V
    .locals 35
    .param p1, "x"    # J
    .param p3, "check"    # I

    .prologue
    .line 2240
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v30, v0

    .local v30, "as":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    if-nez v30, :cond_0

    sget-object v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->BASECOUNT:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->baseCount:J

    .local v8, "b":J
    add-long v10, v8, p1

    .local v10, "s":J
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2243
    .end local v8    # "b":J
    .end local v10    # "s":J
    :cond_0
    const/16 v23, 0x1

    .line 2244
    .local v23, "uncontended":Z
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v34

    .line 2245
    .local v34, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual/range {v34 .. v34}, Lio/netty/util/internal/InternalThreadLocalMap;->counterHashCode()Lio/netty/util/internal/IntegerHolder;

    move-result-object v22

    .local v22, "hc":Lio/netty/util/internal/IntegerHolder;
    if-eqz v22, :cond_1

    if-eqz v30, :cond_1

    move-object/from16 v0, v30

    array-length v4, v0

    add-int/lit8 v31, v4, -0x1

    .local v31, "m":I
    if-ltz v31, :cond_1

    move-object/from16 v0, v22

    iget v4, v0, Lio/netty/util/internal/IntegerHolder;->value:I

    and-int v4, v4, v31

    aget-object v13, v30, v4

    .local v13, "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    if-eqz v13, :cond_1

    sget-object v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLVALUE:J

    iget-wide v0, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;->value:J

    move-wide/from16 v16, v0

    .local v16, "v":J
    add-long v18, v16, p1

    invoke-virtual/range {v12 .. v19}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v23

    if-nez v23, :cond_3

    .end local v13    # "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    .end local v16    # "v":J
    .end local v31    # "m":I
    :cond_1
    move-object/from16 v18, p0

    move-object/from16 v19, v34

    move-wide/from16 v20, p1

    .line 2250
    invoke-direct/range {v18 .. v23}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->fullAddCount(Lio/netty/util/internal/InternalThreadLocalMap;JLio/netty/util/internal/IntegerHolder;Z)V

    .line 2273
    .end local v22    # "hc":Lio/netty/util/internal/IntegerHolder;
    .end local v23    # "uncontended":Z
    .end local v34    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    :cond_2
    return-void

    .line 2253
    .restart local v13    # "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    .restart local v16    # "v":J
    .restart local v22    # "hc":Lio/netty/util/internal/IntegerHolder;
    .restart local v23    # "uncontended":Z
    .restart local v31    # "m":I
    .restart local v34    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, p3

    if-le v0, v4, :cond_2

    .line 2255
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v10

    .line 2257
    .end local v13    # "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    .end local v16    # "v":J
    .end local v22    # "hc":Lio/netty/util/internal/IntegerHolder;
    .end local v23    # "uncontended":Z
    .end local v31    # "m":I
    .end local v34    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    .restart local v10    # "s":J
    :cond_4
    if-ltz p3, :cond_2

    .line 2259
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    move/from16 v28, v0

    .local v28, "sc":I
    move/from16 v0, v28

    int-to-long v4, v0

    cmp-long v4, v10, v4

    if-ltz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v33, v0

    .local v33, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v33, :cond_2

    move-object/from16 v0, v33

    array-length v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v4, v5, :cond_2

    .line 2261
    if-gez v28, :cond_6

    .line 2262
    const/4 v4, -0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferIndex:I

    move-object/from16 v0, p0

    iget v5, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferOrigin:I

    if-le v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v32, v0

    .local v32, "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v32, :cond_2

    .line 2265
    sget-object v24, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v26, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    add-int/lit8 v29, v28, -0x1

    move-object/from16 v25, p0

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2266
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2270
    .end local v32    # "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v10

    goto :goto_0

    .line 2268
    :cond_6
    sget-object v24, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v26, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/16 v29, -0x2

    move-object/from16 v25, p0

    invoke-virtual/range {v24 .. v29}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2269
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_1
.end method

.method static final casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local p2, "c":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local p3, "v":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ABASE:J

    add-long/2addr v2, v4

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 8
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 701
    instance-of v6, p0, Ljava/lang/Comparable;

    if-eqz v6, :cond_3

    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_1

    .line 716
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v1

    .line 705
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v5

    .local v5, "ts":[Ljava/lang/reflect/Type;
    if-eqz v5, :cond_3

    .line 706
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 707
    aget-object v4, v5, v2

    .local v4, "t":Ljava/lang/reflect/Type;
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2

    move-object v3, v4

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .local v3, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-class v7, Ljava/lang/Comparable;

    if-ne v6, v7, :cond_2

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "as":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_2

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    aget-object v6, v0, v6

    if-eq v6, v1, :cond_0

    .line 706
    .end local v0    # "as":[Ljava/lang/reflect/Type;
    .end local v3    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 716
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    .end local v4    # "t":Ljava/lang/reflect/Type;
    .end local v5    # "ts":[Ljava/lang/reflect/Type;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local p1    # "k":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "k":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "k":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private final fullAddCount(Lio/netty/util/internal/InternalThreadLocalMap;JLio/netty/util/internal/IntegerHolder;Z)V
    .locals 30
    .param p1, "threadLocals"    # Lio/netty/util/internal/InternalThreadLocalMap;
    .param p2, "x"    # J
    .param p4, "hc"    # Lio/netty/util/internal/IntegerHolder;
    .param p5, "wasUncontended"    # Z

    .prologue
    .line 6052
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    if-nez p4, :cond_4

    .line 6053
    new-instance p4, Lio/netty/util/internal/IntegerHolder;

    .end local p4    # "hc":Lio/netty/util/internal/IntegerHolder;
    invoke-direct/range {p4 .. p4}, Lio/netty/util/internal/IntegerHolder;-><init>()V

    .line 6054
    .restart local p4    # "hc":Lio/netty/util/internal/IntegerHolder;
    sget-object v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterHashCodeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v6, 0x61c88647

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v29

    .line 6055
    .local v29, "s":I
    if-nez v29, :cond_3

    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Lio/netty/util/internal/IntegerHolder;->value:I

    .line 6056
    .local v21, "h":I
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lio/netty/util/internal/InternalThreadLocalMap;->setCounterHashCode(Lio/netty/util/internal/IntegerHolder;)V

    .line 6060
    .end local v29    # "s":I
    :goto_1
    const/16 v19, 0x0

    .line 6063
    .local v19, "collide":Z
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v18, v0

    .local v18, "as":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .local v26, "n":I
    if-lez v26, :cond_e

    .line 6064
    add-int/lit8 v4, v26, -0x1

    and-int v4, v4, v21

    aget-object v5, v18, v4

    .local v5, "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    if-nez v5, :cond_7

    .line 6065
    move-object/from16 v0, p0

    iget v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-nez v4, :cond_5

    .line 6066
    new-instance v27, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v0, v27

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;-><init>(J)V

    .line 6067
    .local v27, "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    move-object/from16 v0, p0

    iget v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-nez v4, :cond_5

    sget-object v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLSBUSY:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .end local v5    # "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    move-result v4

    if-eqz v4, :cond_5

    .line 6069
    const/16 v20, 0x0

    .line 6072
    .local v20, "created":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v28, v0

    .local v28, "rs":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    if-eqz v28, :cond_1

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "m":I
    if-lez v25, :cond_1

    add-int/lit8 v4, v25, -0x1

    and-int v24, v4, v21

    .local v24, "j":I
    aget-object v4, v28, v24

    if-nez v4, :cond_1

    .line 6075
    aput-object v27, v28, v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6076
    const/16 v20, 0x1

    .line 6079
    .end local v24    # "j":I
    .end local v25    # "m":I
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    .line 6081
    if-eqz v20, :cond_0

    .line 6134
    .end local v20    # "created":Z
    .end local v26    # "n":I
    .end local v27    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    .end local v28    # "rs":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :cond_2
    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Lio/netty/util/internal/IntegerHolder;->value:I

    .line 6135
    return-void

    .end local v18    # "as":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    .end local v19    # "collide":Z
    .end local v21    # "h":I
    .restart local v29    # "s":I
    :cond_3
    move/from16 v21, v29

    .line 6055
    goto :goto_0

    .line 6059
    .end local v29    # "s":I
    :cond_4
    move-object/from16 v0, p4

    iget v0, v0, Lio/netty/util/internal/IntegerHolder;->value:I

    move/from16 v21, v0

    .restart local v21    # "h":I
    goto :goto_1

    .line 6079
    .restart local v18    # "as":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    .restart local v19    # "collide":Z
    .restart local v20    # "created":Z
    .restart local v26    # "n":I
    .restart local v27    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :catchall_0
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    throw v4

    .line 6086
    .end local v20    # "created":Z
    .end local v27    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :cond_5
    const/16 v19, 0x0

    .line 6111
    :cond_6
    :goto_4
    shl-int/lit8 v4, v21, 0xd

    xor-int v21, v21, v4

    .line 6112
    ushr-int/lit8 v4, v21, 0x11

    xor-int v21, v21, v4

    .line 6113
    shl-int/lit8 v4, v21, 0x5

    xor-int v21, v21, v4

    goto/16 :goto_2

    .line 6088
    .restart local v5    # "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :cond_7
    if-nez p5, :cond_8

    .line 6089
    const/16 p5, 0x1

    goto :goto_4

    .line 6090
    :cond_8
    sget-object v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLVALUE:J

    iget-wide v8, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;->value:J

    .local v8, "v":J
    add-long v10, v8, p2

    invoke-virtual/range {v4 .. v11}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6092
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_9

    sget v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->NCPU:I

    move/from16 v0, v26

    if-lt v0, v4, :cond_a

    .line 6093
    :cond_9
    const/16 v19, 0x0

    goto :goto_4

    .line 6094
    :cond_a
    if-nez v19, :cond_b

    .line 6095
    const/16 v19, 0x1

    goto :goto_4

    .line 6096
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-nez v4, :cond_6

    sget-object v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLSBUSY:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6099
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_d

    .line 6100
    shl-int/lit8 v4, v26, 0x1

    new-array v0, v4, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v28, v0

    .line 6101
    .restart local v28    # "rs":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 6102
    aget-object v4, v18, v22

    aput-object v4, v28, v22

    .line 6101
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 6103
    :cond_c
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6106
    .end local v22    # "i":I
    .end local v28    # "rs":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    .line 6108
    const/16 v19, 0x0

    .line 6109
    goto/16 :goto_2

    .line 6106
    :catchall_1
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    throw v4

    .line 6115
    .end local v5    # "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    .end local v8    # "v":J
    .end local v26    # "n":I
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_10

    sget-object v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->CELLSBUSY:J

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6117
    const/16 v23, 0x0

    .line 6119
    .local v23, "init":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_f

    .line 6120
    const/4 v4, 0x2

    new-array v0, v4, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-object/from16 v28, v0

    .line 6121
    .restart local v28    # "rs":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    and-int/lit8 v4, v21, 0x1

    new-instance v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    move-wide/from16 v0, p2

    invoke-direct {v6, v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;-><init>(J)V

    aput-object v6, v28, v4

    .line 6122
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6123
    const/16 v23, 0x1

    .line 6126
    .end local v28    # "rs":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    .line 6128
    if-eqz v23, :cond_0

    goto/16 :goto_3

    .line 6126
    :catchall_2
    move-exception v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->cellsBusy:I

    throw v4

    .line 6131
    .end local v23    # "init":Z
    :cond_10
    sget-object v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->BASECOUNT:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->baseCount:J

    .restart local v8    # "v":J
    add-long v16, v8, p2

    move-object/from16 v11, p0

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .prologue
    .line 6185
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6188
    :goto_0
    return-object v1

    .line 6186
    :catch_0
    move-exception v1

    .line 6188
    :try_start_1
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$1;

    invoke-direct {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6200
    :catch_1
    move-exception v0

    .line 6201
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2207
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v8, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v8, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v8, :cond_1

    array-length v0, v8

    if-nez v0, :cond_5

    .line 2208
    :cond_1
    iget v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .local v4, "sc":I
    if-gez v4, :cond_2

    .line 2209
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 2210
    :cond_2
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    :try_start_0
    iget-object v8, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v8, :cond_3

    array-length v0, v8

    if-nez v0, :cond_4

    .line 2213
    :cond_3
    if-lez v4, :cond_6

    move v6, v4

    .line 2215
    .local v6, "n":I
    :goto_1
    new-array v7, v6, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    check-cast v7, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2216
    .local v7, "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object v8, v7

    iput-object v7, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    ushr-int/lit8 v0, v6, 0x2

    sub-int v4, v6, v0

    .line 2220
    .end local v6    # "n":I
    .end local v7    # "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_4
    iput v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 2225
    .end local v4    # "sc":I
    :cond_5
    return-object v8

    .line 2213
    .restart local v4    # "sc":I
    :cond_6
    const/16 v6, 0x10

    goto :goto_1

    .line 2220
    :catchall_0
    move-exception v0

    iput v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    throw v0
.end method

.method public static newKeySet()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2111
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newKeySet(I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .locals 3
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2127
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;

    invoke-direct {v1, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 33
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1431
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 1432
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1433
    const-wide/16 v26, 0x0

    .line 1434
    .local v26, "size":J
    const/16 v22, 0x0

    .line 1436
    .local v22, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v18

    .line 1437
    .local v18, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v32

    .line 1438
    .local v32, "v":Ljava/lang/Object;, "TV;"
    if-eqz v18, :cond_0

    if-eqz v32, :cond_0

    .line 1439
    new-instance v23, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v5

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-direct {v0, v5, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 1440
    .end local v22    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local v23, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const-wide/16 v6, 0x1

    add-long v26, v26, v6

    move-object/from16 v22, v23

    .line 1444
    .end local v23    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v22    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    goto :goto_0

    .line 1445
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, v26, v6

    if-nez v5, :cond_1

    .line 1446
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 1515
    :goto_1
    return-void

    .line 1449
    :cond_1
    const-wide/32 v6, 0x20000000

    cmp-long v5, v26, v6

    if-ltz v5, :cond_4

    .line 1450
    const/high16 v20, 0x40000000    # 2.0f

    .line 1456
    .local v20, "n":I
    :goto_2
    move/from16 v0, v20

    new-array v0, v0, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v30, v0

    check-cast v30, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1457
    .local v30, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    add-int/lit8 v19, v20, -0x1

    .line 1458
    .local v19, "mask":I
    const-wide/16 v10, 0x0

    .line 1459
    .local v10, "added":J
    :goto_3
    if-eqz v22, :cond_d

    .line 1461
    move-object/from16 v0, v22

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v21, v0

    .line 1462
    .local v21, "next":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v0, v22

    iget v14, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v14, "h":I
    and-int v17, v14, v19

    .line 1463
    .local v17, "j":I
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v13

    .local v13, "first":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v13, :cond_5

    .line 1464
    const/16 v16, 0x1

    .line 1504
    .local v16, "insertAtFront":Z
    :cond_2
    :goto_4
    if-eqz v16, :cond_3

    .line 1505
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1506
    move-object/from16 v0, v22

    iput-object v13, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1507
    move-object/from16 v0, v30

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 1509
    :cond_3
    move-object/from16 v22, v21

    .line 1510
    goto :goto_3

    .line 1452
    .end local v10    # "added":J
    .end local v13    # "first":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v16    # "insertAtFront":Z
    .end local v17    # "j":I
    .end local v19    # "mask":I
    .end local v20    # "n":I
    .end local v21    # "next":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v30    # "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_4
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v28, v0

    .line 1453
    .local v28, "sz":I
    ushr-int/lit8 v5, v28, 0x1

    add-int v5, v5, v28

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tableSizeFor(I)I

    move-result v20

    .restart local v20    # "n":I
    goto :goto_2

    .line 1466
    .end local v28    # "sz":I
    .restart local v10    # "added":J
    .restart local v13    # "first":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v14    # "h":I
    .restart local v17    # "j":I
    .restart local v19    # "mask":I
    .restart local v21    # "next":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v30    # "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_5
    move-object/from16 v0, v22

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 1467
    iget v5, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-gez v5, :cond_7

    move-object/from16 v29, v13

    .line 1468
    check-cast v29, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    .line 1469
    .local v29, "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    move-object/from16 v0, v22

    iget-object v5, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v5

    if-nez v5, :cond_6

    .line 1470
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1471
    :cond_6
    const/16 v16, 0x0

    .line 1472
    .restart local v16    # "insertAtFront":Z
    goto :goto_4

    .line 1474
    .end local v16    # "insertAtFront":Z
    .end local v29    # "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    :cond_7
    const/4 v12, 0x0

    .line 1475
    .local v12, "binCount":I
    const/16 v16, 0x1

    .line 1477
    .restart local v16    # "insertAtFront":Z
    move-object/from16 v24, v13

    .local v24, "q":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_5
    if-eqz v24, :cond_9

    .line 1478
    move-object/from16 v0, v24

    iget v5, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v5, v14, :cond_a

    move-object/from16 v0, v24

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    move-object/from16 v25, v0

    .local v25, "qk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    if-eqz v25, :cond_a

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1481
    :cond_8
    const/16 v16, 0x0

    .line 1486
    .end local v25    # "qk":Ljava/lang/Object;, "TK;"
    :cond_9
    if-eqz v16, :cond_2

    const/16 v5, 0x8

    if-lt v12, v5, :cond_2

    .line 1487
    const/16 v16, 0x0

    .line 1488
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    .line 1489
    move-object/from16 v0, v22

    iput-object v13, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1490
    const/4 v15, 0x0

    .local v15, "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    const/16 v31, 0x0

    .line 1491
    .local v31, "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    move-object/from16 v24, v22

    :goto_6
    if-eqz v24, :cond_c

    .line 1492
    new-instance v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v0, v24

    iget v5, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move-object/from16 v0, v24

    iget-object v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    move-object/from16 v0, v24

    iget-object v7, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    .line 1494
    .local v4, "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    move-object/from16 v0, v31

    iput-object v0, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->prev:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v31, :cond_b

    .line 1495
    move-object v15, v4

    .line 1498
    :goto_7
    move-object/from16 v31, v4

    .line 1491
    move-object/from16 v0, v24

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v24, v0

    goto :goto_6

    .line 1484
    .end local v4    # "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v15    # "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v31    # "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 1477
    move-object/from16 v0, v24

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v24, v0

    goto :goto_5

    .line 1497
    .restart local v4    # "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .restart local v15    # "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .restart local v31    # "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :cond_b
    move-object/from16 v0, v31

    iput-object v4, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_7

    .line 1500
    .end local v4    # "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :cond_c
    new-instance v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    invoke-direct {v5, v15}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-static {v0, v1, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto/16 :goto_4

    .line 1511
    .end local v12    # "binCount":I
    .end local v13    # "first":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v14    # "h":I
    .end local v15    # "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v16    # "insertAtFront":Z
    .end local v17    # "j":I
    .end local v21    # "next":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v24    # "q":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v31    # "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :cond_d
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1512
    ushr-int/lit8 v5, v20, 0x2

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iput v5, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 1513
    move-object/from16 v0, p0

    iput-wide v10, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->baseCount:J

    goto/16 :goto_1
.end method

.method static final setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p0, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local p2, "v":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ABASE:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 759
    return-void
.end method

.method static final spread(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 679
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .locals 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;I)",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    int-to-long v2, p1

    sget v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ASHIFT:I

    shl-long/2addr v2, v1

    sget-wide v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->ABASE:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .locals 3
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 687
    add-int/lit8 v0, p0, -0x1

    .line 688
    .local v0, "n":I
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v0, v2

    .line 689
    ushr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    .line 690
    ushr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    .line 691
    ushr-int/lit8 v2, v0, 0x8

    or-int/2addr v0, v2

    .line 692
    ushr-int/lit8 v2, v0, 0x10

    or-int/2addr v0, v2

    .line 693
    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private final transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    .locals 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2330
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local p2, "nextTab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v47, v0

    .line 2331
    .local v47, "n":I
    sget v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->NCPU:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    ushr-int/lit8 v6, v47, 0x3

    sget v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->NCPU:I

    div-int v57, v6, v7

    .local v57, "stride":I
    :goto_0
    const/16 v6, 0x10

    move/from16 v0, v57

    if-ge v0, v6, :cond_0

    .line 2332
    const/16 v57, 0x10

    .line 2333
    :cond_0
    if-nez p2, :cond_6

    .line 2336
    shl-int/lit8 v6, v47, 0x1

    :try_start_0
    new-array v0, v6, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v50, v0

    check-cast v50, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    .local v50, "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 p2, v50

    .line 2342
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2343
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferOrigin:I

    .line 2344
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferIndex:I

    .line 2345
    new-instance v55, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;

    move-object/from16 v0, v55

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2346
    .local v55, "rev":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode<TK;TV;>;"
    move/from16 v39, v47

    .local v39, "k":I
    :goto_1
    if-lez v39, :cond_6

    .line 2347
    move/from16 v0, v39

    move/from16 v1, v57

    if-le v0, v1, :cond_3

    sub-int v48, v39, v57

    .line 2348
    .local v48, "nextk":I
    :goto_2
    move/from16 v46, v48

    .local v46, "m":I
    :goto_3
    move/from16 v0, v46

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 2349
    aput-object v55, p2, v46

    .line 2348
    add-int/lit8 v46, v46, 0x1

    goto :goto_3

    .end local v39    # "k":I
    .end local v46    # "m":I
    .end local v48    # "nextk":I
    .end local v50    # "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v55    # "rev":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode<TK;TV;>;"
    .end local v57    # "stride":I
    :cond_1
    move/from16 v57, v47

    .line 2331
    goto :goto_0

    .line 2338
    .restart local v57    # "stride":I
    :catch_0
    move-exception v28

    .line 2339
    .local v28, "ex":Ljava/lang/Throwable;
    const v6, 0x7fffffff

    move-object/from16 v0, p0

    iput v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .line 2387
    .end local v28    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_4
    return-void

    .line 2347
    .restart local v39    # "k":I
    .restart local v50    # "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v55    # "rev":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode<TK;TV;>;"
    :cond_3
    const/16 v48, 0x0

    goto :goto_2

    .line 2350
    .restart local v46    # "m":I
    .restart local v48    # "nextk":I
    :cond_4
    add-int v46, v47, v48

    :goto_5
    add-int v6, v47, v39

    move/from16 v0, v46

    if-ge v0, v6, :cond_5

    .line 2351
    aput-object v55, p2, v46

    .line 2350
    add-int/lit8 v46, v46, 0x1

    goto :goto_5

    .line 2352
    :cond_5
    sget-object v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->TRANSFERORIGIN:J

    move/from16 v39, v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v6, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    goto :goto_1

    .line 2355
    .end local v39    # "k":I
    .end local v46    # "m":I
    .end local v48    # "nextk":I
    .end local v50    # "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v55    # "rev":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode<TK;TV;>;"
    :cond_6
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v49, v0

    .line 2356
    .local v49, "nextn":I
    new-instance v32, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2357
    .local v32, "fwd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode<TK;TV;>;"
    const/16 v24, 0x1

    .line 2358
    .local v24, "advance":Z
    const/16 v31, 0x0

    .line 2359
    .local v31, "finishing":Z
    const/16 v38, 0x0

    .local v38, "i":I
    const/16 v26, 0x0

    .line 2361
    .end local v31    # "finishing":Z
    .local v26, "bound":I
    :cond_7
    :goto_6
    if-eqz v24, :cond_c

    .line 2362
    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    if-eqz v31, :cond_9

    .line 2363
    :cond_8
    const/16 v24, 0x0

    goto :goto_6

    .line 2364
    :cond_9
    move-object/from16 v0, p0

    iget v10, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferIndex:I

    .local v10, "nextIndex":I
    move-object/from16 v0, p0

    iget v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferOrigin:I

    if-gt v10, v6, :cond_a

    .line 2365
    const/16 v38, -0x1

    .line 2366
    const/16 v24, 0x0

    goto :goto_6

    .line 2368
    :cond_a
    sget-object v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->TRANSFERINDEX:J

    move/from16 v0, v57

    if-le v10, v0, :cond_b

    sub-int v11, v10, v57

    .local v11, "nextBound":I
    :goto_7
    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2372
    move/from16 v26, v11

    .line 2373
    add-int/lit8 v38, v10, -0x1

    .line 2374
    const/16 v24, 0x0

    goto :goto_6

    .line 2368
    .end local v11    # "nextBound":I
    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .line 2377
    .end local v10    # "nextIndex":I
    :cond_c
    if-ltz v38, :cond_d

    move/from16 v0, v38

    move/from16 v1, v47

    if-ge v0, v1, :cond_d

    add-int v6, v38, v47

    move/from16 v0, v49

    if-lt v6, v0, :cond_f

    .line 2378
    :cond_d
    if-eqz v31, :cond_e

    .line 2379
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2380
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2381
    shl-int/lit8 v6, v47, 0x1

    ushr-int/lit8 v7, v47, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    goto/16 :goto_4

    .line 2385
    :cond_e
    sget-object v12, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    move-object/from16 v0, p0

    iget v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    move/from16 v16, v0

    .local v16, "sc":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "sc":I
    .local v17, "sc":I
    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2386
    const/4 v6, -0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_2

    .line 2388
    const/16 v24, 0x1

    move/from16 v31, v24

    .line 2389
    .local v31, "finishing":I
    move/from16 v38, v47

    .line 2390
    goto :goto_6

    .line 2394
    .end local v17    # "sc":I
    .end local v31    # "finishing":I
    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v29

    .local v29, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v29, :cond_10

    .line 2395
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move-object/from16 v2, v32

    invoke-static {v0, v1, v6, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2396
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2397
    add-int v6, v38, v47

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2398
    const/16 v24, 0x1

    goto/16 :goto_6

    .line 2401
    :cond_10
    move-object/from16 v0, v29

    iget v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v30, v0

    .local v30, "fh":I
    const/4 v6, -0x1

    move/from16 v0, v30

    if-ne v0, v6, :cond_11

    .line 2402
    const/16 v24, 0x1

    goto/16 :goto_6

    .line 2404
    :cond_11
    monitor-enter v29

    .line 2405
    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-static {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v6

    move-object/from16 v0, v29

    if-ne v6, v0, :cond_17

    .line 2407
    if-ltz v30, :cond_18

    .line 2408
    and-int v56, v30, v47

    .line 2409
    .local v56, "runBit":I
    move-object/from16 v40, v29

    .line 2410
    .local v40, "lastRun":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v0, v29

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v51, v0

    .local v51, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_8
    if-eqz v51, :cond_13

    .line 2411
    move-object/from16 v0, v51

    iget v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    and-int v25, v6, v47

    .line 2412
    .local v25, "b":I
    move/from16 v0, v25

    move/from16 v1, v56

    if-eq v0, v1, :cond_12

    .line 2413
    move/from16 v56, v25

    .line 2414
    move-object/from16 v40, v51

    .line 2410
    :cond_12
    move-object/from16 v0, v51

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v51, v0

    goto :goto_8

    .line 2417
    .end local v25    # "b":I
    :cond_13
    if-nez v56, :cond_14

    .line 2418
    move-object/from16 v42, v40

    .line 2419
    .local v42, "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/16 v36, 0x0

    .line 2425
    .local v36, "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_9
    move-object/from16 v51, v29

    move-object/from16 v37, v36

    .end local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local v37, "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v43, v42

    .end local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local v43, "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_a
    move-object/from16 v0, v51

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_16

    .line 2426
    move-object/from16 v0, v51

    iget v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v52, v0

    .local v52, "ph":I
    move-object/from16 v0, v51

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    move-object/from16 v53, v0

    .local v53, "pk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v51

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    move-object/from16 v54, v0

    .line 2427
    .local v54, "pv":Ljava/lang/Object;, "TV;"
    and-int v6, v52, v47

    if-nez v6, :cond_15

    .line 2428
    new-instance v42, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v0, v42

    move/from16 v1, v52

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .end local v43    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v36, v37

    .line 2425
    .end local v37    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_b
    move-object/from16 v0, v51

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v51, v0

    move-object/from16 v37, v36

    .end local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v37    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v43, v42

    .end local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v43    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    goto :goto_a

    .line 2422
    .end local v37    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v43    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v52    # "ph":I
    .end local v53    # "pk":Ljava/lang/Object;, "TK;"
    .end local v54    # "pv":Ljava/lang/Object;, "TV;"
    :cond_14
    move-object/from16 v36, v40

    .line 2423
    .restart local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/16 v42, 0x0

    .restart local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    goto :goto_9

    .line 2430
    .end local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v37    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v43    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v52    # "ph":I
    .restart local v53    # "pk":Ljava/lang/Object;, "TK;"
    .restart local v54    # "pv":Ljava/lang/Object;, "TV;"
    :cond_15
    new-instance v36, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v0, v36

    move/from16 v1, v52

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .end local v37    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v42, v43

    .end local v43    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    goto :goto_b

    .line 2432
    .end local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v52    # "ph":I
    .end local v53    # "pk":Ljava/lang/Object;, "TK;"
    .end local v54    # "pv":Ljava/lang/Object;, "TV;"
    .restart local v37    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v43    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_16
    move-object/from16 v0, p2

    move/from16 v1, v38

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2433
    add-int v6, v38, v47

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-static {v0, v6, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2434
    move-object/from16 v0, p1

    move/from16 v1, v38

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2435
    const/16 v24, 0x1

    .line 2473
    .end local v37    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v40    # "lastRun":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v43    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v51    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v56    # "runBit":I
    :cond_17
    :goto_c
    monitor-exit v29

    goto/16 :goto_6

    :catchall_0
    move-exception v6

    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2437
    :cond_18
    :try_start_2
    move-object/from16 v0, v29

    instance-of v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v6, :cond_17

    .line 2438
    move-object/from16 v0, v29

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v58, v0

    .line 2439
    .local v58, "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    const/16 v44, 0x0

    .local v44, "lo":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    const/16 v45, 0x0

    .line 2440
    .local v45, "loTail":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    const/16 v34, 0x0

    .local v34, "hi":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    const/16 v35, 0x0

    .line 2441
    .local v35, "hiTail":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    const/16 v41, 0x0

    .local v41, "lc":I
    const/16 v33, 0x0

    .line 2442
    .local v33, "hc":I
    move-object/from16 v0, v58

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v27, v0

    .local v27, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_d
    if-eqz v27, :cond_1c

    .line 2443
    move-object/from16 v0, v27

    iget v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v19, v0

    .line 2444
    .local v19, "h":I
    new-instance v18, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v0, v27

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v18 .. v23}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    .line 2446
    .local v18, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    and-int v6, v19, v47

    if-nez v6, :cond_1a

    .line 2447
    move-object/from16 v0, v45

    move-object/from16 v1, v18

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->prev:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v45, :cond_19

    .line 2448
    move-object/from16 v44, v18

    .line 2451
    :goto_e
    move-object/from16 v45, v18

    .line 2452
    add-int/lit8 v41, v41, 0x1

    .line 2442
    :goto_f
    move-object/from16 v0, v27

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v27, v0

    goto :goto_d

    .line 2450
    :cond_19
    move-object/from16 v0, v18

    move-object/from16 v1, v45

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_e

    .line 2455
    :cond_1a
    move-object/from16 v0, v35

    move-object/from16 v1, v18

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->prev:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v35, :cond_1b

    .line 2456
    move-object/from16 v34, v18

    .line 2459
    :goto_10
    move-object/from16 v35, v18

    .line 2460
    add-int/lit8 v33, v33, 0x1

    goto :goto_f

    .line 2458
    :cond_1b
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_10

    .line 2463
    .end local v18    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v19    # "h":I
    :cond_1c
    const/4 v6, 0x6

    move/from16 v0, v41

    if-gt v0, v6, :cond_1d

    invoke-static/range {v44 .. v44}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v42

    .line 2465
    .restart local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_11
    const/4 v6, 0x6

    move/from16 v0, v33

    if-gt v0, v6, :cond_1f

    invoke-static/range {v34 .. v34}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v36

    .line 2467
    .restart local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_12
    move-object/from16 v0, p2

    move/from16 v1, v38

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2468
    add-int v6, v38, v47

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-static {v0, v6, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2469
    move-object/from16 v0, p1

    move/from16 v1, v38

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2470
    const/16 v24, 0x1

    goto/16 :goto_c

    .line 2463
    .end local v36    # "hn":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_1d
    if-eqz v33, :cond_1e

    new-instance v42, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    goto :goto_11

    :cond_1e
    move-object/from16 v42, v58

    goto :goto_11

    .line 2465
    .restart local v42    # "ln":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_1f
    if-eqz v41, :cond_20

    new-instance v36, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_12

    :cond_20
    move-object/from16 v36, v58

    goto :goto_12
.end method

.method private final treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V
    .locals 18
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 2486
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 2487
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .local v16, "n":I
    const/16 v2, 0x40

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 2488
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .local v6, "sc":I
    if-ltz v6, :cond_0

    sget-object v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v7, -0x2

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2490
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2511
    .end local v6    # "sc":I
    .end local v16    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 2492
    .restart local v16    # "n":I
    :cond_1
    invoke-static/range {p1 .. p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v13

    .local v13, "b":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v13, :cond_0

    iget v2, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ltz v2, :cond_0

    .line 2493
    monitor-enter v13

    .line 2494
    :try_start_0
    invoke-static/range {p1 .. p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v2

    if-ne v2, v13, :cond_4

    .line 2495
    const/4 v15, 0x0

    .local v15, "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    const/16 v17, 0x0

    .line 2496
    .local v17, "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    move-object v14, v13

    .local v14, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_1
    if-eqz v14, :cond_3

    .line 2497
    new-instance v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    iget v8, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    iget-object v9, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    iget-object v10, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    .line 2500
    .local v7, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    move-object/from16 v0, v17

    iput-object v0, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->prev:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    if-nez v17, :cond_2

    .line 2501
    move-object v15, v7

    .line 2504
    :goto_2
    move-object/from16 v17, v7

    .line 2496
    iget-object v14, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_1

    .line 2503
    :cond_2
    move-object/from16 v0, v17

    iput-object v7, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_2

    .line 2508
    .end local v7    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v14    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v15    # "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v17    # "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2506
    .restart local v14    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v15    # "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .restart local v17    # "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :cond_3
    :try_start_1
    new-instance v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    invoke-direct {v2, v15}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)V

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2508
    .end local v14    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v15    # "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v17    # "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :cond_4
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private final tryPresize(I)V
    .locals 11
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/high16 v10, 0x40000000    # 2.0f

    .line 2297
    const/high16 v0, 0x20000000

    if-lt p1, v0, :cond_3

    move v6, v10

    .line 2300
    .local v6, "c":I
    :cond_0
    :goto_0
    iget v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .local v4, "sc":I
    if-ltz v4, :cond_6

    .line 2301
    iget-object v9, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2302
    .local v9, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v9, :cond_1

    array-length v7, v9

    .local v7, "n":I
    if-nez v7, :cond_5

    .line 2303
    .end local v7    # "n":I
    :cond_1
    if-le v4, v6, :cond_4

    move v7, v4

    .line 2304
    .restart local v7    # "n":I
    :goto_1
    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2306
    :try_start_0
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne v0, v9, :cond_2

    .line 2308
    new-array v8, v7, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    check-cast v8, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 2309
    .local v8, "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    iput-object v8, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    ushr-int/lit8 v0, v7, 0x2

    sub-int v4, v7, v0

    .line 2313
    .end local v8    # "nt":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_2
    iput v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    goto :goto_0

    .line 2297
    .end local v4    # "sc":I
    .end local v6    # "c":I
    .end local v7    # "n":I
    .end local v9    # "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_3
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tableSizeFor(I)I

    move-result v6

    goto :goto_0

    .restart local v4    # "sc":I
    .restart local v6    # "c":I
    .restart local v9    # "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_4
    move v7, v6

    .line 2303
    goto :goto_1

    .line 2313
    .restart local v7    # "n":I
    :catchall_0
    move-exception v0

    iput v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    throw v0

    .line 2317
    :cond_5
    if-le v6, v4, :cond_6

    if-lt v7, v10, :cond_7

    .line 2323
    .end local v7    # "n":I
    .end local v9    # "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_6
    return-void

    .line 2319
    .restart local v7    # "n":I
    .restart local v9    # "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_7
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne v9, v0, :cond_0

    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    const/4 v5, -0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_0
.end method

.method static untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;)",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2517
    .local p0, "b":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "hd":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/4 v3, 0x0

    .line 2518
    .local v3, "tl":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object v2, p0

    .local v2, "q":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 2519
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    iget v4, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    iget-object v5, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {v1, v4, v5, v6, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2520
    .local v1, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v3, :cond_0

    .line 2521
    move-object v0, v1

    .line 2524
    :goto_1
    move-object v3, v1

    .line 2518
    iget-object v2, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_0

    .line 2523
    :cond_0
    iput-object v1, v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_1

    .line 2526
    .end local v1    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_1
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 13
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v12, 0x0

    const/16 v9, 0x10

    .line 1388
    const/4 v6, 0x0

    .line 1389
    .local v6, "sshift":I
    const/4 v7, 0x1

    .line 1390
    .local v7, "ssize":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 1391
    add-int/lit8 v6, v6, 0x1

    .line 1392
    shl-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1394
    :cond_0
    rsub-int/lit8 v4, v6, 0x20

    .line 1395
    .local v4, "segmentShift":I
    add-int/lit8 v3, v7, -0x1

    .line 1396
    .local v3, "segmentMask":I
    new-array v5, v9, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;

    check-cast v5, [Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;

    .line 1398
    .local v5, "segments":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v9, v5

    if-ge v0, v9, :cond_1

    .line 1399
    new-instance v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;

    const/high16 v10, 0x3f400000    # 0.75f

    invoke-direct {v9, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Segment;-><init>(F)V

    aput-object v9, v5, v0

    .line 1398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1400
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v9

    const-string v10, "segments"

    invoke-virtual {v9, v10, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1401
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v9

    const-string v10, "segmentShift"

    invoke-virtual {v9, v10, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1402
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v9

    const-string v10, "segmentMask"

    invoke-virtual {v9, v10, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1403
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1406
    iget-object v8, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v8, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v8, :cond_2

    .line 1407
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v9, v8

    const/4 v10, 0x0

    array-length v11, v8

    invoke-direct {v1, v8, v9, v10, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1408
    .local v1, "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    :goto_2
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v2

    .local v2, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v2, :cond_2

    .line 1409
    iget-object v9, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1410
    iget-object v9, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 1413
    .end local v1    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .end local v2    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_2
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1414
    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1415
    const/4 v5, 0x0

    .line 1416
    return-void
.end method


# virtual methods
.method final batchFor(J)I
    .locals 7
    .param p1, "b"    # J

    .prologue
    .line 3430
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v3, p1, v4

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v0

    .local v0, "n":J
    const-wide/16 v4, 0x1

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    cmp-long v3, v0, p1

    if-gez v3, :cond_2

    .line 3431
    .end local v0    # "n":J
    :cond_0
    const/4 v2, 0x0

    .line 3433
    :cond_1
    :goto_0
    return v2

    .line 3432
    .restart local v0    # "n":J
    :cond_2
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v2, v3, 0x2

    .line 3433
    .local v2, "sp":I
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_1

    div-long/2addr v0, p1

    int-to-long v4, v2

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    long-to-int v2, v0

    goto :goto_0
.end method

.method public clear()V
    .locals 15

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v11, 0x0

    const/4 v14, -0x1

    .line 1179
    const-wide/16 v2, 0x0

    .line 1180
    .local v2, "delta":J
    const/4 v6, 0x0

    .line 1181
    .local v6, "i":I
    iget-object v9, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v9, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move v7, v6

    .line 1182
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_0
    if-eqz v9, :cond_5

    array-length v10, v9

    if-ge v7, v10, :cond_5

    .line 1184
    invoke-static {v9, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v4

    .line 1185
    .local v4, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v4, :cond_0

    .line 1186
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    :goto_1
    move v7, v6

    .line 1205
    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    .line 1187
    :cond_0
    iget v5, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v5, "fh":I
    if-ne v5, v14, :cond_1

    .line 1188
    invoke-virtual {p0, v9, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v9

    .line 1189
    const/4 v6, 0x0

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 1192
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_1
    monitor-enter v4

    .line 1193
    :try_start_0
    invoke-static {v9, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v10

    if-ne v10, v4, :cond_7

    .line 1194
    if-ltz v5, :cond_2

    move-object v8, v4

    .line 1197
    .local v8, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_2
    if-eqz v8, :cond_4

    .line 1198
    const-wide/16 v12, 0x1

    sub-long/2addr v2, v12

    .line 1199
    iget-object v8, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_2

    .line 1194
    .end local v8    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_2
    instance-of v10, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    if-eqz v10, :cond_3

    move-object v0, v4

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object v10, v0

    iget-object v8, v10, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    :cond_3
    move-object v8, v11

    goto :goto_2

    .line 1201
    .restart local v8    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v9, v7, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 1203
    .end local v8    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v10

    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1206
    .end local v4    # "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v5    # "fh":I
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_6

    .line 1207
    invoke-direct {p0, v2, v3, v14}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    .line 1208
    :cond_6
    return-void

    .line 1203
    .restart local v4    # "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v5    # "fh":I
    :catchall_1
    move-exception v10

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_4

    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_7
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_3
.end method

.method public compute(Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1828
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1829
    :cond_0
    new-instance v24, Ljava/lang/NullPointerException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/NullPointerException;-><init>()V

    throw v24

    .line 1830
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v11

    .line 1831
    .local v11, "h":I
    const/16 v23, 0x0

    .line 1832
    .local v23, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1833
    .local v5, "delta":I
    const/4 v4, 0x0

    .line 1834
    .local v4, "binCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v22, v0

    .local v22, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v24, v23

    .line 1836
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_0
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    array-length v13, v0

    .local v13, "n":I
    if-nez v13, :cond_4

    .line 1837
    .end local v13    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v22

    goto :goto_0

    .line 1838
    .restart local v13    # "n":I
    :cond_4
    add-int/lit8 v25, v13, -0x1

    and-int v12, v25, v11

    .local v12, "i":I
    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v9

    .local v9, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v9, :cond_8

    .line 1839
    new-instance v19, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;

    invoke-direct/range {v19 .. v19}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;-><init>()V

    .line 1840
    .local v19, "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    monitor-enter v19

    .line 1841
    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v25

    if-eqz v25, :cond_5

    .line 1842
    const/4 v4, 0x1

    .line 1843
    const/4 v15, 0x0

    .line 1845
    .local v15, "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/16 v24, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_17

    .line 1846
    const/4 v5, 0x1

    .line 1847
    new-instance v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v14, v11, v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    .end local v15    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local v14, "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_1
    :try_start_2
    move-object/from16 v0, v22

    invoke-static {v0, v12, v14}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v24, v23

    .line 1853
    .end local v14    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_5
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1854
    if-eqz v4, :cond_2

    .line 1927
    .end local v19    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 1928
    int-to-long v0, v5

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    .line 1929
    :cond_7
    return-object v24

    .line 1850
    .restart local v15    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v19    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :catchall_0
    move-exception v24

    :try_start_3
    move-object/from16 v0, v22

    invoke-static {v0, v12, v15}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    throw v24

    .line 1853
    .end local v15    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :catchall_1
    move-exception v24

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v24

    .line 1857
    .end local v19    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_8
    iget v10, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v10, "fh":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_9

    .line 1858
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v22

    goto :goto_0

    .line 1860
    :cond_9
    monitor-enter v9

    .line 1861
    :try_start_4
    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v25

    move-object/from16 v0, v25

    if-ne v0, v9, :cond_c

    .line 1862
    if-ltz v10, :cond_11

    .line 1863
    const/4 v4, 0x1

    .line 1864
    move-object v6, v9

    .local v6, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/16 v17, 0x0

    .line 1866
    .local v17, "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_3
    iget v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v11, :cond_f

    iget-object v7, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_a

    if-eqz v7, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1869
    :cond_a
    iget-object v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 1870
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_d

    .line 1871
    move-object/from16 v0, v23

    iput-object v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_b
    :goto_4
    move-object/from16 v24, v23

    .line 1919
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v17    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_c
    :goto_5
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1920
    if-eqz v4, :cond_2

    .line 1921
    const/16 v25, 0x8

    move/from16 v0, v25

    if-lt v4, v0, :cond_6

    .line 1922
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V

    goto :goto_2

    .line 1873
    .restart local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v17    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_d
    const/4 v5, -0x1

    .line 1874
    :try_start_5
    iget-object v8, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1875
    .local v8, "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v17, :cond_e

    .line 1876
    move-object/from16 v0, v17

    iput-object v8, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_4

    .line 1919
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v17    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :catchall_2
    move-exception v24

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v24

    .line 1878
    .restart local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v17    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_e
    :try_start_6
    move-object/from16 v0, v22

    invoke-static {v0, v12, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_4

    .line 1882
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_f
    move-object/from16 v17, v6

    .line 1883
    iget-object v6, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v6, :cond_10

    .line 1884
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 1885
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_b

    .line 1886
    const/4 v5, 0x1

    .line 1887
    new-instance v24, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-direct {v0, v11, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_4

    .line 1864
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1894
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v17    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_11
    instance-of v0, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 1895
    const/4 v4, 0x1

    .line 1896
    move-object v0, v9

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v21, v0

    .line 1898
    .local v21, "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    move-object/from16 v0, v21

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v20, v0

    .local v20, "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    if-eqz v20, :cond_12

    .line 1899
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v16

    .line 1902
    .local v16, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :goto_6
    if-nez v16, :cond_13

    const/16 v18, 0x0

    .line 1903
    .local v18, "pv":Ljava/lang/Object;, "TV;"
    :goto_7
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 1904
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v23, :cond_15

    .line 1905
    if-eqz v16, :cond_14

    .line 1906
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v24, v23

    goto/16 :goto_5

    .line 1901
    .end local v16    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v18    # "pv":Ljava/lang/Object;, "TV;"
    .end local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_12
    const/16 v16, 0x0

    .restart local v16    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    goto :goto_6

    .line 1902
    :cond_13
    move-object/from16 v0, v16

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v18, v0

    goto :goto_7

    .line 1908
    .restart local v18    # "pv":Ljava/lang/Object;, "TV;"
    .restart local v23    # "val":Ljava/lang/Object;, "TV;"
    :cond_14
    const/4 v5, 0x1

    .line 1909
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v24, v23

    goto/16 :goto_5

    .line 1912
    :cond_15
    if-eqz v16, :cond_16

    .line 1913
    const/4 v5, -0x1

    .line 1914
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->removeTreeNode(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 1915
    move-object/from16 v0, v21

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v12, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_16
    move-object/from16 v24, v23

    goto/16 :goto_5

    .end local v10    # "fh":I
    .end local v16    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v18    # "pv":Ljava/lang/Object;, "TV;"
    .end local v20    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v21    # "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    .restart local v15    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v19    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_17
    move-object v14, v15

    .end local v15    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v14    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    goto/16 :goto_1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1636
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<-TK;+TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1637
    :cond_0
    new-instance v22, Ljava/lang/NullPointerException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/NullPointerException;-><init>()V

    throw v22

    .line 1638
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v10

    .line 1639
    .local v10, "h":I
    const/16 v21, 0x0

    .line 1640
    .local v21, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1641
    .local v5, "binCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v20, v0

    .local v20, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v22, v21

    .line 1643
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_0
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    array-length v12, v0

    .local v12, "n":I
    if-nez v12, :cond_4

    .line 1644
    .end local v12    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v20

    goto :goto_0

    .line 1645
    .restart local v12    # "n":I
    :cond_4
    add-int/lit8 v23, v12, -0x1

    and-int v11, v23, v10

    .local v11, "i":I
    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v8

    .local v8, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v8, :cond_8

    .line 1646
    new-instance v17, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;

    invoke-direct/range {v17 .. v17}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReservationNode;-><init>()V

    .line 1647
    .local v17, "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    monitor-enter v17

    .line 1648
    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-static {v0, v11, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v23

    if-eqz v23, :cond_5

    .line 1649
    const/4 v5, 0x1

    .line 1650
    const/4 v14, 0x0

    .line 1652
    .local v14, "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_13

    .line 1653
    new-instance v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v13, v10, v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1655
    .end local v14    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local v13, "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_1
    :try_start_2
    move-object/from16 v0, v20

    invoke-static {v0, v11, v13}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v22, v21

    .line 1658
    .end local v13    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_5
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1659
    if-eqz v5, :cond_2

    .line 1711
    .end local v17    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_6
    if-eqz v22, :cond_7

    .line 1712
    const-wide/16 v24, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    .line 1713
    :cond_7
    :goto_2
    return-object v22

    .line 1655
    .restart local v14    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v17    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :catchall_0
    move-exception v22

    :try_start_3
    move-object/from16 v0, v20

    invoke-static {v0, v11, v14}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    throw v22

    .line 1658
    .end local v14    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :catchall_1
    move-exception v22

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22

    .line 1662
    .end local v17    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_8
    iget v9, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v9, "fh":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_9

    .line 1663
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v20

    goto :goto_0

    .line 1665
    :cond_9
    const/4 v4, 0x0

    .line 1666
    .local v4, "added":Z
    monitor-enter v8

    .line 1667
    :try_start_4
    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v0, v8, :cond_c

    .line 1668
    if-ltz v9, :cond_10

    .line 1669
    const/4 v5, 0x1

    .line 1670
    move-object v6, v8

    .line 1672
    .local v6, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_3
    iget v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_e

    iget-object v7, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_a

    if-eqz v7, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1675
    :cond_a
    iget-object v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    move-object/from16 v21, v0

    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_b
    :goto_4
    move-object/from16 v22, v21

    .line 1701
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_c
    :goto_5
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1702
    if-eqz v5, :cond_2

    .line 1703
    const/16 v23, 0x8

    move/from16 v0, v23

    if-lt v5, v0, :cond_d

    .line 1704
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V

    .line 1705
    :cond_d
    if-nez v4, :cond_6

    goto :goto_2

    .line 1678
    .restart local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_e
    move-object/from16 v16, v6

    .line 1679
    .local v16, "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :try_start_5
    iget-object v6, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v6, :cond_f

    .line 1680
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_b

    .line 1681
    const/4 v4, 0x1

    .line 1682
    new-instance v22, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-direct {v0, v10, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_4

    .line 1701
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v16    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :catchall_2
    move-exception v22

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v22

    .line 1670
    .restart local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v16    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1688
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v16    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_10
    :try_start_6
    instance-of v0, v8, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1689
    const/4 v5, 0x2

    .line 1690
    move-object v0, v8

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v19, v0

    .line 1692
    .local v19, "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    move-object/from16 v0, v19

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v18, v0

    .local v18, "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    if-eqz v18, :cond_11

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v15

    .local v15, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    if-eqz v15, :cond_11

    .line 1694
    iget-object v0, v15, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v21, v0

    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    move-object/from16 v22, v21

    goto :goto_5

    .line 1695
    .end local v15    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v21    # "val":Ljava/lang/Object;, "TV;"
    :cond_11
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .restart local v21    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v21, :cond_12

    .line 1696
    const/4 v4, 0x1

    .line 1697
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_12
    move-object/from16 v22, v21

    goto :goto_5

    .end local v4    # "added":Z
    .end local v9    # "fh":I
    .end local v18    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v19    # "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    .restart local v14    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v17    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_13
    move-object v13, v14

    .end local v14    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v13    # "node":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    goto/16 :goto_1
.end method

.method public computeIfPresent(Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1737
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1738
    :cond_0
    new-instance v20, Ljava/lang/NullPointerException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    throw v20

    .line 1739
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v11

    .line 1740
    .local v11, "h":I
    const/16 v19, 0x0

    .line 1741
    .local v19, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1742
    .local v5, "delta":I
    const/4 v4, 0x0

    .line 1743
    .local v4, "binCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v18, v0

    .line 1745
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    .local v18, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v13, v0

    .local v13, "n":I
    if-nez v13, :cond_4

    .line 1746
    .end local v13    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v18

    goto :goto_0

    .line 1747
    .restart local v13    # "n":I
    :cond_4
    add-int/lit8 v20, v13, -0x1

    and-int v12, v20, v11

    .local v12, "i":I
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v9

    .local v9, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v9, :cond_6

    .line 1801
    :goto_1
    if-eqz v5, :cond_5

    .line 1802
    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    .line 1803
    :cond_5
    return-object v19

    .line 1749
    :cond_6
    iget v10, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v10, "fh":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_7

    .line 1750
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v18

    goto :goto_0

    .line 1752
    :cond_7
    monitor-enter v9

    .line 1753
    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v9, :cond_9

    .line 1754
    if-ltz v10, :cond_d

    .line 1755
    const/4 v4, 0x1

    .line 1756
    move-object v6, v9

    .local v6, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/4 v15, 0x0

    .line 1758
    .local v15, "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_2
    iget v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v11, :cond_c

    iget-object v7, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_8

    if-eqz v7, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1761
    :cond_8
    iget-object v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1762
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_a

    .line 1763
    move-object/from16 v0, v19

    iput-object v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1796
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_9
    :goto_3
    monitor-exit v9

    .line 1797
    if-eqz v4, :cond_2

    goto :goto_1

    .line 1765
    .restart local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_a
    const/4 v5, -0x1

    .line 1766
    iget-object v8, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1767
    .local v8, "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v15, :cond_b

    .line 1768
    iput-object v8, v15, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_3

    .line 1796
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v20

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 1770
    .restart local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_b
    :try_start_1
    move-object/from16 v0, v18

    invoke-static {v0, v12, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_3

    .line 1774
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_c
    move-object v15, v6

    .line 1775
    iget-object v6, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v6, :cond_9

    .line 1756
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1779
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_d
    instance-of v0, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1780
    const/4 v4, 0x2

    .line 1781
    move-object v0, v9

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v17, v0

    .line 1783
    .local v17, "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v16, v0

    .local v16, "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v14

    .local v14, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_9

    .line 1785
    iget-object v0, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1786
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_e

    .line 1787
    move-object/from16 v0, v19

    iput-object v0, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    goto :goto_3

    .line 1789
    :cond_e
    const/4 v5, -0x1

    .line 1790
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->removeTreeNode(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1791
    move-object/from16 v0, v17

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2059
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 963
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v4, 0x0

    .line 977
    if-nez p1, :cond_0

    .line 978
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 980
    :cond_0
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v2, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v2, :cond_3

    .line 981
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v5, v2

    array-length v6, v2

    invoke-direct {v0, v2, v5, v4, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 982
    .local v0, "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    .local v1, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v1, :cond_3

    .line 984
    iget-object v3, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eq v3, p1, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 985
    :cond_2
    const/4 v4, 0x1

    .line 988
    .end local v0    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .end local v1    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    return v4
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v3, 0x0

    .line 2082
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v1, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v1, :cond_0

    move v2, v3

    .line 2083
    .local v2, "f":I
    :goto_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValueIterator;

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValueIterator;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;IIILio/netty/util/internal/chmv8/ConcurrentHashMapV8;)V

    return-object v0

    .line 2082
    .end local v2    # "f":I
    :cond_0
    array-length v2, v1

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1275
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->entrySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;

    .local v0, "es":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView<TK;TV;>;"
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;

    .end local v0    # "es":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView<TK;TV;>;"
    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;)V

    iput-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->entrySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$EntrySetView;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v11, 0x0

    .line 1340
    if-eq p1, p0, :cond_6

    .line 1341
    instance-of v12, p1, Ljava/util/Map;

    if-nez v12, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return v11

    :cond_1
    move-object v4, p1

    .line 1343
    check-cast v4, Ljava/util/Map;

    .line 1345
    .local v4, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v8, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v8, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v8, :cond_3

    move v1, v11

    .line 1346
    .local v1, "f":I
    :goto_1
    new-instance v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    invoke-direct {v3, v8, v1, v11, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1347
    .local v3, "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    :cond_2
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v7

    .local v7, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v7, :cond_4

    .line 1348
    iget-object v10, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1349
    .local v10, "val":Ljava/lang/Object;, "TV;"
    iget-object v12, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1350
    .local v9, "v":Ljava/lang/Object;
    if-eqz v9, :cond_0

    if-eq v9, v10, :cond_2

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    .line 1345
    .end local v1    # "f":I
    .end local v3    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .end local v7    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;
    .end local v10    # "val":Ljava/lang/Object;, "TV;"
    :cond_3
    array-length v1, v8

    goto :goto_1

    .line 1353
    .restart local v1    # "f":I
    .restart local v3    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .restart local v7    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1355
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .local v5, "mk":Ljava/lang/Object;
    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "mv":Ljava/lang/Object;
    if-eqz v6, :cond_0

    invoke-virtual {p0, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "v":Ljava/lang/Object;
    if-eqz v9, :cond_0

    if-eq v6, v9, :cond_5

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    .line 1362
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "f":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .end local v4    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v5    # "mk":Ljava/lang/Object;
    .end local v6    # "mv":Ljava/lang/Object;
    .end local v7    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v8    # "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v9    # "v":Ljava/lang/Object;
    :cond_6
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public forEach(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;)V
    .locals 7
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction<-TK;-TV;>;"
    const/4 v3, 0x0

    .line 3446
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3447
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachMappingTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachMappingTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachMappingTask;->invoke()Ljava/lang/Object;

    .line 3450
    return-void
.end method

.method public forEach(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TK;-TV;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TK;-TV;+TU;>;"
    .local p4, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<-TU;>;"
    const/4 v3, 0x0

    .line 3467
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 3468
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3469
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedMappingTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedMappingTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    .line 3472
    return-void
.end method

.method public forEach(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1584
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction<-TK;-TV;>;"
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1586
    :cond_0
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v2, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v2, :cond_1

    .line 1587
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v0, v2, v3, v4, v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1588
    .local v0, "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v1

    .local v1, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v1, :cond_1

    .line 1589
    iget-object v3, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    iget-object v4, v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiAction;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1592
    .end local v0    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .end local v1    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public forEachEntry(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 7
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v3, 0x0

    .line 3976
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3977
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachEntryTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachEntryTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachEntryTask;->invoke()Ljava/lang/Object;

    .line 3979
    return-void
.end method

.method public forEachEntry(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<-TU;>;"
    const/4 v3, 0x0

    .line 3996
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 3997
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3998
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedEntryTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedEntryTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    .line 4001
    return-void
.end method

.method public forEachKey(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 7
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<-TK;>;"
    const/4 v3, 0x0

    .line 3610
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3611
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachKeyTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachKeyTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachKeyTask;->invoke()Ljava/lang/Object;

    .line 3614
    return-void
.end method

.method public forEachKey(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<-TK;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<-TK;+TU;>;"
    .local p4, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<-TU;>;"
    const/4 v3, 0x0

    .line 3631
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 3632
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3633
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedKeyTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedKeyTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    .line 3636
    return-void
.end method

.method public forEachValue(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 7
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<-TV;>;"
    const/4 v3, 0x0

    .line 3793
    if-nez p3, :cond_0

    .line 3794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3795
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachValueTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachValueTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachValueTask;->invoke()Ljava/lang/Object;

    .line 3798
    return-void
.end method

.method public forEachValue(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<-TV;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action",
            "<-TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<-TV;+TU;>;"
    .local p4, "action":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action<-TU;>;"
    const/4 v3, 0x0

    .line 3815
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 3816
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3817
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedValueTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedValueTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Action;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    .line 3820
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v7, 0x0

    .line 935
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v3

    .line 936
    .local v3, "h":I
    iget-object v6, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v6, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v6, :cond_1

    array-length v4, v6

    .local v4, "n":I
    if-lez v4, :cond_1

    add-int/lit8 v8, v4, -0x1

    and-int/2addr v8, v3

    invoke-static {v6, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v0

    .local v0, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 938
    iget v1, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v1, "eh":I
    if-ne v1, v3, :cond_2

    .line 939
    iget-object v2, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .local v2, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_0

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 940
    :cond_0
    iget-object v7, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 950
    .end local v0    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v1    # "eh":I
    .end local v2    # "ek":Ljava/lang/Object;, "TK;"
    .end local v4    # "n":I
    :cond_1
    :goto_0
    return-object v7

    .line 942
    .restart local v0    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v1    # "eh":I
    .restart local v4    # "n":I
    :cond_2
    if-gez v1, :cond_3

    .line 943
    invoke-virtual {v0, v3, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->find(ILjava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v5

    .local v5, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v5, :cond_1

    iget-object v7, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    goto :goto_0

    .line 944
    .end local v5    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_3
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-eqz v0, :cond_1

    .line 945
    iget v8, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    if-ne v8, v3, :cond_3

    iget-object v2, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .restart local v2    # "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 947
    :cond_4
    iget-object v7, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1580
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 1286
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v0, 0x0

    .line 1288
    .local v0, "h":I
    iget-object v3, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v3, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 1289
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v4, v3

    const/4 v5, 0x0

    array-length v6, v3

    invoke-direct {v1, v3, v4, v5, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1290
    .local v1, "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    :goto_0
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v2

    .local v2, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v2, :cond_0

    .line 1291
    iget-object v4, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v5, v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_0

    .line 1293
    .end local v1    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .end local v2    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_0
    return v0
.end method

.method final helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;)[",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2280
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .local p2, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    instance-of v0, p2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;

    if-eqz v0, :cond_1

    check-cast p2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;

    .end local p2    # "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    iget-object v6, p2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ForwardingNode;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v6, "nextTab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v6, :cond_1

    .line 2282
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->nextTable:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne v6, v0, :cond_0

    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferIndex:I

    iget v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transferOrigin:I

    if-le v0, v1, :cond_0

    iget v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sizeCtl:I

    .local v4, "sc":I
    const/4 v0, -0x1

    if-ge v4, v0, :cond_0

    sget-object v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->SIZECTL:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2285
    invoke-direct {p0, p1, v6}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->transfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    .line 2288
    .end local v4    # "sc":I
    .end local v6    # "nextTab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v6, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 919
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1230
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->keySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    .local v0, "ks":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<TK;TV;>;"
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    .end local v0    # "ks":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView<TK;TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->keySet:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    goto :goto_0
.end method

.method public keySet(Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2143
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "mappedValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 2144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2145
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->keySet()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeySetView;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v3, 0x0

    .line 2070
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v1, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v1, :cond_0

    move v2, v3

    .line 2071
    .local v2, "f":I
    :goto_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeyIterator;

    move v4, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$KeyIterator;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;IIILio/netty/util/internal/chmv8/ConcurrentHashMapV8;)V

    return-object v0

    .line 2070
    .end local v2    # "f":I
    :cond_0
    array-length v2, v1

    goto :goto_0
.end method

.method public mappingCount()J
    .locals 5

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 2099
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v0

    .line 2100
    .local v0, "n":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "n":J
    :cond_0
    return-wide v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1953
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TV;-TV;+TV;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1954
    :cond_0
    new-instance v20, Ljava/lang/NullPointerException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    throw v20

    .line 1955
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v11

    .line 1956
    .local v11, "h":I
    const/16 v19, 0x0

    .line 1957
    .local v19, "val":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 1958
    .local v5, "delta":I
    const/4 v4, 0x0

    .line 1959
    .local v4, "binCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v18, v0

    .local v18, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    move-object/from16 v20, v19

    .line 1961
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    array-length v13, v0

    .local v13, "n":I
    if-nez v13, :cond_4

    .line 1962
    .end local v13    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v18

    goto :goto_0

    .line 1963
    .restart local v13    # "n":I
    :cond_4
    add-int/lit8 v21, v13, -0x1

    and-int v12, v21, v11

    .local v12, "i":I
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v9

    .local v9, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v9, :cond_7

    .line 1964
    const/16 v21, 0x0

    new-instance v22, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v11, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v12, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1965
    const/4 v5, 0x1

    .line 1966
    move-object/from16 v19, p2

    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    move-object/from16 v20, v19

    .line 2036
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    .line 2037
    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    .line 2038
    :cond_6
    return-object v20

    .line 1970
    :cond_7
    iget v10, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v10, "fh":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_8

    .line 1971
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v18

    goto :goto_0

    .line 1973
    :cond_8
    monitor-enter v9

    .line 1974
    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v21

    move-object/from16 v0, v21

    if-ne v0, v9, :cond_a

    .line 1975
    if-ltz v10, :cond_f

    .line 1976
    const/4 v4, 0x1

    .line 1977
    move-object v6, v9

    .local v6, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/4 v15, 0x0

    .line 1979
    .local v15, "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_2
    iget v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v11, :cond_d

    iget-object v7, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_9

    if-eqz v7, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1982
    :cond_9
    iget-object v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1983
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    if-eqz v19, :cond_b

    .line 1984
    move-object/from16 v0, v19

    iput-object v0, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :goto_3
    move-object/from16 v20, v19

    .line 2028
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_a
    :goto_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    if-eqz v4, :cond_2

    .line 2030
    const/16 v21, 0x8

    move/from16 v0, v21

    if-lt v4, v0, :cond_5

    .line 2031
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V

    goto :goto_1

    .line 1986
    .restart local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_b
    const/4 v5, -0x1

    .line 1987
    :try_start_1
    iget-object v8, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1988
    .local v8, "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v15, :cond_c

    .line 1989
    iput-object v8, v15, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_3

    .line 2028
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v20

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 1991
    .restart local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v7    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_c
    :try_start_2
    move-object/from16 v0, v18

    invoke-static {v0, v12, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_3

    .line 1995
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v8    # "en":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_d
    move-object v15, v6

    .line 1996
    iget-object v6, v6, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v6, :cond_e

    .line 1997
    const/4 v5, 0x1

    .line 1998
    move-object/from16 v19, p2

    .line 1999
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    new-instance v20, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v0, v11, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v0, v20

    iput-object v0, v15, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_3

    .line 1977
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2005
    .end local v6    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v15    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_f
    instance-of v0, v9, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 2006
    const/4 v4, 0x2

    .line 2007
    move-object v0, v9

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v17, v0

    .line 2008
    .local v17, "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v16, v0

    .line 2009
    .local v16, "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    if-nez v16, :cond_10

    const/4 v14, 0x0

    .line 2011
    .local v14, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :goto_5
    if-nez v14, :cond_11

    move-object/from16 v19, p2

    .line 2013
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :goto_6
    if-eqz v19, :cond_13

    .line 2014
    if-eqz v14, :cond_12

    .line 2015
    move-object/from16 v0, v19

    iput-object v0, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v19

    goto :goto_4

    .line 2009
    .end local v14    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_10
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v14

    goto :goto_5

    .line 2011
    .restart local v14    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    :cond_11
    iget-object v0, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_6

    .line 2017
    .restart local v19    # "val":Ljava/lang/Object;, "TV;"
    :cond_12
    const/4 v5, 0x1

    .line 2018
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v20, v19

    goto/16 :goto_4

    .line 2021
    :cond_13
    if-eqz v14, :cond_14

    .line 2022
    const/4 v5, -0x1

    .line 2023
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->removeTreeNode(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 2024
    move-object/from16 v0, v17

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_14
    move-object/from16 v20, v19

    goto/16 :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1081
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tryPresize(I)V

    .line 1082
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1083
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    .line 1084
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1527
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 19
    .param p3, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v16, Ljava/lang/NullPointerException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    .line 1011
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v9

    .line 1012
    .local v9, "hash":I
    const/4 v4, 0x0

    .line 1013
    .local v4, "binCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .line 1015
    .local v15, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_2
    :goto_0
    if-eqz v15, :cond_3

    array-length v11, v15

    .local v11, "n":I
    if-nez v11, :cond_4

    .line 1016
    .end local v11    # "n":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->initTable()[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v15

    goto :goto_0

    .line 1017
    .restart local v11    # "n":I
    :cond_4
    add-int/lit8 v16, v11, -0x1

    and-int v10, v16, v9

    .local v10, "i":I
    invoke-static {v15, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v7

    .local v7, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v7, :cond_6

    .line 1018
    const/16 v16, 0x0

    new-instance v17, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v9, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v10, v0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->casTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1069
    :cond_5
    const-wide/16 v16, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v4}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    .line 1070
    const/16 v16, 0x0

    :goto_1
    return-object v16

    .line 1022
    :cond_6
    iget v8, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v8, "fh":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_7

    .line 1023
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v15

    goto :goto_0

    .line 1025
    :cond_7
    const/4 v12, 0x0

    .line 1026
    .local v12, "oldVal":Ljava/lang/Object;, "TV;"
    monitor-enter v7

    .line 1027
    :try_start_0
    invoke-static {v15, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v0, v7, :cond_f

    .line 1028
    if-ltz v8, :cond_d

    .line 1029
    const/4 v4, 0x1

    .line 1030
    move-object v5, v7

    .line 1032
    .local v5, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_2
    iget v0, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v9, :cond_b

    iget-object v6, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .local v6, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v6, v0, :cond_8

    if-eqz v6, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1035
    :cond_8
    iget-object v12, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1036
    if-nez p3, :cond_9

    .line 1037
    move-object/from16 v0, p2

    iput-object v0, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .end local v6    # "ek":Ljava/lang/Object;, "TK;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_9
    :goto_3
    move-object/from16 v16, v12

    .line 1059
    .end local v5    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    if-eqz v4, :cond_2

    .line 1061
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v4, v0, :cond_a

    .line 1062
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->treeifyBin([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)V

    .line 1063
    :cond_a
    if-eqz v16, :cond_5

    goto :goto_1

    .line 1040
    .restart local v5    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_b
    move-object v14, v5

    .line 1041
    .local v14, "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :try_start_1
    iget-object v5, v5, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v5, :cond_c

    .line 1042
    new-instance v16, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v9, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    move-object/from16 v0, v16

    iput-object v0, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_3

    .line 1059
    .end local v5    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v14    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :catchall_0
    move-exception v16

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 1030
    .restart local v5    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v14    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1048
    .end local v5    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v14    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_d
    :try_start_2
    instance-of v0, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 1050
    const/4 v4, 0x2

    .line 1051
    move-object v0, v7

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v9, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v13

    .local v13, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v13, :cond_f

    .line 1053
    iget-object v12, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1054
    if-nez p3, :cond_e

    .line 1055
    move-object/from16 v0, p2

    iput-object v0, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    move-object/from16 v16, v12

    goto :goto_4

    .end local v13    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_f
    move-object/from16 v16, v12

    goto :goto_4
.end method

.method public reduce(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TK;-TV;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TK;-TV;+TU;>;"
    .local p4, "reducer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TU;-TU;+TU;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3515
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 3516
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3517
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceEntries(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p4, "reducer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TU;-TU;+TU;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4062
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 4063
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4064
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceEntries(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/util/Map$Entry;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "reducer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<Ljava/util/Map$Entry<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;+Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4038
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4039
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public reduceEntriesToDouble(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)D
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;D",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;",
            ")D"
        }
    .end annotation

    .prologue
    .line 4088
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 4089
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4090
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceEntriesToInt(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)I
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4140
    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 4141
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4142
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceEntriesToLong(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)J
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;",
            ")J"
        }
    .end annotation

    .prologue
    .line 4114
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 4115
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4116
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceKeys(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TK;-TK;+TK;>;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "reducer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TK;-TK;+TK;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3674
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3675
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceKeys(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<-TK;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<-TK;+TU;>;"
    .local p4, "reducer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TU;-TU;+TU;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3698
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 3699
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3700
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceKeysToDouble(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)D
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble",
            "<-TK;>;D",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;",
            ")D"
        }
    .end annotation

    .prologue
    .line 3724
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble<-TK;>;"
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 3725
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3726
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceKeysToInt(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)I
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt",
            "<-TK;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt<-TK;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3776
    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 3777
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3778
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceKeysToLong(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)J
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong",
            "<-TK;>;J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;",
            ")J"
        }
    .end annotation

    .prologue
    .line 3750
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong<-TK;>;"
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 3751
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3752
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceToDouble(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)D
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble",
            "<-TK;-TV;>;D",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;",
            ")D"
        }
    .end annotation

    .prologue
    .line 3541
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble<-TK;-TV;>;"
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 3542
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3543
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceToInt(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)I
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt",
            "<-TK;-TV;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt<-TK;-TV;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3593
    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 3594
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3595
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceToLong(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)J
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong",
            "<-TK;-TV;>;J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;",
            ")J"
        }
    .end annotation

    .prologue
    .line 3567
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong<-TK;-TV;>;"
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 3568
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3569
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectByObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public reduceValues(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "reducer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TV;-TV;+TV;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3857
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3858
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceValues(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<-TV;+TU;>;",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TU;-TU;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<-TV;+TU;>;"
    .local p4, "reducer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TU;-TU;+TU;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3881
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 3882
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3883
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceValuesToDouble(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)D
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # D
    .param p6, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble",
            "<-TV;>;D",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;",
            ")D"
        }
    .end annotation

    .prologue
    .line 3907
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble<-TV;>;"
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 3908
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3909
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToDouble;DLio/netty/util/internal/chmv8/ConcurrentHashMapV8$DoubleByDoubleToDouble;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reduceValuesToInt(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)I
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # I
    .param p5, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt",
            "<-TV;>;I",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt<-TV;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3959
    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 3960
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3961
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move v4, v3

    move-object v6, v1

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToInt;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$IntByIntToInt;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public reduceValuesToLong(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)J
    .locals 11
    .param p1, "parallelismThreshold"    # J
    .param p4, "basis"    # J
    .param p6, "reducer"    # Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong",
            "<-TV;>;J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;",
            ")J"
        }
    .end annotation

    .prologue
    .line 3933
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "transformer":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong<-TV;>;"
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 3934
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3935
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    const/4 v6, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ObjectToLong;JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$LongByLongToLong;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v0, 0x0

    .line 1096
    invoke-virtual {p0, p1, v0, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1536
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    if-nez p1, :cond_0

    .line 1537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1538
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1560
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1561
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1562
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1547
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1548
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1549
    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replaceAll(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1595
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p1, "function":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TK;-TV;+TV;>;"
    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1597
    :cond_0
    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v5, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v5, :cond_4

    .line 1598
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    array-length v6, v5

    const/4 v7, 0x0

    array-length v8, v5

    invoke-direct {v0, v5, v6, v7, v8}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1599
    .local v0, "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v4

    .local v4, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v4, :cond_4

    .line 1600
    iget-object v3, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1601
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .line 1602
    .local v1, "key":Ljava/lang/Object;, "TK;"
    :cond_2
    invoke-interface {p1, v1, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1603
    .local v2, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_3

    .line 1604
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1605
    :cond_3
    invoke-virtual {p0, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1611
    .end local v0    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "newValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_4
    return-void
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1, "key"    # Ljava/lang/Object;
    .param p3, "cv"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->spread(I)I

    move-result v9

    .line 1106
    .local v9, "hash":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v18, v0

    .line 1108
    .local v18, "tab":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    array-length v11, v0

    .local v11, "n":I
    if-eqz v11, :cond_1

    add-int/lit8 v20, v11, -0x1

    and-int v10, v20, v9

    .local v10, "i":I
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v7

    .local v7, "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v7, :cond_3

    .line 1172
    .end local v7    # "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v10    # "i":I
    .end local v11    # "n":I
    :cond_1
    const/16 v20, 0x0

    :cond_2
    :goto_1
    return-object v20

    .line 1111
    .restart local v7    # "f":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v10    # "i":I
    .restart local v11    # "n":I
    :cond_3
    iget v8, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    .local v8, "fh":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_4

    .line 1112
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->helpTransfer([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v18

    goto :goto_0

    .line 1114
    :cond_4
    const/4 v12, 0x0

    .line 1115
    .local v12, "oldVal":Ljava/lang/Object;, "TV;"
    const/16 v19, 0x0

    .line 1116
    .local v19, "validated":Z
    monitor-enter v7

    .line 1117
    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->tabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;I)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v7, :cond_10

    .line 1118
    if-ltz v8, :cond_c

    .line 1119
    const/16 v19, 0x1

    .line 1120
    move-object v4, v7

    .local v4, "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    const/4 v14, 0x0

    .line 1122
    .local v14, "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_5
    iget v0, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->hash:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v9, :cond_b

    iget-object v5, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .local v5, "ek":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p1

    if-eq v5, v0, :cond_6

    if-eqz v5, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1125
    :cond_6
    iget-object v6, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1126
    .local v6, "ev":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    if-eq v0, v6, :cond_7

    if-eqz v6, :cond_8

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1128
    :cond_7
    move-object v12, v6

    .line 1129
    if-eqz p2, :cond_9

    .line 1130
    move-object/from16 v0, p2

    iput-object v0, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_8
    :goto_2
    move-object/from16 v20, v12

    .line 1161
    .end local v4    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v14    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    if-eqz v19, :cond_0

    .line 1163
    if-eqz v20, :cond_1

    .line 1164
    if-nez p2, :cond_2

    .line 1165
    const-wide/16 v22, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->addCount(JI)V

    goto :goto_1

    .line 1131
    .restart local v4    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v14    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_9
    if-eqz v14, :cond_a

    .line 1132
    :try_start_1
    iget-object v0, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v14, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    goto :goto_2

    .line 1161
    .end local v4    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v14    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :catchall_0
    move-exception v20

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 1134
    .restart local v4    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v5    # "ek":Ljava/lang/Object;, "TK;"
    .restart local v6    # "ev":Ljava/lang/Object;, "TV;"
    .restart local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .restart local v14    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_a
    :try_start_2
    iget-object v0, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V

    goto :goto_2

    .line 1138
    .end local v5    # "ek":Ljava/lang/Object;, "TK;"
    .end local v6    # "ev":Ljava/lang/Object;, "TV;"
    :cond_b
    move-object v14, v4

    .line 1139
    iget-object v4, v4, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->next:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    if-nez v4, :cond_5

    goto :goto_2

    .line 1143
    .end local v4    # "e":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v14    # "pred":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    :cond_c
    instance-of v0, v7, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 1144
    const/16 v19, 0x1

    .line 1145
    move-object v0, v7

    check-cast v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;

    move-object/from16 v17, v0

    .line 1147
    .local v17, "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->root:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v16, v0

    .local v16, "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_10

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v1, v2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-result-object v13

    .local v13, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    if-eqz v13, :cond_10

    .line 1149
    iget-object v15, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    .line 1150
    .local v15, "pv":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_d

    move-object/from16 v0, p3

    if-eq v0, v15, :cond_d

    if-eqz v15, :cond_10

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1152
    :cond_d
    move-object v12, v15

    .line 1153
    if-eqz p2, :cond_e

    .line 1154
    move-object/from16 v0, p2

    iput-object v0, v13, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;->val:Ljava/lang/Object;

    move-object/from16 v20, v12

    goto :goto_3

    .line 1155
    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->removeTreeNode(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1156
    move-object/from16 v0, v17

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;->first:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->untreeify(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->setTabAt([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;ILio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_f
    move-object/from16 v20, v12

    goto/16 :goto_3

    .end local v13    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v15    # "pv":Ljava/lang/Object;, "TV;"
    .end local v16    # "r":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeNode<TK;TV;>;"
    .end local v17    # "t":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$TreeBin<TK;TV;>;"
    :cond_10
    move-object/from16 v20, v12

    goto/16 :goto_3
.end method

.method public search(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun",
            "<-TK;-TV;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "searchFunction":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun<-TK;-TV;+TU;>;"
    const/4 v3, 0x0

    .line 3491
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3492
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchMappingsTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchMappingsTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BiFun;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchEntries(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "searchFunction":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    const/4 v3, 0x0

    .line 4020
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4021
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchEntriesTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchEntriesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchKeys(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<-TK;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "searchFunction":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<-TK;+TU;>;"
    const/4 v3, 0x0

    .line 3655
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3656
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchKeysTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchKeysTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchKeysTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public searchValues(JLio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;)Ljava/lang/Object;
    .locals 9
    .param p1, "parallelismThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(J",
            "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun",
            "<-TV;+TU;>;)TU;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    .local p3, "searchFunction":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun<-TV;+TU;>;"
    const/4 v3, 0x0

    .line 3839
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3840
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchValuesTask;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move v4, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchValuesTask;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$BulkTask;III[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Fun;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$SearchValuesTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 909
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->sumCount()J

    move-result-wide v0

    .line 910
    .local v0, "n":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method final sumCount()J
    .locals 8

    .prologue
    .line 6036
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->counterCells:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;

    .line 6037
    .local v1, "as":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    iget-wide v4, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->baseCount:J

    .line 6038
    .local v4, "sum":J
    if-eqz v1, :cond_1

    .line 6039
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 6040
    aget-object v0, v1, v2

    .local v0, "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    if-eqz v0, :cond_0

    .line 6041
    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;->value:J

    add-long/2addr v4, v6

    .line 6039
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6044
    .end local v0    # "a":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$CounterCell;
    .end local v2    # "i":I
    :cond_1
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    const/4 v7, 0x0

    .line 1309
    iget-object v5, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->table:[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    .local v5, "t":[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "[Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-nez v5, :cond_3

    move v0, v7

    .line 1310
    .local v0, "f":I
    :goto_0
    new-instance v1, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;

    invoke-direct {v1, v5, v0, v7, v0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;-><init>([Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;III)V

    .line 1311
    .local v1, "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1312
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v7, 0x7b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v3

    .local v3, "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    if-eqz v3, :cond_2

    .line 1316
    :goto_1
    iget-object v2, v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->key:Ljava/lang/Object;

    .line 1317
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget-object v6, v3, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;->val:Ljava/lang/Object;

    .line 1318
    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-ne v2, p0, :cond_0

    const-string v2, "(this Map)"

    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1319
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1320
    if-ne v6, p0, :cond_1

    const-string v6, "(this Map)"

    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;->advance()Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1326
    :cond_2
    const/16 v7, 0x7d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1309
    .end local v0    # "f":I
    .end local v1    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .end local v3    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    array-length v0, v5

    goto :goto_0

    .line 1323
    .restart local v0    # "f":I
    .restart local v1    # "it":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Traverser<TK;TV;>;"
    .restart local v3    # "p":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$Node<TK;TV;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1253
    .local p0, "this":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8<TK;TV;>;"
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->values:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;

    .local v0, "vs":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView<TK;TV;>;"
    :cond_0
    new-instance v0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;

    .end local v0    # "vs":Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;, "Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView<TK;TV;>;"
    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;-><init>(Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;)V

    iput-object v0, p0, Lio/netty/util/internal/chmv8/ConcurrentHashMapV8;->values:Lio/netty/util/internal/chmv8/ConcurrentHashMapV8$ValuesView;

    goto :goto_0
.end method
