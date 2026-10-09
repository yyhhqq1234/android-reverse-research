.class Lcom/netease/glide/load/engine/DiskCacheStrategy$1;
.super Lcom/netease/glide/load/engine/DiskCacheStrategy;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/glide/load/engine/DiskCacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/netease/glide/load/engine/DiskCacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeCachedData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public decodeCachedResource()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDataCacheable(Lcom/netease/glide/load/DataSource;)Z
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/glide/load/DataSource;->REMOTE:Lcom/netease/glide/load/DataSource;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isResourceCacheable(ZLcom/netease/glide/load/DataSource;Lcom/netease/glide/load/EncodeStrategy;)Z
    .locals 0

    .line 25
    sget-object p1, Lcom/netease/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/netease/glide/load/DataSource;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/netease/glide/load/DataSource;->MEMORY_CACHE:Lcom/netease/glide/load/DataSource;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
