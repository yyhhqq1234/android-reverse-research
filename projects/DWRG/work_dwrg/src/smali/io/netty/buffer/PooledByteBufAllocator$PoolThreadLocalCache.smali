.class final Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "PooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PoolThreadLocalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal",
        "<",
        "Lio/netty/buffer/PoolThreadCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lio/netty/buffer/PooledByteBufAllocator;


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    .line 285
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/netty/buffer/PoolThreadCache;
    .locals 9

    .prologue
    .line 289
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    .line 293
    .local v8, "idx":I
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$0(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$0(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v3}, Lio/netty/buffer/PooledByteBufAllocator;->access$0(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v3

    array-length v3, v3

    rem-int v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget-object v1, v0, v3

    .line 299
    .local v1, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    :goto_0
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$1(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->access$1(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v3}, Lio/netty/buffer/PooledByteBufAllocator;->access$1(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;

    move-result-object v3

    array-length v3, v3

    rem-int v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget-object v2, v0, v3

    .line 305
    .local v2, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    :goto_1
    new-instance v0, Lio/netty/buffer/PoolThreadCache;

    .line 306
    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v3}, Lio/netty/buffer/PooledByteBufAllocator;->access$2(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v3

    iget-object v4, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v4}, Lio/netty/buffer/PooledByteBufAllocator;->access$3(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v4

    iget-object v5, p0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v5}, Lio/netty/buffer/PooledByteBufAllocator;->access$4(Lio/netty/buffer/PooledByteBufAllocator;)I

    move-result v5

    .line 307
    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$5()I

    move-result v6

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->access$6()I

    move-result v7

    .line 305
    invoke-direct/range {v0 .. v7}, Lio/netty/buffer/PoolThreadCache;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIII)V

    return-object v0

    .line 296
    .end local v1    # "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    .end local v2    # "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    goto :goto_0

    .line 302
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    goto :goto_1
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->initialValue()Lio/netty/buffer/PoolThreadCache;

    move-result-object v0

    return-object v0
.end method

.method protected onRemoval(Lio/netty/buffer/PoolThreadCache;)V
    .locals 0
    .param p1, "value"    # Lio/netty/buffer/PoolThreadCache;

    .prologue
    .line 312
    invoke-virtual {p1}, Lio/netty/buffer/PoolThreadCache;->free()V

    .line 313
    return-void
.end method

.method protected bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lio/netty/buffer/PoolThreadCache;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->onRemoval(Lio/netty/buffer/PoolThreadCache;)V

    return-void
.end method
