.class final Lio/netty/util/Recycler$DefaultHandle;
.super Ljava/lang/Object;
.source "Recycler.java"

# interfaces
.implements Lio/netty/util/Recycler$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/Recycler$Handle;"
    }
.end annotation


# instance fields
.field private lastRecycledId:I

.field private recycleId:I

.field private stack:Lio/netty/util/Recycler$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler$Stack",
            "<*>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler$Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "stack":Lio/netty/util/Recycler$Stack;, "Lio/netty/util/Recycler$Stack<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    .line 114
    return-void
.end method

.method static synthetic access$0(Lio/netty/util/Recycler$DefaultHandle;I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    return-void
.end method

.method static synthetic access$1(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-void
.end method

.method static synthetic access$2(Lio/netty/util/Recycler$DefaultHandle;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    return v0
.end method

.method static synthetic access$3(Lio/netty/util/Recycler$DefaultHandle;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lio/netty/util/Recycler$DefaultHandle;->lastRecycledId:I

    return v0
.end method

.method static synthetic access$4(Lio/netty/util/Recycler$DefaultHandle;I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lio/netty/util/Recycler$DefaultHandle;->recycleId:I

    return-void
.end method

.method static synthetic access$5(Lio/netty/util/Recycler$DefaultHandle;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$6(Lio/netty/util/Recycler$DefaultHandle;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lio/netty/util/Recycler$DefaultHandle;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7(Lio/netty/util/Recycler$DefaultHandle;)Lio/netty/util/Recycler$Stack;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 5

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 118
    .local v2, "thread":Ljava/lang/Thread;
    iget-object v3, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    iget-object v3, v3, Lio/netty/util/Recycler$Stack;->thread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_0

    .line 119
    iget-object v3, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    invoke-virtual {v3, p0}, Lio/netty/util/Recycler$Stack;->push(Lio/netty/util/Recycler$DefaultHandle;)V

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {}, Lio/netty/util/Recycler;->access$1()Lio/netty/util/concurrent/FastThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 126
    .local v0, "delayedRecycled":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/util/Recycler$Stack<*>;Lio/netty/util/Recycler$WeakOrderQueue;>;"
    iget-object v3, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/Recycler$WeakOrderQueue;

    .line 127
    .local v1, "queue":Lio/netty/util/Recycler$WeakOrderQueue;, "Lio/netty/util/Recycler$WeakOrderQueue;"
    if-nez v1, :cond_1

    .line 128
    iget-object v3, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    new-instance v1, Lio/netty/util/Recycler$WeakOrderQueue;

    .end local v1    # "queue":Lio/netty/util/Recycler$WeakOrderQueue;, "Lio/netty/util/Recycler$WeakOrderQueue;"
    iget-object v4, p0, Lio/netty/util/Recycler$DefaultHandle;->stack:Lio/netty/util/Recycler$Stack;

    invoke-direct {v1, v4, v2}, Lio/netty/util/Recycler$WeakOrderQueue;-><init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V

    .restart local v1    # "queue":Lio/netty/util/Recycler$WeakOrderQueue;, "Lio/netty/util/Recycler$WeakOrderQueue;"
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    invoke-virtual {v1, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->add(Lio/netty/util/Recycler$DefaultHandle;)V

    goto :goto_0
.end method
