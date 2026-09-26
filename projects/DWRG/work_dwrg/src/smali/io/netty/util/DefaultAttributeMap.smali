.class public Lio/netty/util/DefaultAttributeMap;
.super Ljava/lang/Object;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lio/netty/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x4

.field private static final MASK:I = 0x3

.field private static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lio/netty/util/DefaultAttributeMap;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-class v1, Lio/netty/util/DefaultAttributeMap;

    const-string v2, "attributes"

    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->newAtomicReferenceFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 37
    .local v0, "referenceFieldUpdater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lio/netty/util/DefaultAttributeMap;Ljava/util/concurrent/atomic/AtomicReferenceArray;>;"
    if-nez v0, :cond_0

    .line 39
    const-class v1, Lio/netty/util/DefaultAttributeMap;

    const-class v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string v3, "attributes"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 41
    :cond_0
    sput-object v0, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static index(Lio/netty/util/AttributeKey;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/AttributeKey",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<*>;"
    invoke-virtual {p0}, Lio/netty/util/AttributeKey;->id()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey",
            "<TT;>;)",
            "Lio/netty/util/Attribute",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "key":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    const/4 v7, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "key"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_0
    iget-object v1, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 58
    .local v1, "attributes":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;>;"
    if-nez v1, :cond_1

    .line 60
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .end local v1    # "attributes":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;>;"
    const/4 v6, 0x4

    invoke-direct {v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 62
    .restart local v1    # "attributes":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;>;"
    sget-object v6, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 63
    iget-object v1, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 67
    :cond_1
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    move-result v4

    .line 68
    .local v4, "i":I
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 69
    .local v3, "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    if-nez v3, :cond_3

    .line 72
    new-instance v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .end local v3    # "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    invoke-direct {v3, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/AttributeKey;)V

    .line 73
    .restart local v3    # "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    invoke-virtual {v1, v4, v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, v3

    .line 93
    :goto_0
    return-object v2

    .line 77
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    check-cast v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    .line 81
    .restart local v3    # "head":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    :cond_3
    monitor-enter v3

    .line 82
    move-object v2, v3

    .line 84
    .local v2, "curr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    :goto_1
    :try_start_0
    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$0(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$1(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v6

    if-ne v6, p1, :cond_4

    .line 85
    monitor-exit v3

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v6

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 88
    :cond_4
    :try_start_1
    invoke-static {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$2(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v5

    .line 89
    .local v5, "next":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<*>;"
    if-nez v5, :cond_5

    .line 90
    new-instance v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v0, v3, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    .line 91
    .local v0, "attr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    invoke-static {v2, v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$3(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    .line 92
    invoke-static {v0, v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$4(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)V

    .line 93
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0

    .line 95
    .end local v0    # "attr":Lio/netty/util/DefaultAttributeMap$DefaultAttribute;, "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<TT;>;"
    :cond_5
    move-object v2, v5

    .line 83
    goto :goto_1
.end method
