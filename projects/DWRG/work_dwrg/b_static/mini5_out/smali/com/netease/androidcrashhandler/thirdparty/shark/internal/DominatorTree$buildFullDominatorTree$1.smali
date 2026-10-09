.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1;
.super Ljava/lang/Object;
.source "DominatorTree.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap$ForEachCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->buildFullDominatorTree(Lkotlin/jvm/functions/Function1;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDominatorTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DominatorTree.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,220:1\n361#2,7:221\n361#2,7:228\n*S KotlinDebug\n*F\n+ 1 DominatorTree.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1\n*L\n110#1:221,7\n115#1:228,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/hppc/LongLongScatterMap$ForEachCallback;",
        "onEntry",
        "",
        "key",
        "",
        "value",
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
.field final synthetic $dominators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1;->$dominators:Ljava/util/Map;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntry(JJ)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1;->$dominators:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 221
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    invoke-direct {v2}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;-><init>()V

    .line 224
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$buildFullDominatorTree$1;->$dominators:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 228
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_1

    .line 116
    new-instance p4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    invoke-direct {p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;-><init>()V

    .line 231
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    check-cast p4, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->getDominated()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
