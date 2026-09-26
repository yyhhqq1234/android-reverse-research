.class abstract Lio/netty/util/internal/MpscLinkedQueueHeadRef;
.super Lio/netty/util/internal/MpscLinkedQueuePad0;
.source "MpscLinkedQueueHeadRef.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/MpscLinkedQueuePad0",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lio/netty/util/internal/MpscLinkedQueueHeadRef;",
            "Lio/netty/util/internal/MpscLinkedQueueNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x7581058a3483136dL


# instance fields
.field private volatile transient headRef:Lio/netty/util/internal/MpscLinkedQueueNode;
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
    .line 33
    const-class v1, Lio/netty/util/internal/MpscLinkedQueueHeadRef;

    const-string v2, "headRef"

    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->newAtomicReferenceFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 34
    .local v0, "updater":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lio/netty/util/internal/MpscLinkedQueueHeadRef;Lio/netty/util/internal/MpscLinkedQueueNode;>;"
    if-nez v0, :cond_0

    .line 35
    const-class v1, Lio/netty/util/internal/MpscLinkedQueueHeadRef;

    const-class v2, Lio/netty/util/internal/MpscLinkedQueueNode;

    const-string v3, "headRef"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 38
    :cond_0
    sput-object v0, Lio/netty/util/internal/MpscLinkedQueueHeadRef;->UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueHeadRef;, "Lio/netty/util/internal/MpscLinkedQueueHeadRef<TE;>;"
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueuePad0;-><init>()V

    return-void
.end method


# virtual methods
.method protected final headRef()Lio/netty/util/internal/MpscLinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueHeadRef;, "Lio/netty/util/internal/MpscLinkedQueueHeadRef<TE;>;"
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueueHeadRef;->headRef:Lio/netty/util/internal/MpscLinkedQueueNode;

    return-object v0
.end method

.method protected final lazySetHeadRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueHeadRef;, "Lio/netty/util/internal/MpscLinkedQueueHeadRef<TE;>;"
    .local p1, "headRef":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    sget-object v0, Lio/netty/util/internal/MpscLinkedQueueHeadRef;->UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected final setHeadRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueHeadRef;, "Lio/netty/util/internal/MpscLinkedQueueHeadRef<TE;>;"
    .local p1, "headRef":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TE;>;"
    iput-object p1, p0, Lio/netty/util/internal/MpscLinkedQueueHeadRef;->headRef:Lio/netty/util/internal/MpscLinkedQueueNode;

    .line 49
    return-void
.end method
