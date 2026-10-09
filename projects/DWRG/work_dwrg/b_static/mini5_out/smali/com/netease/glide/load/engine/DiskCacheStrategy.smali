.class public abstract Lcom/netease/glide/load/engine/DiskCacheStrategy;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final ALL:Lcom/netease/glide/load/engine/DiskCacheStrategy;

.field public static final AUTOMATIC:Lcom/netease/glide/load/engine/DiskCacheStrategy;

.field public static final DATA:Lcom/netease/glide/load/engine/DiskCacheStrategy;

.field public static final NONE:Lcom/netease/glide/load/engine/DiskCacheStrategy;

.field public static final RESOURCE:Lcom/netease/glide/load/engine/DiskCacheStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/netease/glide/load/engine/DiskCacheStrategy$1;

    invoke-direct {v0}, Lcom/netease/glide/load/engine/DiskCacheStrategy$1;-><init>()V

    sput-object v0, Lcom/netease/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/netease/glide/load/engine/DiskCacheStrategy;

    .line 41
    new-instance v0, Lcom/netease/glide/load/engine/DiskCacheStrategy$2;

    invoke-direct {v0}, Lcom/netease/glide/load/engine/DiskCacheStrategy$2;-><init>()V

    sput-object v0, Lcom/netease/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/netease/glide/load/engine/DiskCacheStrategy;

    .line 66
    new-instance v0, Lcom/netease/glide/load/engine/DiskCacheStrategy$3;

    invoke-direct {v0}, Lcom/netease/glide/load/engine/DiskCacheStrategy$3;-><init>()V

    sput-object v0, Lcom/netease/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/netease/glide/load/engine/DiskCacheStrategy;

    .line 91
    new-instance v0, Lcom/netease/glide/load/engine/DiskCacheStrategy$4;

    invoke-direct {v0}, Lcom/netease/glide/load/engine/DiskCacheStrategy$4;-><init>()V

    sput-object v0, Lcom/netease/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/netease/glide/load/engine/DiskCacheStrategy;

    .line 122
    new-instance v0, Lcom/netease/glide/load/engine/DiskCacheStrategy$5;

    invoke-direct {v0}, Lcom/netease/glide/load/engine/DiskCacheStrategy$5;-><init>()V

    sput-object v0, Lcom/netease/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/netease/glide/load/engine/DiskCacheStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decodeCachedData()Z
.end method

.method public abstract decodeCachedResource()Z
.end method

.method public abstract isDataCacheable(Lcom/netease/glide/load/DataSource;)Z
.end method

.method public abstract isResourceCacheable(ZLcom/netease/glide/load/DataSource;Lcom/netease/glide/load/EncodeStrategy;)Z
.end method
