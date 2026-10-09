.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;
.super Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;
.source "IndexedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexedPrimitiveArray"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0005\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;",
        "position",
        "",
        "primitiveType",
        "Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;",
        "recordSize",
        "(JLcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;J)V",
        "getPosition",
        "()J",
        "getPrimitiveType",
        "()Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;",
        "primitiveTypeOrdinal",
        "",
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
.field private final position:J

.field private final primitiveTypeOrdinal:B

.field private final recordSize:J


# direct methods
.method public constructor <init>(JLcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;J)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;->position:J

    .line 32
    iput-wide p4, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;->recordSize:J

    .line 34
    invoke-virtual {p3}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;->primitiveTypeOrdinal:B

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;->position:J

    return-wide v0
.end method

.method public final getPrimitiveType()Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;
    .locals 2

    .line 36
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;->values()[Lcom/netease/androidcrashhandler/thirdparty/shark/PrimitiveType;

    move-result-object v0

    iget-byte v1, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;->primitiveTypeOrdinal:B

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRecordSize()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/thirdparty/shark/internal/IndexedObject$IndexedPrimitiveArray;->recordSize:J

    return-wide v0
.end method
