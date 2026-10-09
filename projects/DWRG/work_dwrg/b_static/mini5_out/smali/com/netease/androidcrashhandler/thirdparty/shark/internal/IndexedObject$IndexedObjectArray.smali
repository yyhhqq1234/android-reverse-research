.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;
.super Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;
.source "IndexedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexedObjectArray"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;",
        "position",
        "",
        "arrayClassId",
        "recordSize",
        "(JJJ)V",
        "getArrayClassId",
        "()J",
        "getPosition",
        "getRecordSize",
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
.field private final arrayClassId:J

.field private final position:J

.field private final recordSize:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;->position:J

    .line 25
    iput-wide p3, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;->arrayClassId:J

    .line 26
    iput-wide p5, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;->recordSize:J

    return-void
.end method


# virtual methods
.method public final getArrayClassId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;->arrayClassId:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;->position:J

    return-wide v0
.end method

.method public getRecordSize()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedObjectArray;->recordSize:J

    return-wide v0
.end method
