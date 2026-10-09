.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;
.super Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;
.source "ReferencePathNode.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$LibraryLeakNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryLeakRootNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$LibraryLeakNode;",
        "objectId",
        "",
        "gcRoot",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "matcher",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;",
        "(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;)V",
        "getGcRoot",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "getMatcher",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;",
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

.field private final matcher:Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

.field private final objectId:J


# direct methods
.method public constructor <init>(JLcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->objectId:J

    .line 19
    iput-object p3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->gcRoot:Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    .line 20
    iput-object p4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->matcher:Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    return-void
.end method


# virtual methods
.method public getGcRoot()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->gcRoot:Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;

    return-object v0
.end method

.method public getMatcher()Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->matcher:Lcom/netease/androidcrashhandler/thirdparty/shark/LibraryLeakReferenceMatcher;

    return-object v0
.end method

.method public getObjectId()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;->objectId:J

    return-wide v0
.end method
