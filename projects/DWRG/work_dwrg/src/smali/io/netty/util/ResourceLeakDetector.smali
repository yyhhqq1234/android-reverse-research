.class public final Lio/netty/util/ResourceLeakDetector;
.super Ljava/lang/Object;
.source "ResourceLeakDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;,
        Lio/netty/util/ResourceLeakDetector$Level;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x71

.field private static final PROP_LEVEL:Ljava/lang/String; = "io.netty.leakDetectionLevel"

.field private static final STACK_TRACE_ELEMENT_EXCLUSIONS:[Ljava/lang/String;

.field private static level:Lio/netty/util/ResourceLeakDetector$Level;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private active:J

.field private final head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector",
            "<TT;>.DefaultResource",
            "Leak;"
        }
    .end annotation
.end field

.field private leakCheckCnt:J

.field private final loggedTooManyActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final maxActive:J

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final reportedLeaks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceType:Ljava/lang/String;

.field private final samplingInterval:I

.field private final tail:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector",
            "<TT;>.DefaultResource",
            "Leak;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 37
    sget-object v5, Lio/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;

    sput-object v5, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    .line 66
    const-class v5, Lio/netty/util/ResourceLeakDetector;

    invoke-static {v5}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v5

    sput-object v5, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 70
    const-string v5, "io.netty.noResourceLeakDetection"

    invoke-static {v5}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 71
    const-string v5, "io.netty.noResourceLeakDetection"

    invoke-static {v5, v9}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 72
    .local v1, "disabled":Z
    sget-object v5, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "-Dio.netty.noResourceLeakDetection: {}"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v5, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 74
    const-string v6, "-Dio.netty.noResourceLeakDetection is deprecated. Use \'-D{}={}\' instead."

    .line 75
    const-string v7, "io.netty.leakDetectionLevel"

    sget-object v8, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v8}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-interface {v5, v6, v7, v8}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    .line 81
    .local v0, "defaultLevel":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    :goto_1
    const-string v5, "io.netty.leakDetectionLevel"

    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "levelStr":Ljava/lang/String;
    sget-object v3, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    .line 83
    .local v3, "level":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    const-class v5, Lio/netty/util/ResourceLeakDetector$Level;

    invoke-static {v5}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 89
    sput-object v3, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    .line 90
    sget-object v5, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    sget-object v5, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "-D{}: {}"

    const-string v7, "io.netty.leakDetectionLevel"

    invoke-virtual {v3}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 356
    const-string v6, "io.netty.buffer.AbstractByteBufAllocator.toLeakAwareBuffer("

    aput-object v6, v5, v9

    .line 355
    sput-object v5, Lio/netty/util/ResourceLeakDetector;->STACK_TRACE_ELEMENT_EXCLUSIONS:[Ljava/lang/String;

    .line 357
    return-void

    .line 77
    .end local v0    # "defaultLevel":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    .end local v1    # "disabled":Z
    .end local v3    # "level":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    .end local v4    # "levelStr":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "disabled":Z
    goto :goto_0

    .line 80
    :cond_3
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    goto :goto_1

    .line 83
    .restart local v0    # "defaultLevel":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    .restart local v3    # "level":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    .restart local v4    # "levelStr":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/ResourceLeakDetector$Level;

    .line 84
    .local v2, "l":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    invoke-virtual {v2}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    :cond_5
    move-object v3, v2

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "resourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IJ)V
    .locals 1
    .param p2, "samplingInterval"    # I
    .param p3, "maxActive"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IJ)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "resourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;IJ)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 149
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    const/16 v0, 0x71

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v2, v3}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;IJ)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "resourceType"    # Ljava/lang/String;
    .param p2, "samplingInterval"    # I
    .param p3, "maxActive"    # J

    .prologue
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-direct {v0, p0, v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 131
    new-instance v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-direct {v0, p0, v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->tail:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 133
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 134
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->reportedLeaks:Ljava/util/concurrent/ConcurrentMap;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->loggedTooManyActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resourceType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    if-gtz p2, :cond_1

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "samplingInterval: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxActive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    .line 168
    iput p2, p0, Lio/netty/util/ResourceLeakDetector;->samplingInterval:I

    .line 169
    iput-wide p3, p0, Lio/netty/util/ResourceLeakDetector;->maxActive:J

    .line 171
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector;->head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iget-object v1, p0, Lio/netty/util/ResourceLeakDetector;->tail:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-static {v0, v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->access$0(Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;)V

    .line 172
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector;->tail:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iget-object v1, p0, Lio/netty/util/ResourceLeakDetector;->head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-static {v0, v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->access$1(Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;)V

    .line 173
    return-void
.end method

.method static synthetic access$0(Lio/netty/util/ResourceLeakDetector;)Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$1(Lio/netty/util/ResourceLeakDetector;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector;->head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    return-object v0
.end method

.method static synthetic access$2(Lio/netty/util/ResourceLeakDetector;)J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lio/netty/util/ResourceLeakDetector;->active:J

    return-wide v0
.end method

.method static synthetic access$3(Lio/netty/util/ResourceLeakDetector;J)V
    .locals 1

    .prologue
    .line 139
    iput-wide p1, p0, Lio/netty/util/ResourceLeakDetector;->active:J

    return-void
.end method

.method public static getLevel()Lio/netty/util/ResourceLeakDetector$Level;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->getLevel()Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v0

    sget-object v1, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newRecord(I)Ljava/lang/String;
    .locals 13
    .param p0, "recordsToSkip"    # I

    .prologue
    const/4 v7, 0x0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x1000

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    .local v1, "buf":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 362
    .local v0, "array":[Ljava/lang/StackTraceElement;
    array-length v9, v0

    move v8, v7

    :goto_0
    if-lt v8, v9, :cond_0

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 362
    :cond_0
    aget-object v2, v0, v8

    .line 363
    .local v2, "e":Ljava/lang/StackTraceElement;
    if-lez p0, :cond_2

    .line 364
    add-int/lit8 p0, p0, -0x1

    .line 362
    :cond_1
    :goto_1
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "estr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 370
    .local v4, "excluded":Z
    sget-object v10, Lio/netty/util/ResourceLeakDetector;->STACK_TRACE_ELEMENT_EXCLUSIONS:[Ljava/lang/String;

    array-length v11, v10

    move v6, v7

    :goto_2
    if-lt v6, v11, :cond_3

    .line 377
    :goto_3
    if-nez v4, :cond_1

    .line 378
    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    sget-object v6, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 370
    :cond_3
    aget-object v5, v10, v6

    .line 371
    .local v5, "exclusion":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 372
    const/4 v4, 0x1

    .line 373
    goto :goto_3

    .line 370
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private reportLeak(Lio/netty/util/ResourceLeakDetector$Level;)V
    .locals 10

    .prologue
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "level":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 201
    sget-object v4, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isErrorEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 204
    :goto_0
    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 205
    .local v1, "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector<TT;>.DefaultResourceLeak;"
    if-nez v1, :cond_1

    .line 250
    :cond_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->close()Z

    goto :goto_0

    .line 214
    .end local v1    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector<TT;>.DefaultResourceLeak;"
    :cond_2
    sget-object v4, Lio/netty/util/ResourceLeakDetector$Level;->PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

    if-ne p1, v4, :cond_4

    move v2, v3

    .line 215
    .local v2, "samplingInterval":I
    :goto_1
    iget-wide v4, p0, Lio/netty/util/ResourceLeakDetector;->active:J

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lio/netty/util/ResourceLeakDetector;->maxActive:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, p0, Lio/netty/util/ResourceLeakDetector;->loggedTooManyActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v9, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    sget-object v4, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LEAK: You are creating too many "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instances.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 217
    iget-object v6, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a shared resource that must be reused across the JVM,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 218
    const-string v6, "so that only a few instances are created."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 224
    :cond_3
    :goto_2
    iget-object v4, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 225
    .restart local v1    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector<TT;>.DefaultResourceLeak;"
    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->clear()V

    .line 231
    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->close()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "records":Ljava/lang/String;
    iget-object v4, p0, Lio/netty/util/ResourceLeakDetector;->reportedLeaks:Ljava/util/concurrent/ConcurrentMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v0, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 238
    sget-object v4, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "LEAK: {}.release() was not called before it\'s garbage-collected. Enable advanced leak reporting to find out where the leak occurred. To enable advanced leak reporting, specify the JVM option \'-D{}={}\' or call {}.setLevel()"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 242
    iget-object v7, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    aput-object v7, v6, v9

    const-string v7, "io.netty.leakDetectionLevel"

    aput-object v7, v6, v3

    const/4 v7, 0x2

    sget-object v8, Lio/netty/util/ResourceLeakDetector$Level;->ADVANCED:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v8}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 238
    invoke-interface {v4, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 214
    .end local v0    # "records":Ljava/lang/String;
    .end local v1    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector<TT;>.DefaultResourceLeak;"
    .end local v2    # "samplingInterval":I
    :cond_4
    iget v2, p0, Lio/netty/util/ResourceLeakDetector;->samplingInterval:I

    goto/16 :goto_1

    .line 244
    .restart local v0    # "records":Ljava/lang/String;
    .restart local v1    # "ref":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector<TT;>.DefaultResourceLeak;"
    .restart local v2    # "samplingInterval":I
    :cond_5
    sget-object v4, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 245
    const-string v5, "LEAK: {}.release() was not called before it\'s garbage-collected.{}"

    .line 246
    iget-object v6, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    .line 244
    invoke-interface {v4, v5, v6, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static setEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;

    :goto_0
    invoke-static {v0}, Lio/netty/util/ResourceLeakDetector;->setLevel(Lio/netty/util/ResourceLeakDetector$Level;)V

    .line 103
    return-void

    .line 102
    :cond_0
    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    goto :goto_0
.end method

.method public static setLevel(Lio/netty/util/ResourceLeakDetector$Level;)V
    .locals 2

    .prologue
    .line 116
    .local p0, "level":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    sput-object p0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    .line 120
    return-void
.end method


# virtual methods
.method public open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/netty/util/ResourceLeak;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/ResourceLeakDetector;, "Lio/netty/util/ResourceLeakDetector<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 182
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    .line 183
    .local v0, "level":Lio/netty/util/ResourceLeakDetector$Level;, "Lio/netty/util/ResourceLeakDetector$Level;"
    sget-object v2, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    if-ne v0, v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v2

    sget-object v3, Lio/netty/util/ResourceLeakDetector$Level;->PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v3}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 188
    iget-wide v2, p0, Lio/netty/util/ResourceLeakDetector;->leakCheckCnt:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/netty/util/ResourceLeakDetector;->leakCheckCnt:J

    iget v4, p0, Lio/netty/util/ResourceLeakDetector;->samplingInterval:I

    int-to-long v4, v4

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector;->reportLeak(Lio/netty/util/ResourceLeakDetector$Level;)V

    .line 190
    new-instance v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-direct {v1, p0, p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector;->reportLeak(Lio/netty/util/ResourceLeakDetector$Level;)V

    .line 196
    new-instance v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-direct {v1, p0, p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V

    goto :goto_0
.end method
