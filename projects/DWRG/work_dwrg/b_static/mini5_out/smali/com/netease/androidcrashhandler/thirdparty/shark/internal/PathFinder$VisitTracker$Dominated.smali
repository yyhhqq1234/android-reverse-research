.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker$Dominated;
.super Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;
.source "PathFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dominated"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker$Dominated;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;",
        "expectedElements",
        "",
        "(I)V",
        "dominatorTree",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;",
        "getDominatorTree",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;",
        "visited",
        "",
        "objectId",
        "",
        "parentObjectId",
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


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    new-instance v0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

    invoke-direct {v0, p1}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;-><init>(I)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker$Dominated;->dominatorTree:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

    return-void
.end method


# virtual methods
.method public final getDominatorTree()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker$Dominated;->dominatorTree:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

    return-object v0
.end method

.method public visited(JJ)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/PathFinder$VisitTracker$Dominated;->dominatorTree:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;->updateDominated(JJ)Z

    move-result p1

    return p1
.end method
