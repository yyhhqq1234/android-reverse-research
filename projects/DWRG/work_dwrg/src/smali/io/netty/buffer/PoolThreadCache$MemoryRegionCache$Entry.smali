.class final Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;"
        }
    .end annotation
.end field

.field handle:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 480
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>.Entry<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;-><init>()V

    return-void
.end method
