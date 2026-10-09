.class final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;
.super Ljava/lang/Object;
.source "DominatorTree.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MutableDominatorNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001a\u0010\u0011\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;",
        "",
        "()V",
        "dominated",
        "",
        "",
        "getDominated",
        "()Ljava/util/List;",
        "retainedCount",
        "",
        "getRetainedCount",
        "()I",
        "setRetainedCount",
        "(I)V",
        "retainedSize",
        "getRetainedSize",
        "setRetainedSize",
        "shallowSize",
        "getShallowSize",
        "setShallowSize",
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
.field private final dominated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private retainedCount:I

.field private retainedSize:I

.field private shallowSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->dominated:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getDominated()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->dominated:Ljava/util/List;

    return-object v0
.end method

.method public final getRetainedCount()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->retainedCount:I

    return v0
.end method

.method public final getRetainedSize()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->retainedSize:I

    return v0
.end method

.method public final getShallowSize()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->shallowSize:I

    return v0
.end method

.method public final setRetainedCount(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->retainedCount:I

    return-void
.end method

.method public final setRetainedSize(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->retainedSize:I

    return-void
.end method

.method public final setShallowSize(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/DominatorTree$MutableDominatorNode;->shallowSize:I

    return-void
.end method
