.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;
.super Ljava/lang/Object;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathFindingResults"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;",
        "",
        "pathsToLeakingObjects",
        "",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
        "dominatorTree",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;",
        "(Ljava/util/List;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;)V",
        "getDominatorTree",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;",
        "getPathsToLeakingObjects",
        "()Ljava/util/List;",
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
.field private final dominatorTree:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

.field private final pathsToLeakingObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
            ">;",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;->pathsToLeakingObjects:Ljava/util/List;

    .line 69
    iput-object p2, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;->dominatorTree:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

    return-void
.end method


# virtual methods
.method public final getDominatorTree()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;->dominatorTree:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

    return-object v0
.end method

.method public final getPathsToLeakingObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$PathFindingResults;->pathsToLeakingObjects:Ljava/util/List;

    return-object v0
.end method
