.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;
.super Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;
.source "ReferencePathNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalRootNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;",
        "objectId",
        "",
        "gcRoot",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;)V",
        "getGcRoot",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "getObjectId",
        "()J",
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
.field private final gcRoot:Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

.field private final objectId:J


# direct methods
.method public constructor <init>(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;->objectId:J

    .line 25
    iput-object p3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;->gcRoot:Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    return-void
.end method


# virtual methods
.method public getGcRoot()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;->gcRoot:Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;->objectId:J

    return-wide v0
.end method
