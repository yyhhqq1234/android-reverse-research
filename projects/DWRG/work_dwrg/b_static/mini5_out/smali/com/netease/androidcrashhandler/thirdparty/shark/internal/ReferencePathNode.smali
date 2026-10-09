.class public abstract Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;
.super Ljava/lang/Object;
.source "ReferencePathNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;,
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$LibraryLeakNode;,
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
        "",
        "()V",
        "objectId",
        "",
        "getObjectId",
        "()J",
        "ChildNode",
        "LibraryLeakNode",
        "RootNode",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$RootNode;",
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
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getObjectId()J
.end method
