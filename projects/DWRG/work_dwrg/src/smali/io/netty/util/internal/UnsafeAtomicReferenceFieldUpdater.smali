.class final Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;
.super Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
.source "UnsafeAtomicReferenceFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
        "<TU;TM;>;"
    }
.end annotation


# instance fields
.field private final offset:J

.field private final unsafe:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p1, "unsafe"    # Lsun/misc/Unsafe;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;, "Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater<TU;TM;>;"
    .local p2, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;-><init>()V

    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 30
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must be volatile"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    iput-object p1, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->unsafe:Lsun/misc/Unsafe;

    .line 34
    invoke-virtual {p1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->offset:J

    .line 35
    return-void
.end method


# virtual methods
.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TM;TM;)Z"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;, "Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater<TU;TM;>;"
    .local p1, "obj":Ljava/lang/Object;, "TU;"
    .local p2, "expect":Ljava/lang/Object;, "TM;"
    .local p3, "update":Ljava/lang/Object;, "TM;"
    iget-object v0, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->offset:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TM;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;, "Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater<TU;TM;>;"
    .local p1, "obj":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->offset:J

    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lazySet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TM;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;, "Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater<TU;TM;>;"
    .local p1, "obj":Ljava/lang/Object;, "TU;"
    .local p2, "newValue":Ljava/lang/Object;, "TM;"
    iget-object v0, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->offset:J

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TM;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;, "Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater<TU;TM;>;"
    .local p1, "obj":Ljava/lang/Object;, "TU;"
    .local p2, "newValue":Ljava/lang/Object;, "TM;"
    iget-object v0, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->offset:J

    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TM;TM;)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;, "Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater<TU;TM;>;"
    .local p1, "obj":Ljava/lang/Object;, "TU;"
    .local p2, "expect":Ljava/lang/Object;, "TM;"
    .local p3, "update":Ljava/lang/Object;, "TM;"
    iget-object v0, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;->offset:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
