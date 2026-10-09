.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;
.super Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;
.source "ReferencePathNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\n\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;",
        "objectId",
        "",
        "parent",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
        "refFromParentType",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;",
        "refFromParentName",
        "",
        "owningClassId",
        "(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;J)V",
        "getObjectId",
        "()J",
        "getOwningClassId",
        "getParent",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;",
        "getRefFromParentName",
        "()Ljava/lang/String;",
        "getRefFromParentType",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;",
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
.field private final objectId:J

.field private final owningClassId:J

.field private final parent:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

.field private final refFromParentName:Ljava/lang/String;

.field private final refFromParentType:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;


# direct methods
.method public constructor <init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->objectId:J

    .line 56
    iput-object p3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->parent:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    .line 57
    iput-object p4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->refFromParentType:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;

    .line 58
    iput-object p5, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->refFromParentName:Ljava/lang/String;

    .line 59
    iput-wide p6, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->owningClassId:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v8, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p6

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 54
    invoke-direct/range {v2 .. v9}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;-><init>(JLcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public getObjectId()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->objectId:J

    return-wide v0
.end method

.method public getOwningClassId()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->owningClassId:J

    return-wide v0
.end method

.method public getParent()Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->parent:Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode;

    return-object v0
.end method

.method public getRefFromParentName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->refFromParentName:Ljava/lang/String;

    return-object v0
.end method

.method public getRefFromParentType()Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ReferencePathNode$ChildNode$NormalNode;->refFromParentType:Lcom/netease/androidcrashhandler/thirdparty/shark/LeakTraceReference$ReferenceType;

    return-object v0
.end method
