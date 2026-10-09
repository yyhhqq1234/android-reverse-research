.class public abstract Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;
.super Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;
.source "ReferencePathNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RootNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;,
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
        "()V",
        "gcRoot",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "getGcRoot",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;",
        "LibraryLeakRootNode",
        "NormalRootNode",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$LibraryLeakRootNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode$NormalRootNode;",
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


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getGcRoot()Lcom/netease/androidcrashhandler/thirdparty/shark/GcRoot;
.end method
