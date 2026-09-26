.class abstract Lio/netty/util/internal/MpscLinkedQueueTailRef;
.super Lio/netty/util/internal/MpscLinkedQueuePad1;
.source "MpscLinkedQueueTailRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/MpscLinkedQueuePad1",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lio/netty/util/internal/MpscLinkedQueueTailRef;",
            "Lio/netty/util/internal/MpscLinkedQueueNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x78f94338560e8545L


# instance fields
.field private volatile transient tailRef:Lio/netty/util/internal/MpscLinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    const-class v1, Lio/netty/util/internal/MpscLinkedQueueTailRef;

    const-string v2, "tailRef"

    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->newAtomicReferenceFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 32
    .local v0, "updater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lio/netty/util/internal/MpscLinkedQueueTailRef;Lio/netty/util/internal/MpscLinkedQueueNode;>;"
    if-nez v0, :cond_0

    .line 33
    const-class v1, Lio/netty/util/internal/MpscLinkedQueueTailRef;

    const-class v2, Lio/netty/util/internal/MpscLinkedQueueNode;

    const-string v3, "tailRef"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 36
    :cond_0
    sput-object v0, Lio/netty/util/internal/MpscLinkedQueueTailRef;->UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueTailRef;, "Lio/netty/util/internal/MpscLinkedQueueTailRef<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueuePad1;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getAndSetTailRef(Lio/netty/util/internal/MpscLinkedQueueNode;)Lio/netty/util/internal/MpscLinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;)",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueTailRef;, "Lio/netty/util/internal/MpscLinkedQueueTailRef<TE;>;"
    .local p1, "tailRef":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    sget-object v0, Lio/netty/util/internal/MpscLinkedQueueTailRef;->UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/MpscLinkedQueueNode;

    return-object v0
.end method

.method protected final setTailRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueTailRef;, "Lio/netty/util/internal/MpscLinkedQueueTailRef<TE;>;"
    .local p1, "tailRef":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    iput-object p1, p0, Lio/netty/util/internal/MpscLinkedQueueTailRef;->tailRef:Lio/netty/util/internal/MpscLinkedQueueNode;

    .line 47
    return-void
.end method

.method protected final tailRef()Lio/netty/util/internal/MpscLinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueTailRef;, "Lio/netty/util/internal/MpscLinkedQueueTailRef<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueueTailRef;->tailRef:Lio/netty/util/internal/MpscLinkedQueueNode;

    return-object v0
.end method
