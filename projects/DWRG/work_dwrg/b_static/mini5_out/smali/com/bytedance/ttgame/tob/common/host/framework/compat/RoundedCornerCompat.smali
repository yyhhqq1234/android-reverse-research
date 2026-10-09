.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;
.super Ljava/lang/Object;
.source "RoundedCornerCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat$Companion;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat$Position;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u001f\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B%\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0006\u0010\u0013\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0003J\u0006\u0010\u0015\u001a\u00020\u0003J\u0006\u0010\u0016\u001a\u00020\u0003J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0006\u0010\u0019\u001a\u00020\u0003J\u0008\u0010\u001a\u001a\u00020\u0003H\u0016J\u0008\u0010\u001b\u001a\u00020\u0018H\u0016R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;",
        "",
        "position",
        "",
        "radius",
        "center",
        "Landroid/graphics/Point;",
        "(IILandroid/graphics/Point;)V",
        "mPosition",
        "mRadius",
        "centerX",
        "centerY",
        "(IIII)V",
        "mCenter",
        "getMCenter",
        "()Landroid/graphics/Point;",
        "equals",
        "",
        "other",
        "getCenter",
        "getCenterX",
        "getCenterY",
        "getPosition",
        "getPositionString",
        "",
        "getRadius",
        "hashCode",
        "toString",
        "Companion",
        "Position",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat$Companion;

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x2

.field public static final POSITION_TOP_LEFT:I = 0x0

.field public static final POSITION_TOP_RIGHT:I = 0x1

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final mCenter:Landroid/graphics/Point;

.field private final mPosition:I

.field private final mRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat$Companion;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mPosition:I

    iput p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mRadius:I

    .line 67
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    return-void
.end method

.method private constructor <init>(IILandroid/graphics/Point;)V
    .locals 1

    .line 69
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;-><init>(IIII)V

    return-void
.end method

.method public synthetic constructor <init>(IILandroid/graphics/Point;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;-><init>(IILandroid/graphics/Point;)V

    return-void
.end method

.method private final getPositionString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "Invalid"

    goto :goto_0

    :cond_0
    const-string p1, "BottomLeft"

    goto :goto_0

    :cond_1
    const-string p1, "BottomRight"

    goto :goto_0

    :cond_2
    const-string p1, "TopRight"

    goto :goto_0

    :cond_3
    const-string p1, "TopLeft"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "66f1d03ba1bc94d6ae3c0c69c40216ef"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-ne p1, p0, :cond_1

    return v0

    .line 96
    :cond_1
    instance-of v1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;

    if-eqz v1, :cond_3

    .line 97
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mPosition:I

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;

    iget v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mPosition:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mRadius:I

    iget v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mRadius:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public final getCenter()Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "368c53ee9976b0083b6ba06829f1fd6e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public final getCenterX()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public final getCenterY()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public final getMCenter()Landroid/graphics/Point;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mPosition:I

    return v0
.end method

.method public final getRadius()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mRadius:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fb4808881b160223a4173152638d84b9"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 104
    :cond_0
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mPosition:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mRadius:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Point;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0b1961f296a07ba87c4d84b112270ac7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoundedCornerCompat{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mPosition:I

    invoke-direct {p0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->getPositionString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mRadius:I

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/RoundedCornerCompat;->mCenter:Landroid/graphics/Point;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
