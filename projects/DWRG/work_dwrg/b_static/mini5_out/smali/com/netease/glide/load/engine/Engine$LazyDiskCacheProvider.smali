.class Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/netease/glide/load/engine/DecodeJob$DiskCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyDiskCacheProvider"
.end annotation


# instance fields
.field private volatile diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;

.field private final factory:Lcom/netease/glide/load/engine/cache/DiskCache$Factory;


# direct methods
.method constructor <init>(Lcom/netease/glide/load/engine/cache/DiskCache$Factory;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->factory:Lcom/netease/glide/load/engine/cache/DiskCache$Factory;

    return-void
.end method


# virtual methods
.method declared-synchronized clearDiskCacheIfCreated()V
    .locals 1

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 453
    monitor-exit p0

    return-void

    .line 455
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;

    invoke-interface {v0}, Lcom/netease/glide/load/engine/cache/DiskCache;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDiskCache()Lcom/netease/glide/load/engine/cache/DiskCache;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_2

    .line 461
    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->factory:Lcom/netease/glide/load/engine/cache/DiskCache$Factory;

    invoke-interface {v0}, Lcom/netease/glide/load/engine/cache/DiskCache$Factory;->build()Lcom/netease/glide/load/engine/cache/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_1

    .line 466
    new-instance v0, Lcom/netease/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v0}, Lcom/netease/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    iput-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;

    .line 468
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 470
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$LazyDiskCacheProvider;->diskCache:Lcom/netease/glide/load/engine/cache/DiskCache;

    return-object v0
.end method
