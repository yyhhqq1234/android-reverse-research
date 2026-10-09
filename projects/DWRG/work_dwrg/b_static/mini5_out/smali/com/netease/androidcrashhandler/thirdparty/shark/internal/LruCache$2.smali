.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;
.super Ljava/util/LinkedHashMap;
.source "LruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\'\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2",
        "Ljava/util/LinkedHashMap;",
        "removeEldestEntry",
        "",
        "eldest",
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
.field final synthetic this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache<",
            "TK;TV;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;

    const/high16 p1, 0x3f400000    # 0.75f

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p2, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 31
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 31
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;->size()I

    move-result p1

    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->getMaxSize()I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;->this$0:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->getEvictionCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;->access$setEvictionCount$p(Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final bridge size()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/LruCache$2;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
