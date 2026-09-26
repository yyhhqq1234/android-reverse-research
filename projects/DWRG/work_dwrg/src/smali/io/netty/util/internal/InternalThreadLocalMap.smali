.class public final Lio/netty/util/internal/InternalThreadLocalMap;
.super Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;
.source "InternalThreadLocalMap.java"


# static fields
.field public static final UNSET:Ljava/lang/Object;


# instance fields
.field public rp1:J

.field public rp2:J

.field public rp3:J

.field public rp4:J

.field public rp5:J

.field public rp6:J

.field public rp7:J

.field public rp8:J

.field public rp9:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->newIndexedVariableTable()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;-><init>([Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    .line 101
    return-void
.end method

.method private expandIndexedVariableTableAndSet(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 279
    iget-object v2, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 280
    .local v2, "oldArray":[Ljava/lang/Object;
    array-length v3, v2

    .line 281
    .local v3, "oldCapacity":I
    move v1, p1

    .line 282
    .local v1, "newCapacity":I
    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v1, v4

    .line 283
    ushr-int/lit8 v4, v1, 0x2

    or-int/2addr v1, v4

    .line 284
    ushr-int/lit8 v4, v1, 0x4

    or-int/2addr v1, v4

    .line 285
    ushr-int/lit8 v4, v1, 0x8

    or-int/2addr v1, v4

    .line 286
    ushr-int/lit8 v4, v1, 0x10

    or-int/2addr v1, v4

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 289
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 290
    .local v0, "newArray":[Ljava/lang/Object;
    array-length v4, v0

    sget-object v5, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 291
    aput-object p2, v0, p1

    .line 292
    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 293
    return-void
.end method

.method private static fastGet(Lio/netty/util/concurrent/FastThreadLocalThread;)Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 1
    .param p0, "thread"    # Lio/netty/util/concurrent/FastThreadLocalThread;

    .prologue
    .line 65
    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    .line 66
    .local v0, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lio/netty/util/internal/InternalThreadLocalMap;

    .end local v0    # "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-direct {v0}, Lio/netty/util/internal/InternalThreadLocalMap;-><init>()V

    .restart local v0    # "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/FastThreadLocalThread;->setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V

    .line 69
    :cond_0
    return-object v0
.end method

.method public static get()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 57
    .local v0, "thread":Ljava/lang/Thread;
    instance-of v1, v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lio/netty/util/concurrent/FastThreadLocalThread;

    .end local v0    # "thread":Ljava/lang/Thread;
    invoke-static {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->fastGet(Lio/netty/util/concurrent/FastThreadLocalThread;)Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    .line 60
    .restart local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->slowGet()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIfSet()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 4

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 42
    .local v1, "thread":Ljava/lang/Thread;
    instance-of v3, v1, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v3, :cond_0

    .line 43
    check-cast v1, Lio/netty/util/concurrent/FastThreadLocalThread;

    .end local v1    # "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Lio/netty/util/concurrent/FastThreadLocalThread;->threadLocalMap()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v2

    .line 52
    .local v2, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    :goto_0
    return-object v2

    .line 45
    .end local v2    # "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    .restart local v1    # "thread":Ljava/lang/Thread;
    :cond_0
    sget-object v0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    .line 46
    .local v0, "slowThreadLocalMap":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/netty/util/internal/InternalThreadLocalMap;>;"
    if-nez v0, :cond_1

    .line 47
    const/4 v2, 0x0

    .restart local v2    # "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    goto :goto_0

    .line 49
    .end local v2    # "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/internal/InternalThreadLocalMap;

    .restart local v2    # "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    goto :goto_0
.end method

.method public static lastVariableIndex()I
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lio/netty/util/internal/InternalThreadLocalMap;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newIndexedVariableTable()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 125
    const/16 v1, 0x20

    new-array v0, v1, [Ljava/lang/Object;

    .line 126
    .local v0, "array":[Ljava/lang/Object;
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    return-object v0
.end method

.method public static nextVariableIndex()I
    .locals 3

    .prologue
    .line 104
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 105
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 106
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "too many thread-local indexed variables"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    return v0
.end method

.method public static remove()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 89
    .local v1, "thread":Ljava/lang/Thread;
    instance-of v2, v1, Lio/netty/util/concurrent/FastThreadLocalThread;

    if-eqz v2, :cond_1

    .line 90
    check-cast v1, Lio/netty/util/concurrent/FastThreadLocalThread;

    .end local v1    # "thread":Ljava/lang/Thread;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/netty/util/concurrent/FastThreadLocalThread;->setThreadLocalMap(Lio/netty/util/internal/InternalThreadLocalMap;)V

    .line 97
    .local v0, "slowThreadLocalMap":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/netty/util/internal/InternalThreadLocalMap;>;"
    .restart local v1    # "thread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 92
    .end local v0    # "slowThreadLocalMap":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/netty/util/internal/InternalThreadLocalMap;>;"
    :cond_1
    sget-object v0, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    .line 93
    .restart local v0    # "slowThreadLocalMap":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/netty/util/internal/InternalThreadLocalMap;>;"
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0
.end method

.method private static slowGet()Lio/netty/util/internal/InternalThreadLocalMap;
    .locals 2

    .prologue
    .line 73
    sget-object v1, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    .line 74
    .local v1, "slowThreadLocalMap":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/netty/util/internal/InternalThreadLocalMap;>;"
    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/ThreadLocal;

    .end local v1    # "slowThreadLocalMap":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/netty/util/internal/InternalThreadLocalMap;>;"
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .restart local v1    # "slowThreadLocalMap":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/netty/util/internal/InternalThreadLocalMap;>;"
    sput-object v1, Lio/netty/util/internal/UnpaddedInternalThreadLocalMap;->slowThreadLocalMap:Ljava/lang/ThreadLocal;

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/InternalThreadLocalMap;

    .line 80
    .local v0, "ret":Lio/netty/util/internal/InternalThreadLocalMap;
    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lio/netty/util/internal/InternalThreadLocalMap;

    .end local v0    # "ret":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-direct {v0}, Lio/netty/util/internal/InternalThreadLocalMap;-><init>()V

    .line 82
    .restart local v0    # "ret":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 84
    :cond_1
    return-object v0
.end method


# virtual methods
.method public charsetDecoderCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetDecoderCache:Ljava/util/Map;

    .line 195
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetDecoder;>;"
    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/IdentityHashMap;

    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetDecoder;>;"
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetDecoder;>;"
    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetDecoderCache:Ljava/util/Map;

    .line 198
    :cond_0
    return-object v0
.end method

.method public charsetEncoderCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    .line 187
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetEncoder;>;"
    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/util/IdentityHashMap;

    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetEncoder;>;"
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/charset/Charset;Ljava/nio/charset/CharsetEncoder;>;"
    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    .line 190
    :cond_0
    return-object v0
.end method

.method public counterHashCode()Lio/netty/util/internal/IntegerHolder;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->counterHashCode:Lio/netty/util/internal/IntegerHolder;

    return-object v0
.end method

.method public futureListenerStackDepth()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth:I

    return v0
.end method

.method public handlerSharableCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    .line 243
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    .line 247
    :cond_0
    return-object v0
.end method

.method public indexedVariable(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 260
    .local v0, "lookup":[Ljava/lang/Object;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    goto :goto_0
.end method

.method public isIndexedVariableSet(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 308
    .local v0, "lookup":[Ljava/lang/Object;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public localChannelReaderStackDepth()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->localChannelReaderStackDepth:I

    return v0
.end method

.method public random()Lio/netty/util/internal/ThreadLocalRandom;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    .line 211
    .local v0, "r":Lio/netty/util/internal/ThreadLocalRandom;
    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lio/netty/util/internal/ThreadLocalRandom;

    .end local v0    # "r":Lio/netty/util/internal/ThreadLocalRandom;
    invoke-direct {v0}, Lio/netty/util/internal/ThreadLocalRandom;-><init>()V

    .restart local v0    # "r":Lio/netty/util/internal/ThreadLocalRandom;
    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    .line 214
    :cond_0
    return-object v0
.end method

.method public removeIndexedVariable(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 297
    .local v0, "lookup":[Ljava/lang/Object;
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 298
    aget-object v1, v0, p1

    .line 299
    .local v1, "v":Ljava/lang/Object;
    sget-object v2, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    aput-object v2, v0, p1

    .line 302
    .end local v1    # "v":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCounterHashCode(Lio/netty/util/internal/IntegerHolder;)V
    .locals 0
    .param p1, "counterHashCode"    # Lio/netty/util/internal/IntegerHolder;

    .prologue
    .line 238
    iput-object p1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->counterHashCode:Lio/netty/util/internal/IntegerHolder;

    .line 239
    return-void
.end method

.method public setFutureListenerStackDepth(I)V
    .locals 0
    .param p1, "futureListenerStackDepth"    # I

    .prologue
    .line 206
    iput p1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth:I

    .line 207
    return-void
.end method

.method public setIndexedVariable(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .line 268
    .local v0, "lookup":[Ljava/lang/Object;
    array-length v3, v0

    if-ge p1, v3, :cond_1

    .line 269
    aget-object v1, v0, p1

    .line 270
    .local v1, "oldValue":Ljava/lang/Object;
    aput-object p2, v0, p1

    .line 271
    sget-object v3, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-ne v1, v3, :cond_0

    .line 274
    .end local v1    # "oldValue":Ljava/lang/Object;
    :goto_0
    return v2

    .line 271
    .restart local v1    # "oldValue":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 273
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/InternalThreadLocalMap;->expandIndexedVariableTableAndSet(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setLocalChannelReaderStackDepth(I)V
    .locals 0
    .param p1, "localChannelReaderStackDepth"    # I

    .prologue
    .line 255
    iput p1, p0, Lio/netty/util/internal/InternalThreadLocalMap;->localChannelReaderStackDepth:I

    .line 256
    return-void
.end method

.method public size()I
    .locals 6

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "count":I
    iget v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth:I

    if-eqz v5, :cond_0

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 136
    :cond_0
    iget v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->localChannelReaderStackDepth:I

    if-eqz v5, :cond_1

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 139
    :cond_1
    iget-object v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->handlerSharableCache:Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 142
    :cond_2
    iget-object v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->counterHashCode:Lio/netty/util/internal/IntegerHolder;

    if-eqz v5, :cond_3

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 145
    :cond_3
    iget-object v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->random:Lio/netty/util/internal/ThreadLocalRandom;

    if-eqz v5, :cond_4

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_4
    iget-object v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    if-eqz v5, :cond_5

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 151
    :cond_5
    iget-object v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    if-eqz v5, :cond_6

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 154
    :cond_6
    iget-object v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 157
    :cond_7
    iget-object v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetEncoderCache:Ljava/util/Map;

    if-eqz v5, :cond_8

    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 160
    :cond_8
    iget-object v5, p0, Lio/netty/util/internal/InternalThreadLocalMap;->charsetDecoderCache:Ljava/util/Map;

    if-eqz v5, :cond_9

    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 164
    :cond_9
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->indexedVariables:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_b

    aget-object v4, v0, v2

    .line 165
    .local v4, "o":Ljava/lang/Object;
    sget-object v5, Lio/netty/util/internal/InternalThreadLocalMap;->UNSET:Ljava/lang/Object;

    if-eq v4, v5, :cond_a

    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 164
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v4    # "o":Ljava/lang/Object;
    :cond_b
    add-int/lit8 v5, v1, -0x1

    return v5
.end method

.method public stringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder:Ljava/lang/StringBuilder;

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder:Ljava/lang/StringBuilder;

    .line 182
    :goto_0
    return-object v0

    .line 180
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method public typeParameterMatcherFindCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/netty/util/internal/TypeParameterMatcher;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    .line 227
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;>;"
    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/IdentityHashMap;

    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;>;"
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;>;"
    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherFindCache:Ljava/util/Map;

    .line 230
    :cond_0
    return-object v0
.end method

.method public typeParameterMatcherGetCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/netty/util/internal/TypeParameterMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    .line 219
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lio/netty/util/internal/TypeParameterMatcher;>;"
    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/IdentityHashMap;

    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lio/netty/util/internal/TypeParameterMatcher;>;"
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lio/netty/util/internal/TypeParameterMatcher;>;"
    iput-object v0, p0, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherGetCache:Ljava/util/Map;

    .line 222
    :cond_0
    return-object v0
.end method
