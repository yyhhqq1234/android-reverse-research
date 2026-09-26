.class public abstract Lio/netty/util/internal/MpscLinkedQueueNode;
.super Ljava/lang/Object;
.source "MpscLinkedQueueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lio/netty/util/internal/MpscLinkedQueueNode;",
            "Lio/netty/util/internal/MpscLinkedQueueNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile next:Lio/netty/util/internal/MpscLinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    const-class v1, Lio/netty/util/internal/MpscLinkedQueueNode;

    const-string v2, "next"

    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->newAtomicReferenceFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 31
    .local v0, "u":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<Lio/netty/util/internal/MpscLinkedQueueNode;Lio/netty/util/internal/MpscLinkedQueueNode;>;"
    if-nez v0, :cond_0

    .line 32
    const-class v1, Lio/netty/util/internal/MpscLinkedQueueNode;

    const-class v2, Lio/netty/util/internal/MpscLinkedQueueNode;

    const-string v3, "next"

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 34
    :cond_0
    sput-object v0, Lio/netty/util/internal/MpscLinkedQueueNode;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearMaybe()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueueNode;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final next()Lio/netty/util/internal/MpscLinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TT;>;"
    iget-object v0, p0, Lio/netty/util/internal/MpscLinkedQueueNode;->next:Lio/netty/util/internal/MpscLinkedQueueNode;

    return-object v0
.end method

.method final setNext(Lio/netty/util/internal/MpscLinkedQueueNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/MpscLinkedQueueNode",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TT;>;"
    .local p1, "newNext":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TT;>;"
    sget-object v0, Lio/netty/util/internal/MpscLinkedQueueNode;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method unlink()V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lio/netty/util/internal/MpscLinkedQueueNode;, "Lio/netty/util/internal/MpscLinkedQueueNode<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->setNext(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 64
    return-void
.end method

.method public abstract value()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
