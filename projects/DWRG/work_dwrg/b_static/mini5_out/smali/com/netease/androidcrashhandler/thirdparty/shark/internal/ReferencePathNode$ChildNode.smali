.class public abstract Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;
.super Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;
.source "ReferencePathNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChildNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;,
        Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0012\u0013B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0001X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u0082\u0001\u0002\u0014\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
        "()V",
        "owningClassId",
        "",
        "getOwningClassId",
        "()J",
        "parent",
        "getParent",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
        "refFromParentName",
        "",
        "getRefFromParentName",
        "()Ljava/lang/String;",
        "refFromParentType",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;",
        "getRefFromParentType",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;",
        "LibraryLeakChildNode",
        "NormalNode",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$LibraryLeakChildNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;",
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

    .line 29
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOwningClassId()J
.end method

.method public abstract getParent()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;
.end method

.method public abstract getRefFromParentName()Ljava/lang/String;
.end method

.method public abstract getRefFromParentType()Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;
.end method
