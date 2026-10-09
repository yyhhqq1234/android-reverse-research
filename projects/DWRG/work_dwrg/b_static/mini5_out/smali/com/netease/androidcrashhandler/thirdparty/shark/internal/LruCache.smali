.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;
.super Ljava/lang/Object;
.source "LruCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\u0018\u001a\u0004\u0018\u00018\u00012\u0008\u0010\u0019\u001a\u0004\u0018\u00018\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\u001aJ\u001d\u0010\u001b\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u001dJ\u0015\u0010\u001e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0019\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010\u001f\u001a\u00020 H\u0016R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u001e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u001e\u0010\u0012\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000cR\u0011\u0010\u0014\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;",
        "K",
        "V",
        "",
        "maxSize",
        "",
        "(I)V",
        "cache",
        "Ljava/util/LinkedHashMap;",
        "<set-?>",
        "evictionCount",
        "getEvictionCount",
        "()I",
        "hitCount",
        "getHitCount",
        "getMaxSize",
        "missCount",
        "getMissCount",
        "putCount",
        "getPutCount",
        "size",
        "getSize",
        "evictAll",
        "",
        "get",
        "key",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "put",
        "value",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "remove",
        "toString",
        "",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private evictionCount:I

.field private hitCount:I

.field private final maxSize:I

.field private missCount:I

.field private putCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->maxSize:I

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;

    invoke-direct {v0, p0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;-><init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;I)V

    check-cast v0, Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->cache:Ljava/util/LinkedHashMap;

    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " <= 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$setEvictionCount$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->evictionCount:I

    return-void
.end method


# virtual methods
.method public final evictAll()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->cache:Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->hitCount:I

    goto :goto_0

    .line 48
    :cond_0
    iget p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->missCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->missCount:I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getEvictionCount()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->evictionCount:I

    return v0
.end method

.method public final getHitCount()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->hitCount:I

    return v0
.end method

.method public final getMaxSize()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->maxSize:I

    return v0
.end method

.method public final getMissCount()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->missCount:I

    return v0
.end method

.method public final getPutCount()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->putCount:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 57
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->putCount:I

    .line 58
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 70
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->hitCount:I

    iget v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->missCount:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x64

    .line 71
    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    .line 74
    iget v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->maxSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    iget v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->hitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget v4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->missCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    .line 72
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
